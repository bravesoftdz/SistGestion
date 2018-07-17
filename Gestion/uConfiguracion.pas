unit uConfiguracion;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPlantillaGenerica, Vcl.ExtCtrls,
  Vcl.WinXCtrls, System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList,
  Vcl.CategoryButtons, Vcl.Imaging.pngimage, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Grids, Vcl.Themes, Vcl.Samples.Spin, Vcl.FileCtrl;

type
  TfrmConfiguracion = class(TfrmPlantillaGenerica)
    pnlApariencia: TPanel;
    lblVclStyle: TLabel;
    pnlToolbar: TPanel;
    imgMenu: TImage;
    lblTitulo: TLabel;
    SV: TSplitView;
    catMenuItems: TCategoryButtons;
    actlst1: TActionList;
    ilMenu: TImageList;
    actApariencia: TAction;
    actCopiaSeg: TAction;
    actFact: TAction;
    btnAceptarApaciencia: TButton;
    btnCancelarApaciencia: TButton;
    actImp: TAction;
    grpApariencia: TGroupBox;
    lbl1: TLabel;
    strngrdMuestra: TStringGrid;
    chkMuestra1: TCheckBox;
    chkMuestra2: TCheckBox;
    edt1: TEdit;
    rbMuestra1: TRadioButton;
    rbMuestra2: TRadioButton;
    cbbMuestra: TComboBox;
    btnMuestra2: TButton;
    btnMuestra1: TButton;
    cbb: TComboBox;
    pnlCopiaSeg: TPanel;
    btnAceptarCopiaSeg: TButton;
    btnCancelarCopiaSeg: TButton;
    grpCopiaSeg: TGroupBox;
    chkAutmatica: TCheckBox;
    seDias: TSpinEdit;
    lblCopiaSeg: TLabel;
    edtPath: TEdit;
    lblDias: TLabel;
    btnPath: TButton;
    pnlImpre: TPanel;
    btnAceptarImpre: TButton;
    btnCancelarImpre: TButton;
    grpImpre: TGroupBox;
    pnlFact: TPanel;
    btnAceptarFact: TButton;
    btnCancelarFact: TButton;
    grpFact: TGroupBox;
    procedure imgMenuClick(Sender: TObject);
    procedure SVClosed(Sender: TObject);
    procedure catMenuItemsCategoryCollapase(Sender: TObject;
      const Category: TButtonCategory);
    procedure SVOpening(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbbChange(Sender: TObject);
    procedure btnCancelarApacienciaClick(Sender: TObject);
    procedure btnAceptarApacienciaClick(Sender: TObject);
    procedure btnPathClick(Sender: TObject);
    procedure actAparienciaExecute(Sender: TObject);
    procedure actCopiaSegExecute(Sender: TObject);
    procedure actImpExecute(Sender: TObject);
    procedure actFactExecute(Sender: TObject);
  private
      Defecto: string;     //guarda skin default
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfiguracion: TfrmConfiguracion;

implementation


{$R *.dfm}

procedure TfrmConfiguracion.actAparienciaExecute(Sender: TObject);
begin
  inherited;
  pnlApariencia.Visible := True;
  pnlCopiaSeg.Visible := False;
  pnlImpre.Visible:= False;
  pnlFact.Visible:= False;
end;

procedure TfrmConfiguracion.actCopiaSegExecute(Sender: TObject);
begin
  inherited;
  pnlCopiaSeg.Visible := True;
  pnlApariencia.Visible := False;
  pnlImpre.Visible:= False;
  pnlFact.Visible:= False;
end;

procedure TfrmConfiguracion.actFactExecute(Sender: TObject);
begin
  inherited;
  pnlFact.Visible:= True;
  pnlImpre.Visible:= False;
  pnlCopiaSeg.Visible := False;
  pnlApariencia.Visible := False;
end;

procedure TfrmConfiguracion.actImpExecute(Sender: TObject);
begin
  inherited;
  pnlImpre.Visible:= True;
  pnlFact.Visible:= False;
  pnlCopiaSeg.Visible := False;
  pnlApariencia.Visible := False;
end;

procedure TfrmConfiguracion.btnAceptarApacienciaClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmConfiguracion.btnCancelarApacienciaClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmConfiguracion.btnPathClick(Sender: TObject); // abre el cuadro de dialogo de windows para seleccionar una carpeta, si el windows es mas viejo que winvista, usa el default de delphi.
 var
  Carpeta: string;
begin
  inherited;
  if Win32MajorVersion >= 6 then
    with TFileOpenDialog.Create(nil) do
      try
        Title := 'Seleccione la carpeta destino';
        Options := [fdoPickFolders, fdoPathMustExist, fdoForceFileSystem]; // YMMV
        OkButtonLabel := 'Seleccionar';
        DefaultFolder := GetCurrentDir;
       // FileName := Carpeta;
        if Execute then
           edtPath.Text := FileName;
      finally
        Free;
      end
  else
    if SelectDirectory('Seleccione la carpeta destino', ExtractFileDrive(Carpeta), Carpeta,[sdNewUI, sdNewFolder]) then
       edtPath.Text := Carpeta;
end;

procedure TfrmConfiguracion.catMenuItemsCategoryCollapase(Sender: TObject;
  const Category: TButtonCategory);            // las cat del menu no se cierran
begin
  inherited;
  catMenuItems.Categories[0].Collapsed := False;
end;

procedure TfrmConfiguracion.cbbChange(Sender: TObject);
begin
  inherited;
  TStyleManager.SetStyle(cbb.Text);
end;

procedure TfrmConfiguracion.FormCreate(Sender: TObject);   //  cargo el combobox con los estilos
 var
  StyleName: string;
begin
  inherited;
  for StyleName in TStyleManager.StyleNames do
      cbb.Items.Add(StyleName);
  Defecto := TStyleManager.ActiveStyle.Name;
  cbb.ItemIndex := cbb.Items.IndexOf(TStyleManager.ActiveStyle.Name);
end;

procedure TfrmConfiguracion.FormShow(Sender: TObject);  //cargo la grilla con datos
begin
  inherited;
  strngrdMuestra.Cells[0,0]:= 'Cliente';
  strngrdMuestra.Cells[0,1]:= 'Microsoft';
  strngrdMuestra.Cells[0,2]:= 'Apple';
  strngrdMuestra.Cells[0,3]:= 'Oracle';
  strngrdMuestra.Cells[1,0]:= 'S�mbolo';
  strngrdMuestra.Cells[1,1]:= 'Ventana';
  strngrdMuestra.Cells[1,2]:= 'Manzana';
  strngrdMuestra.Cells[1,3]:= 'DB';
  strngrdMuestra.Cells[2,0]:= 'Telefono';
  strngrdMuestra.Cells[2,1]:= '113456';
  strngrdMuestra.Cells[2,2]:= '4874561';
  strngrdMuestra.Cells[2,3]:= '156879';
  strngrdMuestra.Cells[3,0]:= 'Saldo';
  strngrdMuestra.Cells[3,1]:= '$40,23';
  strngrdMuestra.Cells[3,2]:= '$27,19';
  strngrdMuestra.Cells[3,3]:= '$51,75';
end;

procedure TfrmConfiguracion.imgMenuClick(Sender: TObject); //movimientos del menu
begin
  inherited;
  if SV.Opened then
     SV.Close
  else
     SV.Open;
end;

procedure TfrmConfiguracion.SVClosed(Sender: TObject);  //muestra los iconos despues de cerrar
begin
  inherited;
  catMenuItems.ButtonOptions := catMenuItems.ButtonOptions - [boShowCaptions];
  if SV.CloseStyle = svcCompact then
    catMenuItems.Width := SV.CompactWidth;
end;

procedure TfrmConfiguracion.SVOpening(Sender: TObject);  //muestra los botones despues de abrir el menu
begin
  inherited;
  catMenuItems.ButtonOptions := catMenuItems.ButtonOptions + [boShowCaptions];
  catMenuItems.Width := SV.OpenedWidth;
end;

end.