unit view.login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Imaging.jpeg;

type
  TFormLogin = class(TForm)
    Label7: TLabel;
    Panel5: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Image3: TImage;
    Panel2: TPanel;
    Image4: TImage;
    btnLogin: TButton;
    procedure btnLoginClick(Sender: TObject);
    procedure Image4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLogin: TFormLogin;

implementation

{$R *.dfm}

uses
  data.conexao, view.messages, View.Principal;

procedure TFormLogin.Image4Click(Sender: TObject);
begin
  Close;
end;

procedure TFormLogin.btnLoginClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;
end.

