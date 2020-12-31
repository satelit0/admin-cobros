object FCreditoBanco: TFCreditoBanco
  Left = 333
  Top = 201
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Registro de Banco'
  ClientHeight = 348
  ClientWidth = 642
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
  object GB_1: TGroupBox
    Left = 7
    Top = 7
    Width = 626
    Height = 168
    Caption = '-'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object LB_1: TLabel
      Left = 9
      Top = 16
      Width = 94
      Height = 13
      Caption = '(*) Selecione Banco'
    end
    object LB_2: TLabel
      Left = 321
      Top = 16
      Width = 107
      Height = 13
      Caption = '(*) N'#250'mero de Cuenta'
    end
    object LB_3: TLabel
      Left = 10
      Top = 56
      Width = 92
      Height = 13
      Caption = '(*) Monto Deposito'
    end
    object LB_5: TLabel
      Left = 483
      Top = 55
      Width = 108
      Height = 13
      Caption = '(*) Fecha del Deposito'
    end
    object LB_6: TLabel
      Left = 422
      Top = 149
      Width = 201
      Height = 13
      Caption = 'Campos marcados con (*) son  requeridos'
    end
    object CBB_NomBanco: TComboBox
      Left = 10
      Top = 32
      Width = 305
      Height = 22
      Style = csOwnerDrawFixed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 0
      OnChange = CBB_NomBancoChange
      OnDropDown = CBB_NomBancoDropDown
      OnKeyPress = CBB_NomBancoKeyPress
    end
    object CBB_NCuentaBanco: TComboBox
      Left = 320
      Top = 32
      Width = 161
      Height = 19
      Style = csOwnerDrawFixed
      ItemHeight = 13
      TabOrder = 1
      OnChange = CBB_NCuentaBancoChange
      OnKeyPress = CBB_NCuentaBancoKeyPress
    end
    object ECal_1: TJvCalcEdit
      Left = 10
      Top = 72
      Width = 121
      Height = 25
      DisplayFormat = '$ ,0.00##'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      DecimalPlacesAlwaysShown = False
      OnKeyPress = ECal_1KeyPress
    end
    object BBT_Aplicar: TBitBtn
      Left = 10
      Top = 104
      Width = 75
      Height = 25
      Caption = 'Guardar'
      TabOrder = 6
      OnClick = BBT_AplicarClick
    end
    object BBT_Salir: TBitBtn
      Left = 89
      Top = 103
      Width = 75
      Height = 25
      Caption = 'Salir'
      TabOrder = 7
      OnClick = BBT_SalirClick
    end
    object GB_3: TGroupBox
      Left = 192
      Top = 99
      Width = 289
      Height = 50
      Caption = 'Banlace actual'
      TabOrder = 8
      object LB_4: TLabel
        Left = 26
        Top = 27
        Width = 49
        Height = 16
        Caption = 'Balance:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object ECal_2: TJvCalcEdit
        Left = 79
        Top = 15
        Width = 178
        Height = 24
        Flat = True
        ParentFlat = False
        ClickKey = 0
        DisplayFormat = '$ ,0.00##'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowButton = False
        ShowHint = True
        TabOrder = 0
        DecimalPlacesAlwaysShown = False
      end
    end
    object EL_1: TLabeledEdit
      Left = 134
      Top = 71
      Width = 347
      Height = 21
      CharCase = ecUpperCase
      EditLabel.Width = 71
      EditLabel.Height = 13
      EditLabel.Caption = '(*) Descripci'#243'n'
      MaxLength = 80
      TabOrder = 4
      OnKeyPress = EL_1KeyPress
    end
    object DTP_1: TJvDateTimePicker
      Left = 483
      Top = 71
      Width = 137
      Height = 21
      Date = 40522.368177962960000000
      Time = 40522.368177962960000000
      TabOrder = 5
      OnKeyPress = DTP_1KeyPress
      DropDownDate = 40522.000000000000000000
    end
    object EL_2: TLabeledEdit
      Left = 484
      Top = 32
      Width = 133
      Height = 21
      EditLabel.Width = 85
      EditLabel.Height = 13
      EditLabel.Caption = 'No. Comprobante'
      TabOrder = 2
      OnKeyPress = EL_2KeyPress
    end
  end
  object GB_2: TGroupBox
    Left = 7
    Top = 178
    Width = 626
    Height = 163
    Caption = 'Detalle Cuenta Banco'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object DBGRID_1: TDBGrid
      Left = 2
      Top = 36
      Width = 622
      Height = 125
      Align = alClient
      DataSource = DS_1
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Debito'
          Title.Alignment = taCenter
          Title.Caption = 'D'#233'bito'
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Credito'
          Title.Alignment = taCenter
          Title.Caption = 'Cr'#233'dito'
          Width = 69
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'FechaCreado'
          Title.Alignment = taCenter
          Title.Caption = 'Fecha'
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descripcion'
          Title.Alignment = taCenter
          Title.Caption = 'Descripci'#243'n'
          Width = 279
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NumeroTransaccion'
          Title.Alignment = taCenter
          Title.Caption = 'No. Transacci'#243'n'
          Width = 87
          Visible = True
        end>
    end
    object dbnvgr1: TDBNavigator
      Left = 2
      Top = 15
      Width = 622
      Height = 21
      DataSource = DS_1
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alTop
      TabOrder = 1
    end
  end
  object Qr_DetalleCuentaBacaria: TADOQuery
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
      'select * from DetallesCuentaBancaria'
      'where id_Cuenta = :p0'
      'order by fechaCreado asc;'
      ' ')
    Left = 15
    Top = 290
    object Qr_DetalleCuentaBacariaId_DetallesCuentasBancarias: TAutoIncField
      FieldName = 'Id_DetallesCuentasBancarias'
      ReadOnly = True
    end
    object Qr_DetalleCuentaBacariaId_Cuenta: TIntegerField
      FieldName = 'Id_Cuenta'
    end
    object Qr_DetalleCuentaBacariaDebito: TFloatField
      FieldName = 'Debito'
      DisplayFormat = '$ ,0.00##'
    end
    object Qr_DetalleCuentaBacariaCredito: TFloatField
      FieldName = 'Credito'
      DisplayFormat = '$ ,0.00##'
    end
    object Qr_DetalleCuentaBacariaNumeroTransaccion: TWideStringField
      FieldName = 'NumeroTransaccion'
      Size = 30
    end
    object Qr_DetalleCuentaBacariaDescripcion: TWideStringField
      FieldName = 'Descripcion'
      Size = 80
    end
    object Qr_DetalleCuentaBacariaFechaCreado: TDateTimeField
      FieldName = 'FechaCreado'
    end
    object Qr_DetalleCuentaBacariaFecha: TDateTimeField
      FieldName = 'Fecha'
    end
  end
  object DS_1: TDataSource
    DataSet = Qr_DetalleCuentaBacaria
    Left = 47
    Top = 290
  end
  object JvBalloonHint1: TJvBalloonHint
    UseBalloonAsApplicationHint = True
    Left = 87
    Top = 290
  end
  object HK_1: TJvApplicationHotKey
    Active = True
    HotKey = 114
    OnHotKey = HK_1HotKey
    Left = 119
    Top = 290
  end
end
