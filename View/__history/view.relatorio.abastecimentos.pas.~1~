unit view.relatorio.abastecimentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, data.conexao, repository.abastecimentos;

type
  TFormRelatorioAbastecimentos = class(TForm)
    Relatorio: TRLReport;
    Cabecalho: TRLBand;
    RLLabel1: TRLLabel;
    RLDraw1: TRLDraw;
    Rodape: TRLBand;
    RLSystemInfo3: TRLSystemInfo;
    RLDraw2: TRLDraw;
    BandaDoGrupo: TRLGroup;
    RLBand2: TRLBand;
    RLDBText5: TRLDBText;
    RLLabel8: TRLLabel;
    RegistrosDB: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLBand1: TRLBand;
    RLDBResult1: TRLDBResult;
    RLLabel9: TRLLabel;
    RLDraw3: TRLDraw;
    RLBand3: TRLBand;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    dsAbastecimento: TDataSource;
    RLBand4: TRLBand;
    RLDBResult2: TRLDBResult;
    RLLabel10: TRLLabel;
    RLDraw4: TRLDraw;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    qryAbastecimentos: TFDQuery;
  public
    { Public declarations }
  end;

var
  FormRelatorioAbastecimentos: TFormRelatorioAbastecimentos;

implementation

{$R *.dfm}

procedure TFormRelatorioAbastecimentos.FormCreate(Sender: TObject);
var
  AbastecimentosRepository: TAbastecimentosRepository;
begin
  AbastecimentosRepository := TAbastecimentosRepository.Create(TConexao.GetInstancia.Conexao);
  qryAbastecimentos :=  AbastecimentosRepository.GetRelatorioAbastecimentos;
  dsAbastecimento.DataSet := qryAbastecimentos;
  qryAbastecimentos.Open;
end;

procedure TFormRelatorioAbastecimentos.FormDestroy(Sender: TObject);
begin
  qryAbastecimentos.Free;
end;

end.
