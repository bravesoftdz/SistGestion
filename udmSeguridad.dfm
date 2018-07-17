object dmSeguridad: TdmSeguridad
  OldCreateOrder = False
  Height = 310
  Width = 564
  object SeguridadConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=Seguridad')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 10
  end
  object fdqryGrupos: TFDQuery
    AfterPost = fdqryGruposAfterPost
    OnReconcileError = fdqryGruposReconcileError
    Connection = SeguridadConnection
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_GRUPOS_ID'
    UpdateOptions.KeyFields = 'ID_GRUPO'
    UpdateOptions.AutoIncFields = 'ID_GRUPO'
    SQL.Strings = (
      'SELECT * FROM GRUPOS')
    Left = 112
    Top = 50
    object fdqryGruposID_GRUPO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_GRUPO'
      Origin = 'ID_GRUPO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object fdqryGruposNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 50
    end
  end
  object fdqryGrup_opc: TFDQuery
    Connection = SeguridadConnection
    SQL.Strings = (
      'SELECT * FROM GRUP_OPC')
    Left = 107
    Top = 251
    object fdqryGrup_opcID_GRUP: TIntegerField
      FieldName = 'ID_GRUP'
      Origin = 'ID_GRUP'
    end
    object fdqryGrup_opcID_OPC: TIntegerField
      FieldName = 'ID_OPC'
      Origin = 'ID_OPC'
    end
  end
  object fdqryOpciones: TFDQuery
    AfterPost = fdqryOpcionesAfterPost
    OnReconcileError = fdqryOpcionesReconcileError
    Connection = SeguridadConnection
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_OPCIONES_ID'
    UpdateOptions.AutoIncFields = 'ID_OPCION'
    SQL.Strings = (
      'SELECT * FROM OPCIONES')
    Left = 110
    Top = 101
    object fdqryOpcionesID_OPCION: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_OPCION'
      Origin = 'ID_OPCION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqryOpcionesNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 50
    end
    object fdqryOpcionesAGRUPA: TStringField
      DisplayLabel = 'Agrupa'
      FieldName = 'AGRUPA'
      Origin = 'AGRUPA'
      Size = 4
    end
  end
  object fdqryUsuarios: TFDQuery
    Active = True
    BeforePost = fdqryUsuariosBeforePost
    AfterPost = fdqryUsuariosAfterPost
    OnReconcileError = fdqryUsuariosReconcileError
    Connection = SeguridadConnection
    UpdateOptions.AssignedValues = [uvRefreshMode, uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_USUARIOS_ID'
    UpdateOptions.AutoIncFields = 'ID_USUARIO'
    SQL.Strings = (
      'SELECT * FROM USUARIOS')
    Left = 111
    Top = 155
    object fdqryUsuariosID_USUARIO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object fdqryUsuariosNOMBRE: TStringField
      DisplayLabel = 'Nombre completo'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 50
    end
    object fdqryUsuariosLOGIN: TStringField
      DisplayLabel = 'Login'
      FieldName = 'LOGIN'
      Origin = 'LOGIN'
      Size = 15
    end
    object fdqryUsuariosPASSWORD: TStringField
      DisplayLabel = 'Contrase'#241'a'
      FieldName = 'PASSWORD'
      Origin = '"PASSWORD"'
    end
  end
  object fdqryUsu_grup: TFDQuery
    Connection = SeguridadConnection
    SQL.Strings = (
      'SELECT * FROM USU_GRUP')
    Left = 110
    Top = 202
    object fdqryUsu_grupID_USU: TIntegerField
      FieldName = 'ID_USU'
      Origin = 'ID_USU'
    end
    object fdqryUsu_grupID_GRUP: TIntegerField
      FieldName = 'ID_GRUP'
      Origin = 'ID_GRUP'
    end
    object strngfldUsu_grupDescripcion: TStringField
      FieldKind = fkLookup
      FieldName = 'Descripcion'
      LookupDataSet = fdqryGrupos
      LookupKeyFields = 'ID_GRUPO'
      LookupResultField = 'NOMBRE'
      KeyFields = 'ID_GRUP'
      Size = 50
      Lookup = True
    end
  end
  object fdqryLogin: TFDQuery
    Connection = SeguridadConnection
    SQL.Strings = (
      'select opciones.agrupa'
      'from opciones'
      '   inner join grup_opc on (opciones.id_opcion = grup_opc.id_opc)'
      '   inner join usu_grup on (grup_opc.id_grup = usu_grup.id_grup)'
      'where usu_grup.id_usu =:USUARIO'
      '')
    Left = 200
    Top = 160
    ParamData = <
      item
        Name = 'USUARIO'
        DataType = ftString
        ParamType = ptInput
      end>
    object fdqryLoginAGRUPA: TStringField
      DisplayLabel = 'Agrupa'
      FieldName = 'AGRUPA'
      Origin = 'AGRUPA'
      Size = 4
    end
  end
  object FDGUIxWaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    ScreenCursor = gcrDefault
    Left = 376
    Top = 120
  end
  object FDPhysFBDriverLink: TFDPhysFBDriverLink
    VendorLib = 
      'C:\Users\Jeremias\Desktop\Proyecto\Proyecto Sistema de Gestion\S' +
      'oftware\fbclient.dll'
    Left = 376
    Top = 184
  end
  object fdmtblGrupoAux: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 208
    Top = 48
  end
end
