unit presenter.cadastro;

interface

uses
  CadastroInterface, System.Classes, Data.DB, FireDAC.Comp.Client, System.SysUtils;

type
  TCadastroPresenter = class
  private
    FView: ICadastroView;
    FModel: TFDQuery;
  public
    constructor Create(View: ICadastroView; Model: TFDQuery);
    procedure AddNewRecord;
    procedure EditRecord;
    procedure DeleteRecord;
    procedure SaveRecord;
    procedure CancelEdit;
  end;

implementation


procedure TCadastroPresenter.CancelEdit;
begin
  Fmodel.Cancel;
end;

constructor TCadastroPresenter.Create(View: ICadastroView; Model: TFDQuery);
begin
  FView := View;
  FModel := Model;
end;

procedure TCadastroPresenter.DeleteRecord;
begin
 FModel.Connection.StartTransaction;
  try
    FModel.Delete;
    FModel.Connection.Commit;
  except
    on E: Exception do
    begin
      FModel.Connection.Rollback;
      raise;
    end;
  end;
end;

procedure TCadastroPresenter.EditRecord;
begin
  FModel.Edit;
end;

procedure TCadastroPresenter.SaveRecord;
begin
  FModel.Post;
end;

procedure TCadastroPresenter.AddNewRecord;
begin
  FModel.Insert;
end;

end.

