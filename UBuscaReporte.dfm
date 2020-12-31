object FBuscaReportes: TFBuscaReportes
  Left = 324
  Top = 179
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'FBuscaReportes'
  ClientHeight = 423
  ClientWidth = 487
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object NB_1: TNotebook
    Left = 0
    Top = 0
    Width = 487
    Height = 423
    Align = alClient
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    PageIndex = 3
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    object TPage
      Left = 0
      Top = 0
      Caption = 'ResumenVeneficiosGastos'
      object GB_1: TGroupBox
        Left = 16
        Top = 24
        Width = 457
        Height = 193
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        object LB_1: TLabel
          Left = 16
          Top = 33
          Width = 65
          Height = 14
          Caption = 'Fecha Inicial'
        end
        object LB_2: TLabel
          Left = 216
          Top = 33
          Width = 59
          Height = 14
          Caption = 'Fecha Final'
        end
        object LB_3: TLabel
          Left = 16
          Top = 75
          Width = 117
          Height = 14
          Caption = 'Selecione Beneficiario'
        end
        object DTP_FInicio: TJvDateTimePicker
          Left = 16
          Top = 49
          Width = 186
          Height = 22
          Hint = 'Fecha inicial (Desde donde se desea ver el informe).'
          Date = 40527.366976504630000000
          Time = 40527.366976504630000000
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnExit = DTP_FInicioExit
          OnKeyPress = DTP_FInicioKeyPress
          DropDownDate = 40527.000000000000000000
        end
        object DTP_FFin: TJvDateTimePicker
          Left = 216
          Top = 49
          Width = 186
          Height = 22
          Hint = 'Fecha final (Hasta donde se desea ver el informe).'
          Date = 40527.367080694440000000
          Time = 40527.367080694440000000
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnKeyPress = DTP_FFinKeyPress
          DropDownDate = 40527.000000000000000000
        end
        object CBB_NombreVenef: TComboBox
          Left = 16
          Top = 91
          Width = 385
          Height = 22
          Hint = 'Permite seleccionar un beneficiario.'
          Style = csOwnerDrawFixed
          ItemHeight = 16
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnChange = CBB_NombreVenefChange
          OnDropDown = CBB_NombreVenefDropDown
          OnKeyPress = CBB_NombreVenefKeyPress
        end
        object GB_2: TGroupBox
          Left = 16
          Top = 120
          Width = 422
          Height = 57
          Caption = 'Enviar a:'
          TabOrder = 3
          object BBT_EnviaA: TBitBtn
            Tag = 1
            Left = 247
            Top = 20
            Width = 65
            Height = 21
            Hint = 'Envia  el reporte de acuetdo a la opci'#243'n seleccionada.'
            Caption = 'Enviar'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = BBT_EnviaAClick
          end
          object RB_EnviarPantalla: TRadioButton
            Left = 92
            Top = 24
            Width = 59
            Height = 17
            Caption = 'Pantalla'
            Checked = True
            TabOrder = 1
            TabStop = True
          end
          object RB_EnviarPrinter: TRadioButton
            Left = 165
            Top = 24
            Width = 75
            Height = 17
            Caption = 'Impresora'
            TabOrder = 2
          end
          object BBT_3: TBitBtn
            Left = 322
            Top = 20
            Width = 75
            Height = 21
            Hint = 'Salir'
            Caption = '&Salir'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            OnClick = BBT_3Click
          end
        end
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'Detalles Cuentas Banco'
      object GB_3: TGroupBox
        Left = 8
        Top = 16
        Width = 465
        Height = 201
        Caption = 'Detalles de Cuenta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object LB_5: TLabel
          Left = 208
          Top = 66
          Width = 65
          Height = 16
          Caption = 'Fecha Final'
        end
        object LB_4: TLabel
          Left = 16
          Top = 66
          Width = 71
          Height = 16
          Caption = 'Fecha Inicial'
        end
        object LB_6: TLabel
          Left = 16
          Top = 23
          Width = 56
          Height = 16
          Caption = '(*) Banco'
        end
        object LB_7: TLabel
          Left = 208
          Top = 22
          Width = 85
          Height = 16
          Caption = '(*) No. Cuenta'
        end
        object LB_8: TLabel
          Left = 216
          Top = 179
          Width = 241
          Height = 16
          Caption = 'Campos marcados con (*) son requeridos'
        end
        object DTP_BancoFechaInicial: TJvDateTimePicker
          Left = 16
          Top = 82
          Width = 186
          Height = 24
          Hint = 'Fecha inicial (Desde donde se desea ver el informe).'
          Date = 40530.707185358800000000
          Time = 40530.707185358800000000
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnKeyPress = DTP_BancoFechaInicialKeyPress
          DropDownDate = 40530.000000000000000000
        end
        object DTP_BancoFechaFinal: TJvDateTimePicker
          Left = 208
          Top = 82
          Width = 186
          Height = 24
          Hint = 'Fecha final (Hasta donde se desea ver el informe).'
          Date = 40530.707257002320000000
          Time = 40530.707257002320000000
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnKeyPress = DTP_BancoFechaFinalKeyPress
          DropDownDate = 40530.000000000000000000
        end
        object CBB_Banco: TComboBox
          Left = 16
          Top = 41
          Width = 185
          Height = 22
          Hint = 'Selecione un banco.'
          Style = csOwnerDrawFixed
          ItemHeight = 16
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnChange = CBB_BancoChange
          OnKeyPress = CBB_BancoKeyPress
        end
        object CBB_Cuenta: TComboBox
          Left = 208
          Top = 40
          Width = 145
          Height = 22
          Hint = 'Seleccione una No. de cuenta.'
          Style = csOwnerDrawFixed
          ItemHeight = 16
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnKeyPress = CBB_CuentaKeyPress
        end
        object GB_4: TGroupBox
          Left = 16
          Top = 120
          Width = 377
          Height = 49
          Caption = 'Selecione la Salida del Informe'
          TabOrder = 4
          object RB_BancoPantalla: TRadioButton
            Left = 8
            Top = 24
            Width = 65
            Height = 17
            Caption = 'Pantalla'
            Checked = True
            TabOrder = 0
            TabStop = True
          end
          object RB_Printer: TRadioButton
            Left = 80
            Top = 24
            Width = 82
            Height = 17
            Caption = 'Impresora'
            TabOrder = 1
          end
          object BBT_EnviarA: TBitBtn
            Left = 182
            Top = 19
            Width = 60
            Height = 21
            Hint = 'Envia el informe  de acuerdo al la opci'#243'n seleccionada.'
            Caption = 'Enviar A:'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            OnClick = BBT_EnviarAClick
          end
          object BBT_4: TBitBtn
            Left = 246
            Top = 19
            Width = 75
            Height = 21
            Hint = 'Salir'
            Caption = '&Salir'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            OnClick = BBT_4Click
          end
        end
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'Nomina Empleados'
      object GB_BuscaEmpleado: TGroupBox
        Left = 7
        Top = 5
        Width = 473
        Height = 204
        TabOrder = 0
        object SBT_BuscaEmpleado: TSpeedButton
          Left = 299
          Top = 24
          Width = 67
          Height = 25
          Hint = 'Permite realizar la b'#250'squeda de un empleado.'
          Caption = '&B. Emp.'
          ParentShowHint = False
          ShowHint = True
          OnClick = SBT_BuscaEmpleadoClick
        end
        object LB_9: TLabel
          Left = 8
          Top = 9
          Width = 38
          Height = 16
          Caption = 'Fecha '
        end
        object LB_26: TLabel
          Left = 7
          Top = 130
          Width = 70
          Height = 16
          Caption = 'Observaci'#243'n'
        end
        object LB_27: TLabel
          Left = 153
          Top = 8
          Width = 100
          Height = 16
          Caption = 'Intervalo de pago'
        end
        object DTP_FechaNomina: TJvDateTimePicker
          Left = 8
          Top = 25
          Width = 137
          Height = 24
          Hint = 'Seleccione la fecha para la cual se genera la nomina'
          Date = 40531.569734155090000000
          Time = 40531.569734155090000000
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          DropDownDate = 40531.000000000000000000
        end
        object GB_5: TGroupBox
          Left = 8
          Top = 70
          Width = 313
          Height = 57
          Caption = 'Seleccione la Salida del Informe'
          TabOrder = 1
          object RB_RNPantalla: TRadioButton
            Left = 97
            Top = 16
            Width = 65
            Height = 17
            Caption = 'Pantalla'
            Checked = True
            TabOrder = 0
            TabStop = True
          end
          object RB_RNPrinter: TRadioButton
            Left = 98
            Top = 36
            Width = 68
            Height = 17
            Caption = 'Imprimir'
            TabOrder = 1
          end
          object BBT_1: TBitBtn
            Left = 8
            Top = 23
            Width = 75
            Height = 21
            Hint = 'Envia el reporte a la opci'#243'n seleccionada.'
            Caption = 'Enviar A'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            OnClick = BBT_1Click
          end
          object CKB_1: TCheckBox
            Left = 176
            Top = 16
            Width = 125
            Height = 17
            Caption = 'Incluir Descuentos'
            Checked = True
            State = cbChecked
            TabOrder = 3
            OnClick = CKB_1Click
          end
        end
        object M_ConceptoPago: TMemo
          Left = 7
          Top = 147
          Width = 458
          Height = 49
          Hint = 'Ingrese alguna observaci'#243'n.'
          MaxLength = 160
          ParentShowHint = False
          ScrollBars = ssVertical
          ShowHint = True
          TabOrder = 2
          OnKeyPress = M_ConceptoPagoKeyPress
        end
        object CBB_IntervaloPago: TComboBox
          Left = 154
          Top = 25
          Width = 137
          Height = 24
          Hint = 
            'Seleccione para que intervalo de pago se '#13#10'realizara el pago de ' +
            'la nomina.'
          Style = csDropDownList
          ItemHeight = 16
          ItemIndex = 0
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          Text = 'Todos'
          Items.Strings = (
            'Todos'
            '15 de cada mes'
            '30 de cada mes')
        end
        object GB_9: TGroupBox
          Left = 328
          Top = 70
          Width = 121
          Height = 57
          Caption = 'Selec. Nomina'
          TabOrder = 4
          object RB_1: TRadioButton
            Left = 12
            Top = 16
            Width = 77
            Height = 16
            Caption = 'Empleado'
            Checked = True
            TabOrder = 0
            TabStop = True
            OnClick = RB_1Click
          end
          object RB_2: TRadioButton
            Left = 12
            Top = 34
            Width = 57
            Height = 16
            Caption = 'Todos'
            TabOrder = 1
            OnClick = RB_2Click
          end
        end
        object BBT_2: TBitBtn
          Left = 376
          Top = 24
          Width = 72
          Height = 25
          Hint = 'Salir'
          Caption = '&Salir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnClick = BBT_2Click
        end
      end
      object GB_8: TGroupBox
        Left = 7
        Top = 212
        Width = 473
        Height = 201
        Hint = 'Descripci'#243'n datos de la nomina'
        Caption = ' Descripci'#243'n Datos Nomina'
        ParentShowHint = False
        ShowHint = False
        TabOrder = 1
        Visible = False
        object LB_13: TLabel
          Left = 7
          Top = 23
          Width = 45
          Height = 16
          Caption = 'Nombre'
        end
        object LB_14: TLabel
          Left = 7
          Top = 60
          Width = 75
          Height = 16
          Caption = 'No. de Banca'
        end
        object LB_15: TLabel
          Left = 7
          Top = 134
          Width = 62
          Height = 16
          Caption = 'Suldo Neto'
        end
        object LB_16: TLabel
          Left = 7
          Top = 116
          Width = 65
          Height = 16
          Caption = 'Descuentos'
        end
        object LB_17: TLabel
          Left = 7
          Top = 78
          Width = 73
          Height = 16
          Caption = 'Sueldo Bruto'
        end
        object LB_18: TLabel
          Left = 7
          Top = 153
          Width = 105
          Height = 16
          Caption = 'Intervalo de pago:'
        end
        object LB_19: TLabel
          Left = 55
          Top = 24
          Width = 57
          Height = 16
          Caption = '.............:'
        end
        object LB_20: TLabel
          Left = 87
          Top = 60
          Width = 25
          Height = 16
          Caption = '.....:'
        end
        object LB_21: TLabel
          Left = 75
          Top = 134
          Width = 37
          Height = 16
          Caption = '........:'
        end
        object LB_22: TLabel
          Left = 75
          Top = 115
          Width = 37
          Height = 16
          Caption = '........:'
        end
        object LB_23: TLabel
          Left = 83
          Top = 78
          Width = 29
          Height = 16
          Caption = '......:'
        end
        object DBLB__nombre: TDBText
          Left = 119
          Top = 23
          Width = 86
          Height = 16
          AutoSize = True
          DataField = '_nombre'
          DataSource = DS_DatosNomina
        end
        object DBLB_numero_Banca: TDBText
          Left = 119
          Top = 60
          Width = 120
          Height = 16
          AutoSize = True
          DataField = 'numero_Banca'
          DataSource = DS_DatosNomina
        end
        object DBLB_salarioBruto: TDBText
          Left = 119
          Top = 79
          Width = 103
          Height = 16
          AutoSize = True
          DataField = 'salarioBruto'
          DataSource = DS_DatosNomina
        end
        object DBLB_descuento: TDBText
          Left = 119
          Top = 117
          Width = 93
          Height = 16
          AutoSize = True
          Color = clBtnFace
          DataField = 'Tdescuentos'
          DataSource = DS_DetallesDescuentosNomina
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnMouseMove = DBLB_descuentoMouseMove
        end
        object DBLB_intervaloPago: TDBText
          Left = 119
          Top = 155
          Width = 112
          Height = 16
          AutoSize = True
          DataField = 'intervaloPago'
          DataSource = DS_DatosNomina
          ParentShowHint = False
          ShowHint = True
        end
        object LB_24: TLabel
          Left = 7
          Top = 41
          Width = 83
          Height = 16
          Caption = 'Sobre Nombre'
        end
        object LB_25: TLabel
          Left = 95
          Top = 41
          Width = 17
          Height = 16
          Caption = '...:'
        end
        object DBLB_apodo: TDBText
          Left = 119
          Top = 41
          Width = 70
          Height = 16
          AutoSize = True
          DataField = 'apodo'
          DataSource = DS_DatosNomina
        end
        object LB_28: TLabel
          Left = 119
          Top = 136
          Width = 34
          Height = 16
          Caption = 'LB_28'
          Visible = False
        end
        object LB_29: TLabel
          Left = 7
          Top = 96
          Width = 51
          Height = 16
          Caption = 'Incentivo'
        end
        object LB_30: TLabel
          Left = 67
          Top = 95
          Width = 45
          Height = 16
          Caption = '..........:'
        end
        object DBLB_Incentivo: TDBText
          Left = 119
          Top = 98
          Width = 86
          Height = 16
          AutoSize = True
          DataField = 'montoIncentivo'
          DataSource = DS_DatosNomina
        end
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'BuscaTodosLosGastosFecha'
      object GB_6: TGroupBox
        Left = 16
        Top = 32
        Width = 217
        Height = 124
        Caption = ' Ingrese Rango de Fechas'
        TabOrder = 0
        object LB_10: TLabel
          Left = 8
          Top = 16
          Width = 71
          Height = 16
          Caption = 'Fecha Inicial'
        end
        object LB_11: TLabel
          Left = 8
          Top = 64
          Width = 65
          Height = 16
          Caption = 'Fecha Final'
        end
        object LB_12: TLabel
          Left = 8
          Top = 112
          Width = 65
          Height = 16
          Caption = '# de Banca'
          Visible = False
        end
        object DTP_TodoGastoFin: TJvDateTimePicker
          Left = 7
          Top = 81
          Width = 186
          Height = 24
          Hint = 'Fecha final (Hasta donde se desea ver el informe).'
          Date = 40629.746139340280000000
          Time = 40629.746139340280000000
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          DropDownDate = 40629.000000000000000000
        end
        object DTP_TodoGastoInicio: TJvDateTimePicker
          Left = 7
          Top = 32
          Width = 186
          Height = 24
          Hint = 'Fecha inicial (Desde donde se desea ver el informe).'
          Date = 40629.746073333340000000
          Time = 40629.746073333340000000
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          DropDownDate = 40629.000000000000000000
        end
        object CBB_NoBanca: TComboBox
          Left = 8
          Top = 128
          Width = 73
          Height = 24
          Style = csDropDownList
          ItemHeight = 16
          TabOrder = 2
          Visible = False
          OnDropDown = CBB_NoBancaDropDown
        end
      end
      object GB_7: TGroupBox
        Left = 240
        Top = 33
        Width = 233
        Height = 123
        Caption = 'Enviar A: '
        TabOrder = 1
        object BTM_1: TJvArrowButton
          Left = 16
          Top = 80
          Width = 113
          Height = 25
          Hint = 'Envia el informe de acuedo a la opci'#243'n seleccionada.'
          DropDown = PM_1
          Caption = 'Enviar A'
          FillFont.Charset = DEFAULT_CHARSET
          FillFont.Color = clWindowText
          FillFont.Height = -11
          FillFont.Name = 'MS Sans Serif'
          FillFont.Style = []
          ParentShowHint = False
          ShowHint = True
          OnClick = BTM_1Click
        end
        object RB_3: TRadioButton
          Left = 16
          Top = 24
          Width = 113
          Height = 17
          Caption = 'Pantalla'
          Checked = True
          TabOrder = 0
          TabStop = True
        end
        object RB_4: TRadioButton
          Left = 16
          Top = 48
          Width = 113
          Height = 17
          Caption = 'Impresora'
          TabOrder = 1
        end
      end
      object BBT_SalirTGastosGenerales: TBitBtn
        Left = 400
        Top = 160
        Width = 75
        Height = 25
        Hint = 'Salir'
        Caption = '&Salir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = BBT_SalirTGastosGeneralesClick
      end
    end
  end
  object Qr_TotalVeneficios: TADOQuery
    Connection = ControlCuentasBancarias.Coneccion_1
    Parameters = <
      item
        Name = 'f1'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'f2'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select sum(veneficiosVenta) as TVenef from CxCBancas'
      'where fecha between :f1 and :f2;'
      ' '
      ' ')
    Left = 443
    Top = 316
    object Qr_TotalVeneficiosTVenef: TFloatField
      FieldName = 'TVenef'
      DisplayFormat = '$ ,0.00##'
    end
  end
  object Qr_TotalGasto: TADOQuery
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
      end
      item
        Name = 'f1'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'f2'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select sum(montoGasto) as Tgastos from gastos'
      'where (debitarA = :p0)and(fechaGasto between :f1 and :f2);'
      ' '
      ' ')
    Left = 315
    Top = 348
    object Qr_TotalGastoTgastos: TFloatField
      FieldName = 'Tgastos'
      DisplayFormat = '$ ,0.00##'
    end
  end
  object Qr_BuscaGastoCons_Ban: TADOQuery
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
        Name = 'f1'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'f2'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        'select g.montoGasto,g.detallesGasto,g.fechaGasto, b.numero_banca' +
        ' from gastos as g, bancas as b'
      
        'where (g.id_banca = b.id_banca)and(g.debitarA = :p0)and(g.fechaG' +
        'asto between :f1 and :f2);'
      ' ')
    Left = 379
    Top = 348
    object Qr_BuscaGastoCons_BanmontoGasto: TFloatField
      FieldName = 'montoGasto'
      DisplayFormat = ',0.00##'
    end
    object Qr_BuscaGastoCons_BandetallesGasto: TWideStringField
      FieldName = 'detallesGasto'
      Size = 100
    end
    object Qr_BuscaGastoCons_BanfechaGasto: TDateTimeField
      FieldName = 'fechaGasto'
    end
    object Qr_BuscaGastoCons_Bannumero_banca: TIntegerField
      FieldName = 'numero_banca'
    end
  end
  object Qr_MuestraDetallesCuentaBanco: TADOQuery
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
      end
      item
        Name = 'f1'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'f2'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select * from DetallesCuentaBancaria'
      'where (id_cuenta = :p0)and(fechaCreado between :f1 and :f2)')
    Left = 347
    Top = 348
    object Qr_MuestraDetallesCuentaBancoId_DetallesCuentasBancarias: TAutoIncField
      FieldName = 'Id_DetallesCuentasBancarias'
      ReadOnly = True
    end
    object Qr_MuestraDetallesCuentaBancoId_Cuenta: TIntegerField
      FieldName = 'Id_Cuenta'
    end
    object Qr_MuestraDetallesCuentaBancoDebito: TFloatField
      FieldName = 'Debito'
      DisplayFormat = '$ ,0.00##'
    end
    object Qr_MuestraDetallesCuentaBancoCredito: TFloatField
      FieldName = 'Credito'
      DisplayFormat = '$ ,0.00##'
    end
    object Qr_MuestraDetallesCuentaBancoNumeroTransaccion: TWideStringField
      FieldName = 'NumeroTransaccion'
      Size = 30
    end
    object Qr_MuestraDetallesCuentaBancoDescripcion: TWideStringField
      FieldName = 'Descripcion'
      Size = 80
    end
    object Qr_MuestraDetallesCuentaBancoFechaCreado: TDateTimeField
      FieldName = 'FechaCreado'
    end
    object Qr_MuestraDetallesCuentaBancoFecha: TDateTimeField
      FieldName = 'Fecha'
    end
  end
  object Qr_TGastosFecha: TADOQuery
    Connection = ControlCuentasBancarias.Coneccion_1
    Parameters = <
      item
        Name = 'f1'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'f2'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        'select numero_Banca, montoGasto, detallesGasto, numeroComprobant' +
        'e, fechaGasto'
      'from bancas, gastos'
      
        'where (bancas.id_banca = gastos.id_banca)and(fechaGasto between ' +
        ':f1 and :f2);'
      ''
      ''
      ''
      ' ')
    Left = 347
    Top = 316
    object Qr_TGastosFechanumero_Banca: TIntegerField
      FieldName = 'numero_Banca'
    end
    object Qr_TGastosFechamontoGasto: TFloatField
      FieldName = 'montoGasto'
      DisplayFormat = '$#,##0.00'
    end
    object Qr_TGastosFechadetallesGasto: TWideStringField
      FieldName = 'detallesGasto'
      Size = 100
    end
    object Qr_TGastosFechanumeroComprobante: TWideStringField
      FieldName = 'numeroComprobante'
      Size = 15
    end
    object Qr_TGastosFechafechaGasto: TDateTimeField
      FieldName = 'fechaGasto'
    end
  end
  object Qr_TGBancaDescrip: TADOQuery
    Connection = ControlCuentasBancarias.Coneccion_1
    Parameters = <
      item
        Name = 'f1'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'f2'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'n'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        'select numero_Banca, montoGasto, detallesGasto, numeroComprobant' +
        'e, fechaGasto'
      'from bancas, gastos'
      
        'where (bancas.id_banca = gastos.id_banca)and(fechaGasto between ' +
        ':f1 and :f2)and(numero_Banca = :n); '
      ' ')
    Left = 315
    Top = 316
    object Qr_TGBancaDescripnumero_Banca: TIntegerField
      FieldName = 'numero_Banca'
    end
    object Qr_TGBancaDescripmontoGasto: TFloatField
      FieldName = 'montoGasto'
      DisplayFormat = '$ #,##.00'
    end
    object Qr_TGBancaDescripdetallesGasto: TWideStringField
      FieldName = 'detallesGasto'
      Size = 100
    end
    object Qr_TGBancaDescripnumeroComprobante: TWideStringField
      FieldName = 'numeroComprobante'
      Size = 15
    end
    object Qr_TGBancaDescripfechaGasto: TDateTimeField
      FieldName = 'fechaGasto'
    end
  end
  object DS_DatosNomina: TDataSource
    DataSet = Qr_MuestraNomina
    Left = 443
    Top = 348
  end
  object Qr_DetallesDescuentosNominaTodo: TADOQuery
    Connection = ControlCuentasBancarias.Coneccion_1
    Parameters = <
      item
        Name = 'idEmpS'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'idEmp'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        'select montoDescuento, concepto, estado, (select sum(montoDescue' +
        'nto) from descuentos'
      
        'where id_empleado = :idEmpS and estado = 1) as Tdescuentos from ' +
        'descuentos'
      'where id_empleado = :idEmp and estado = 1;'
      ''
      ''
      ''
      ' '
      ' '
      ''
      ' '
      ' ')
    Left = 411
    Top = 316
    object Qr_DetallesDescuentosNominaTodomontoDescuento: TFloatField
      FieldName = 'montoDescuento'
      DisplayFormat = 'RD$ #,##.00'
      currency = True
    end
    object Qr_DetallesDescuentosNominaTodoconcepto: TWideStringField
      FieldName = 'concepto'
      Size = 255
    end
    object Qr_DetallesDescuentosNominaTodoestado: TSmallintField
      FieldName = 'estado'
    end
    object Qr_DetallesDescuentosNominaTodoTdescuentos: TFloatField
      FieldName = 'Tdescuentos'
      DisplayFormat = 'RD$ #,##.00'
    end
  end
  object Qr_MuestraNomina: TADOQuery
    Connection = ControlCuentasBancarias.Coneccion_1
    CursorType = ctStatic
    AfterOpen = Qr_MuestraNominaAfterOpen
    Parameters = <
      item
        Name = 'idemp'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        'select e.id_empleado, e.cedula, e.nombres+" "+e.apellidos as _no' +
        'mbre, e.apodo, e.fechaIngreso, e.salarioBruto,'
      
        'e.intervaloPago, e.sexo, e.MontoIncentivo, e.DescripcionIncentiv' +
        'o, b.numero_Banca'
      'from empleados as e left join bancas  as b'
      'on(e.id_empleado = b.id_empleado_banca)'
      'where (e.id_empleado = :idemp) and (e.estado = 1);'
      ''
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Left = 379
    Top = 316
    object Qr_MuestraNominaid_empleado: TAutoIncField
      FieldName = 'id_empleado'
      ReadOnly = True
    end
    object Qr_MuestraNominacedula: TWideStringField
      FieldName = 'cedula'
      EditMask = '000-0000000-0;0; '
      Size = 13
    end
    object Qr_MuestraNomina_nombre: TWideStringField
      FieldName = '_nombre'
      ReadOnly = True
      Size = 255
    end
    object Qr_MuestraNominaapodo: TWideStringField
      FieldName = 'apodo'
      Size = 60
    end
    object Qr_MuestraNominafechaIngreso: TDateTimeField
      FieldName = 'fechaIngreso'
    end
    object Qr_MuestraNominasalarioBruto: TFloatField
      FieldName = 'salarioBruto'
      DisplayFormat = 'RD$ #,##0.00'
    end
    object Qr_MuestraNominaintervaloPago: TWideStringField
      FieldName = 'intervaloPago'
      Size = 25
    end
    object Qr_MuestraNominanumero_Banca: TIntegerField
      FieldName = 'numero_Banca'
    end
    object Qr_MuestraNominasexo: TWideStringField
      FieldName = 'sexo'
    end
    object Qr_MuestraNominaMontoIncentivo: TFloatField
      FieldName = 'MontoIncentivo'
      DisplayFormat = 'RD$ #,##0.00'
    end
    object Qr_MuestraNominaDescripcionIncentivo: TWideStringField
      FieldName = 'DescripcionIncentivo'
      Size = 100
    end
  end
  object DS_DetallesDescuentosNomina: TDataSource
    DataSet = Qr_DetallesDescuentosNominaTodo
    Left = 411
    Top = 348
  end
  object PM_1: TPopupMenu
    Left = 379
    Top = 380
    object MM_Bsquedapornmerobanca1: TMenuItem
      Caption = 'B'#250'squeda por n'#250'mero  banca'
      OnClick = MM_Bsquedapornmerobanca1Click
    end
    object MM_N1: TMenuItem
      Caption = '-'
    end
    object MM_Bsquedaporfechatodadlasbancas1: TMenuItem
      Caption = 'B'#250'squeda por fecha(todas las bancas)'
      OnClick = MM_Bsquedaporfechatodadlasbancas1Click
    end
  end
  object HK_1: TJvApplicationHotKey
    Active = True
    HotKey = 114
    OnHotKey = HK_1HotKey
    Left = 315
    Top = 380
  end
  object JvBalloonHint1: TJvBalloonHint
    UseBalloonAsApplicationHint = True
    OnBalloonClick = JvBalloonHint1BalloonClick
    Left = 347
    Top = 380
  end
end
