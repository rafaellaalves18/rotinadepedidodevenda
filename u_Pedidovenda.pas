unit u_Pedidovenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxStatusBar, RxCurrEdit, Vcl.ExtCtrls,
  Vcl.DBCtrls, RxToolEdit, Vcl.Mask, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, RxDBCtrl, Datasnap.DBClient;

type
  TFrmPedidoVenda = class(TForm)
    tab: TPageControl;
    TabDet: TTabSheet;
    GroupBox2: TGroupBox;
    Label12: TLabel;
    Edtcodigopedido: TEdit;
    TabItens: TTabSheet;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    btnpesqprod: TBitBtn;
    griditenspedido: TDBGrid;
    btnsalvaprod: TBitBtn;
    btnexcluiprod: TBitBtn;
    Edtotal: TDBEdit;
    GroupBox1: TGroupBox;
    BtnNovo: TBitBtn;
    BtnSalvar: TBitBtn;
    BtnCancelar: TBitBtn;
    BtnAlterar: TBitBtn;
    BtnExcluir: TBitBtn;
    BtnSair: TBitBtn;
    dxStatusBar1: TdxStatusBar;
    qrypedidos: TFDQuery;
    dsPedidos: TDataSource;
    qryconsulta: TFDQuery;
    qryconsultaid_cli: TFDAutoIncField;
    qryconsultanome: TStringField;
    qryconsultacidade: TStringField;
    qryconsultauf: TStringField;
    cdsPedidoTemp: TClientDataSet;
    qryconsulta_prod: TFDQuery;
    qryconsulta_prodid_produto: TFDAutoIncField;
    qryconsulta_prodnome: TStringField;
    cdsPedidoTempcodigo_cliente: TFloatField;
    cdsPedidoTempnumero_pedido: TIntegerField;
    cdsPedidoTempvalor_total: TFloatField;
    cdsPedidoProdutoTemp: TClientDataSet;
    cdsPedidoProdutoTempnumero_pedido: TIntegerField;
    cdsPedidoProdutoTempcodigo_produto: TIntegerField;
    cdsPedidoProdutoTempquantidade: TFloatField;
    cdsPedidoProdutoTempvalor_unitario: TFloatField;
    cdsPedidoProdutoTempvalor_total: TFloatField;
    dsPedidoProduto: TDataSource;
    cdsPedidoProdutoTempdescricao_produto: TStringField;
    qryconsulta_prodpreco_venda: TFloatField;
    edtqtdade: TDBEdit;
    rxvlrunt: TDBEdit;
    rxvlrtat: TDBEdit;
    txtcod_prod: TDBEdit;
    txtnome_prod: TDBEdit;
    dsPedido: TDataSource;
    cdsPedidoTempnome_cliente: TStringField;
    cdsPedidoTempcidade: TStringField;
    cdsPedidoTempuf: TStringField;
    cdsPedidoTempdata: TDateField;
    Panel1: TPanel;
    qryAddprodpedidos: TFDQuery;
    Localizar: TBitBtn;
    qyconsultaPedidos: TFDQuery;
    qyconsultaPedidosnumero_ped: TFDAutoIncField;
    qyconsultaPedidosdata: TDateField;
    qyconsultaPedidosid_cliente: TIntegerField;
    qyconsultaPedidoscod_produto: TIntegerField;
    qyconsultaPedidosquantidade: TFloatField;
    qyconsultaPedidosvalor_unitario: TFloatField;
    qyconsultaPedidosvalor_total: TFloatField;
    qyconsultaPedidoscidade: TStringField;
    qyconsultaPedidosuf: TStringField;
    qyconsultaPedidosNOME: TStringField;
    pnlpedido: TPanel;
    Label13: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    data_pedido: TDBDateEdit;
    btnpesquisa: TBitBtn;
    dbcod_cli: TDBEdit;
    dbNome: TDBEdit;
    dbCidade: TDBEdit;
    dbUF: TDBEdit;
    qyconsultaPedidosproduto: TStringField;
    qryexcluir: TFDQuery;
    btnalterarprod: TBitBtn;
    qryAtualizaPedido: TFDQuery;
    qryaux: TFDQuery;
    procedure BtnSairClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure btnpesquisaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnpesqprodClick(Sender: TObject);
    procedure edtqtdadeExit(Sender: TObject);
    procedure btnsalvaprodClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure btnexcluiprodClick(Sender: TObject);
    procedure txtcod_prodExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure LocalizarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure griditenspedidoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnalterarprodClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dbcod_cliExit(Sender: TObject);
  private
    { Private declarations }
    procedure Calcula_total;
  public
    { Public declarations }
  end;

