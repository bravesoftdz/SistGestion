�
 TDMGESTION 0F<  TPF0
TdmGestion	dmGestionOldCreateOrderHeight�Width� TFDQueryfdqryClientesActive	OnCalcFieldsfdqryClientesCalcFieldsOnReconcileErrorfdqryClientesReconcileError
ConnectionGestionConnectionUpdateOptions.AssignedValuesuvGeneratorName UpdateOptions.GeneratorNameGEN_IDCLIENTEUpdateOptions.KeyFields
ID_CLIENTEUpdateOptions.AutoIncFields
ID_CLIENTESQL.StringsSELECT * FROM CLIENTES LeftLTopY TIntegerFieldintgrfldClientesID_CLIENTEAutoGenerateValue	arAutoInc	FieldName
ID_CLIENTEOrigin
ID_CLIENTEProviderFlags
pfInUpdate	pfInWherepfInKey   TStringFieldstrngfldClientesNOMBREDisplayLabelNombre	FieldNameNOMBREOriginNOMBRESize  TStringFieldstrngfldClientesAPELLIDODisplayLabelApellido	FieldNameAPELLIDOOriginAPELLIDOSize  TStringFieldstrngfldClientesDOMICILIODisplayLabel	Domicilio	FieldName	DOMICILIOOrigin	DOMICILIOSize(  TStringFieldstrngfldClientesLOCALIDADDisplayLabel	Localidad	FieldName	LOCALIDADOrigin	LOCALIDADSize(  TStringFieldstrngfldClientesPROVINCIADisplayLabel	Provincia	FieldName	PROVINCIAOrigin	PROVINCIASize(  TStringFieldstrngfldClientesDNI	FieldNameDNIOriginDNISize	  TStringFieldstrngfldClientesCUIT	FieldNameCUITOriginCUITSize  TStringFieldstrngfldClientesTELEFONODisplayLabel   Teléfono
	FieldNameTELEFONOOriginTELEFONOSize  TStringFieldstrngfldClientesMAILDisplayLabelEmail	FieldNameMAILOriginMAILSize(  TIntegerField intgrfldClientesFK_SITUACIONTRIB	FieldNameFK_SITUACIONTRIBOriginFK_SITUACIONTRIBRequired	  TStringField#strngfldClientesLookupSituacionTribDisplayLabel   Situación Tributaria	FieldKindfkLookup	FieldNameLookupSituacionTribLookupDataSetfdqrySituaciones_tributariasLookupKeyFieldsID_SITUACIONTRIBLookupResultFieldNOMBRE	KeyFieldsFK_SITUACIONTRIBSizeLookup	  TStringFieldstrngfldClientesTIPO	FieldNameTIPOOriginTIPOSize  TStringFieldstrngfldClientesRAZON_SOCIALDisplayLabel   Razón social	FieldNameRAZON_SOCIALOriginRAZON_SOCIALSize(  TStringField strngfldClientesNOMBRE_COMERCIALDisplayLabelNombre comercial	FieldNameNOMBRE_COMERCIALOriginNOMBRE_COMERCIALSize2  TStringFieldstrngfldClientesNOMBRECOMPDisplayLabelNombre completo	FieldKindfkCalculated	FieldName
NOMBRECOMPSize4
Calculated	   TFDQueryfdqrySituaciones_tributariasActive	OnReconcileError*fdqrySituaciones_tributariasReconcileError
ConnectionGestionConnectionUpdateOptions.AssignedValuesuvGeneratorName UpdateOptions.GeneratorNameGEN_IDSITUACIONTRIBUpdateOptions.KeyFieldsID_SITUACIONTRIBUpdateOptions.AutoIncFieldsID_SITUACIONTRIBSQL.Strings%SELECT * FROM SITUACIONES_TRIBUTARIAS Left� Top] TIntegerField4intgrfldSituaciones_tributariasTableID_SITUACIONTRIBAutoGenerateValue	arAutoInc	FieldNameID_SITUACIONTRIBOriginID_SITUACIONTRIBProviderFlags
pfInUpdate	pfInWherepfInKey   TStringField*strngfldSituaciones_tributariasTableNOMBREDisplayLabel   Situación Tributaria	FieldNameNOMBREOriginNOMBRESize   TFDConnectionGestionConnectionParams.StringsConnectionDef=Gestion 	Connected	LoginPromptLeft'Top
  TFDQueryfdqryProveedoresActive	OnReconcileErrorfdqryProveedoresReconcileError
ConnectionGestionConnectionUpdateOptions.AssignedValuesuvGeneratorName UpdateOptions.GeneratorNameGEN_IDPROVEEDORUpdateOptions.KeyFieldsID_PROVEEDORUpdateOptions.AutoIncFieldsID_PROVEEDORSQL.StringsSELECT * FROM PROVEEDORES LeftWTop[ TIntegerFieldintgrfldProveedoresID_PROVEEDORAutoGenerateValue	arAutoInc	FieldNameID_PROVEEDOROriginID_PROVEEDORProviderFlags
pfInUpdate	pfInWherepfInKey   TStringFieldstrngfldProveedoresNOMBREDisplayLabelNombre comercial	FieldNameNOMBREOriginNOMBRESize3  TStringFieldstrngfldProveedoresDOMICILIODisplayLabel	Domicilio	FieldName	DOMICILIOOrigin	DOMICILIOSize(  TStringFieldstrngfldProveedoresLOCALIDADDisplayLabel	Localidad	FieldName	LOCALIDADOrigin	LOCALIDADSize(  TStringFieldstrngfldProveedoresPROVINCIADisplayLabel	Provincia	FieldName	PROVINCIAOrigin	PROVINCIASize(  TStringFieldstrngfldProveedoresCUIT	FieldNameCUITOriginCUITSize  TStringFieldstrngfldProveedoresTELEFONODisplayLabel	   Teléfono	FieldNameTELEFONOOriginTELEFONOSize  TStringFieldstrngfldProveedoresMAILDisplayLabelEmail
	FieldNameMAILOriginMAILSize(  TIntegerField#intgrfldProveedoresFK_SITUACIONTRIB	FieldNameFK_SITUACIONTRIBOriginFK_SITUACIONTRIBRequired	  TStringField&strngfldProveedoresLookupSituacionTribDisplayLabel   Situación Tributaria	FieldKindfkLookup	FieldNameLookupSituacionTribLookupDataSetfdqrySituaciones_tributariasLookupKeyFieldsID_SITUACIONTRIBLookupResultFieldNOMBRE	KeyFieldsFK_SITUACIONTRIBSizeLookup	   TFDGUIxWaitCursorFDGUIxWaitCursor1ProviderFormsScreenCursor
gcrDefaultLeft(Toph  TFDPhysFBDriverLinkFDPhysFBDriverLink1	VendorLibTC:\Users\Jeremias\Desktop\Proyecto\Proyecto Sistema de Gestion\Software\fbclient.dllLeft0Top�   TFDQueryfdqryArticulos
BeforePostfdqryArticulosBeforePostOnNewRecordfdqryArticulosNewRecordOnReconcileErrorfdqryArticulosReconcileError
ConnectionGestionConnectionUpdateOptions.AssignedValuesuvGeneratorName SQL.StringsSELECT * FROM ARTICULOS LeftOTop�  TStringFieldstrngfldArticulosCODIGOAutoGenerateValue	arDefaultDisplayLabel   Código	FieldNameCODIGOOriginCODIGOProviderFlags
pfInUpdate	pfInWherepfInKey Required	Size
  TStringFieldstrngfldArticulosCODIGOALTDisplayLabel   Código alternativo	FieldName	CODIGOALTOrigin	CODIGOALTSize
  TStringFieldstrngfldArticulosNOMBREDisplayLabelNombre	FieldNameNOMBREOriginNOMBRESize  TStringFieldstrngfldArticulosDESCRIPCIONDisplayLabel   Descripción	FieldNameDESCRIPCIONOriginDESCRIPCIONSizeP  	TBCDFieldbcdfldArticulosCOSTODisplayLabelCosto	FieldNameCOSTOOriginCOSTO	PrecisionSize  	TBCDFieldbcdfldArticulosPRECIODisplayLabelPrecio	FieldNamePRECIOOriginPRECIO	PrecisionSize  TSmallintFieldfdqryArticulosIVADisplayLabelI.V.A.	FieldNameIVAOriginIVA  TIntegerFieldintgrfldArticulosFK_IDPROVEEDOR	FieldNameFK_IDPROVEEDOROriginFK_IDPROVEEDOR  TStringField strngfldArticuloslookupProveedorDisplayLabel	Proveedor	FieldKindfkLookup	FieldNamelookupProveedorLookupDataSetfdqryProveedoresLookupKeyFieldsID_PROVEEDORLookupResultFieldNOMBRE	KeyFieldsFK_IDPROVEEDORSize3Lookup	   TFDStoredProcspProximo_id_ART
ConnectionGestionConnectionStoredProcNameSP_PROXIMO_IDLeft� Top� 	ParamDataPositionNameTIPODataTypeftString
FDDataTypedtAnsiString	ParamTypeptInputSize PositionNameVALORDataTypeftString
FDDataTypedtAnsiString	ParamTypeptOutputSize
    TFDQueryfdqryMetodos_pagoOnReconcileErrorfdqryMetodos_pagoReconcileError
ConnectionGestionConnectionUpdateOptions.AssignedValuesuvGeneratorName UpdateOptions.GeneratorNameGEN_METODO_PAGOUpdateOptions.KeyFieldsIDMETODO_PAGOUpdateOptions.AutoIncFieldsIDMETODO_PAGOSQL.StringsSELECT * FROM METODOS_PAGO LeftKTop�  TIntegerField!intgrfldMetodos_pagoIDMETODO_PAGOAutoGenerateValue	arAutoInc	FieldNameIDMETODO_PAGOOriginIDMETODO_PAGOProviderFlags
pfInUpdate	pfInWherepfInKey   TStringFieldstrngfldMetodos_pagoNOMBREDisplayLabelNombre	FieldNameNOMBREOriginNOMBRESize  TCurrencyFieldcrncyfldMetodos_pagoRETENCION	AlignmenttaCenterDisplayLabel
   Retención	FieldName	RETENCIONOrigin	RETENCIONDisplayFormat##0.00 %currency  TStringFieldstrngfldMetodos_pagoTIPO	AlignmenttaCenterDisplayLabelTipo	FieldNameTIPOOriginTIPOSize   TFDQueryfdqryPlanes_pagoCachedUpdates	OnReconcileErrorfdqryPlanes_pagoReconcileError
ConnectionGestionConnectionUpdateOptions.AssignedValuesuvGeneratorNameuvAutoCommitUpdates UpdateOptions.GeneratorNameGEN_IDPLAN_PAGOUpdateOptions.KeyFieldsIDPLAN_PAGOUpdateOptions.AutoIncFieldsIDPLAN_PAGOSQL.StringsSELECT * FROM PLANES_PAGOORDER BY NROCUOTA ASCENDING; LeftFTopB TIntegerFieldintgrfldPlanes_pagoIDPLAN_PAGOAutoGenerateValue	arAutoInc	FieldNameIDPLAN_PAGOOriginIDPLAN_PAGOProviderFlags
pfInUpdate	pfInWherepfInKey   TSmallintFieldfdqryPlanes_pagoNROCUOTA	AlignmenttaCenterDisplayLabelNro de Cuota	FieldNameNROCUOTAOriginNROCUOTA  TCurrencyFieldfdqryPlanes_pagoCOEFICIENTE	AlignmenttaCenterCustomConstraintCOEFICIENTE < 5ConstraintErrorMessage
error papaDisplayLabelCoeficiente	FieldNameCOEFICIENTEOriginCOEFICIENTEDisplayFormat0.0000
EditFormat0.0000currency  
TDateField#fdqryPlanes_pagoFECHA_ACTUALIZACIONDisplayLabel   Fecha de Actualización	FieldNameFECHA_ACTUALIZACIONOriginFECHA_ACTUALIZACION  TIntegerField"intgrfldPlanes_pagoFK_IDMETODOPAGO	FieldNameFK_IDMETODOPAGOOriginFK_IDMETODOPAGORequired	   TFDQueryfdqryDinamico
ConnectionGestionConnectionLeft8Top@  TFDQueryfdqryMD_MetPagOnReconcileErrorfdqryMD_MetPagReconcileError
ConnectionGestionConnectionUpdateOptions.AssignedValuesuvGeneratorName UpdateOptions.GeneratorNameGEN_METODO_PAGOUpdateOptions.KeyFieldsIDMETODO_PAGOUpdateOptions.AutoIncFieldsIDMETODO_PAGOSQL.StringsSELECT * FROM {id METODOS_PAGO}WHERE TIPO = 'C' Left� Top�  TIntegerFieldintgrfldMD_MetPagIDMETODO_PAGOAutoGenerateValue	arAutoIncDisplayWidth	FieldNameIDMETODO_PAGOOriginIDMETODO_PAGOProviderFlags
pfInUpdate	pfInWherepfInKey   TStringFieldstrngfldMD_MetPagNOMBREDisplayWidth	FieldNameNOMBREOriginNOMBRESize(  TCurrencyFieldcrncyfldMD_MetPagRETENCIONDisplayLabel
   Retención	FieldName	RETENCIONOrigin	RETENCIONDisplayFormat##0.00 %currency  TStringFieldstrngfldMD_MetPagTIPODisplayWidth	FieldNameTIPOOriginTIPOSize   TFDQueryfdqryMDPlanPagoCachedUpdates	MasterSourcedsMD_MetPag_PlanPagMasterFieldsIDMETODO_PAGODetailFieldsFK_IDMETODOPAGOOnReconcileErrorfdqryMDPlanPagoReconcileError
ConnectionGestionConnectionFetchOptions.AssignedValuesevCache FetchOptions.CachefiBlobsfiMeta UpdateOptions.AssignedValuesuvGeneratorName UpdateOptions.GeneratorNameGEN_IDPLAN_PAGOUpdateOptions.KeyFieldsIDPLAN_PAGOUpdateOptions.AutoIncFieldsIDPLAN_PAGOSQL.StringsSELECT * FROM {id PLANES_PAGO} &WHERE FK_IDMETODOPAGO = :IDMETODO_PAGOORDER BY NROCUOTA ASCENDING;     Left� TopI	ParamDataNameIDMETODO_PAGODataType	ftInteger	ParamTypeptInput   TFDAutoIncFieldfdtncfldMDPlanPagoIDPLAN_PAGO	FieldNameIDPLAN_PAGOOriginIDPLAN_PAGOProviderFlags
pfInUpdate	pfInWherepfInKey IdentityInsert	  TSmallintFieldsmlntfldMDPlanPagoNROCUOTA	AlignmenttaCenterDisplayLabelNro de Cuota	FieldNameNROCUOTAOriginNROCUOTA
OnValidate"smlntfldMDPlanPagoNROCUOTAValidate  TCurrencyFieldcrncyfldMDPlanPagoCOEFICIENTE	AlignmenttaCenterCustomConstraintCOEFICIENTE < 5ConstraintErrorMessage(El coeficiente no puede ser mayor que 5.DisplayLabelCoeficiente	FieldNameCOEFICIENTEOriginCOEFICIENTEDisplayFormat0.0000
EditFormat0.0000currency  
TDateField"dtfldMDPlanPagoFECHA_ACTUALIZACION	FieldNameFECHA_ACTUALIZACIONOriginFECHA_ACTUALIZACION  TIntegerField!intgrfldMDPlanPagoFK_IDMETODOPAGO	FieldNameFK_IDMETODOPAGOOriginFK_IDMETODOPAGORequired	   TDataSourcedsMD_MetPag_PlanPagDataSetfdqryMD_MetPagLeftTop�   TFDQueryfdqryVentas
ConnectionGestionConnectionSQL.StringsSELECT * FROM VENTAS Left� Top' TStringFieldstrngfldVentasNRO_FACTURA	FieldNameNRO_FACTURAOriginNRO_FACTURAProviderFlags
pfInUpdate	pfInWherepfInKey Required	Size  TStringFieldstrngfldVentasTIPO	FieldNameTIPOOriginTIPOSize  
TDateFielddtfldVentasFECHA	FieldNameFECHAOriginFECHA  
TTimeFieldfdqryVentasHORA	FieldNameHORAOriginHORA  TCurrencyFieldcrncyfldVentasDESCUENTO	FieldName	DESCUENTOOrigin	DESCUENTOcurrency  TCurrencyFieldcrncyfldVentasRECARGO	FieldNameRECARGOOriginRECARGOcurrency  TStringFieldstrngfldVentasNRO_COMPROBANTE	FieldNameNRO_COMPROBANTEOriginNRO_COMPROBANTESize
  	TBCDFieldbcdfldVentasSUBTOTAL	FieldNameSUBTOTALOriginSUBTOTALcurrency		PrecisionSize  	TBCDFieldbcdfldVentasTOTAL	FieldNameTOTALOriginTOTALcurrency		PrecisionSize  TIntegerFieldintgrfldVentasFK_IDCLIENTE	FieldNameFK_IDCLIENTEOriginFK_IDCLIENTE  TIntegerFieldintgrfldVentasFK_IDPUNTO_VENTA	FieldNameFK_IDPUNTO_VENTAOriginFK_IDPUNTO_VENTA  TStringFieldstrngfldVentaslookupClienteDisplayWidth4	FieldKindfkLookup	FieldNamelookupClienteLookupDataSetfdqryClientesLookupKeyFields
ID_CLIENTELookupResultField
NOMBRECOMP	KeyFieldsFK_IDCLIENTESize2Lookup	   TFDQueryfdqryDepositos
ConnectionGestionConnectionUpdateOptions.AssignedValuesuvGeneratorName UpdateOptions.GeneratorNameGEN_NUM_DEPOUpdateOptions.KeyFieldsNUMEROUpdateOptions.AutoIncFieldsNUMEROSQL.StringsSELECT * FROM DEPOSITOS LeftYTop$ TIntegerFieldintgrfldDepositosNUMEROAutoGenerateValue	arAutoIncDisplayLabelNumero	FieldNameNUMEROOriginNUMEROProviderFlags
pfInUpdate	pfInWherepfInKey   TStringFieldstrngfldDepositosNOMBREDisplayLabelNombre	FieldNameNOMBREOriginNOMBRESize  TStringFieldstrngfldDepositosDOMICILIODisplayLabel	Domicilio	FieldName	DOMICILIOOrigin	DOMICILIOSize(  TIntegerFieldintgrfldDepositosFK_IDSUCURSAL	FieldNameFK_IDSUCURSALOriginFK_IDSUCURSALRequired	  TStringFieldstrngfldDepositoslookupNomSucDisplayLabelSucursal	FieldKindfkLookup	FieldNamelookupNomSucLookupDataSetfdqrySucursalesLookupKeyFieldsID_SUCURSALLookupResultFieldNOMBRE_COMERCIAL	KeyFieldsFK_IDSUCURSALSize2Lookup	   TFDQueryfdqrySucursales
ConnectionGestionConnectionUpdateOptions.AssignedValuesuvGeneratorName UpdateOptions.GeneratorNameGEN_IDSUCURSALUpdateOptions.KeyFieldsID_SUCURSALUpdateOptions.AutoIncFieldsID_SUCURSALSQL.StringsSELECT * FROM SUCURSALES Left�Top& TIntegerFieldintgrfldSucursalesID_SUCURSALAutoGenerateValue	arAutoInc	FieldNameID_SUCURSALOriginID_SUCURSALProviderFlags
pfInUpdate	pfInWherepfInKey   TStringField"strngfldSucursalesNOMBRE_COMERCIAL	FieldNameNOMBRE_COMERCIALOriginNOMBRE_COMERCIALSize2  TStringFieldstrngfldSucursalesRAZON_SOCIAL	FieldNameRAZON_SOCIALOriginRAZON_SOCIALSize(  TStringFieldstrngfldSucursalesCUIT	FieldNameCUITOriginCUITSize  TStringFieldstrngfldSucursalesIIBB	FieldNameIIBBOriginIIBBSize
  TStringFieldstrngfldSucursalesDOMICILIO	FieldName	DOMICILIOOrigin	DOMICILIOSize(  TStringFieldstrngfldSucursalesLOCALIDAD	FieldName	LOCALIDADOrigin	LOCALIDADSize(  TStringFieldstrngfldSucursalesPROVINCIA	FieldName	PROVINCIAOrigin	PROVINCIASize(  TStringFieldstrngfldSucursalesTELEFONO	FieldNameTELEFONOOriginTELEFONOSize  TStringFieldstrngfldSucursalesMAIL	FieldNameMAILOriginMAILSize(  
TDateFielddtfldSucursalesFECHA_INICIO	FieldNameFECHA_INICIOOriginFECHA_INICIO  TIntegerField"intgrfldSucursalesFK_SITUACIONTRIB	FieldNameFK_SITUACIONTRIBOriginFK_SITUACIONTRIBRequired	  TStringFieldstrngfldSucursaleslookupSitTrib	FieldKindfkLookup	FieldNamelookupSitTribLookupDataSetfdqrySituaciones_tributariasLookupKeyFieldsID_SITUACIONTRIBLookupResultFieldNOMBRE	KeyFieldsFK_SITUACIONTRIBSizeLookup	    