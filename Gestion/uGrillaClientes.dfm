inherited frmGrillaClientes: TfrmGrillaClientes
  Caption = 'Clientes'
  ClientHeight = 501
  ClientWidth = 791
  ExplicitWidth = 807
  ExplicitHeight = 539
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl1: TPanel
    Width = 791
    ExplicitWidth = 791
    inherited dbnvgr1: TDBNavigator
      Hints.Strings = ()
      OnClick = dbnvgr1Click
    end
  end
  inherited pnl2: TPanel
    Width = 791
    Height = 356
    ExplicitWidth = 791
    ExplicitHeight = 356
    inherited dbgrd1: TDBGrid
      Width = 789
      Height = 354
      Columns = <
        item
          Expanded = False
          FieldName = 'NOMBRECOMP'
          Width = 137
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'DNI'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CUIT'
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LookupSituacionTrib'
          Width = 104
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DOMICILIO'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PROVINCIA'
          Width = 93
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LOCALIDAD'
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TELEFONO'
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MAIL'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FK_SITUACIONTRIB'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'RAZON_SOCIAL'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'NOMBRE_COMERCIAL'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'NOMBRE'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'APELLIDO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'ID_CLIENTE'
          Visible = False
        end>
    end
  end
  inherited dsBase: TDataSource
    DataSet = dmGestion.fdqryClientes
  end
end
