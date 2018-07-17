unit uDialogoPlanPago;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uDialogoGenerico, Data.DB, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxSpinEdit, cxDBEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxCurrencyEdit;

type
  TfrmDialogoPlanPago = class(TfrmDialogoGenerico)
    lblCuota: TLabel;
    lblCoeficiente: TLabel;
    dbedtCoeficiente: TDBEdit;
    dbedtCuota: TDBEdit;
    procedure btnAceptarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDialogoPlanPago: TfrmDialogoPlanPago;

implementation

uses
  udmGestion;

{$R *.dfm}



procedure TfrmDialogoPlanPago.btnAceptarClick(Sender: TObject);
begin
  //inherited;
  with dmGestion do
    begin
       fdqryMDPlanPago.Post;
       fdqryMDPlanPago.First;
       while not fdqryMDPlanPago.Eof do
          begin
             fdqryMDPlanPago.Edit;
             fdqryMDPlanPago.FieldByName('FECHA_ACTUALIZACION').Value := Now;
             fdqryMDPlanPago.Post;
             fdqryMDPlanPago.Next;
          end;
       fdqryMDPlanPago.ApplyUpdates(0);
       fdqryMDPlanPago.CommitUpdates;
       fdqryMDPlanPago.Refresh;
       Close;
    end;
end;

end.
