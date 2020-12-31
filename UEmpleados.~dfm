object FEmpleados: TFEmpleados
  Left = 361
  Top = 201
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Empleados (Registrar Nuevo)'
  ClientHeight = 411
  ClientWidth = 545
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
  PixelsPerInch = 96
  TextHeight = 13
  object GB_2: TGroupBox
    Left = 8
    Top = 8
    Width = 529
    Height = 220
    Caption = 'Datos Generales del Empleado'
    TabOrder = 0
    object LB_1: TLabel
      Left = 8
      Top = 133
      Width = 72
      Height = 13
      Caption = 'Tel'#233'fono Mov'#237'l'
    end
    object LB_2: TLabel
      Left = 8
      Top = 176
      Width = 74
      Height = 13
      Caption = 'Tel'#233'fono (Flota)'
    end
    object LB_3: TLabel
      Left = 168
      Top = 133
      Width = 86
      Height = 13
      Caption = 'Fecha Nacimiento'
    end
    object LB_5: TLabel
      Left = 298
      Top = 12
      Width = 33
      Height = 13
      Caption = 'C'#233'dula'
    end
    object LB_8: TLabel
      Left = 368
      Top = 174
      Width = 71
      Height = 13
      Caption = 'Tipo Empleado'
    end
    object EL_Apellidos: TLabeledEdit
      Left = 8
      Top = 28
      Width = 268
      Height = 21
      CharCase = ecUpperCase
      EditLabel.Width = 48
      EditLabel.Height = 13
      EditLabel.Caption = 'Apellidos  '
      TabOrder = 0
      OnKeyPress = EL_ApellidosKeyPress
    end
    object EL_Nombre: TLabeledEdit
      Left = 8
      Top = 65
      Width = 268
      Height = 21
      CharCase = ecUpperCase
      EditLabel.Width = 48
      EditLabel.Height = 13
      EditLabel.Caption = 'Nombre(s)'
      TabOrder = 1
      OnKeyPress = EL_NombreKeyPress
    end
    object EL_Direccion: TLabeledEdit
      Left = 8
      Top = 106
      Width = 511
      Height = 21
      CharCase = ecUpperCase
      EditLabel.Width = 45
      EditLabel.Height = 13
      EditLabel.Caption = 'Direcci'#243'n'
      TabOrder = 5
      OnKeyPress = EL_DireccionKeyPress
    end
    object EM_Telefono: TMaskEdit
      Left = 8
      Top = 149
      Width = 116
      Height = 21
      EditMask = '(999)999-9999;0; '
      MaxLength = 13
      TabOrder = 6
      OnKeyPress = EM_TelefonoKeyPress
    end
    object EM_Flota: TMaskEdit
      Left = 8
      Top = 192
      Width = 118
      Height = 21
      EditMask = '(999)999-9999;0; '
      MaxLength = 13
      TabOrder = 7
      OnKeyPress = EM_FlotaKeyPress
    end
    object EL_Apodo: TLabeledEdit
      Left = 294
      Top = 66
      Width = 226
      Height = 21
      CharCase = ecUpperCase
      EditLabel.Width = 31
      EditLabel.Height = 13
      EditLabel.Caption = 'Apodo'
      TabOrder = 4
      OnKeyPress = EL_ApodoKeyPress
    end
    object EL_Edad: TLabeledEdit
      Left = 368
      Top = 148
      Width = 152
      Height = 21
      EditLabel.Width = 25
      EditLabel.Height = 13
      EditLabel.Caption = 'Edad'
      ReadOnly = True
      TabOrder = 13
      Visible = False
    end
    object RG_1: TRadioGroup
      Left = 169
      Top = 180
      Width = 184
      Height = 33
      Caption = 'Sexo'
      TabOrder = 9
    end
    object RB_Masc: TRadioButton
      Left = 184
      Top = 192
      Width = 73
      Height = 17
      Caption = 'Masculino'
      TabOrder = 10
      OnKeyPress = RB_MascKeyPress
    end
    object RB_Femen: TRadioButton
      Left = 258
      Top = 192
      Width = 81
      Height = 17
      Caption = 'Femenino'
      TabOrder = 11
      OnKeyPress = RB_FemenKeyPress
    end
    object EM_Cedula: TMaskEdit
      Left = 296
      Top = 27
      Width = 97
      Height = 21
      EditMask = '999-9999999-9;0; '
      MaxLength = 13
      TabOrder = 2
      OnKeyPress = EM_CedulaKeyPress
    end
    object DTP_Fecha_Nac: TJvDateTimePicker
      Left = 168
      Top = 149
      Width = 186
      Height = 21
      Date = 40491.908600347230000000
      Time = 40491.908600347230000000
      TabOrder = 8
      OnExit = DTP_Fecha_NacExit
      OnKeyPress = DTP_Fecha_NacKeyPress
      DropDownDate = 40491.000000000000000000
    end
    object CKB_Estado: TCheckBox
      Left = 429
      Top = 29
      Width = 60
      Height = 17
      Caption = 'Estado'
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
    object CBB_TipoEmpleado: TComboBox
      Left = 368
      Top = 190
      Width = 153
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 1
      TabOrder = 12
      Text = 'Vendedor/a'
      OnKeyPress = CBB_TipoEmpleadoKeyPress
      Items.Strings = (
        'Secretario/a'
        'Vendedor/a'
        'Mensajero/a'
        'Otros')
    end
  end
  object GB_1: TGroupBox
    Left = 8
    Top = 232
    Width = 529
    Height = 137
    Caption = 'Salario'
    TabOrder = 1
    object LB_4: TLabel
      Left = 6
      Top = 98
      Width = 73
      Height = 13
      Caption = '(*) Salario Bruto'
    end
    object Label1: TLabel
      Left = 111
      Top = 99
      Width = 57
      Height = 13
      Caption = 'Descuentos'
    end
    object Label3: TLabel
      Left = 213
      Top = 98
      Width = 59
      Height = 13
      Caption = 'Sueldo Neto'
    end
    object Label5: TLabel
      Left = 9
      Top = 19
      Width = 83
      Height = 13
      Caption = 'Fecha de Ingreso'
    end
    object LB_6: TLabel
      Left = 320
      Top = 95
      Width = 84
      Height = 13
      Caption = 'Intervalo de Pago'
    end
    object SBT_AgregarDescuentos: TSpeedButton
      Left = 361
      Top = 31
      Width = 87
      Height = 21
      Caption = 'Agregar Desc.'
      OnClick = SBT_AgregarDescuentosClick
    end
    object LB_9: TLabel
      Left = 6
      Top = 58
      Width = 44
      Height = 13
      Caption = 'Incentivo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object ECal_Descuentos: TJvCalcEdit
      Left = 109
      Top = 113
      Width = 100
      Height = 19
      Flat = True
      ParentFlat = False
      DisplayFormat = 'RD$ ,0.00##'
      ReadOnly = True
      ShowButton = False
      TabOrder = 2
      ZeroEmpty = False
      DecimalPlacesAlwaysShown = False
      OnExit = ECal_DescuentosExit
      OnKeyPress = ECal_DescuentosKeyPress
    end
    object ECal_SueldoNeto: TJvCalcEdit
      Left = 213
      Top = 112
      Width = 100
      Height = 19
      Flat = True
      ParentFlat = False
      ClickKey = 0
      DisplayFormat = 'RD$ ,0.00##'
      ReadOnly = True
      ShowButton = False
      TabOrder = 3
      DecimalPlacesAlwaysShown = False
    end
    object ECal_SuleldoBruto: TJvCalcEdit
      Left = 6
      Top = 112
      Width = 100
      Height = 19
      Flat = True
      ParentFlat = False
      ClickKey = 0
      DisplayFormat = 'RD$ ,0.00##'
      TabOrder = 1
      ZeroEmpty = False
      DecimalPlacesAlwaysShown = False
      OnExit = ECal_SuleldoBrutoExit
      OnKeyPress = ECal_SuleldoBrutoKeyPress
    end
    object DTP_Fecha_Ing: TJvDateTimePicker
      Left = 7
      Top = 33
      Width = 186
      Height = 21
      Date = 40491.908600347230000000
      Time = 40491.908600347230000000
      TabOrder = 0
      OnExit = DTP_Fecha_IngExit
      OnKeyPress = DTP_Fecha_IngKeyPress
      DropDownDate = 40491.000000000000000000
    end
    object EL_TiempoServicio: TLabeledEdit
      Left = 200
      Top = 33
      Width = 154
      Height = 21
      EditLabel.Width = 91
      EditLabel.Height = 13
      EditLabel.Caption = 'Tiempo en Servicio'
      ReadOnly = True
      TabOrder = 5
    end
    object CBB_IntervaloPago: TComboBox
      Left = 319
      Top = 111
      Width = 101
      Height = 22
      Style = csOwnerDrawFixed
      ItemHeight = 16
      TabOrder = 4
      OnKeyPress = CBB_IntervaloPagoKeyPress
      Items.Strings = (
        '15 de cada mes'
        '30 de cada mes')
    end
    object ECal_1: TJvCalcEdit
      Left = 6
      Top = 74
      Width = 100
      Height = 19
      Flat = True
      ParentFlat = False
      DisplayFormat = 'RD$ ,0.00##'
      TabOrder = 6
      DecimalPlacesAlwaysShown = False
      OnExit = ECal_1Exit
      OnKeyPress = ECal_1KeyPress
    end
    object EL_1: TLabeledEdit
      Left = 112
      Top = 74
      Width = 406
      Height = 21
      CharCase = ecUpperCase
      EditLabel.Width = 103
      EditLabel.Height = 13
      EditLabel.Caption = 'Descripci'#243'n Incentivo'
      MaxLength = 100
      TabOrder = 7
      OnKeyPress = EL_1KeyPress
    end
  end
  object BBT_Guardar: TBitBtn
    Left = 24
    Top = 376
    Width = 75
    Height = 25
    Caption = '&Guardar'
    TabOrder = 2
    OnClick = BBT_GuardarClick
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
  end
  object BBT_CrearNuevo: TBitBtn
    Left = 104
    Top = 376
    Width = 75
    Height = 25
    Caption = '&Nuevo'
    TabOrder = 3
    OnClick = BBT_CrearNuevoClick
  end
  object BBT_Buscar: TBitBtn
    Left = 344
    Top = 376
    Width = 75
    Height = 25
    Caption = '&Buscar'
    TabOrder = 6
    OnClick = BBT_BuscarClick
  end
  object BBT_Limpiar: TBitBtn
    Left = 184
    Top = 376
    Width = 75
    Height = 25
    Caption = '&Limpiar Camp.'
    TabOrder = 4
    OnClick = BBT_LimpiarClick
  end
  object BBT_Eliminar: TBitBtn
    Left = 264
    Top = 376
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Eliminar'
    Enabled = False
    TabOrder = 5
    Visible = False
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
  end
  object BBT_Salir: TBitBtn
    Left = 424
    Top = 376
    Width = 75
    Height = 25
    Caption = '&Salir'
    TabOrder = 7
    OnClick = BBT_SalirClick
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00344446333334
      44433333FFFF333333FFFF33000033AAA43333332A4333338833F33333883F33
      00003332A46333332A4333333383F33333383F3300003332A2433336A6633333
      33833F333383F33300003333AA463362A433333333383F333833F33300003333
      6AA4462A46333333333833FF833F33330000333332AA22246333333333338333
      33F3333300003333336AAA22646333333333383333F8FF33000033444466AA43
      6A43333338FFF8833F383F330000336AA246A2436A43333338833F833F383F33
      000033336A24AA442A433333333833F33FF83F330000333333A2AA2AA4333333
      333383333333F3330000333333322AAA4333333333333833333F333300003333
      333322A4333333333333338333F333330000333333344A433333333333333338
      3F333333000033333336A24333333333333333833F333333000033333336AA43
      33333333333333833F3333330000333333336663333333333333333888333333
      0000}
    NumGlyphs = 2
  end
  object Qr_InsertarEmpleado: TADOQuery
    Connection = ControlCuentasBancarias.Coneccion_1
    Parameters = <
      item
        Name = 'cedula'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'apellidos'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'nombres'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'apodo'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'direccion'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'telefono'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'telefonoMovil'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'fechaNacimiento'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'sexo'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'fechaIngreso'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'salarioBruto'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'fechaCreado'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'intervaloPago'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'tipoEmpleado'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'estado'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'montoInc'
        Size = -1
        Value = Null
      end
      item
        Name = 'DescripcionInc'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'insert into empleados (cedula,'#9'apellidos,'#9'nombres,'#9'apodo, direcc' +
        'ion,'#9'telefono,'
      
        '                      telefonoMovil,'#9'fechaNacimiento,'#9'sexo, fech' +
        'aIngreso, salarioBruto,'
      
        '                      fechaCreado, intervaloPago, tipoEmpleado, ' +
        'estado, montoIncentivo, descripcionIncentivo)'
      ''
      
        'values(:cedula,'#9':apellidos,'#9':nombres,'#9':apodo, :direccion,'#9':telef' +
        'ono,'
      
        '      :telefonoMovil,'#9':fechaNacimiento,'#9':sexo, :fechaIngreso, :s' +
        'alarioBruto,'
      
        '      :fechaCreado, :intervaloPago, :tipoEmpleado, :estado, :mon' +
        'toInc, :DescripcionInc);'
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Left = 437
    Top = 16
  end
  object TableV_DescuentoTemp: TVirtualTable
    Active = True
    FieldDefs = <
      item
        Name = 'Indice'
        DataType = ftAutoInc
      end
      item
        Name = 'Id_Descuento'
        DataType = ftInteger
      end
      item
        Name = 'Id_Empleado'
        DataType = ftInteger
      end
      item
        Name = 'MontoDescuento'
        DataType = ftFloat
      end
      item
        Name = 'Descripcion'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'Estado'
        DataType = ftInteger
      end
      item
        Name = 'EsNuevo'
        DataType = ftInteger
      end>
    Left = 501
    Top = 16
    Data = {
      010007000600496E646963650E0000000C0049645F4465736375656E746F0300
      00000B0049645F456D706C6561646F030000000E004D6F6E746F446573637565
      6E746F060000000B004465736372697063696F6E0100FF00060045737461646F
      03000000070045734E7565766F03000000000000000000}
    object TableV_DescuentoTempIndice: TAutoIncField
      FieldName = 'Indice'
    end
    object TableV_DescuentoTempId_Descuento: TIntegerField
      FieldName = 'Id_Descuento'
    end
    object TableV_DescuentoTempId_Empleado: TIntegerField
      FieldName = 'Id_Empleado'
    end
    object TableV_DescuentoTempMontoDescuento: TFloatField
      FieldName = 'MontoDescuento'
    end
    object TableV_DescuentoTempDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 255
    end
    object TableV_DescuentoTempEstado: TIntegerField
      FieldName = 'Estado'
    end
    object TableV_DescuentoTempEsNuevo: TIntegerField
      FieldName = 'EsNuevo'
    end
  end
  object Qr_UltimoEmpleado: TADOQuery
    Connection = ControlCuentasBancarias.Coneccion_1
    Parameters = <>
    SQL.Strings = (
      'SELECT @@identity as ultimo from empleados')
    Left = 405
    Top = 16
    object Qr_UltimoEmpleadoultimo: TIntegerField
      FieldName = 'ultimo'
      ReadOnly = True
    end
  end
  object JvBalloonHint1: TJvBalloonHint
    UseBalloonAsApplicationHint = True
    Left = 469
    Top = 16
  end
  object ActL_1: TActionList
    Left = 373
    Top = 16
    object act1: TAction
      Caption = 'act1'
      ShortCut = 114
      OnExecute = act1Execute
    end
    object act2: TAction
      Caption = 'act2'
    end
  end
end
