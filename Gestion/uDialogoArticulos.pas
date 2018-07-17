unit uDialogoArticulos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uDialogoGenerico, Data.DB, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Buttons, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxTextEdit, cxDBEdit, Vcl.DBCtrls, cxMaskEdit, cxSpinEdit,
  cxCurrencyEdit, Vcl.ExtCtrls;

type
  TfrmDialogoArticulos = class(TfrmDialogoGenerico)
    pgc1: TPageControl;
    tsGeneral: TTabSheet;
    lblCodigo: TLabel;
    cxDBTextEditCodigo: TcxDBTextEdit;
    lblCodigoAlt: TLabel;
    cxDBTextEditCodigoAlt: TcxDBTextEdit;
    lblNombre: TLabel;
    cxDBTextEditNombre: TcxDBTextEdit;
    lblDescripcion: TLabel;
    dbmmoDESCRIPCION: TDBMemo;
    tsValores: TTabSheet;
    tsStock: TTabSheet;
    pnlCosto: TPanel;
    pnlPrecio: TPanel;
    pnlAlicuota: TPanel;
    cxCurrencyEditPrecio: TcxCurrencyEdit;
    lblPrecio: TLabel;
    lblAlicuota: TLabel;
    cbbAlicuota: TComboBox;
    cxDBCurrencyEditCosto: TcxDBCurrencyEdit;
    lblMargen: TLabel;
    lblCosto: TLabel;
    edtMargen: TEdit;
    lblSubtitulo: TLabel;
    cxCurrencyEditSinIVA: TcxCurrencyEdit;
    lblSinIVA: TLabel;
    lblIVA21: TLabel;
    lblIVA10: TLabel;
    lblIVA27: TLabel;
    cxCurrencyEditIVA21: TcxCurrencyEdit;
    cxCurrencyEditIVA27: TcxCurrencyEdit;
    cxCurrencyEditIVA10: TcxCurrencyEdit;
    lblID_PROVEEDOR: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    lblProveedor: TLabel;
    dblkcbblookupProveedor: TDBLookupComboBox;
    lblStock: TLabel;
    edtStock: TEdit;
    lblStockMin: TLabel;
    edtStockMin: TEdit;
    lblDeposito: TLabel;
    edtDeposito: TEdit;
    procedure edtMargenKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxCurrencyEditPrecioKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnAceptarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
      procedure RellenaVisor;
  public
    { Public declarations }
  end;

var
  frmDialogoArticulos: TfrmDialogoArticulos;

implementation

uses
  udmGestion;

{$R *.dfm}

procedure TfrmDialogoArticulos.btnAceptarClick(Sender: TObject);
begin
  //inherited;
   dsBase.DataSet.Post;
   Close;
end;

procedure TfrmDialogoArticulos.cxCurrencyEditPrecioKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  RellenaVisor;
end;

procedure TfrmDialogoArticulos.edtMargenKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  Margen: Currency;
begin
  inherited;
  if (cxDBCurrencyEditCosto.Text <> '') and (edtMargen.Text <> '') then
    begin
      Margen := cxDBCurrencyEditCosto.Value * (StrToFloat(edtMargen.Text) /100) ; //calcula el margen sobre el costo
      cxCurrencyEditPrecio.Value := cxDBCurrencyEditCosto.Value + Margen;
    end;
  RellenaVisor;
end;

procedure TfrmDialogoArticulos.FormShow(Sender: TObject);
begin
  inherited;
  pgc1.ActivePage := tsGeneral;
end;

procedure TfrmDialogoArticulos.RellenaVisor;
begin
  if cxCurrencyEditPrecio.Value <> 0 then
    begin
      cxCurrencyEditSinIVA.Value := cxCurrencyEditPrecio.Value;
      cxCurrencyEditIVA10.Value := (cxCurrencyEditPrecio.Value * (10.5 / 100)) + cxCurrencyEditPrecio.Value;
      cxCurrencyEditIVA21.Value := (cxCurrencyEditPrecio.Value * (21 / 100)) + cxCurrencyEditPrecio.Value;
      cxCurrencyEditIVA27.Value := (cxCurrencyEditPrecio.Value * (27 / 100)) + cxCurrencyEditPrecio.Value;
    end
  else
    begin
      cxCurrencyEditSinIVA.Value := 0;
      cxCurrencyEditIVA10.Value := 0;
      cxCurrencyEditIVA21.Value := 0;
      cxCurrencyEditIVA27.Value := 0
    end
end;

end.