var
  FrmPedidoVenda: TFrmPedidoVenda;

implementation

{$R *.dfm}

uses u_Pesquisa, u_DMBancodeDados;

procedure TFrmPedidoVenda.BtnAlterarClick(Sender: TObject);
begin
   pnlpedido.Enabled   := true ;
   TabItens.Enabled    := true ;
   BtnNovo.Enabled     := false;
   Localizar.Enabled   := false;
   BtnExcluir.Enabled  := false;
   BtnSalvar.Enabled   := true;
   BtnAlterar.Enabled  := false;
   cdsPedidoProdutoTemp.edit;
   cdsPedidoTemp.edit;
end;

procedure TFrmPedidoVenda.btnalterarprodClick(Sender: TObject);
begin
   cdsPedidoProdutoTemp.Cancel;
end;

procedure TFrmPedidoVenda.BtnCancelarClick(Sender: TObject);
begin
   pnlpedido.Enabled   := false ;
   TabItens.Enabled    := false ;
   BtnNovo.Enabled     := true;
   BtnAlterar.Enabled  := false;
   BtnSalvar.Enabled   := false;
   Localizar.Enabled   := true;
   tab.ActivePage      :=  TabDet;
   cdsPedidoTemp.EmptyDataSet;
   cdsPedidoProdutoTemp.EmptyDataSet;
end;

procedure TFrmPedidoVenda.btnexcluiprodClick(Sender: TObject);
begin
   if (MessageBox(Handle, ' Confirma a exclus�o do produto?', 'ATEN��O', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2) = IDYES) then
   begin
     cdsPedidoProdutoTemp.Delete;
   end;
end;

procedure TFrmPedidoVenda.BtnExcluirClick(Sender: TObject);
begin
   if (MessageBox(Handle, ' Confirma a exclus�o do pedido?', 'ATEN��O', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2) = IDYES) then
   begin
      try
      DmBancodeDados.FDConnection.StartTransaction;

      qryexcluir.Close;
      qryexcluir.SQL.Clear;
      qryexcluir.SQL.Text := ' delete from pedidos_produtos where id_ped = ' + cdsPedidoTempnumero_pedido.AsString;
      qryexcluir.ExecSQL;

      qryexcluir.Close;
      qryexcluir.SQL.Clear;
      qryexcluir.SQL.Text := ' delete from pedidos where numero_ped = ' + cdsPedidoTempnumero_pedido.AsString;
      qryexcluir.ExecSQL;

      DmBancodeDados.FDConnection.Commit;
      MessageBox(Handle, ' Pedido excluido com sucesso!', 'ATEN��O', MB_ICONEXCLAMATION);

      except on E:exception do
      begin
         DmBancodeDados.FDConnection.Rollback;
         ShowMessage( ' N�o foi possivel excluir o pedido!'+e.message);
         abort;
      end;
      end;
      BtnCancelarClick(nil);
   end;
end;

procedure TFrmPedidoVenda.BtnNovoClick(Sender: TObject);
begin
   pnlpedido.Enabled   := true ;
   TabItens.Enabled    := true ;
   BtnNovo.Enabled     := false;
   BtnAlterar.Enabled  := false;
   Localizar.Enabled   := false;
   BtnSalvar.Enabled   := true;
end;

procedure TFrmPedidoVenda.btnpesqprodClick(Sender: TObject);
begin
   qryconsulta_prod.Close;
   qryconsulta_prod.sql.clear;
   qryconsulta_prod.sql.add (' SELECT * FROM PRODUTOS ');
   qryconsulta_prod.open;
   GCamposChave[0]       :='ID_PRODUTO';
   GTabela               := 'PRODUTOS';
   GSqlFiltroPersistente := '';
   Application.CreateForm(TFrmPesquisa, FrmPesquisa);
   FrmPesquisa.DsLK.DataSet := qryconsulta_prod;
   FrmPesquisa.ShowModal;
   FrmPesquisa.Free;

   if GCamposChave[0] <> 'ID_PRODUTO' then
   begin
     txtcod_prod.Text  :=GCamposChave[0];
     txtcod_prodExit(nil);
   end;
