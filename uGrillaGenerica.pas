unit uGrillaGenerica;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPlantillaGenerica, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, System.UITypes;

type
  TfrmGrillaGenerica = class(TfrmPlantillaGenerica)
    pnl1: TPanel;
    pnl2: TPanel;
    dsBase: TDataSource;
    dbnvgr1: TDBNavigator;
    dbgrd1: TDBGrid;
    btnNuevo: TButton;
    btnEliminar: TButton;
    btnExportar: TButton;
    btnSalir: TButton;
    btnEditar: TButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalirClick(Sender: TObject);
    procedure dbgrd1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnEliminarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnNuevoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGrillaGenerica: TfrmGrillaGenerica;

implementation

{$R *.dfm}

procedure TfrmGrillaGenerica.btnEditarClick(Sender: TObject);
begin
  inherited;
  dsBase.DataSet.Edit;
end;

procedure TfrmGrillaGenerica.btnEliminarClick(Sender: TObject);
begin
  inherited;
  if not (dsBase.DataSet.IsEmpty) then
    begin
      if MessageDlg('Borrar registro?', mtConfirmation,[mbOK, mbCancel],0) = mrOk then
         DSBASE.DataSet.Delete

      else
        Abort
    end
end;

procedure TfrmGrillaGenerica.btnNuevoClick(Sender: TObject);
begin
  inherited;
  DSBASE.DataSet.Insert;
end;

procedure TfrmGrillaGenerica.btnSalirClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmGrillaGenerica.dbgrd1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
//var
 // grid : TDBGrid;
//  row : integer;
begin
//  inherited;
//   grid := sender as TDBGrid;
//   row := grid.DataSource.DataSet.RecNo;
//   if Odd(row) then
//      grid.Canvas.Brush.Color := clSilver
//   else
//      grid.Canvas.Brush.Color := clDkGray;
//      grid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfrmGrillaGenerica.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dsBase.DataSet.Close;
end;

procedure TfrmGrillaGenerica.FormShow(Sender: TObject);
begin
  inherited;
  dsBase.DataSet.Open;
end;

end.
