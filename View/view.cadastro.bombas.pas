unit view.cadastro.bombas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, view.cadastro, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, CadastroInterface, Presenter.cadastro,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait, Vcl.Mask, Vcl.DBCtrls, frxClass,
  frxDBSet, FireDAC.Phys.IBWrapper;

type
  TFormBombas = class(TFormCadastro, ICadastroView)
    Label5: TLabel;
    dbIdTanque: TDBEdit;
    cmbTanque: TComboBox;
    Label6: TLabel;
    dbID: TDBEdit;
    Label1: TLabel;
    cmbBomba: TComboBox;
    Label3: TLabel;
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure cmbTanqueChange(Sender: TObject);
    function ConfirmaExclusao: Boolean;
    procedure FDQueryBeforePost(DataSet: TDataSet);
    procedure cmbBombaChange(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
    FQuery: TFDQuery;
    FPresenter: TCadastroPresenter;
    procedure PreencherTanques;
    procedure SetaComboTanques;
    procedure PreencherBombas;
    procedure SetaComboBombas;


  public
    { Public declarations }
    function GetDataSetProdutos: TFDQuery;
    constructor Create(AOwner: TComponent; APresenter: TCadastroPresenter; AQuery: TFDQuery);
  end;

var
  FormBombas: TFormBombas;

implementation

uses  repository.bombas, repository.tanques, data.conexao, view.messages;

{$R *.dfm}

{ TFormCadastro1 }

constructor TFormBombas.Create(AOwner: TComponent;  APresenter:TCadastroPresenter; AQuery: TFDQuery);
begin
  inherited Create(AOwner);
  FPresenter :=  APresenter;
  FQuery := AQuery;
  try
    DataSource.DataSet := AQuery;
    DBGrid1.DataSource := DataSource;
    PreencherTanques;
    SetaComboTanques;
    PreencherBombas;
    SetaComboBombas;
  except
    FQuery.Free;
    raise;
  end;
end;

procedure TFormBombas.btnCancelarClick(Sender: TObject);
begin
  FPresenter.CancelEdit;
  SetaComboTanques;
  SetaComboBombas;
  inherited;

end;

procedure TFormBombas.btnEditarClick(Sender: TObject);
begin
  FPresenter.EditRecord;
  SetaComboTanques;
  SetaComboBombas;
  inherited;
end;

procedure TFormBombas.btnExcluirClick(Sender: TObject);
begin
  inherited;
  if ConfirmaExclusao then
  begin
    try
      TConexao.GetInstancia.Conexao.StartTransaction;
      FPresenter.DeleteRecord;
      TConexao.GetInstancia.Conexao.Commit;
    except
      on E: Exception do
      begin
        TConexao.GetInstancia.Conexao.Rollback;
        TMessage.ShowMessage('Erro', 'N�o � poss�vel excluir. Verifique se essa configura��o j� foi ultilizada! ', tmAttention);
      end;
    end;
  end;
end;


procedure TFormBombas.btnNovoClick(Sender: TObject);
begin
  FPresenter.AddNewRecord;
  FQuery.FieldByName('TipoCombustivel').Required := False;
  FQuery.FieldByName('BombaId').Required := False;
  SetaComboTanques;
  SetaComboBombas;
  inherited;
end;


function TFormBombas.GetDataSetProdutos: TFDQuery;
begin
  Result := FQuery;
end;

procedure TFormBombas.btnSalvarClick(Sender: TObject);
var
  BombasRepo: TBombasRepository;
begin
  try
    BombasRepo := TBombasRepository.Create(TConexao.GetInstancia.Conexao);
    try
    if ((dbIdTanque.EditText <> '')  and ( dbID.EditText <> '')) and BombasRepo.CheckCombinationExists(dbIdTanque.EditText.ToInteger, dbID.EditText.ToInteger) then
    begin
      TMessage.ShowMessage('Aviso', 'Esta combina��o de tanque e bomba j� est� cadastrada.', tmAttention);
      FPresenter.CancelEdit;
      Exit;
    end

  finally
    BombasRepo.Free;
  end;
    TConexao.GetInstancia.Conexao.StartTransaction;
    FPresenter.SaveRecord;
    TConexao.GetInstancia.Conexao.Commit;
    inherited;
  except
    on E: Exception do
    begin
      TConexao.GetInstancia.Conexao.Rollback;
      TMessage.ShowMessage('Aviso', 'Erro ao salvar os dados.', tmAttention);
    end
    else
      raise;
  end;
end;

procedure TFormBombas.cmbBombaChange(Sender: TObject);
begin
  inherited;
  if not FQuery.IsEmpty then
  begin
    FQuery.Edit;
    dbID.EditText :=  (Integer(cmbBomba.Items.Objects[cmbBomba.ItemIndex])).ToString;
  end;
end;

procedure TFormBombas.cmbTanqueChange(Sender: TObject);
begin
  inherited;
  if not FQuery.IsEmpty then
  begin
    FQuery.Edit;
    dbIdTanque.EditText :=  (Integer(cmbTanque.Items.Objects[cmbTanque.ItemIndex])).ToString;
  end;
end;

function TFormBombas.ConfirmaExclusao: Boolean;
begin
  Result := TMessage.ShowMessage('Confirma��o', 'Confirma a exclus�o?', tmInterrogation) = mrYes;
end;

procedure TFormBombas.PreencherTanques;
var
  TanquesRepository: TTanquesRepository;
  Query: TFDQuery;
begin
  TanquesRepository := TTanquesRepository.Create(TConexao.GetInstancia.Conexao);
  Query := TanquesRepository.GetAll;
  try
    cmbTanque.Clear;
    while not Query.Eof do
    begin
      cmbTanque.Items.AddObject(Query.FieldByName('id').AsString + ' - ' +
      Query.FieldByName('tipocombustivel').AsString, TObject(Query.FieldByName('id').AsInteger));
      Query.Next;
    end;
  finally
    Query.Free;
    TanquesRepository.Free;
  end;
end;

procedure TFormBombas.PageControl1Change(Sender: TObject);
begin
  inherited;
  SetaComboTanques;
  SetaComboBombas;
end;

procedure TFormBombas.PreencherBombas;
var
  BombasRepository: TBombasRepository;
  Query: TFDQuery;
begin
  BombasRepository := TBombasRepository.Create(TConexao.GetInstancia.Conexao);
  Query := BombasRepository.GetDistinctAll;
  try
    cmbBomba.Clear;
    while not Query.Eof do
    begin
      cmbBomba.Items.AddObject('Bomba: ' + Query.FieldByName('Bombaid').AsString, TObject(Query.FieldByName('Bombaid').AsInteger));
      Query.Next;
    end;
  finally
    Query.Free;
    BombasRepository.Free;
  end;
end;

procedure TFormBombas.SetaComboBombas;
var
  IdBomba: Integer;
begin
  IdBomba := DataSource.DataSet.FieldByName('Bombaid').AsInteger;
  cmbBomba.ItemIndex := cmbBomba.Items.IndexOfObject(TObject(IdBomba));
end;


procedure TFormBombas.SetaComboTanques;
var
  IdTanque: Integer;
begin
  IdTanque := DataSource.DataSet.FieldByName('IdTanque').AsInteger;
  cmbTanque.ItemIndex := cmbTanque.Items.IndexOfObject(TObject(IdTanque));
end;

procedure TFormBombas.FDQueryBeforePost(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FieldByName('BombaId').AsInteger <= 0 then
  begin
    TMessage.ShowMessage('Aviso', 'Selecione a bomba.', tmAttention);
    Abort;
  end;

  if DataSet.FieldByName('IdTanque').AsInteger <= 0 then
  begin
    TMessage.ShowMessage('Aviso', 'Selecione o tanque.' , tmAttention);
    Abort;
  end;


end;
end.
