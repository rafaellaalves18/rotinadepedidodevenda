program Vendas;

uses
  Vcl.Forms,
  UConfigServidor in 'UConfigServidor.pas' {FrmConfigServidor},
  u_principal in 'u_principal.pas' {FrmPrincipal},
  u_DMBancodeDados in 'u_DMBancodeDados.pas' {DmBancodeDados: TDataModule},
  u_Pedidovenda in 'u_Pedidovenda.pas' {FrmPedidoVenda},
  u_Pesquisa in 'u_Pesquisa.pas' {FrmPesquisa},
  classes.conexao in 'classes.conexao.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDmBancodeDados, DmBancodeDados);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmConfigServidor, FrmConfigServidor);
  if DmBancodeDados.Conexao.ConexaoBD then
  begin


      Application.CreateForm(TFrmPrincipal, FrmPrincipal);

      Application.Run;
  end
  else
  begin

     //MessageBox('Não foi possivel acessar o Banco de Dados', 'ATENÇÃO!',MB_OK );

     Application.CreateForm(TFrmConfigServidor, FrmConfigServidor);
     FrmConfigServidor.ShowModal;

  end;
end.
