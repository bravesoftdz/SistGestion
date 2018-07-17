inherited frmGrillaPlanPago: TfrmGrillaPlanPago
  Caption = 'Planes de pago'
  ClientHeight = 488
  ClientWidth = 778
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 794
  ExplicitHeight = 526
  PixelsPerInch = 96
  TextHeight = 13
  object lblCuotas: TLabel
    Left = 484
    Top = 37
    Width = 45
    Height = 13
    Caption = 'Cuotas :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbtxtFECHA_ACTUALIZACION: TDBText
    Left = 248
    Top = 365
    Width = 153
    Height = 13
    DataField = 'FECHA_ACTUALIZACION'
    DataSource = dsDetalle
  end
  object dbtxtRETENCION: TDBText
    Left = 227
    Top = 67
    Width = 81
    Height = 17
    DataField = 'RETENCION'
    DataSource = dsMaestro
  end
  object lblArancel: TLabel
    Left = 45
    Top = 67
    Width = 52
    Height = 13
    Caption = 'Arancel:  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblFecha: TLabel
    Left = 45
    Top = 365
    Width = 114
    Height = 13
    Caption = 'Ultima actualizaci'#243'n'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblTarjeta: TLabel
    Left = 45
    Top = 37
    Width = 45
    Height = 13
    Caption = 'Tarjeta:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object imgAgregar: TImage
    Left = 563
    Top = 18
    Width = 32
    Height = 32
    Hint = 'Agregar'
    Picture.Data = {
      0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
      000000200806000000737A7AF40000000473424954080808087C086488000000
      097048597300000B1300000B1301009A9C1800000186494441545885C5D7C14A
      234110C6F15F0604CD6EF41D76E37A547C048FEA7B0986BC80289EC427D09BEF
      B02A5EF52A8A07C528C405F7D019D4268E696726F3873A24C3D4575DDD5355DD
      3239F3D8C41A96F10B9DD1B3075CE11427381AFD57094BD8C7335E27B427EC61
      B18C701B7DFC4B108EED053DCCA58AFFC14509E1D8CED09D547C15B7158AE776
      839549565E87F8FB203ECDC40FD5A6BD683BC69E89FE14C473DB8EC597A49FF6
      9894775F445BB1FF8D559409E015BBF98B0BD28A4C55010CD0C9B081D9310EEB
      A68DF54CA8ED4DB196098DA52996E14EDA5EA752E4FBA68521660A1CB42A08E0
      33865949E7A5C95438387C83FB4C98648A285B078AB8CC8431AA294E3361866B
      8A13C2B0F9A49952FC333F848735ACEE2B0EF098FF58145AE4B43230C4EFD841
      2FD14919DB1A979236CEA720FE5741F7ED0A83635DE2D7C28DAA90959A82B896
      D079BBC2F45A65DABF5C79CC9C30BDA67E1DF169DF5272E2EA0A03E420417880
      1D633EB598945EDFC1BA8FD7F385D1B37B5C7ABB9E1F7B57648AF80FDF3DDDBF
      BEF461E20000000049454E44AE426082}
    OnClick = imgAgregarClick
  end
  object imgEliminar: TImage
    Left = 620
    Top = 18
    Width = 32
    Height = 32
    Hint = 'Eliminar'
    Picture.Data = {
      0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
      000000200806000000737A7AF40000000473424954080808087C086488000000
      097048597300000B1300000B1301009A9C180000017E494441545885C5D74D4A
      234118C6F15F1A048D46EF30137569F0082E1DEF3530E205861157E20974E71D
      FCC0AD6E43C4858371200ECC2C2A8DDA2465DAEA74FFE15D7417D4F3D6E7FB54
      CBECAC620F3BD8C21774C66DBF71874B9CE374FCAF123671843FF837633CE310
      EB29C26D1CE06F09E162BC601F4B65C5377093205C8C2B746715DFC67D85E279
      0CD09B65E4F3107F9BC4D4995856EDB4C79663E29E38A8413C8F1F45F14D69BB
      BD6CBC282CC5518DE279FCCAC5D794BB64AA8A213A19BE61B1B82635D0C66E26
      DCED4DB1930985A529B6E0417CAD5289F53D686184854807AD0A1298C6284BEC
      3C994C85C6E1133C66829389917ADE63DC66828D6A8ACB4CF0704D714E309BCF
      9AB98A57F24D7832E7914EE2184FF9C7BA5022EB1AFD085F8B19EDD798C0F749
      53D2C6750DE21722D5B72B18C77989F785175594DE9C92E82B5179BB827BAD72
      DA3F1C799125C1BDA69C8E91B0E1921C57573090C312C243FC34E1A8152953EB
      3BD8F5FE79BE366E7BC4ADD7E7F99937974C8CFF8D98F5A76952A1BB00000000
      49454E44AE426082}
    OnClick = imgEliminarClick
  end
  object pnlDetail: TPanel
    Left = 440
    Top = 67
    Width = 281
    Height = 350
    TabOrder = 0
    object dbgrdPlanPago: TDBGrid
      Left = 1
      Top = 1
      Width = 279
      Height = 348
      Align = alClient
      DataSource = dsDetalle
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = dbgrdPlanPagoDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'NROCUOTA'
          Width = 107
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COEFICIENTE'
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FECHA_ACTUALIZACION'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'IDPLAN_PAGO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'FK_IDMETODOPAGO'
          Visible = False
        end>
    end
  end
  object btnSalir: TBitBtn
    Left = 440
    Top = 433
    Width = 97
    Height = 33
    Caption = 'Salir'
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333333333000033338833333333333333333F333333333333
      0000333911833333983333333388F333333F3333000033391118333911833333
      38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
      911118111118333338F3338F833338F3000033333911111111833333338F3338
      3333F8330000333333911111183333333338F333333F83330000333333311111
      8333333333338F3333383333000033333339111183333333333338F333833333
      00003333339111118333333333333833338F3333000033333911181118333333
      33338333338F333300003333911183911183333333383338F338F33300003333
      9118333911183333338F33838F338F33000033333913333391113333338FF833
      38F338F300003333333333333919333333388333338FFF830000333333333333
      3333333333333333333888330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
    TabOrder = 2
    OnClick = btnSalirClick
  end
  object btnAceptar: TBitBtn
    Left = 243
    Top = 433
    Width = 97
    Height = 33
    Caption = 'Aceptar'
    Default = True
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
    TabOrder = 1
    OnClick = btnAceptarClick
  end
  object dblkcbbTarjeta: TDBLookupComboBox
    Left = 114
    Top = 29
    Width = 287
    Height = 21
    DropDownAlign = daCenter
    KeyField = 'IDMETODO_PAGO'
    ListField = 'NOMBRE'
    ListSource = dsMaestro
    TabOrder = 3
  end
  object dsMaestro: TDataSource
    DataSet = dmGestion.fdqryMD_MetPag
    Left = 16
    Top = 184
  end
  object dsDetalle: TDataSource
    DataSet = dmGestion.fdqryMDPlanPago
    Left = 16
    Top = 240
  end
end