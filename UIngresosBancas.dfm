object FRelacionGananciaGastosDeudas: TFRelacionGananciaGastosDeudas
  Left = 327
  Top = 245
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Beneficios/Gastos Banca'
  ClientHeight = 431
  ClientWidth = 776
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 5
    Top = 0
    Width = 766
    Height = 426
    Hint = 'Permite agregar o sumar un gasto al total de gastos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
    object LB_2: TLabel
      Left = 8
      Top = 20
      Width = 29
      Height = 13
      Caption = 'Fecha'
    end
    object LB_1: TLabel
      Left = 272
      Top = 13
      Width = 84
      Height = 13
      Caption = 'N'#250'mero de Banca'
    end
    object SBT_1: TSpeedButton
      Left = 496
      Top = 9
      Width = 137
      Height = 22
      GroupIndex = 1
      Caption = '&Habilitar Mod. Datos'
      Flat = True
      Visible = False
      OnClick = SBT_1Click
    end
    object SBT_2: TSpeedButton
      Left = 496
      Top = 33
      Width = 137
      Height = 22
      GroupIndex = 1
      Down = True
      Caption = '&Deshabilitar Mod. Datos'
      Flat = True
      Visible = False
      OnClick = SBT_2Click
    end
    object Calendario_1: TJvMonthCalendar
      Left = 9
      Top = 36
      Width = 177
      Height = 153
      Hint = 'Seleccione la fecha'
      AutoSize = True
      CalColors.TitleBackColor = 14190371
      Date = 0.590168229166010900
      FirstDayOfWeek = dowSunday
      ParentShowHint = False
      ShowHint = False
      ShowTodayCircle = False
      TabOrder = 0
      WeekNumbers = True
      OnClick = Calendario_1Click
    end
    object GB_1: TGroupBox
      Left = 272
      Top = 286
      Width = 488
      Height = 135
      Caption = 'Detalle de gastos en banca'
      TabOrder = 1
      object DBGrid_Gastos: TJvDBGrid
        Left = 2
        Top = 34
        Width = 484
        Height = 99
        Align = alClient
        DataSource = DS_Gastos
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection]
        ParentShowHint = False
        PopupMenu = PM_DetallesGastos
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        ShowTitleHint = True
        TitlePopup = PM_DetallesGastos
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 17
        TitleRowHeight = 17
        Columns = <
          item
            Expanded = False
            FieldName = 'DescripcionG'
            Title.Alignment = taCenter
            Title.Caption = 'Descripci'#243'n Gasto'
            Width = 253
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MontoGasto'
            Title.Alignment = taCenter
            Title.Caption = 'Monto Gasto'
            Width = 92
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FechaG'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha Gasto'
            Width = 102
            Visible = True
          end>
      end
      object DBNV_1: TJvDBNavigator
        Left = 2
        Top = 15
        Width = 484
        Height = 19
        DataSource = DS_Gastos
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
        Align = alTop
        Hints.Strings = (
          'Ir al Primero'
          'Anterior'
          'Proximo'
          'Ir al Ultimo'
          'Insert record'
          'Delete record'
          'Edit record'
          'Post edit'
          'Cancel edit'
          'Refrescar')
        TabOrder = 1
      end
    end
    object GB_2: TGroupBox
      Left = 697
      Top = 13
      Width = 57
      Height = 59
      Hint = 'N'#250'mero de la Banca'
      Caption = 'N. Banca'
      TabOrder = 2
      object LB_11: TLabel
        Left = 6
        Top = 18
        Width = 86
        Height = 39
        Alignment = taCenter
        Caption = 'LB_11'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -32
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
    end
    object GB_3: TGroupBox
      Left = 4
      Top = 288
      Width = 266
      Height = 133
      TabOrder = 3
      object LB_13: TLabel
        Left = 9
        Top = 39
        Width = 47
        Height = 13
        Caption = 'Direcci'#243'n:'
      end
      object LB_10: TLabel
        Left = 9
        Top = 15
        Width = 90
        Height = 13
        Caption = 'Nombre Empleado:'
      end
      object M_1: TMemo
        Left = 10
        Top = 54
        Width = 251
        Height = 65
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object JvGroupBox1: TJvGroupBox
      Left = 272
      Top = 54
      Width = 421
      Height = 57
      Caption = 'Beneficios por Banca'
      TabOrder = 4
      object LB_3: TLabel
        Left = 7
        Top = 13
        Width = 80
        Height = 13
        Caption = 'Beneficios Banca'
      end
      object LB_6: TLabel
        Left = 109
        Top = 13
        Width = 73
        Height = 13
        Caption = 'Monto Recibido'
      end
      object LB_7: TLabel
        Left = 306
        Top = 15
        Width = 48
        Height = 13
        Caption = 'Diferencia'
      end
      object LB_15: TLabel
        Left = 207
        Top = 14
        Width = 60
        Height = 13
        Caption = 'Total Gastos'
      end
      object ECal_VeneficiosBanca: TJvCalcEdit
        Left = 6
        Top = 27
        Width = 98
        Height = 24
        DisplayFormat = '$ ,0.00##'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ShowButton = False
        TabOrder = 0
        DecimalPlacesAlwaysShown = False
        OnExit = ECal_VeneficiosBancaExit
        OnKeyPress = ECal_VeneficiosBancaKeyPress
      end
      object ECal_MontoRecivido: TJvCalcEdit
        Left = 107
        Top = 28
        Width = 97
        Height = 24
        Hint = 
          'Ingrese aqui el monto recibido en efectivo de total de veneficio' +
          's de la banca'
        DisplayFormat = '$ ,0.00##'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        DecimalPlacesAlwaysShown = False
        OnExit = ECal_MontoRecividoExit
        OnKeyPress = ECal_MontoRecividoKeyPress
      end
      object ECal_MontoFaltante: TJvCalcEdit
        Left = 304
        Top = 30
        Width = 91
        Height = 22
        Flat = True
        ParentFlat = False
        DisplayFormat = '$ ,0.00##'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        ShowButton = False
        TabOrder = 2
        ZeroEmpty = False
        DecimalPlacesAlwaysShown = False
        OnChange = ECal_MontoFaltanteChange
      end
      object ECal_TotalGastos: TJvCalcEdit
        Left = 207
        Top = 29
        Width = 91
        Height = 22
        Flat = True
        ParentFlat = False
        DisplayFormat = '$ ,0.00##'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        ShowButton = False
        TabOrder = 3
        ZeroEmpty = False
        DecimalPlacesAlwaysShown = False
        OnChange = ECal_MontoFaltanteChange
      end
    end
    object JvGroupBox2: TJvGroupBox
      Left = 272
      Top = 112
      Width = 486
      Height = 55
      Caption = 'Cuentas de Bancos'
      TabOrder = 5
      object LB_8: TLabel
        Left = 8
        Top = 16
        Width = 69
        Height = 13
        Caption = 'Nombre Banco'
      end
      object LB_9: TLabel
        Left = 210
        Top = 14
        Width = 75
        Height = 13
        Caption = 'N'#250'mero Cuenta'
      end
      object CBB_NombreBanco: TJvComboBox
        Left = 7
        Top = 31
        Width = 200
        Height = 21
        Style = csDropDownList
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemHeight = 13
        ParentFont = False
        TabOrder = 0
        OnChange = CBB_NombreBancoChange
        OnDropDown = CBB_NombreBancoDropDown
        OnKeyPress = CBB_NombreBancoKeyPress
      end
      object CBB_Cuenta: TJvComboBox
        Left = 210
        Top = 31
        Width = 108
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 1
        OnKeyPress = CBB_CuentaKeyPress
      end
      object EL_NumeroRBanco: TLabeledEdit
        Left = 321
        Top = 30
        Width = 161
        Height = 21
        EditLabel.Width = 119
        EditLabel.Height = 13
        EditLabel.Caption = 'N'#250'mero de Recibo Banco'
        MaxLength = 40
        TabOrder = 2
        OnKeyPress = EL_NumeroRBancoKeyPress
      end
    end
    object JvGroupBox3: TJvGroupBox
      Left = 272
      Top = 166
      Width = 487
      Height = 120
      Caption = 'Registro de Gastos'
      TabOrder = 6
      object LB_4: TLabel
        Left = 8
        Top = 13
        Width = 61
        Height = 13
        Caption = 'Monto Gasto'
      end
      object LB_14: TLabel
        Left = 105
        Top = 12
        Width = 102
        Height = 13
        Caption = 'Descripci'#243'n del Gasto'
      end
      object LB_5: TLabel
        Left = 323
        Top = 12
        Width = 91
        Height = 13
        Caption = 'Realizar el d'#233'dito a'
      end
      object ECal_Gasto: TJvCalcEdit
        Left = 8
        Top = 27
        Width = 91
        Height = 24
        DisplayFormat = '$ ,0.00##'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ShowButton = False
        TabOrder = 0
        DecimalPlacesAlwaysShown = False
        OnChange = ECal_GastoChange
        OnKeyPress = ECal_GastoKeyPress
      end
      object M_DescripcionG: TMemo
        Left = 103
        Top = 27
        Width = 218
        Height = 63
        MaxLength = 160
        ScrollBars = ssVertical
        TabOrder = 1
        OnKeyPress = M_DescripcionGKeyPress
      end
      object CBB_CuentaDestino: TJvComboBox
        Left = 323
        Top = 27
        Width = 161
        Height = 21
        AutoDropDown = True
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 2
        OnDropDown = CBB_CuentaDestinoDropDown
        OnKeyPress = CBB_CuentaDestinoKeyPress
      end
      object BBT_Agregar: TBitBtn
        Left = 8
        Top = 94
        Width = 91
        Height = 21
        Caption = '&Agregar(Sumar)'
        TabOrder = 4
        OnClick = BBT_AgregarClick
      end
      object BBT_Guardar: TBitBtn
        Left = 244
        Top = 94
        Width = 75
        Height = 21
        Caption = '&Guardar'
        TabOrder = 5
        OnClick = BBT_GuardarClick
      end
      object BBT_Limpiar: TBitBtn
        Left = 325
        Top = 94
        Width = 75
        Height = 21
        Caption = '&Limpiar'
        TabOrder = 6
        OnClick = BBT_LimpiarClick
      end
      object BBT_Salir: TBitBtn
        Left = 407
        Top = 94
        Width = 75
        Height = 21
        Caption = '&Salir'
        TabOrder = 7
        OnClick = BBT_SalirClick
      end
      object EL_1: TLabeledEdit
        Left = 323
        Top = 66
        Width = 160
        Height = 21
        EditLabel.Width = 96
        EditLabel.Height = 13
        EditLabel.Caption = 'No. factura o recibo'
        MaxLength = 40
        TabOrder = 3
        OnKeyPress = EL_1KeyPress
      end
    end
    object CBB_NBancas: TJvComboBox
      Left = 272
      Top = 29
      Width = 49
      Height = 21
      Style = csDropDownList
      CharCase = ecUpperCase
      ItemHeight = 13
      TabOrder = 7
      OnChange = CBB_NBancasChange
      OnDropDown = CBB_NBancasDropDown
      OnKeyPress = CBB_NBancasKeyPress
    end
  end
  object DS_Gastos: TJvDataSource
    DataSet = MData_1
    Left = 16
    Top = 329
  end
  object PM_DetallesGastos: TJvPopupMenu
    ImageMargin.Left = 0
    ImageMargin.Top = 0
    ImageMargin.Right = 0
    ImageMargin.Bottom = 0
    ImageSize.Height = 0
    ImageSize.Width = 0
    Left = 112
    Top = 329
    object EliminarGasto1: TMenuItem
      Caption = 'Eliminar Gasto'
      OnClick = EliminarGasto1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Modificar1: TMenuItem
      Caption = 'Modificar'
      OnClick = Modificar1Click
    end
  end
  object JvXPStyleManager1: TJvXPStyleManager
    Theme = OfficeXP
    Left = 144
    Top = 329
  end
  object PM_SumarRestarG: TJvPopupMenu
    ImageMargin.Left = 0
    ImageMargin.Top = 0
    ImageMargin.Right = 0
    ImageMargin.Bottom = 0
    ImageSize.Height = 0
    ImageSize.Width = 0
    Left = 80
    Top = 329
    object MM_Sumar: TMenuItem
      Caption = 'Sumar Gasto'
      OnClick = MM_SumarClick
    end
    object MenuItem2: TMenuItem
      Caption = '-'
    end
    object MM_Restar: TMenuItem
      Caption = 'Restar Gasto'
    end
  end
  object Qr_GastosVeneficios: TADOQuery
    Connection = ControlCuentasBancarias.Coneccion_1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'p0'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'p1'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'p2'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        'select g.id_gasto,g.montoGasto,g.detallesGasto,g.fechaGasto,g.fe' +
        'cha,'
      '       g.numeroComprobante,b.id_Banca,b.id_empleado_banca,'
      
        '       b.numero_banca,b.direccion_Banca from gastos as G, bancas' +
        ' as B'
      
        'where (g.id_banca = b.id_banca)and(g.id_empleado =:p0)and(G.fech' +
        'aGasto = :p1)and(B.Numero_Banca = :p2);'
      ' '
      ' '
      ' '
      ' ')
    Left = 16
    Top = 297
    object Qr_GastosVeneficiosid_gasto: TAutoIncField
      FieldName = 'id_gasto'
      ReadOnly = True
    end
    object Qr_GastosVeneficiosmontoGasto: TFloatField
      FieldName = 'montoGasto'
      DisplayFormat = 'RD$ ,0.##'
      currency = True
    end
    object Qr_GastosVeneficiosdetallesGasto: TWideStringField
      FieldName = 'detallesGasto'
      Size = 100
    end
    object Qr_GastosVeneficiosfechaGasto: TDateTimeField
      FieldName = 'fechaGasto'
    end
    object Qr_GastosVeneficiosfecha: TDateTimeField
      FieldName = 'fecha'
    end
    object Qr_GastosVeneficiosnumeroComprobante: TWideStringField
      FieldName = 'numeroComprobante'
      Size = 15
    end
    object Qr_GastosVeneficiosid_Banca: TAutoIncField
      FieldName = 'id_Banca'
      ReadOnly = True
    end
    object Qr_GastosVeneficiosid_empleado_banca: TIntegerField
      FieldName = 'id_empleado_banca'
    end
    object Qr_GastosVeneficiosdireccion_Banca: TWideStringField
      FieldName = 'direccion_Banca'
      Size = 100
    end
    object Qr_GastosVeneficiosnumero_banca: TIntegerField
      FieldName = 'numero_banca'
    end
  end
  object MData_1: TJvMemoryData
    FieldDefs = <
      item
        Name = 'Id'
        DataType = ftAutoInc
      end
      item
        Name = 'NBanca'
        DataType = ftInteger
      end
      item
        Name = 'DireccionB'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'DescripcionG'
        DataType = ftString
        Size = 160
      end
      item
        Name = 'MontoGasto'
        DataType = ftFloat
      end
      item
        Name = 'DebitarA'
        DataType = ftInteger
      end
      item
        Name = 'FechaG'
        DataType = ftDateTime
      end
      item
        Name = 'Origen'
        DataType = ftInteger
      end
      item
        Name = 'IdBanca'
        DataType = ftInteger
      end
      item
        Name = 'IdGasto'
        DataType = ftInteger
      end
      item
        Name = 'IdEmpBanca'
        DataType = ftInteger
      end
      item
        Name = 'IdDetallesCB'
        DataType = ftInteger
      end
      item
        Name = 'BeneficiosVenta'
        DataType = ftFloat
      end
      item
        Name = 'NumeroTransCB'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'IdCuentaBanco'
        DataType = ftInteger
      end
      item
        Name = 'EsNuevo'
        DataType = ftInteger
      end
      item
        Name = 'TGasto'
        DataType = ftFloat
      end
      item
        Name = 'IngresoRecibido'
        DataType = ftFloat
      end
      item
        Name = 'IdCuenta'
        DataType = ftInteger
      end
      item
        Name = 'IdCxCBanca'
        DataType = ftInteger
      end
      item
        Name = 'FacturaG'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Diferencia'
        DataType = ftFloat
      end>
    Left = 48
    Top = 329
    object MData_1Id: TAutoIncField
      FieldName = 'Id'
    end
    object MData_1NBanca: TIntegerField
      FieldName = 'NBanca'
    end
    object MData_1DireccionB: TStringField
      FieldName = 'DireccionB'
      Size = 255
    end
    object MData_1MontoGasto: TFloatField
      FieldName = 'MontoGasto'
      DisplayFormat = 'RD$ ,0.00##'
    end
    object MData_1DebitarA: TIntegerField
      FieldName = 'DebitarA'
    end
    object MData_1FechaG: TDateTimeField
      FieldName = 'FechaG'
    end
    object MData_1Origen: TIntegerField
      FieldName = 'Origen'
    end
    object MData_1IdBanca: TIntegerField
      FieldName = 'IdBanca'
    end
    object MData_1IdGasto: TIntegerField
      FieldName = 'IdGasto'
    end
    object MData_1IdEmpBanca: TIntegerField
      FieldName = 'IdEmpBanca'
    end
    object MData_1IdDetallesCB: TIntegerField
      FieldName = 'IdDetallesCB'
    end
    object MData_1NumeroTransCB: TStringField
      FieldName = 'NumeroTransCB'
      Size = 30
    end
    object MData_1IdCuentaBanco: TIntegerField
      FieldName = 'IdCuentaBanco'
    end
    object MData_1EsNuevo: TIntegerField
      FieldName = 'EsNuevo'
    end
    object MData_1TGasto: TFloatField
      FieldName = 'TGasto'
    end
    object MData_1BeneficiosVenta: TFloatField
      FieldName = 'BeneficiosVenta'
    end
    object MData_1IngresoRecibido: TFloatField
      FieldName = 'IngresoRecibido'
    end
    object MData_1IdCuenta: TIntegerField
      FieldName = 'IdCuenta'
    end
    object MData_1IdCxCBanca: TIntegerField
      FieldName = 'IdCxCBanca'
    end
    object MData_1DescripcionG: TStringField
      FieldName = 'DescripcionG'
      Size = 160
    end
    object MData_1FacturaG: TStringField
      FieldName = 'FacturaG'
      Size = 40
    end
    object MData_1Diferencia: TFloatField
      FieldName = 'Diferencia'
    end
  end
  object DS_1: TDataSource
    Left = 80
    Top = 297
  end
  object Qr_Bancas: TADOQuery
    Connection = ControlCuentasBancarias.Coneccion_1
    Parameters = <
      item
        Name = 'p0'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        'select b.id_banca, b.numero_banca, b.id_empleado_banca, b.direcc' +
        'ion_Banca'
      'from Bancas as b'
      'where (b.id_banca = :p0);'
      ''
      ' '
      ' '
      ' '
      ' '
      ' ')
    Left = 48
    Top = 297
    object Qr_Bancasid_banca: TAutoIncField
      FieldName = 'id_banca'
      ReadOnly = True
    end
    object Qr_Bancasnumero_banca: TIntegerField
      FieldName = 'numero_banca'
    end
    object Qr_Bancasid_empleado_banca: TIntegerField
      FieldName = 'id_empleado_banca'
    end
    object Qr_Bancasdireccion_Banca: TWideStringField
      FieldName = 'direccion_Banca'
      Size = 100
    end
  end
  object HK_1: TJvApplicationHotKey
    Active = True
    HotKey = 114
    OnHotKey = HK_1HotKey
    Left = 112
    Top = 297
  end
  object JvBalloonHint1: TJvBalloonHint
    UseBalloonAsApplicationHint = True
    Left = 144
    Top = 297
  end
  object MData_GastosEditar: TJvMemoryData
    FieldDefs = <
      item
        Name = 'IdGasto'
        DataType = ftInteger
      end>
    Left = 176
    Top = 296
    object MData_GastosEditarIdGasto: TIntegerField
      FieldName = 'IdGasto'
    end
  end
end
