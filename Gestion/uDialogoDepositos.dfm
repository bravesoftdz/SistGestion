inherited frmDialogoDepositos: TfrmDialogoDepositos
  Caption = 'Dep'#243'sitos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited tbc1: TTabControl
    object lbl1: TLabel
      Left = 24
      Top = 16
      Width = 43
      Height = 13
      Caption = 'NUMERO'
      FocusControl = cxDBSpinEdit1
      Visible = False
    end
    object lbl2: TLabel
      Left = 24
      Top = 93
      Width = 37
      Height = 13
      Caption = 'Nombre'
      FocusControl = cxDBTextEdit1
    end
    object lbl3: TLabel
      Left = 24
      Top = 136
      Width = 40
      Height = 13
      Caption = 'Domicilio'
      FocusControl = cxDBTextEdit2
    end
    object lbl4: TLabel
      Left = 176
      Top = 16
      Width = 81
      Height = 13
      Caption = 'FK_IDSUCURSAL'
      FocusControl = cxDBSpinEdit2
      Visible = False
    end
    object lbl5: TLabel
      Left = 384
      Top = 93
      Width = 40
      Height = 13
      Caption = 'Sucursal'
      FocusControl = dblkcbblookupNomSuc
    end
    object cxDBSpinEdit1: TcxDBSpinEdit
      Left = 24
      Top = 32
      DataBinding.DataField = 'NUMERO'
      TabOrder = 0
      Visible = False
      Width = 121
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 24
      Top = 109
      DataBinding.DataField = 'NOMBRE'
      TabOrder = 1
      Width = 185
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 24
      Top = 152
      DataBinding.DataField = 'DOMICILIO'
      TabOrder = 2
      Width = 305
    end
    object cxDBSpinEdit2: TcxDBSpinEdit
      Left = 176
      Top = 32
      DataBinding.DataField = 'FK_IDSUCURSAL'
      TabOrder = 3
      Visible = False
      Width = 121
    end
    object dblkcbblookupNomSuc: TDBLookupComboBox
      Left = 384
      Top = 109
      Width = 305
      Height = 21
      DataField = 'lookupNomSuc'
      TabOrder = 4
    end
  end
  inherited dsBase: TDataSource
    DataSet = dmGestion.fdqryDepositos
  end
end
