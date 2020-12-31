object FGastos: TFGastos
  Left = 309
  Top = 196
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Gastos'
  ClientHeight = 525
  ClientWidth = 659
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  ShowHint = True
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object SBT_1: TSpeedButton
    Left = 536
    Top = 195
    Width = 113
    Height = 25
    Caption = '&Reportes Gasto'
    Flat = True
    NumGlyphs = 2
    OnClick = SBT_1Click
  end
  object GB_1: TGroupBox
    Left = 8
    Top = 8
    Width = 643
    Height = 177
    Caption = 'Captura de Gastos'
    TabOrder = 0
    object LB_1: TLabel
      Left = 17
      Top = 51
      Width = 86
      Height = 13
      Caption = 'N'#250'mero de Banca'
    end
    object LB_2: TLabel
      Left = 17
      Top = 88
      Width = 30
      Height = 13
      Caption = 'Monto'
    end
    object LB_3: TLabel
      Left = 127
      Top = 129
      Width = 90
      Height = 13
      Caption = 'Realizar el d'#233'bito a'
    end
    object LB_4: TLabel
      Left = 128
      Top = 51
      Width = 84
      Height = 13
      Caption = 'Describa el Gasto'
    end
    object LB_7: TLabel
      Left = 400
      Top = 129
      Width = 153
      Height = 13
      Caption = 'Fecha en que se realizo el gasto'
    end
    object CBB_NBancaGasto: TComboBox
      Left = 17
      Top = 67
      Width = 52
      Height = 21
      Enabled = False
      ItemHeight = 13
      TabOrder = 1
      OnKeyPress = CBB_NBancaGastoKeyPress
    end
    object ECal_1: TJvCalcEdit
      Left = 17
      Top = 102
      Width = 100
      Height = 24
      DisplayFormat = '$ ,0.00##'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      DecimalPlacesAlwaysShown = False
      OnKeyPress = ECal_1KeyPress
    end
    object CBB_DebitarA: TComboBox
      Left = 128
      Top = 146
      Width = 265
      Height = 19
      Style = csOwnerDrawFixed
      ItemHeight = 13
      TabOrder = 5
      OnKeyPress = CBB_DebitarAKeyPress
    end
    object EL_NComprobante: TLabeledEdit
      Left = 17
      Top = 144
      Width = 100
      Height = 21
      EditLabel.Width = 83
      EditLabel.Height = 13
      EditLabel.Caption = 'Comprobante No.'
      TabOrder = 4
      OnKeyPress = EL_NComprobanteKeyPress
    end
    object M_DescripcionG: TMemo
      Left = 128
      Top = 67
      Width = 449
      Height = 59
      MaxLength = 100
      ScrollBars = ssVertical
      TabOrder = 3
      OnKeyPress = M_DescripcionGKeyPress
    end
    object DTP_FechaG: TJvDateTimePicker
      Left = 400
      Top = 145
      Width = 178
      Height = 21
      Date = 40509.776787083330000000
      Time = 40509.776787083330000000
      TabOrder = 6
      OnKeyPress = DTP_FechaGKeyPress
      DropDownDate = 40509.000000000000000000
    end
    object GB_5: TGroupBox
      Left = 16
      Top = 16
      Width = 251
      Height = 33
      TabOrder = 0
      object RB_GGeneral: TRadioButton
        Left = 7
        Top = 11
        Width = 89
        Height = 17
        Caption = 'Gasto general'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = RB_GGeneralClick
      end
      object RB_GBanca: TRadioButton
        Left = 99
        Top = 11
        Width = 145
        Height = 17
        Caption = 'Gasto especifico a banca'
        TabOrder = 1
        OnClick = RB_GBancaClick
      end
    end
  end
  object GB_2: TGroupBox
    Left = 0
    Top = 308
    Width = 659
    Height = 217
    Align = alBottom
    Caption = 'Gastos'
    TabOrder = 5
    object DBNV_1: TJvDBNavigator
      Left = 2
      Top = 15
      Width = 655
      Height = 19
      DataSource = DS_Gasto
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alTop
      TabOrder = 1
    end
    object DBGrid_1: TJvDBGrid
      Left = 2
      Top = 34
      Width = 655
      Height = 181
      Align = alClient
      DataSource = DS_Gasto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMenuHighlight
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection]
      ParentFont = False
      PopupMenu = PM_Gastos
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      TitlePopup = PM_Gastos
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 19
      TitleRowHeight = 19
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NumeroBanca'
          Title.Alignment = taCenter
          Title.Caption = 'Banca No.'
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MotoGasto'
          Title.Alignment = taCenter
          Title.Caption = 'Monto Gasto'
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DetallesGasto'
          Title.Alignment = taCenter
          Title.Caption = 'Detalles Gasto'
          Width = 290
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NumeroComprobante'
          Title.Alignment = taCenter
          Title.Caption = 'No. Comprobante'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FechaGasto'
          Title.Alignment = taCenter
          Title.Caption = 'Fecha Gasto'
          Width = 88
          Visible = True
        end>
    end
  end
  object BBT_GuardarG: TBitBtn
    Left = 136
    Top = 195
    Width = 75
    Height = 25
    Caption = '&Guardar'
    TabOrder = 1
    OnClick = BBT_GuardarGClick
  end
  object GB_3: TGroupBox
    Left = 136
    Top = 232
    Width = 515
    Height = 57
    TabOrder = 4
    object LB_5: TLabel
      Left = 131
      Top = 11
      Width = 58
      Height = 13
      Caption = 'Fecha Inicio'
    end
    object LB_6: TLabel
      Left = 226
      Top = 11
      Width = 47
      Height = 13
      Caption = 'Fecha Fin'
    end
    object EL_BuscaBancaComp: TLabeledEdit
      Left = 13
      Top = 27
      Width = 97
      Height = 21
      EditLabel.Width = 82
      EditLabel.Height = 13
      EditLabel.Caption = 'Ingrese N. Comp.'
      TabOrder = 0
      OnKeyPress = EL_BuscaBancaCompKeyPress
    end
    object DTPE_FFin: TJvDatePickerEdit
      Left = 226
      Top = 27
      Width = 89
      Height = 21
      AllowNoDate = True
      Checked = True
      Enabled = False
      TabOrder = 2
    end
    object DTPE_FInicio: TJvDatePickerEdit
      Left = 132
      Top = 27
      Width = 88
      Height = 21
      AllowNoDate = True
      Checked = True
      Enabled = False
      TabOrder = 1
      OnKeyPress = DTPE_FInicioKeyPress
    end
    object BBT_BuscaG: TBitBtn
      Left = 328
      Top = 24
      Width = 75
      Height = 25
      Caption = '&Buscar'
      TabOrder = 3
      OnClick = BBT_BuscaGClick
    end
  end
  object BBT_Salir: TBitBtn
    Left = 216
    Top = 195
    Width = 75
    Height = 25
    Caption = '&Salir'
    TabOrder = 2
    OnClick = BBT_SalirClick
  end
  object GB_4: TGroupBox
    Left = 8
    Top = 192
    Width = 124
    Height = 97
    Caption = 'Realizar B'#250'squeda por:'
    TabOrder = 3
    object RB_BBanca: TRadioButton
      Left = 7
      Top = 19
      Width = 54
      Height = 17
      Caption = 'Banca'
      TabOrder = 0
      OnClick = RB_BBancaClick
    end
    object RB_Comprobante: TRadioButton
      Left = 7
      Top = 37
      Width = 84
      Height = 17
      Caption = 'Comprobante'
      Checked = True
      TabOrder = 1
      TabStop = True
      OnClick = RB_ComprobanteClick
    end
    object RB_Fecha: TRadioButton
      Left = 7
      Top = 55
      Width = 114
      Height = 17
      Caption = 'Rango de Fechas'
      TabOrder = 2
      OnClick = RB_FechaClick
    end
    object RB_BancaFecha: TRadioButton
      Left = 7
      Top = 74
      Width = 113
      Height = 17
      Caption = 'B. en Rango Fecha'
      TabOrder = 3
      OnClick = RB_BancaFechaClick
    end
  end
  object Qr__Qr_BuscaXBanca: TADOQuery
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
      end>
    SQL.Strings = (
      
        'select (select sum(gx.montoGasto) from gastos as gx, bancas as b' +
        'x where (gx.id_banca = bx.id_banca)and(gx.id_banca = :p0)) as tg' +
        'asto,'
      
        '       g.id_gasto,g.id_banca,g.montoGasto,g.detallesGasto,g.debi' +
        'tarA,g.numeroComprobante,'
      '       g.fechaGasto,g.origen,b.numero_Banca'
      'from gastos as g,bancas as b'
      'where(g.id_banca = b.id_banca)and(g.id_banca = :p1)'
      'order by g.fechaGasto;'
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Left = 487
    Top = 16
    object Qr__Qr_BuscaXBancaid_gasto: TAutoIncField
      FieldName = 'id_gasto'
      ReadOnly = True
    end
    object Qr__Qr_BuscaXBancaid_banca: TIntegerField
      FieldName = 'id_banca'
    end
    object Qr__Qr_BuscaXBancamontoGasto: TFloatField
      FieldName = 'montoGasto'
      DisplayFormat = '$ ,0.00##'
    end
    object Qr__Qr_BuscaXBancadetallesGasto: TWideStringField
      FieldName = 'detallesGasto'
      Size = 100
    end
    object Qr__Qr_BuscaXBancadebitarA: TIntegerField
      FieldName = 'debitarA'
    end
    object Qr__Qr_BuscaXBancanumeroComprobante: TWideStringField
      FieldName = 'numeroComprobante'
      Size = 15
    end
    object Qr__Qr_BuscaXBancafechaGasto: TDateTimeField
      FieldName = 'fechaGasto'
    end
    object Qr__Qr_BuscaXBancanumero_Banca: TIntegerField
      FieldName = 'numero_Banca'
    end
    object Qr__Qr_BuscaXBancatgasto: TFloatField
      FieldName = 'tgasto'
      DisplayFormat = '$ ,0.00##'
    end
    object Qr__Qr_BuscaXBancaorigen: TIntegerField
      FieldName = 'origen'
    end
  end
  object Qr__Qr_BuscaXComp: TADOQuery
    Connection = ControlCuentasBancarias.Coneccion_1
    CursorType = ctStatic
    Parameters = <
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
        Name = 'p0'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        'select (select sum(gx.montoGasto) from gastos as gx, bancas as b' +
        'x where (gx.id_banca = bx.id_banca)and'
      
        '       (gx.numerocomprobante like :p1)) as tgasto,g.id_gasto,g.i' +
        'd_banca,g.montoGasto,g.detallesGasto,'
      
        '       g.debitarA,g.numeroComprobante,g.fechaGasto,g.origen,b.nu' +
        'mero_Banca'
      'from gastos as g,bancas as b'
      'where(g.id_banca = b.id_banca)and(numeroComprobante like :p0)'
      'order by g.fechaGasto;'
      ''
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Left = 519
    Top = 16
    object Qr__Qr_BuscaXCompid_gasto: TAutoIncField
      FieldName = 'id_gasto'
      ReadOnly = True
    end
    object Qr__Qr_BuscaXCompid_banca: TIntegerField
      FieldName = 'id_banca'
    end
    object Qr__Qr_BuscaXCompmontoGasto: TFloatField
      FieldName = 'montoGasto'
      DisplayFormat = '$ ,0.00##'
      currency = True
    end
    object Qr__Qr_BuscaXCompdetallesGasto: TWideStringField
      FieldName = 'detallesGasto'
      Size = 100
    end
    object Qr__Qr_BuscaXCompdebitarA: TIntegerField
      FieldName = 'debitarA'
    end
    object Qr__Qr_BuscaXCompnumeroComprobante: TWideStringField
      FieldName = 'numeroComprobante'
      Size = 15
    end
    object Qr__Qr_BuscaXCompfechaGasto: TDateTimeField
      FieldName = 'fechaGasto'
    end
    object Qr__Qr_BuscaXCompnumero_Banca: TIntegerField
      FieldName = 'numero_Banca'
    end
    object Qr__Qr_BuscaXComptgasto: TFloatField
      FieldName = 'tgasto'
      DisplayFormat = '$ ,0.00##'
    end
    object Qr__Qr_BuscaXComporigen: TIntegerField
      FieldName = 'origen'
    end
  end
  object DS_Gasto: TDataSource
    DataSet = TableV_Gatos
    Left = 487
    Top = 48
  end
  object Qr__Qr_BuscaXFecha: TADOQuery
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
        Name = 'f3'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'f4'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        'select (select sum(gx.montoGasto) from gastos as gx, bancas as b' +
        'x where (gx.id_banca = bx.id_banca)and'
      
        '       (gx.fechaGasto between :f1 and :f2)) as tgasto,g.id_gasto' +
        ',g.id_banca,g.montoGasto,'
      
        '       g.detallesGasto,g.debitarA,g.numeroComprobante,g.fechaGas' +
        'to,g.origen,b.numero_Banca'
      
        'from gastos as g,bancas as b where(g.id_banca = b.id_banca)and(g' +
        '.fechaGasto between :f3 and :f4)'
      'order by g.fechaGasto;'
      ' '
      ' '
      ' '
      ' ')
    Left = 551
    Top = 16
    object Qr__Qr_BuscaXFechaid_gasto: TAutoIncField
      FieldName = 'id_gasto'
      ReadOnly = True
    end
    object Qr__Qr_BuscaXFechaid_banca: TIntegerField
      FieldName = 'id_banca'
    end
    object Qr__Qr_BuscaXFechamontoGasto: TFloatField
      FieldName = 'montoGasto'
      DisplayFormat = '$ ,0.00##'
    end
    object Qr__Qr_BuscaXFechadetallesGasto: TWideStringField
      FieldName = 'detallesGasto'
      Size = 100
    end
    object Qr__Qr_BuscaXFechadebitarA: TIntegerField
      FieldName = 'debitarA'
    end
    object Qr__Qr_BuscaXFechanumeroComprobante: TWideStringField
      FieldName = 'numeroComprobante'
      Size = 15
    end
    object Qr__Qr_BuscaXFechafechaGasto: TDateTimeField
      FieldName = 'fechaGasto'
    end
    object Qr__Qr_BuscaXFechanumero_Banca: TIntegerField
      FieldName = 'numero_Banca'
    end
    object Qr__Qr_BuscaXFechatgasto: TFloatField
      FieldName = 'tgasto'
      DisplayFormat = '$ ,0.00##'
    end
    object Qr__Qr_BuscaXFechaorigen: TIntegerField
      FieldName = 'origen'
    end
  end
  object Qr__Qr_BuscaXNBFecha: TADOQuery
    Connection = ControlCuentasBancarias.Coneccion_1
    Parameters = <
      item
        Name = 'p0'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = '0'
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
        Name = 'f3'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'f4'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        'select (select sum(gx.montoGasto) from gastos as gx, bancas as b' +
        'x where (gx.id_banca = bx.id_banca)and'
      
        '       (gx.id_banca = :p0)and(fechaGasto between :f1 and :f2)) a' +
        's tgasto,'
      
        '       g.id_gasto,g.id_banca,g.montoGasto,g.detallesGasto,g.debi' +
        'tarA,g.numeroComprobante,'
      '       g.fechaGasto,g.origen,b.numero_Banca'
      'from gastos as g,bancas as b'
      
        'where(g.id_banca = b.id_banca)and(g.id_banca = :p1)and(g.fechaGa' +
        'sto between :f3 and :f4)'
      'order by g.fechaGasto;'
      ' '
      ' '
      ' '
      ' ')
    Left = 583
    Top = 16
    object Qr__Qr_BuscaXNBFechaid_gasto: TAutoIncField
      FieldName = 'id_gasto'
      ReadOnly = True
    end
    object Qr__Qr_BuscaXNBFechaid_banca: TIntegerField
      FieldName = 'id_banca'
    end
    object Qr__Qr_BuscaXNBFechamontoGasto: TFloatField
      FieldName = 'montoGasto'
      DisplayFormat = '$ ,0.00##'
    end
    object Qr__Qr_BuscaXNBFechadetallesGasto: TWideStringField
      FieldName = 'detallesGasto'
      Size = 100
    end
    object Qr__Qr_BuscaXNBFechadebitarA: TIntegerField
      FieldName = 'debitarA'
    end
    object Qr__Qr_BuscaXNBFechanumeroComprobante: TWideStringField
      FieldName = 'numeroComprobante'
      Size = 15
    end
    object Qr__Qr_BuscaXNBFechafechaGasto: TDateTimeField
      FieldName = 'fechaGasto'
    end
    object Qr__Qr_BuscaXNBFechanumero_Banca: TIntegerField
      FieldName = 'numero_Banca'
    end
    object Qr__Qr_BuscaXNBFechatgasto: TFloatField
      FieldName = 'tgasto'
      DisplayFormat = '$ ,0.00##'
      currency = True
    end
    object Qr__Qr_BuscaXNBFechaorigen: TIntegerField
      FieldName = 'origen'
    end
  end
  object PM_Gastos: TPopupMenu
    Left = 519
    Top = 48
    object MM_Editar1: TMenuItem
      Caption = 'Editar'
      OnClick = MM_Editar1Click
    end
    object MM_N2: TMenuItem
      Caption = '-'
    end
    object MM_Eliminar1: TMenuItem
      Caption = 'Eliminar'
      OnClick = MM_Eliminar1Click
    end
    object MM_N3: TMenuItem
      Caption = '-'
    end
    object MM_VisualizarImprimir: TMenuItem
      Caption = 'Visualizar'
      OnClick = MM_VisualizarImprimirClick
    end
  end
  object RVP_Informes: TRvProject
    Engine = RVS_1
    ProjectFile = 'C:\Proyectos\Isidro\GastosMuestra.rav'
    Left = 583
    Top = 48
  end
  object RVS_1: TRvSystem
    TitleSetup = 'Output Options'
    TitleStatus = 'Report Status'
    TitlePreview = 'Report Preview'
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'ReportPrinter Report'
    SystemPrinter.UnitsFactor = 1.000000000000000000
    Left = 615
    Top = 48
  end
  object RVC_1: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = Qr__Qr_BuscaXComp
    Left = 551
    Top = 48
  end
  object Qr_BuscaGastoV: TADOQuery
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
        Name = 'p1'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        '       select (select sum(gx.montoGasto) from gastos as gx, banc' +
        'as as bx where (gx.id_banca = bx.id_banca)and(gx.id_gasto = :p0)' +
        ') as tgasto,'
      
        '       g.id_gasto,g.id_banca,g.montoGasto,g.detallesGasto,g.debi' +
        'tarA,g.numeroComprobante,'
      '       g.fechaGasto,g.origen,b.numero_Banca'
      'from gastos as g, bancas as b'
      'where(g.id_banca = b.id_banca)and(g.id_gasto = :p1)'
      'order by g.fechaGasto;'
      ' '
      ' '
      ' '
      ' '
      ' ')
    Left = 607
    Top = 88
    object Qr_BuscaGastoVtgasto: TFloatField
      FieldName = 'tgasto'
      DisplayFormat = '$ ,0.00##'
    end
    object Qr_BuscaGastoVid_gasto: TAutoIncField
      FieldName = 'id_gasto'
      ReadOnly = True
    end
    object Qr_BuscaGastoVid_banca: TIntegerField
      FieldName = 'id_banca'
    end
    object Qr_BuscaGastoVmontoGasto: TFloatField
      FieldName = 'montoGasto'
      DisplayFormat = '$ ,0.00##'
    end
    object Qr_BuscaGastoVdetallesGasto: TWideStringField
      FieldName = 'detallesGasto'
      Size = 100
    end
    object Qr_BuscaGastoVdebitarA: TIntegerField
      FieldName = 'debitarA'
    end
    object Qr_BuscaGastoVnumeroComprobante: TWideStringField
      FieldName = 'numeroComprobante'
      Size = 15
    end
    object Qr_BuscaGastoVfechaGasto: TDateTimeField
      FieldName = 'fechaGasto'
    end
    object Qr_BuscaGastoVorigen: TIntegerField
      FieldName = 'origen'
    end
    object Qr_BuscaGastoVnumero_Banca: TIntegerField
      FieldName = 'numero_Banca'
    end
  end
  object Qr_BuscaGasto: TADOQuery
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
        Name = 'p1'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        'select (select sum(gx.montoGasto) from gastos as gx, bancas as b' +
        'x where (gx.id_banca = bx.id_banca)and(gx.id_banca = :p0)) as tg' +
        'asto,'
      
        '       g.id_gasto,g.id_banca,g.montoGasto,g.detallesGasto,g.debi' +
        'tarA,g.numeroComprobante,'
      '       g.fechaGasto,g.origen,b.numero_Banca'
      'from gastos as g,bancas as b'
      'where(g.id_banca = b.id_banca)and(g.id_banca = :p1)'
      'order by g.fechaGasto;')
    Left = 192
    Top = 88
    object Qr_BuscaGastotgasto: TFloatField
      FieldName = 'tgasto'
    end
    object Qr_BuscaGastoid_gasto: TAutoIncField
      FieldName = 'id_gasto'
      ReadOnly = True
    end
    object Qr_BuscaGastoid_banca: TIntegerField
      FieldName = 'id_banca'
    end
    object Qr_BuscaGastomontoGasto: TFloatField
      FieldName = 'montoGasto'
    end
    object Qr_BuscaGastodetallesGasto: TWideStringField
      FieldName = 'detallesGasto'
      Size = 100
    end
    object Qr_BuscaGastodebitarA: TIntegerField
      FieldName = 'debitarA'
    end
    object Qr_BuscaGastonumeroComprobante: TWideStringField
      FieldName = 'numeroComprobante'
      Size = 15
    end
    object Qr_BuscaGastofechaGasto: TDateTimeField
      FieldName = 'fechaGasto'
    end
    object Qr_BuscaGastoorigen: TIntegerField
      FieldName = 'origen'
    end
    object Qr_BuscaGastonumero_Banca: TIntegerField
      FieldName = 'numero_Banca'
    end
  end
  object TableV_Gatos: TVirtualTable
    Active = True
    FieldDefs = <
      item
        Name = 'Indice'
        DataType = ftAutoInc
      end
      item
        Name = 'IdGasto'
        DataType = ftInteger
      end
      item
        Name = 'idBanca'
        DataType = ftInteger
      end
      item
        Name = 'TGasto'
        DataType = ftFloat
      end
      item
        Name = 'MotoGasto'
        DataType = ftFloat
      end
      item
        Name = 'DetallesGasto'
        DataType = ftString
        Size = 160
      end
      item
        Name = 'DebitarA'
        DataType = ftInteger
      end
      item
        Name = 'NumeroComprobante'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'FechaGasto'
        DataType = ftDateTime
      end
      item
        Name = 'Origen'
        DataType = ftInteger
      end
      item
        Name = 'NumeroBanca'
        DataType = ftString
        Size = 20
      end>
    Left = 223
    Top = 89
    Data = {
      01000B000600496E646963650E00000007004964476173746F03000000070069
      6442616E636103000000060054476173746F0600000009004D6F746F47617374
      6F060000000D00446574616C6C6573476173746F0100A0000800446562697461
      72410300000011004E756D65726F436F6D70726F62616E746501001E000A0046
      65636861476173746F0B00000006004F726967656E030000000B004E756D6572
      6F42616E636101001400000000000000}
    object TableV_GatosIndice: TAutoIncField
      FieldName = 'Indice'
    end
    object TableV_GatosIdGasto: TIntegerField
      FieldName = 'IdGasto'
    end
    object TableV_GatosidBanca: TIntegerField
      FieldName = 'idBanca'
    end
    object TableV_GatosTGasto: TFloatField
      FieldName = 'TGasto'
    end
    object TableV_GatosMotoGasto: TFloatField
      FieldName = 'MotoGasto'
      DisplayFormat = ',0.00##'
    end
    object TableV_GatosDetallesGasto: TStringField
      FieldName = 'DetallesGasto'
      Size = 160
    end
    object TableV_GatosDebitarA: TIntegerField
      FieldName = 'DebitarA'
    end
    object TableV_GatosNumeroComprobante: TStringField
      FieldName = 'NumeroComprobante'
      Size = 30
    end
    object TableV_GatosFechaGasto: TDateTimeField
      FieldName = 'FechaGasto'
    end
    object TableV_GatosOrigen: TIntegerField
      FieldName = 'Origen'
    end
    object TableV_GatosNumeroBanca: TStringField
      FieldName = 'NumeroBanca'
    end
  end
  object JvApplicationHotKey1: TJvApplicationHotKey
    Active = True
    HotKey = 114
    OnHotKey = JvApplicationHotKey1HotKey
    Left = 392
    Top = 24
  end
end