end;

procedure TFrmPedidoVenda.btnpesquisaClick(Sender: TObject);
begin
   qryconsulta.open;
   GCamposChave[0]:='ID_CLI';
   GTabela        := 'CLIENTES';
   Application.CreateForm(TFrmPesquisa, FrmPesquisa);
   FrmPesquisa.DsLK.DataSet := qryconsulta;
   FrmPesquisa.ShowModal;
   FrmPesquisa.Free;

   if GCamposChave[0] <> 'ID_CLI' then
   BEGIN
     qryconsulta.sql.clear;
     qryconsulta.sql.add (' SELECT * FROM CLIENTES WHERE ID_CLI=' +GCamposChave[0]);
     qryconsulta.open;

     if (cdsPedidoTemp.State in [dsInsert]) then
        cdsPedidoTemp.Edit
     else
        cdsPedidoTemp.insert;

     cdsPedidoTempcodigo_cliente.AsString := qryconsulta.FieldByName('ID_CLI').AsString;
     cdsPedidoTempnome_cliente.AsString   := qryconsulta.FieldByName('NOME').AsString;
     cdsPedidoTempcidade.AsString         := qryconsulta.FieldByName('CIDADE').AsString;
     cdsPedidoTempuf.AsString             := qryconsulta.FieldByName('UF').AsString;

   END;
end;

procedure TFrmPedidoVenda.BtnSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrmPedidoVenda.btnsalvaprodClick(Sender: TObject);
begin
   if (edtqtdade.Text = '') then
   begin
      MessageBox(Handle, ' Informe a quantidade.', 'ATEN��O', MB_ICONEXCLAMATION);
      edtqtdade.SetFocus;
      Exit;
   end;

   if strToFloat(edtqtdade.Text) = 0 then
   begin
      MessageBox(Handle, ' A quantidade deve ser maior que 0. ', 'ATEN��O', MB_ICONEXCLAMATION);
      edtqtdade.SetFocus;
      Exit;
   end;

   if strToFloat(rxvlrunt.Text) = 0 then
   begin
      MessageBox(Handle, ' O valor unit�rio deve ser maior que 0. ', 'ATEN��O', MB_ICONEXCLAMATION);
      edtqtdade.SetFocus;
      Exit;
   end;

   cdsPedidoProdutoTemp.Post;

   Calcula_total;
   if cdsPedidoProdutoTemp.State = dsBrowse then
   begin
      cdsPedidoProdutoTemp.Cancel;
      cdsPedidoProdutoTemp.Insert;
   end;
   txtcod_prod.setfocus;
end;

procedure TFrmPedidoVenda.BtnSalvarClick(Sender: TObject);
var num_ped : integer;
begin
   if cdsPedidoTempcodigo_cliente.AsString = '' then
   begin
     MessageBox(Handle, ' Informe o cliente para o pedido!', 'ATEN��O', MB_ICONEXCLAMATION);
     tab.ActivePage :=  TabDet;
     dbcod_cli.SetFocus;
     exit;
   end;
   if cdsPedidoProdutoTemp.RecordCount <= 0 then
   begin
     MessageBox(Handle, ' Informe pelo menos 1 produto para o pedido!', 'ATEN��O', MB_ICONEXCLAMATION);
     tab.ActivePage :=  TabItens;
     txtcod_prod.SetFocus;
     exit;
   end;

