object FLoginUsuario: TFLoginUsuario
  Left = 363
  Top = 219
  Width = 454
  Height = 461
  BorderIcons = [biSystemMenu]
  Caption = 'Usuarios.'
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
  object EL_1: TLabeledEdit
    Left = 24
    Top = 32
    Width = 217
    Height = 21
    CharCase = ecLowerCase
    EditLabel.Width = 91
    EditLabel.Height = 13
    EditLabel.Caption = 'Nombre de Usuario'
    MaxLength = 50
    TabOrder = 0
    OnKeyDown = EL_1KeyDown
    OnKeyPress = EL_1KeyPress
  end
  object EL_2: TLabeledEdit
    Left = 24
    Top = 72
    Width = 217
    Height = 21
    EditLabel.Width = 54
    EditLabel.Height = 13
    EditLabel.Caption = 'Contrase'#241'a'
    MaxLength = 30
    PasswordChar = '*'
    TabOrder = 1
    OnKeyDown = EL_2KeyDown
    OnKeyPress = EL_2KeyPress
  end
  object EL_3: TLabeledEdit
    Left = 24
    Top = 112
    Width = 217
    Height = 21
    EditLabel.Width = 108
    EditLabel.Height = 13
    EditLabel.Caption = 'Re-ingrese Contrase'#241'a'
    MaxLength = 30
    PasswordChar = '*'
    TabOrder = 2
    OnKeyDown = EL_3KeyDown
    OnKeyPress = EL_3KeyPress
  end
  object EL_4: TLabeledEdit
    Left = 24
    Top = 160
    Width = 377
    Height = 21
    CharCase = ecUpperCase
    EditLabel.Width = 37
    EditLabel.Height = 13
    EditLabel.Caption = 'Nombre'
    MaxLength = 80
    TabOrder = 3
    OnKeyDown = EL_4KeyDown
    OnKeyPress = EL_4KeyPress
  end
  object EL_5: TLabeledEdit
    Left = 24
    Top = 200
    Width = 377
    Height = 21
    CharCase = ecUpperCase
    EditLabel.Width = 42
    EditLabel.Height = 13
    EditLabel.Caption = 'Apellidos'
    MaxLength = 80
    TabOrder = 4
    OnKeyDown = EL_5KeyDown
    OnKeyPress = EL_5KeyPress
  end
  object GB_1: TGroupBox
    Left = 0
    Top = 289
    Width = 438
    Height = 134
    Align = alBottom
    TabOrder = 5
    object DBGRID_1: TDBGrid
      Left = 2
      Top = 35
      Width = 434
      Height = 97
      Align = alClient
      DataSource = DS_Usuarios
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection]
      PopupMenu = PM_1
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGRID_1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'NombreUsuario'
          Title.Alignment = taCenter
          Title.Caption = 'Nombre Usuario'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = '_Nombre'
          Title.Alignment = taCenter
          Title.Caption = 'Nombre'
          Width = 250
          Visible = True
        end>
    end
    object dbnvgr1: TDBNavigator
      Left = 2
      Top = 15
      Width = 434
      Height = 20
      DataSource = DS_Usuarios
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alTop
      TabOrder = 1
    end
  end
  object BBT_1: TBitBtn
    Left = 24
    Top = 248
    Width = 75
    Height = 25
    Caption = '&Guardar'
    TabOrder = 6
    OnClick = BBT_1Click
  end
  object BBT_2: TBitBtn
    Left = 328
    Top = 248
    Width = 75
    Height = 25
    Caption = '&Salir'
    TabOrder = 7
    OnClick = BBT_2Click
  end
  object BBT_3: TBitBtn
    Left = 104
    Top = 248
    Width = 75
    Height = 25
    Caption = '&Limpiar'
    TabOrder = 8
    OnClick = BBT_3Click
  end
  object DS_Usuarios: TDataSource
    DataSet = Qr_Usuarios
    Left = 8
    Top = 360
  end
  object Qr_Usuarios: TADOQuery
    Connection = ControlCuentasBancarias.Coneccion_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *, nombre+'#39' '#39'+apellidos as _Nombre from login;')
    Left = 40
    Top = 360
    object Qr_UsuariosId_Login: TAutoIncField
      FieldName = 'Id_Login'
      ReadOnly = True
    end
    object Qr_UsuariosNombreUsuario: TWideStringField
      FieldName = 'NombreUsuario'
      Size = 50
    end
    object Qr_UsuariosClaveUsuario: TWideStringField
      FieldName = 'ClaveUsuario'
      Size = 30
    end
    object Qr_UsuariosNombre: TWideStringField
      FieldName = 'Nombre'
      Size = 80
    end
    object Qr_UsuariosAPellidos: TWideStringField
      FieldName = 'APellidos'
      Size = 80
    end
    object Qr_UsuariosFechaCreado: TDateTimeField
      FieldName = 'FechaCreado'
    end
    object Qr_Usuarios_Nombre: TWideStringField
      FieldName = '_Nombre'
      ReadOnly = True
      Size = 255
    end
  end
  object PM_1: TPopupMenu
    Left = 72
    Top = 361
    object MM_Modificar1: TMenuItem
      Caption = 'Modificar'
      OnClick = MM_Modificar1Click
    end
    object MM_N1: TMenuItem
      Caption = '-'
    end
    object MM_Eliminar1: TMenuItem
      Caption = 'Eliminar'
      OnClick = MM_Eliminar1Click
    end
  end
  object HK_1: TJvApplicationHotKey
    Active = True
    HotKey = 114
    OnHotKey = HK_1HotKey
    Left = 104
    Top = 361
  end
end
