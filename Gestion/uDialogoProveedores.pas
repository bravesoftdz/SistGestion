unit uDialogoProveedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uDialogoGenerico, Data.DB, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ComCtrls, cxGraphics, cxControls, cxLookAndFeels,
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
  dxSkinXmas2008Blue, Vcl.DBCtrls, cxDBEdit, cxTextEdit, cxMaskEdit, cxSpinEdit,
  Vcl.ExtCtrls;

type
  TfrmDialogoProveedores = class(TfrmDialogoGenerico)
    lblID_PROVEEDOR: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    lblNOMBRE: TLabel;
    cxDBTextEditNOMBRE: TcxDBTextEdit;
    lblDOMICILIO: TLabel;
    cxDBTextEditDOMICILIO: TcxDBTextEdit;
    lblLOCALIDAD: TLabel;
    cxDBTextEditLOCALIDAD: TcxDBTextEdit;
    lblPROVINCIA: TLabel;
    cxDBTextEditPROVINCIA: TcxDBTextEdit;
    lblCUIT: TLabel;
    cxDBTextEditCUIT: TcxDBTextEdit;
    lblTELEFONO: TLabel;
    cxDBTextEditTELEFONO: TcxDBTextEdit;
    lblMAIL: TLabel;
    cxDBTextEditMAIL: TcxDBTextEdit;
    lblFK_SITUACIONTRIB: TLabel;
    cxDBSpinEdit2: TcxDBSpinEdit;
    lblSITUACIONTRIB: TLabel;
    dblkcbbLookupSituacionTrib: TDBLookupComboBox;
    procedure cxDBTextEditNOMBREKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDialogoProveedores: TfrmDialogoProveedores;

implementation

uses
  udmGestion;

{$R *.dfm}

procedure TfrmDialogoProveedores.cxDBTextEditNOMBREKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if cxDBTextEditNOMBRE.Text <> '' then
     tbc1.Tabs.Text := cxDBTextEditNOMBRE.Text;
end;

end.