try
   DmBancodeDados.FDConnection.StartTransaction;
   if (cdsPedidoTemp.State in [dsInsert, dsBrowse]) then
   begin
      with qrypedidos do
      begin
         Close;
         ParamByName('DATA').Value             := cdsPedidoTempdata.AsDateTime;
         ParamByName('CODIGO_CLIENTE').Value   := cdsPedidoTempcodigo_cliente.AsString;
         ParamByName('VALOR_TOTAL').Value      := cdsPedidoTempvalor_total.AsFloat;
         ExecSQL
      end;

      qryaux.Close;
      qryaux.SQL.Clear;
      qryaux.SQL.Text := ' select LAST_INSERT_ID() as ID from PEDIDOS ';
      qryaux.open;
      num_ped := qryaux.FieldByName('ID').AsInteger;
      cdsPedidoProdutoTemp.Last;
      cdsPedidoProdutoTemp.First;
      while not cdsPedidoProdutoTemp.Eof do
      begin
         with qryAddprodpedidos do
         begin
            close;
            ParamByName('NUMERO_PED').Value         :=  num_ped;
            ParamByName('COD_PRODUTO').Value        :=  cdsPedidoProdutoTempcodigo_produto.AsString;
            ParamByName('QUANTIDADE').Value         :=  cdsPedidoProdutoTempquantidade.AsFloat;
            ParamByName('VALOR_UNITARIO').Value     :=  cdsPedidoProdutoTempvalor_unitario.AsFloat;
            ParamByName('VALOR_TOTAL').Value        :=  cdsPedidoProdutoTempvalor_total.AsFloat;
            ExecSQL;
         end;
         cdsPedidoProdutoTemp.Next;
      end;
      DmBancodeDados.FDConnection.Commit;
      MessageBox(Handle, ' Pedido gravado com sucesso!', 'ATEN��O', MB_ICONEXCLAMATION);
   end
   else if cdsPedidoTemp.State = dsEdit then
   begin
      qryAtualizaPedido.close;
      qryAtualizaPedido.sql.clear;
      qryAtualizaPedido.sql.text := ' update pedidos set id_cliente = '+cdsPedidoTempcodigo_cliente.AsString +
                                    ' , valor_total = '+ StringReplace(FloatTostr(cdsPedidoTempvalor_total.AsFloat),',','.',[rfReplaceAll])+
                                    '  where numero_ped = '+ cdsPedidoTempnumero_pedido.AsString;
      qryAtualizaPedido.ExecSQL;

      qryexcluir.Close;
      qryexcluir.SQL.Clear;
      qryexcluir.SQL.Text := ' delete from pedidos_produtos where id_ped = ' + cdsPedidoTempnumero_pedido.AsString;
      qryexcluir.ExecSQL;

      cdsPedidoProdutoTemp.Last;
      cdsPedidoProdutoTemp.First;
      while not cdsPedidoProdutoTemp.Eof do
      begin
         with qryAddprodpedidos do
         begin
            close;
            ParamByName('NUMERO_PED').Value         :=  cdsPedidoTempnumero_pedido.AsString;
            ParamByName('COD_PRODUTO').Value        :=  cdsPedidoProdutoTempcodigo_produto.AsString;
            ParamByName('QUANTIDADE').Value         :=  cdsPedidoProdutoTempquantidade.AsFloat;
            ParamByName('VALOR_UNITARIO').Value     :=  cdsPedidoProdutoTempvalor_unitario.AsFloat;
            ParamByName('VALOR_TOTAL').Value        :=  cdsPedidoProdutoTempvalor_total.AsFloat;
            ExecSQL;
         end;
         cdsPedidoProdutoTemp.Next;
      end;
      DmBancodeDados.FDConnection.Commit;
      MessageBox(Handle, ' Pedido alterado com sucesso!', 'ATEN��O', MB_ICONEXCLAMATION);
   end;

   except on E:exception do
   begin
      DmBancodeDados.FDConnection.Rollback;
      ShowMessage( ' Problemas ao gravar o pedido!'+e.message);
      abort;
   end;
end;
   BtnCancelarClick(nil);
end;

procedure TFrmPedidoVenda.edtqtdadeExit(Sender: TObject);
begin
   cdsPedidoProdutoTempvalor_total.AsFloat        := cdsPedidoProdutoTempquantidade.asfloat * cdsPedidoProdutoTempvalor_unitario.asfloat;
end;

procedure TFrmPedidoVenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   cdsPedidoTemp.Destroy;
   cdsPedidoProdutoTemp.Destroy;
end;

