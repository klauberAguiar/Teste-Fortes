program ProjectTesteKlauber;

uses
  Vcl.Forms,
  Vcl.Controls,
  view.login in 'View\view.login.pas' {FormLogin},
  data.conexao in 'Data\data.conexao.pas',
  view.messages in 'View\view.messages.pas' {Message},
  view.principal in 'View\view.principal.pas' {FormPrincipal},
  view.cadastro in 'View\view.cadastro.pas' {FormCadastro},
  presenter.cadastro in 'Presenter\presenter.cadastro.pas',
  repository.tanques in 'Repository\repository.tanques.pas',
  view.cadastro.bombas in 'View\view.cadastro.bombas.pas' {FormProdutos},
  repository.bombas in 'Repository\repository.bombas.pas',
  view.cadastro.abastecimentos in 'View\view.cadastro.abastecimentos.pas' {FormAbastecimentos},
  CadastroInterface in 'Interface\CadastroInterface.pas',
  repository.abastecimentos in 'Repository\repository.abastecimentos.pas',
  view.relatorio.abastecimentos in 'View\view.relatorio.abastecimentos.pas' {FormRelatorioAbastecimentos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TFormLogin, FormLogin);
  if FormLogin.ShowModal = mrOk then
  begin
    Application.Run;
  end
  else
  begin
    Application.Terminate;
  end;
end.
