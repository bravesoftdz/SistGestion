unit uDialogoGenerico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPlantillaGenerica, Data.DB,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls;

type
  TfrmDialogoGenerico = class(TfrmPlantillaGenerica)
    tbc1: TTabControl;
    btnAceptar: TBitBtn;
    btnSalir: TBitBtn;
    dsBase: TDataSource;
    procedure btnSalirClick(Sender: TObject);
    procedure btnAceptarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDialogoGenerico: TfrmDialogoGenerico;

implementation

{$R *.dfm}

procedure TfrmDialogoGenerico.btnAceptarClick(Sender: TObject);
begin
  inherited;
  dsBase.DataSet.Post;
  Close;
end;

procedure TfrmDialogoGenerico.btnSalirClick(Sender: TObject);
begin
  inherited;
  dsBase.DataSet.Cancel;
  Close;
end;

procedure TfrmDialogoGenerico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dsBase.DataSet.Cancel;
end;

procedure TfrmDialogoGenerico.FormShow(Sender: TObject);
begin
  inherited;
  dsBase.DataSet.Open;
end;

end.
