inherited frmGrillaMetPago: TfrmGrillaMetPago
  Caption = 'M'#233'todos de pago'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl1: TPanel
    inherited dbnvgr1: TDBNavigator
      Hints.Strings = ()
      OnClick = dbnvgr1Click
    end
  end
  inherited pnl2: TPanel
    inherited dbgrd1: TDBGrid
      Columns = <
        item
          Expanded = False
          FieldName = 'IDMETODO_PAGO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'NOMBRE'
          Width = 249
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RETENCION'
          Width = 108
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPO'
          Width = 36
          Visible = True
        end>
    end
  end
  inherited dsBase: TDataSource
    DataSet = dmGestion.fdqryMetodos_pago
  end
end
