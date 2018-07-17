inherited frmGrup_Usu: TfrmGrup_Usu
  BorderStyle = bsSingle
  Caption = 'Grupos de usuarios'
  ClientHeight = 504
  ClientWidth = 933
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 939
  ExplicitHeight = 532
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 32
    Top = 60
    Width = 45
    Height = 13
    Caption = 'Usuarios:'
  end
  object lbl2: TLabel
    Left = 325
    Top = 60
    Width = 79
    Height = 13
    Caption = 'Grupo asignado:'
  end
  object lbl3: TLabel
    Left = 618
    Top = 60
    Width = 93
    Height = 13
    Caption = 'Grupos disponibles:'
  end
  object lbl4: TLabel
    Left = 400
    Top = 144
    Width = 54
    Height = 13
    Caption = 'Descripcion'
  end
  object dbgrdUsuario: TDBGrid
    Left = 32
    Top = 79
    Width = 273
    Height = 336
    Ctl3D = True
    DataSource = dsUsuario
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentCtl3D = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'LOGIN'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMBRE'
        Visible = True
      end>
  end
  object dbgrdUsu_grup: TDBGrid
    Left = 325
    Top = 79
    Width = 273
    Height = 336
    DataSource = dsUsu_Grup
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = dbgrdUsu_grupDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Descripcion'
        Visible = True
      end>
  end
  object dbgrdGrupAux: TDBGrid
    Left = 618
    Top = 79
    Width = 273
    Height = 336
    DataSource = dsGrupAux
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = dbgrdGrupAuxDblClick
  end
  object btnSalir: TButton
    Left = 768
    Top = 443
    Width = 123
    Height = 35
    Caption = 'Salir'
    TabOrder = 3
    OnClick = btnSalirClick
  end
  object dsUsuario: TDataSource
    AutoEdit = False
    DataSet = dmSeguridad.fdqryUsuarios
    OnDataChange = dsUsuarioDataChange
    Left = 32
    Top = 16
  end
  object dsUsu_Grup: TDataSource
    AutoEdit = False
    DataSet = dmSeguridad.fdqryUsu_grup
    Left = 336
    Top = 16
  end
  object dsGrupAux: TDataSource
    AutoEdit = False
    DataSet = dmSeguridad.fdmtblGrupoAux
    Left = 632
    Top = 16
  end
end
