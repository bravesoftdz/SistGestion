inherited frmDialogoPlanPago: TfrmDialogoPlanPago
  BorderStyle = bsDialog
  Caption = 'Plan de pago'
  ClientHeight = 201
  ClientWidth = 496
  ExplicitWidth = 502
  ExplicitHeight = 229
  PixelsPerInch = 96
  TextHeight = 13
  inherited btnAceptar: TBitBtn
    Left = 101
    Top = 147
    TabOrder = 1
    ExplicitLeft = 101
    ExplicitTop = 147
  end
  inherited btnSalir: TBitBtn
    Left = 298
    Top = 147
    TabOrder = 2
    ExplicitLeft = 298
    ExplicitTop = 147
  end
  inherited tbc1: TTabControl
    Left = 37
    Top = 27
    Width = 422
    Height = 104
    TabOrder = 0
    ExplicitLeft = 37
    ExplicitTop = 27
    ExplicitWidth = 422
    ExplicitHeight = 104
    object lblCuota: TLabel
      Left = 30
      Top = 30
      Width = 64
      Height = 13
      Caption = 'Nro de Cuota'
    end
    object lblCoeficiente: TLabel
      Left = 224
      Top = 30
      Width = 54
      Height = 13
      Caption = 'Coeficiente'
    end
    object dbedtCoeficiente: TDBEdit
      Left = 224
      Top = 49
      Width = 169
      Height = 21
      DataField = 'COEFICIENTE'
      DataSource = dsBase
      TabOrder = 1
    end
    object dbedtCuota: TDBEdit
      Left = 30
      Top = 49
      Width = 97
      Height = 21
      DataField = 'NROCUOTA'
      DataSource = dsBase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  inherited dsBase: TDataSource
    DataSet = dmGestion.fdqryMDPlanPago
  end
end
