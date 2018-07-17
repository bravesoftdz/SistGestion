inherited frmDialogoArticulos: TfrmDialogoArticulos
  Caption = 'Art'#237'culo'
  PixelsPerInch = 96
  TextHeight = 13
  inherited tbc1: TTabControl
    Width = 10
    Height = 8
    Visible = False
    ExplicitWidth = 10
    ExplicitHeight = 8
  end
  object pgc1: TPageControl [3]
    Left = 23
    Top = 57
    Width = 714
    Height = 353
    ActivePage = tsGeneral
    MultiLine = True
    TabOrder = 3
    object tsGeneral: TTabSheet
      Caption = 'General'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      object lblCodigo: TLabel
        Left = 549
        Top = 16
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = cxDBTextEditCodigo
        Visible = False
      end
      object lblCodigoAlt: TLabel
        Left = 95
        Top = 43
        Width = 88
        Height = 13
        Caption = 'C'#243'digo alternativo'
        FocusControl = cxDBTextEditCodigoAlt
      end
      object lblNombre: TLabel
        Left = 95
        Top = 97
        Width = 37
        Height = 13
        Caption = 'Nombre'
        FocusControl = cxDBTextEditNombre
      end
      object lblDescripcion: TLabel
        Left = 95
        Top = 151
        Width = 54
        Height = 13
        Caption = 'Descripci'#243'n'
      end
      object cxDBTextEditCodigo: TcxDBTextEdit
        Left = 549
        Top = 35
        DataBinding.DataField = 'CODIGO'
        DataBinding.DataSource = dsBase
        TabOrder = 0
        Visible = False
        Width = 121
      end
      object cxDBTextEditCodigoAlt: TcxDBTextEdit
        Left = 95
        Top = 66
        DataBinding.DataField = 'CODIGOALT'
        DataBinding.DataSource = dsBase
        TabOrder = 1
        Width = 287
      end
      object cxDBTextEditNombre: TcxDBTextEdit
        Left = 95
        Top = 120
        DataBinding.DataField = 'NOMBRE'
        DataBinding.DataSource = dsBase
        TabOrder = 2
        Width = 287
      end
      object dbmmoDESCRIPCION: TDBMemo
        Left = 95
        Top = 174
        Width = 521
        Height = 113
        DataField = 'DESCRIPCION'
        DataSource = dsBase
        TabOrder = 3
      end
    end
    object tsValores: TTabSheet
      Caption = 'Valores'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object pnlCosto: TPanel
        Left = 0
        Top = 0
        Width = 706
        Height = 116
        Align = alTop
        TabOrder = 0
        object lblMargen: TLabel
          Left = 20
          Top = 74
          Width = 165
          Height = 13
          Caption = 'Margen deseado sin impuestos: %'
        end
        object lblCosto: TLabel
          Left = 20
          Top = 23
          Width = 28
          Height = 13
          Caption = 'Costo'
        end
        object cxDBCurrencyEditCosto: TcxDBCurrencyEdit
          Left = 260
          Top = 20
          DataBinding.DataField = 'COSTO'
          DataBinding.DataSource = dsBase
          Properties.UseDisplayFormatWhenEditing = True
          Properties.ValidationOptions = [evoShowErrorIcon]
          TabOrder = 0
          Width = 121
        end
        object edtMargen: TEdit
          Left = 260
          Top = 63
          Width = 121
          Height = 21
          Hint = '%'
          HelpType = htKeyword
          Alignment = taRightJustify
          NumbersOnly = True
          TabOrder = 1
          TextHint = '%'
          OnKeyUp = edtMargenKeyUp
        end
      end
      object pnlPrecio: TPanel
        Left = 0
        Top = 116
        Width = 706
        Height = 93
        Align = alClient
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        TabOrder = 1
        object lblPrecio: TLabel
          Left = 20
          Top = 40
          Width = 142
          Height = 13
          Caption = 'Precio de venta sin impuestos'
        end
        object lblAlicuota: TLabel
          Left = 422
          Top = 40
          Width = 38
          Height = 13
          Caption = 'Al'#237'cuota'
        end
        object cxCurrencyEditPrecio: TcxCurrencyEdit
          Left = 172
          Top = 36
          EditValue = 0c
          Properties.Alignment.Horz = taRightJustify
          Properties.UseDisplayFormatWhenEditing = True
          Properties.ValidationOptions = [evoShowErrorIcon]
          TabOrder = 0
          OnKeyUp = cxCurrencyEditPrecioKeyUp
          Width = 209
        end
        object cbbAlicuota: TComboBox
          Left = 470
          Top = 36
          Width = 209
          Height = 21
          TabOrder = 1
          Items.Strings = (
            'Sin IVA: 0%'
            'IVA Tasa normal: 21%'
            'IVA Tasa reducida: 10,5%'
            'IVA Tasa especial: 27%')
        end
      end
      object pnlAlicuota: TPanel
        Left = 0
        Top = 209
        Width = 706
        Height = 116
        Align = alBottom
        TabOrder = 2
        object lblSubtitulo: TLabel
          Left = 20
          Top = 6
          Width = 231
          Height = 13
          Caption = 'Precio de venta con impuestos: Visor de al'#237'cuota'
        end
        object lblSinIVA: TLabel
          Left = 20
          Top = 38
          Width = 58
          Height = 13
          Caption = 'Sin IVA: 0%'
        end
        object lblIVA21: TLabel
          Left = 20
          Top = 78
          Width = 108
          Height = 13
          Caption = 'IVA Tasa normal: 21%'
        end
        object lblIVA10: TLabel
          Left = 356
          Top = 38
          Width = 127
          Height = 13
          Caption = 'IVA Tasa reducida: 10,5%'
        end
        object lblIVA27: TLabel
          Left = 356
          Top = 78
          Width = 114
          Height = 13
          Caption = 'IVA Tasa especial: 27%'
        end
        object cxCurrencyEditSinIVA: TcxCurrencyEdit
          Left = 172
          Top = 35
          EditValue = 0c
          Enabled = False
          Properties.Alignment.Horz = taCenter
          TabOrder = 0
          Width = 133
        end
        object cxCurrencyEditIVA21: TcxCurrencyEdit
          Left = 172
          Top = 70
          EditValue = 0c
          Enabled = False
          Properties.Alignment.Horz = taCenter
          TabOrder = 1
          Width = 133
        end
        object cxCurrencyEditIVA27: TcxCurrencyEdit
          Left = 546
          Top = 75
          EditValue = 0c
          Enabled = False
          Properties.Alignment.Horz = taCenter
          TabOrder = 2
          Width = 133
        end
        object cxCurrencyEditIVA10: TcxCurrencyEdit
          Left = 546
          Top = 35
          EditValue = 0c
          Enabled = False
          Properties.Alignment.Horz = taCenter
          TabOrder = 3
          Width = 133
        end
      end
    end
    object tsStock: TTabSheet
      Caption = 'Stock'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lblID_PROVEEDOR: TLabel
        Left = 32
        Top = 24
        Width = 90
        Height = 13
        Caption = 'FK_IDPROVEEDOR'
        FocusControl = cxDBSpinEdit1
        Visible = False
      end
      object lblProveedor: TLabel
        Left = 400
        Top = 24
        Width = 50
        Height = 13
        Caption = 'Proveedor'
        FocusControl = dblkcbblookupProveedor
      end
      object lblStock: TLabel
        Left = 32
        Top = 104
        Width = 26
        Height = 13
        Caption = 'Stock'
      end
      object lblStockMin: TLabel
        Left = 32
        Top = 150
        Width = 26
        Height = 13
        Caption = 'Stock'
      end
      object lblDeposito: TLabel
        Left = 400
        Top = 104
        Width = 42
        Height = 13
        Caption = 'Deposito'
        FocusControl = dblkcbblookupProveedor
      end
      object cxDBSpinEdit1: TcxDBSpinEdit
        Left = 32
        Top = 40
        DataBinding.DataField = 'FK_IDPROVEEDOR'
        DataBinding.DataSource = dsBase
        TabOrder = 0
        Visible = False
        Width = 121
      end
      object dblkcbblookupProveedor: TDBLookupComboBox
        Left = 400
        Top = 43
        Width = 285
        Height = 21
        DataField = 'lookupProveedor'
        DataSource = dsBase
        TabOrder = 1
      end
      object edtDeposito: TEdit
        Left = 400
        Top = 123
        Width = 121
        Height = 21
        TabOrder = 2
        Text = 'edtDeposito'
      end
      object edtStock: TEdit
        Left = 32
        Top = 123
        Width = 121
        Height = 21
        Enabled = False
        TabOrder = 3
        Text = 'aca va el stock'
      end
      object edtStockMin: TEdit
        Left = 32
        Top = 169
        Width = 121
        Height = 38
        Enabled = False
        TabOrder = 4
        Text = 'Stock Minimo'
      end
    end
  end
  inherited dsBase: TDataSource
    DataSet = dmGestion.fdqryArticulos
  end
end
