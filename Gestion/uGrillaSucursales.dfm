inherited frmGrillaSucursal: TfrmGrillaSucursal
  Caption = 'Sucursales'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl1: TPanel
    inherited dbnvgr1: TDBNavigator
      Hints.Strings = ()
      Visible = False
      OnClick = dbnvgr1Click
    end
  end
  inherited pnl2: TPanel
    inherited dbgrd1: TDBGrid
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_SUCURSAL'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'NOMBRE_COMERCIAL'
          Width = 223
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DOMICILIO'
          Width = 198
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TELEFONO'
          Width = 125
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MAIL'
          Width = 113
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IIBB'
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RAZON_SOCIAL'
          Width = 137
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CUIT'
          Width = 92
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LOCALIDAD'
          Width = 146
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PROVINCIA'
          Width = 143
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FECHA_INICIO'
          Width = 102
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FK_SITUACIONTRIB'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'lookupSitTrib'
          Visible = True
        end>
    end
  end
  inherited dsBase: TDataSource
    DataSet = dmGestion.fdqrySucursales
  end
end
