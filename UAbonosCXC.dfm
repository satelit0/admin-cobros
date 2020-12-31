object FAbonoCXC: TFAbonoCXC
  Left = 361
  Top = 260
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cuentas por Cobrar'
  ClientHeight = 330
  ClientWidth = 537
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object GB_1: TGroupBox
    Left = 7
    Top = 5
    Width = 522
    Height = 317
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object DBGRID_1: TDBGrid
      Left = 2
      Top = 195
      Width = 518
      Height = 120
      Align = alBottom
      DataSource = DS_DetalleDeuda
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection]
      PopupMenu = PM_CxC
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = DBGRID_1DblClick
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'IdCxC'
          Title.Alignment = taCenter
          Title.Caption = 'No. Cuenta'
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Debito'#13#10
          Title.Alignment = taCenter
          Title.Caption = 'Deuda(CxC)'
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Abono'
          Title.Alignment = taCenter
          Title.Caption = 'Pago(s)'
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Diferencia'
          Title.Alignment = taCenter
          Title.Caption = 'Balance Cuenta'
          Width = 84
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NBanca'
          Title.Alignment = taCenter
          Title.Caption = 'N'#250'mero Banca'
          Width = 78
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Fecha'
          Title.Alignment = taCenter
          Width = 99
          Visible = True
        end>
    end
    object GB_2: TGroupBox
      Left = 12
      Top = 16
      Width = 501
      Height = 73
      TabOrder = 1
      object LB_2: TLabel
        Left = 9
        Top = 48
        Width = 81
        Height = 13
        Caption = 'Balance General:'
      end
      object LB_1: TLabel
        Left = 9
        Top = 20
        Width = 90
        Height = 13
        Caption = 'Nombre Empleado:'
      end
      object ECal_1: TJvCalcEdit
        Left = 94
        Top = 40
        Width = 82
        Height = 22
        Hint = 'Balance actual de la deuda'
        Flat = True
        ParentFlat = False
        ClickKey = 0
        DisplayFormat = '$ ,0.00##'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowButton = False
        ShowHint = True
        TabOrder = 0
        ClipboardCommands = []
        DecimalPlacesAlwaysShown = False
      end
      object BBT_1: TBitBtn
        Left = 180
        Top = 41
        Width = 75
        Height = 21
        Caption = '&Buscar'
        TabOrder = 1
        OnClick = BBT_1Click
        OnKeyDown = BBT_1KeyDown
      end
      object BBT_Salir: TBitBtn
        Left = 259
        Top = 41
        Width = 75
        Height = 21
        Caption = '&Salir'
        TabOrder = 2
        OnClick = BBT_SalirClick
      end
    end
    object GB_3: TGroupBox
      Left = 12
      Top = 91
      Width = 501
      Height = 98
      Caption = 'Recibir un pago'
      Enabled = False
      TabOrder = 2
      object LB_3: TLabel
        Left = 9
        Top = 17
        Width = 70
        Height = 13
        Caption = 'Monto recibido'
      end
      object LB_4: TLabel
        Left = 227
        Top = 31
        Width = 23
        Height = 13
        Caption = 'LB_4'
        Visible = False
      end
      object ECal_2: TJvCalcEdit
        Left = 9
        Top = 33
        Width = 126
        Height = 24
        Hint = 'Monto reciobido'
        ClickKey = 0
        DisplayFormat = '$ ,0.00##'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        ZeroEmpty = False
        ClipboardCommands = []
        DecimalPlacesAlwaysShown = False
        OnKeyDown = ECal_2KeyDown
        OnKeyPress = ECal_2KeyPress
      end
      object EL_1: TLabeledEdit
        Left = 9
        Top = 70
        Width = 366
        Height = 21
        EditLabel.Width = 54
        EditLabel.Height = 13
        EditLabel.Caption = 'Descripci'#243'n'
        TabOrder = 1
        OnKeyDown = EL_1KeyDown
        OnKeyPress = EL_1KeyPress
      end
      object BBT_Aplicar: TBitBtn
        Left = 144
        Top = 33
        Width = 75
        Height = 25
        Caption = '&Aplicar'
        TabOrder = 2
        OnClick = BBT_AplicarClick
        OnKeyDown = BBT_AplicarKeyDown
      end
    end
  end
  object MData_CXC: TJvMemoryData
    FieldDefs = <
      item
        Name = 'Id'
        DataType = ftAutoInc
      end
      item
        Name = 'IdCxC'
        DataType = ftInteger
      end
      item
        Name = 'Debito'#13#10
        DataType = ftFloat
      end
      item
        Name = 'Abono'
        DataType = ftFloat
      end
      item
        Name = 'NBanca'
        DataType = ftInteger
      end
      item
        Name = 'Fecha'
        DataType = ftDateTime
      end
      item
        Name = 'Diferencia'
        DataType = ftFloat
      end>
    AutoIncAsInteger = True
    Left = 16
    Top = 280
    object MData_CXCId: TAutoIncField
      FieldName = 'Id'
    end
    object MData_CXCIdCxC: TIntegerField
      FieldName = 'IdCxC'
    end
    object MData_CXCDebito: TFloatField
      FieldName = 'Debito'#13#10
      DisplayFormat = '$ ,0.00##'
    end
    object MData_CXCAbono: TFloatField
      FieldName = 'Abono'
      DisplayFormat = '$ ,0.00##'
    end
    object MData_CXCNBanca: TIntegerField
      FieldName = 'NBanca'
    end
    object MData_CXCFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object MData_CXCDiferencia: TFloatField
      FieldName = 'Diferencia'
      DisplayFormat = '$ ,0.00##'
    end
  end
  object DS_DetalleDeuda: TJvDataSource
    DataSet = MData_CXC
    Left = 48
    Top = 280
  end
  object PM_CxC: TPopupMenu
    Left = 79
    Top = 279
    object MM_Selecionar1: TMenuItem
      Caption = 'Selecionar'
      OnClick = MM_Selecionar1Click
    end
    object MM_N1: TMenuItem
      Caption = '-'
    end
    object MM_DesglosePagos1: TMenuItem
      Caption = 'Desglose Pagos'
      object MM_Visualizar1: TMenuItem
        Caption = 'Visualizar'
        OnClick = MM_Visualizar1Click
      end
      object MM_N2: TMenuItem
        Caption = '-'
      end
      object MM_Imprimir1: TMenuItem
        Caption = 'Imprimir'
      end
    end
  end
  object RVC_1: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = Qr_MostrarNombre
    Left = 113
    Top = 279
  end
  object RVP_1: TRvProject
    Engine = RVS_1
    ProjectFile = 'C:\Proyectos\Isidro\MuestraAbonoCuenta.rav'
    Left = 143
    Top = 277
  end
  object RVS_1: TRvSystem
    TitleSetup = 'Output Options'
    TitleStatus = 'Report Status'
    TitlePreview = 'Report Preview'
    SystemSetups = [ssAllowCopies]
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'ReportPrinter Report'
    SystemPrinter.UnitsFactor = 1.000000000000000000
    Left = 175
    Top = 277
  end
  object Qr_MostrarNombre: TADOQuery
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
      'select e.nombres+'#39' '#39'+e.apellidos as _nombre'
      '  from Empleados as E'
      'where(e.Id_empleado = :p0);'
      ''
      ' ')
    Left = 207
    Top = 277
    object Qr_MostrarNombre_nombre: TWideStringField
      FieldName = '_nombre'
      ReadOnly = True
      Size = 255
    end
  end
  object RVC_2: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = Qr_MuestraAbonos
    Left = 239
    Top = 277
  end
  object Qr_MuestraAbonos: TADOQuery
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
      
        'select credito, descripcion, d.fecha, b.numero_banca, c.id_cxcBa' +
        'ncas'
      'from CXCBancas as c, detCxCCobro as d, Bancas as b'
      
        'where (c.id_CxCBancas = d.id_CxCBanca_Detalle)and(c.id_banca = b' +
        '.id_banca)and'
      '      (c.estadoCuenta = -1)and(c.id_CxCBancas = :p0)'
      'order by d.fecha asc;'
      ' '
      ' '
      ' ')
    Left = 271
    Top = 277
    object Qr_MuestraAbonoscredito: TFloatField
      FieldName = 'credito'
      DisplayFormat = '$ ,0.00##'
    end
    object Qr_MuestraAbonosdescripcion: TWideStringField
      FieldName = 'descripcion'
      Size = 100
    end
    object Qr_MuestraAbonosfecha: TDateTimeField
      FieldName = 'fecha'
    end
    object Qr_MuestraAbonosnumero_banca: TIntegerField
      FieldName = 'numero_banca'
    end
    object Qr_MuestraAbonosid_cxcBancas: TAutoIncField
      FieldName = 'id_cxcBancas'
      ReadOnly = True
    end
  end
  object RVC_3: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = MData_CXC
    Left = 303
    Top = 277
  end
end
