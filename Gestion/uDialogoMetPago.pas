unit uDialogoMetPago;

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
  dxSkinXmas2008Blue, cxDBEdit, cxTextEdit, cxMaskEdit, cxSpinEdit,
  Vcl.ExtCtrls, Vcl.DBCtrls, cxCurrencyEdit;

type
  TfrmDialogoMetPago = class(TfrmDialogoGenerico)
    lbl1: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    lblNombre: TLabel;
    cxDBTextEditNombre: TcxDBTextEdit;
    dbrgrpTIPO: TDBRadioGroup;
    lblRetencion: TLabel;
    cxDBCurrencyEditRetencion: TcxDBCurrencyEdit;
    procedure dbrgrpTIPOClick(Sender: TObject);
    procedure btnAceptarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDialogoMetPago: TfrmDialogoMetPago;

implementation

uses
  udmGestion;

{$R *.dfm}

procedure TfrmDialogoMetPago.btnAceptarClick(Sender: TObject);
begin
  if dmGestion.fdqryMetodos_pago.FieldByName('TIPO').Value = 'E' then              //cuando posteo si es efectivo, borro cualquier valor de retencion
     dmGestion.fdqryMetodos_pago.FieldByName('RETENCION').Value := null;
  inherited;
end;

procedure TfrmDialogoMetPago.dbrgrpTIPOClick(Sender: TObject);        //cuando selecciono, para efectivo escondo el edit retencion
begin
  inherited;
  if dbrgrpTIPO.ItemIndex = 2 then
     begin
        lblRetencion.Visible := False;
        cxDBCurrencyEditRetencion.Visible := False;
        lblRetencion.Enabled := False;
        cxDBCurrencyEditRetencion.Enabled := False;
     end;
  if (dbrgrpTIPO.ItemIndex = 0) or (dbrgrpTIPO.ItemIndex = 1) then
     begin
        lblRetencion.Visible := True;
        cxDBCurrencyEditRetencion.Visible := True;
        lblRetencion.Enabled := True;
        cxDBCurrencyEditRetencion.Enabled := True;
     end;
end;

procedure TfrmDialogoMetPago.FormShow(Sender: TObject);          //si estoy editando. si es efectivo muestro retencion sino lo escondo
begin
  inherited;
  if dsBase.DataSet.State = dsEdit then
     case dbrgrpTIPO.ItemIndex of
        0..1: begin
                lblRetencion.Visible := True;
                cxDBCurrencyEditRetencion.Visible := True;
                lblRetencion.Enabled := True;
                cxDBCurrencyEditRetencion.Enabled := True;
              end;
        2: begin
             lblRetencion.Visible := False;
             cxDBCurrencyEditRetencion.Visible := False;
             lblRetencion.Enabled := False;
             cxDBCurrencyEditRetencion.Enabled := False;
           end;
     end;
end;

end.
