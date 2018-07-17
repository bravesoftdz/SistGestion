unit uGrillaUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uGrillaGenerica, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TfrmGrillaUsuarios = class(TfrmGrillaGenerica)
    procedure btnNuevoClick(Sender: TObject);
    procedure dbnvgr1Click(Sender: TObject; Button: TNavigateBtn);
    procedure btnEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGrillaUsuarios: TfrmGrillaUsuarios;

implementation

uses
  udmSeguridad, uDialogoUsuarios;

{$R *.dfm}

procedure TfrmGrillaUsuarios.btnEditarClick(Sender: TObject);
begin
  inherited;
  TfrmDialogoUsuarios.MostrarModal;
end;

procedure TfrmGrillaUsuarios.btnNuevoClick(Sender: TObject);
begin
  inherited;
  TfrmDialogoUsuarios.MostrarModal;
end;

procedure TfrmGrillaUsuarios.dbnvgr1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  inherited;
   if Button = nbInsert then
      begin
        DSBASE.DataSet.Insert;
        TfrmDialogoUsuarios.MostrarModal
      end;

  if Button = nbEdit then
      begin
        DSBASE.DataSet.Edit;
        TfrmDialogoUsuarios.MostrarModal
      end;
end;

end.
