inherited frmGrillaVentas: TfrmGrillaVentas
  Caption = 'Ventas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl1: TPanel
    inherited dbnvgr1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited pnl2: TPanel
    inherited dbgrd1: TDBGrid
      Columns = <
        item
          Expanded = False
          FieldName = 'FECHA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'lookupCliente'
          Width = 198
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NRO_FACTURA'
          Width = 99
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HORA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCUENTO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RECARGO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NRO_COMPROBANTE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUBTOTAL'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FK_IDCLIENTE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FK_IDPUNTO_VENTA'
          Visible = True
        end>
    end
  end
  inherited dsBase: TDataSource
    DataSet = dmGestion.fdqryVentas
  end
end
