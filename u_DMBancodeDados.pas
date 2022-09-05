unit u_DMBancodeDados;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, Data.DB, FireDAC.Comp.Client, FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI, classes.conexao;

type
  TDmBancodeDados = class(TDataModule)
    FDConnection: TFDConnection;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
      Conexao : Tconexao; // criando o objeto para ter todos os metodos da classe conexao
    { Public declarations }
  end;

var
  DmBancodeDados: TDmBancodeDados;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDmBancodeDados.DataModuleCreate(Sender: TObject);
begin
 Conexao := TConexao.Create(FDConnection);
   // associa o componente a classe
end;

procedure TDmBancodeDados.DataModuleDestroy(Sender: TObject);
begin
   Conexao.Destroy;
end;

end.
