unit u_Pesquisa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.ComCtrls;



type
  TFrmPesquisa = class(TForm)
    DsLK: TDataSource;
    Panel2: TPanel;
    EdProcura: TEdit;
    btnpesquisar: TBitBtn;
    btnok: TBitBtn;
    gridItens: TDBGrid;
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    procedure btnpesquisarClick(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure gridItensDblClick(Sender: TObject);



  private
    { Private declarations }
    cCampos, cCampoRetorno, cTabela : string;
  public
    { Public declarations }
    iColunaPesquisar : Integer;
    GSqlFiltro,  GSqlCampos : string;
    GFiltraTabela: boolean;

  end;



var
  Tabela,Coluna, GTabela, GSqlFiltroPersistente: String;
  FrmPesquisa: TFrmPesquisa;
  Query  : TFDQuery;
  GCamposChave : array[0..8] of String;

implementation




{$R *.dfm}

uses u_DMBancodeDados;

procedure TFrmPesquisa.btnokClick(Sender: TObject);
var
  i, k : integer;
begin
   If (DsLK.DataSet.RecordCount > 0) then
      begin
         i := 0;
         while i < 9 do
               begin
                  for k := DsLK.DataSet.FieldCount-1 downto 0  do
                      if UpperCase(DsLK.DataSet.Fields.Fields[K].FieldName) = UpperCase(GCamposChave[i]) then
                         GCamposChave[i] := DsLK.DataSet.FieldByName(GCamposChave[i]).AsString
                      ;
                  ;
                  Inc(i);
               end
         ;
      end
   ;
   If DsLK.DataSet.RecordCount <> 0 then
      FrmPesquisa.Close
   else
      abort
   ;

end;



procedure TFrmPesquisa.btnpesquisarClick(Sender: TObject);
var
   i : Integer;
   coluna_original : String;
begin

        GSqlFiltro  := 'where ';
         i := pos('WHERE',UpperCase(GSqlFiltroPersistente));
         if i = 1 then
            delete(GSqlFiltroPersistente, i, 5);


         If Length(Trim(GSqlFiltroPersistente)) > 0 then
            GSqlFiltro := GSqlFiltro + GSqlFiltroPersistente + ' and ';

         coluna_original := Coluna;
         if (GFiltraTabela) and (Tabela <> '') then
            Coluna := Tabela+'.'+Coluna;

         if (trim(EdProcura.Text) = '%') THEN
            GSqlFiltro := GSqlFiltro + 'upper((' + (Coluna) + '))' + ' like upper('
         else
            GSqlFiltro := GSqlFiltro +Coluna + '='  ;

         If (trim(EdProcura.Text) = '%') then
            GSqlFiltro := GSqlFiltro + EdProcura.Text + '%' + ')'
         else
            GSqlFiltro := GSqlFiltro + (EdProcura.Text) ;

         if (Length(Trim(GSqlCampos)) = 0) then
            GSqlCampos := '*';


         Query.close;
         Query.Sql.Clear;
         Query.Sql.Add('select ' + GSqlCampos  + ' from ' + GTabela + ' ' + GSqlFiltro  );
         Query.open;

         DsLK.DataSet := Query;

         if Query.RecordCount > 0 then
            gridItens.SetFocus
         else
            EdProcura.SetFocus;

end;


procedure TFrmPesquisa.FormActivate(Sender: TObject);
begin
(DsLK.DataSet as TFDQuery).Cancel;
  (DsLK.DataSet as TFDQuery).First;
  Coluna             := DsLK.DataSet.Fields[iColunaPesquisar].FieldName;
  Tabela := (dsLK.DataSet as TFDQuery).FieldList.Fields[iColunaPesquisar].Origin;

Query:=TFDQuery.Create(nil);
Query.Connection := dMBancodeDados.FDConnection;

end;

procedure TFrmPesquisa.gridItensDblClick(Sender: TObject);
begin
   btnokClick(nil);
end;

end.
procedure TFrmPesquisa.FormActivate(Sender: TObject);
begin

end;


