object FBuscaEmpleado: TFBuscaEmpleado
  Left = 308
  Top = 240
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Buscar Empleado'
  ClientHeight = 283
  ClientWidth = 717
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object SBT_Retornar: TSpeedButton
    Left = 280
    Top = 228
    Width = 80
    Height = 45
    Caption = '&Retornar'
    OnClick = SBT_RetornarClick
  end
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 717
    Height = 217
    Align = alTop
    TabOrder = 0
    object DBNV_1: TJvDBNavigator
      Left = 1
      Top = 197
      Width = 715
      Height = 19
      DataSource = DS_Empleados
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alBottom
      TabOrder = 0
    end
    object DBGrid_1: TJvDBGrid
      Left = 1
      Top = 1
      Width = 715
      Height = 196
      Align = alClient
      DataSource = DS_Empleados
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection]
      ParentShowHint = False
      PopupMenu = PM_1
      ReadOnly = True
      ShowHint = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGrid_1DblClick
      ShowTitleHint = True
      TitlePopup = PM_1
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      CanDelete = False
      EditControls = <>
      AutoSizeRows = False
      RowsHeight = 17
      TitleRowHeight = 17
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'cedula'
          Title.Alignment = taCenter
          Title.Caption = 'C'#233'dula'
          Width = 93
          Visible = True
        end
        item
          Expanded = False
          FieldName = '_nombre'
          Title.Alignment = taCenter
          Title.Caption = 'Nombre Empleado'
          Width = 213
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'apodo'
          Title.Alignment = taCenter
          Title.Caption = 'Apodo'
          Width = 129
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sexo'
          Title.Alignment = taCenter
          Title.Caption = 'Sexo'
          Width = 79
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'fechaIngreso'
          Title.Alignment = taCenter
          Title.Caption = 'Fecha de Ingreso'
          Width = 103
          Visible = True
        end
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'e.Estado'
          Title.Alignment = taCenter
          Title.Caption = 'Estado'
          Visible = True
        end>
    end
  end
  object BBT_Buscar: TBitBtn
    Left = 201
    Top = 229
    Width = 75
    Height = 21
    Caption = '&Buscar'
    TabOrder = 1
    OnClick = BBT_BuscarClick
  end
  object EM_Buscar: TMaskEdit
    Left = 10
    Top = 229
    Width = 185
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
    OnKeyPress = EM_BuscarKeyPress
  end
  object BBT_1: TBitBtn
    Left = 11
    Top = 253
    Width = 183
    Height = 21
    Caption = '&Selecionar'
    Enabled = False
    TabOrder = 3
    OnClick = BBT_1Click
  end
  object BBT_CrearNEmpleado: TBitBtn
    Left = 201
    Top = 253
    Width = 74
    Height = 21
    Caption = 'C. &Empleado'
    TabOrder = 4
    OnClick = BBT_CrearNEmpleadoClick
  end
  object CKB_1: TCheckBox
    Left = 374
    Top = 226
    Width = 97
    Height = 17
    Caption = 'Visulizar Inactivos'
    TabOrder = 5
    OnClick = CKB_1Click
  end
  object DS_Empleados: TJvDataSource
    DataSet = Qr_BuscaEmpleado
    Left = 8
    Top = 72
  end
  object PM_1: TJvPopupMenu
    ImageMargin.Left = 0
    ImageMargin.Top = 0
    ImageMargin.Right = 0
    ImageMargin.Bottom = 0
    ImageSize.Height = 0
    ImageSize.Width = 0
    Left = 40
    Top = 72
    object MM_Modificar1: TMenuItem
      Caption = 'Modificar'
      OnClick = MM_Modificar1Click
    end
    object MM_N1: TMenuItem
      Caption = '-'
    end
    object MM_Seleccionar1: TMenuItem
      Caption = 'Seleccionar'
      OnClick = MM_Seleccionar1Click
    end
  end
  object Qr_BuscaEmpleado: TADOQuery
    Connection = ControlCuentasBancarias.Coneccion_1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ap'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'mon'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'apod'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'est'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'est1'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        'select *, e.nombres+'#39' '#39'+e.apellidos as _nombre from empleados as' +
        ' e left join bancas as b'
      'on(e.id_empleado = b.id_empleado_banca)'
      
        'where((e.apellidos like :ap)or(e.nombres like :mon)or(e.apodo = ' +
        ':apod))and((e.estado = :est)or(e.estado = :est1))'
      'order by e.nombres;'
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
    Left = 72
    Top = 72
    object Qr_BuscaEmpleado_nombre: TWideStringField
      FieldName = '_nombre'
      ReadOnly = True
      Size = 255
    end
    object Qr_BuscaEmpleadoId_Empleado: TAutoIncField
      FieldName = 'Id_Empleado'
      ReadOnly = True
    end
    object Qr_BuscaEmpleadocedula: TWideStringField
      FieldName = 'cedula'
      Size = 13
    end
    object Qr_BuscaEmpleadoapellidos: TWideStringField
      FieldName = 'apellidos'
      Size = 100
    end
    object Qr_BuscaEmpleadonombres: TWideStringField
      FieldName = 'nombres'
      Size = 60
    end
    object Qr_BuscaEmpleadoapodo: TWideStringField
      FieldName = 'apodo'
      Size = 60
    end
    object Qr_BuscaEmpleadodireccion: TWideStringField
      FieldName = 'direccion'
      Size = 255
    end
    object Qr_BuscaEmpleadotelefono: TWideStringField
      FieldName = 'telefono'
      Size = 10
    end
    object Qr_BuscaEmpleadotelefonoMovil: TWideStringField
      FieldName = 'telefonoMovil'
      Size = 10
    end
    object Qr_BuscaEmpleadofechaNacimiento: TDateTimeField
      FieldName = 'fechaNacimiento'
    end
    object Qr_BuscaEmpleadosexo: TWideStringField
      FieldName = 'sexo'
    end
    object Qr_BuscaEmpleadofechaIngreso: TDateTimeField
      FieldName = 'fechaIngreso'
    end
    object Qr_BuscaEmpleadosalarioBruto: TFloatField
      FieldName = 'salarioBruto'
    end
    object Qr_BuscaEmpleadotipoEmpleado: TSmallintField
      FieldName = 'tipoEmpleado'
    end
    object Qr_BuscaEmpleadointervaloPago: TWideStringField
      FieldName = 'intervaloPago'
      Size = 25
    end
    object Qr_BuscaEmpleadofechaCreado: TDateTimeField
      FieldName = 'fechaCreado'
    end
    object Qr_BuscaEmpleadoeEstado: TSmallintField
      FieldName = 'e.Estado'
      OnGetText = Qr_BuscaEmpleadoeEstadoGetText
    end
    object Qr_BuscaEmpleadoId_Banca: TAutoIncField
      FieldName = 'Id_Banca'
      ReadOnly = True
    end
    object Qr_BuscaEmpleadoNumero_Banca: TIntegerField
      FieldName = 'Numero_Banca'
    end
    object Qr_BuscaEmpleadoCantidadTurnos: TIntegerField
      FieldName = 'CantidadTurnos'
    end
    object Qr_BuscaEmpleadoId_Empleado_Banca: TIntegerField
      FieldName = 'Id_Empleado_Banca'
    end
    object Qr_BuscaEmpleadoDireccion_Banca: TWideStringField
      FieldName = 'Direccion_Banca'
      Size = 100
    end
    object Qr_BuscaEmpleadoNombre_Propietario: TWideStringField
      FieldName = 'Nombre_Propietario'
      Size = 100
    end
    object Qr_BuscaEmpleadoMonto_Alquiler: TFloatField
      FieldName = 'Monto_Alquiler'
    end
    object Qr_BuscaEmpleadoDia_Pago_Alquiler: TIntegerField
      FieldName = 'Dia_Pago_Alquiler'
    end
    object Qr_BuscaEmpleadoFecha_Incio_Operacion: TDateTimeField
      FieldName = 'Fecha_Incio_Operacion'
    end
    object Qr_BuscaEmpleadoFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object Qr_BuscaEmpleadobEstado: TSmallintField
      FieldName = 'b.Estado'
    end
    object Qr_BuscaEmpleadoMontoIncentivo: TFloatField
      FieldName = 'MontoIncentivo'
    end
    object Qr_BuscaEmpleadoDescripcionIncentivo: TWideStringField
      FieldName = 'DescripcionIncentivo'
      Size = 200
    end
  end
  object HK_BEmpleado: TJvApplicationHotKey
    Active = True
    HotKey = 114
    OnHotKey = HK_BEmpleadoHotKey
    Left = 104
    Top = 72
  end
end
