object FCuentasBancarias: TFCuentasBancarias
  Left = 383
  Top = 231
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cuentas Bancarias'
  ClientHeight = 210
  ClientWidth = 479
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
  object LB_3: TLabel
    Left = 368
    Top = 192
    Width = 96
    Height = 13
    Caption = '(*) Campo requerido.'
  end
  object GB_1: TGroupBox
    Left = 16
    Top = 16
    Width = 449
    Height = 145
    TabOrder = 0
    object LB_1: TLabel
      Left = 139
      Top = 94
      Width = 73
      Height = 13
      Caption = 'Tipo de Cuenta'
    end
    object LB_2: TLabel
      Left = 16
      Top = 96
      Width = 89
      Height = 13
      Caption = 'N'#250'mero de Cuenta'
    end
    object EL_NombreBanco: TLabeledEdit
      Left = 16
      Top = 30
      Width = 409
      Height = 21
      CharCase = ecUpperCase
      EditLabel.Width = 84
      EditLabel.Height = 13
      EditLabel.Caption = '(*) Nombre Banco'
      TabOrder = 0
      OnKeyPress = EL_NombreBancoKeyPress
    end
    object EL_DescripcionCuenta: TLabeledEdit
      Left = 16
      Top = 68
      Width = 409
      Height = 21
      CharCase = ecUpperCase
      EditLabel.Width = 93
      EditLabel.Height = 13
      EditLabel.Caption = 'Descripci'#243'n Cuenta'
      TabOrder = 1
      OnKeyPress = EL_DescripcionCuentaKeyPress
    end
    object CBB_TipoCuenta: TComboBox
      Left = 140
      Top = 111
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 3
      Text = 'Cuenta Corriente'
      Items.Strings = (
        'Cuenta Corriente'
        'Cuenta de Ahorros')
    end
    object ME_Cuenta: TJvMaskEdit
      Left = 16
      Top = 112
      Width = 121
      Height = 21
      MaxLength = 13
      TabOrder = 2
      OnKeyPress = ME_CuentaKeyPress
    end
  end
  object BBT_Guardar: TBitBtn
    Left = 32
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Guardar'
    TabOrder = 1
    OnClick = BBT_GuardarClick
  end
  object BBT_Salir: TBitBtn
    Left = 112
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Retornar'
    TabOrder = 2
    OnClick = BBT_SalirClick
  end
  object HK_1: TJvApplicationHotKey
    Active = True
    HotKey = 114
    OnHotKey = HK_1HotKey
    Left = 224
    Top = 168
  end
end