procedure TFrmPedidoVenda.FormCreate(Sender: TObject);
begin
   cdsPedidoTemp.CreateDataSet;
   cdsPedidoProdutoTemp.CreateDataSet;
end;

procedure TFrmPedidoVenda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   case key of
         VK_F2: btnpesquisaClick(nil);
         VK_F3: btnpesqprodClick(nil);
   end;
end;

procedure TFrmPedidoVenda.FormKeyPress(Sender: TObject; var Key: Char);
begin
  IF (key = #13) and not (ActiveControl is TMemo) then
  begin
    key := #0;
    Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFrmPedidoVenda.FormShow(Sender: TObject);
begin
  tab.ActivePage := TabDet;
end;

procedure TFrmPedidoVenda.griditenspedidoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key = VK_DELETE then
 begin
     if (MessageBox(Handle, ' Confirma a exclus�o do produto?', 'ATEN��O', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2) = IDYES) then
     begin
       cdsPedidoProdutoTemp.Delete;
     end
  end;
  if Key = 13 then
  begin
    cdsPedidoProdutoTemp.edit;
    edtqtdade.SetFocus;
  end;

end;

procedure TFrmPedidoVenda.LocalizarClick(Sender: TObject);
begin
   qyconsultaPedidos.Close;
   qyconsultaPedidos.sql.clear;
   qyconsultaPedidos.sql.add (' select p.numero_ped, p.data, p.id_cliente, pp.cod_produto, pp.quantidade,      ');
   qyconsultaPedidos.sql.add ('  pp.valor_unitario, pp.valor_total, c.cidade, c.uf, C.NOME, pr.nome as produto ');
   qyconsultaPedidos.sql.add ('from pedidos p, pedidos_produtos pp, clientes c , produtos pr                   ');
   qyconsultaPedidos.sql.add (' where pp.id_ped = p.numero_ped                                                 ');
   qyconsultaPedidos.sql.add (' and c.ID_CLI = p.id_cliente                                                    ');
   qyconsultaPedidos.sql.add (' and pr.id_produto = pp.cod_produto                                             ');
   qyconsultaPedidos.open;
   qyconsultaPedidos.open;
   GCamposChave[0]       :='numero_ped';
   GTabela               := ' pedidos p, pedidos_produtos pp, clientes c , produtos pr     ';
   GSqlFiltroPersistente := ' pp.id_ped = p.numero_ped and c.ID_CLI = p.id_cliente and pr.id_produto = pp.cod_produto ';
   Application.CreateForm(TFrmPesquisa, FrmPesquisa);
   FrmPesquisa.DsLK.DataSet := qyconsultaPedidos;
   FrmPesquisa.ShowModal;
   FrmPesquisa.Free;

   if GCamposChave[0] <> 'numero_ped' then
   begin
      cdsPedidoTemp.Insert;
      cdsPedidoTempcodigo_cliente.AsString          := qyconsultaPedidos.FieldByName('ID_CLIENTE').AsString;
      cdsPedidoTempnome_cliente.AsString            := qyconsultaPedidos.FieldByName('NOME').AsString;
      cdsPedidoTempcidade.AsString                  := qyconsultaPedidos.FieldByName('CIDADE').AsString;
      cdsPedidoTempuf.AsString                      := qyconsultaPedidos.FieldByName('UF').AsString;
      cdsPedidoTempnumero_pedido.AsString           := qyconsultaPedidos.FieldByName('NUMERO_PED').AsString;
      cdsPedidoTempdata.AsString                    := qyconsultaPedidos.FieldByName('DATA').AsString;
      cdsPedidoTemp.post;

      qyconsultaPedidos.Close;
      qyconsultaPedidos.sql.clear;
      qyconsultaPedidos.sql.add (' select p.numero_ped, p.data, p.id_cliente, pp.cod_produto, pp.quantidade,      ');
      qyconsultaPedidos.sql.add ('  pp.valor_unitario, pp.valor_total, c.cidade, c.uf, C.NOME, pr.nome as produto ');
      qyconsultaPedidos.sql.add ('from pedidos p, pedidos_produtos pp, clientes c , produtos pr                   ');
      qyconsultaPedidos.sql.add (' where pp.id_ped = p.numero_ped                                                 ');
      qyconsultaPedidos.sql.add (' and c.ID_CLI = p.id_cliente                                                    ');
      qyconsultaPedidos.sql.add (' and pr.id_produto = pp.cod_produto                                             ');
      qyconsultaPedidos.sql.add (' and p.numero_ped ='+ cdsPedidoTempnumero_pedido.AsString);
      qyconsultaPedidos.open;

      qyconsultaPedidos.last;
      qyconsultaPedidos.first;
      while not qyconsultaPedidos.Eof do
      begin
         cdsPedidoProdutoTemp.Insert;
         cdsPedidoProdutoTempcodigo_produto.AsString    := qyconsultaPedidos.FieldByName('COD_PRODUTO').AsString;
         cdsPedidoProdutoTempdescricao_produto.AsString := qyconsultaPedidos.FieldByName('produto').AsString;
         cdsPedidoProdutoTempvalor_unitario.AsFloat     := qyconsultaPedidos.FieldByName('VALOR_UNITARIO').AsFloat;
         cdsPedidoProdutoTempvalor_total.AsFloat        := qyconsultaPedidos.FieldByName('VALOR_UNITARIO').AsFloat;
         cdsPedidoProdutoTempnumero_pedido.AsString     := qyconsultaPedidos.FieldByName('NUMERO_PED').AsString;
         cdsPedidoProdutoTempquantidade.AsFloat         := qyconsultaPedidos.FieldByName('quantidade').AsFloat;
         cdsPedidoProdutoTemp.Post;
         qyconsultaPedidos.Next;
      end;
      Calcula_total;
      BtnAlterar.Enabled  := true;
      BtnExcluir.Enabled  := true;
   end;
end;

procedure TFrmPedidoVenda.txtcod_prodExit(Sender: TObject);
begin
if txtcod_prod.Text <> '' then
begin
   qryconsulta_prod.sql.clear;
   qryconsulta_prod.sql.add (' SELECT * FROM PRODUTOS WHERE ID_PRODUTO=0' +txtcod_prod.Text);
   qryconsulta_prod.open;
   cdsPedidoProdutoTemp.Cancel;
   cdsPedidoProdutoTemp.Insert;
   cdsPedidoProdutoTempcodigo_produto.AsString    := qryconsulta_prod.FieldByName('ID_PRODUTO').AsString;
   cdsPedidoProdutoTempdescricao_produto.AsString := qryconsulta_prod.FieldByName('nome').AsString;
   cdsPedidoProdutoTempvalor_unitario.AsFloat     := qryconsulta_prod.FieldByName('PRECO_VENDA').AsFloat;
   edtqtdade.setfocus;
end;
end;

procedure TFrmPedidoVenda.Calcula_total ;
var cValor_total : currency;
begin
   cValor_total := 0;
   cdsPedidoProdutoTemp.Last;
   cdsPedidoProdutoTemp.First;
   while not cdsPedidoProdutoTemp.Eof do
   begin
      cValor_total  := cValor_total + cdsPedidoProdutoTempvalor_total.AsFloat;
      cdsPedidoProdutoTemp.Next;
   end;
   cdsPedidoTemp.edit;
   cdsPedidoTempvalor_total.AsFloat  := cValor_total;

end;


procedure TFrmPedidoVenda.dbcod_cliExit(Sender: TObject);
begin
if dbcod_cli.Text <> '' then
begin
   qryconsulta.sql.clear;
   qryconsulta.sql.add (' SELECT * FROM CLIENTES WHERE ID_CLI=0' +dbcod_cli.Text);
   qryconsulta.open;
   if (cdsPedidoTemp.State in [dsInsert]) then
        cdsPedidoTemp.Edit
     else
        cdsPedidoTemp.insert;

   cdsPedidoTempcodigo_cliente.AsString := qryconsulta.FieldByName('ID_CLI').AsString;
   cdsPedidoTempnome_cliente.AsString   := qryconsulta.FieldByName('NOME').AsString;
   cdsPedidoTempcidade.AsString         := qryconsulta.FieldByName('CIDADE').AsString;
   cdsPedidoTempuf.AsString             := qryconsulta.FieldByName('UF').AsString;

end;
end;

end.
