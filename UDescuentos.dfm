object FDescuento: TFDescuento
  Left = 376
  Top = 311
  Width = 444
  Height = 345
  BorderIcons = [biSystemMenu]
  Caption = 'Descuentos.'
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
  object LB_1: TLabel
    Left = 13
    Top = 46
    Width = 111
    Height = 13
    Caption = 'Descripci'#243'n Descuento'
  end
  object LB_2: TLabel
    Left = 13
    Top = 8
    Width = 85
    Height = 13
    Caption = 'Monto Descuento'
  end
  object M_1: TMemo
    Left = 13
    Top = 62
    Width = 409
    Height = 57
    Hint = 'Ingrese una descripci'#243'n para el descuento .'
    ParentShowHint = False
    ScrollBars = ssVertical
    ShowHint = True
    TabOrder = 1
    OnKeyPress = M_1KeyPress
  end
  object ECal_Descuento: TJvCalcEdit
    Left = 13
    Top = 22
    Width = 87
    Height = 21
    Hint = 'Ingrese el monto del descuento a realizar.'
    DisplayFormat = 'RD$,0.00##'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    DecimalPlacesAlwaysShown = False
    OnKeyPress = ECal_DescuentoKeyPress
  end
  object BBT_Aplicar: TBitBtn
    Left = 259
    Top = 130
    Width = 75
    Height = 22
    Hint = 'Aplicar el descuento al empleado.'
    Caption = '&Aplicar'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = BBT_AplicarClick
  end
  object BBT_Salir: TBitBtn
    Left = 342
    Top = 130
    Width = 75
    Height = 22
    Hint = 'Salir'
    Caption = '&Salir'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = BBT_SalirClick
  end
  object GB_1: TGroupBox
    Left = 0
    Top = 160
    Width = 428
    Height = 147
    Align = alBottom
    TabOrder = 4
    object dbnvgr1: TDBNavigator
      Left = 2
      Top = 15
      Width = 424
      Height = 20
      DataSource = DS_Descuentos
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alTop
      TabOrder = 0
    end
    object DBGRID_1: TDBGrid
      Left = 2
      Top = 35
      Width = 424
      Height = 110
      Align = alClient
      DataSource = DS_Descuentos
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection]
      ParentShowHint = False
      PopupMenu = PM_Descuentos
      ShowHint = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGRID_1DblClick
      Columns = <
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'montoDescuento'
          Title.Alignment = taCenter
          Title.Caption = 'Monto'
          Visible = True
        end
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'estado'
          Title.Alignment = taCenter
          Title.Caption = 'Estado'
          Width = 54
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descripcion'
          Title.Alignment = taCenter
          Title.Caption = 'Descripci'#243'n'
          Width = 268
          Visible = True
        end>
    end
  end
  object BBT_2: TBitBtn
    Left = 177
    Top = 131
    Width = 75
    Height = 20
    Hint = 'Buscar un empleado para aplicarle el descuento.'
    Caption = '&B. Empleado'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    Visible = False
    OnClick = BBT_2Click
  end
  object GB_2: TGroupBox
    Left = 112
    Top = 9
    Width = 123
    Height = 35
    Caption = 'Estado del Descuento'
    TabOrder = 6
    object RB_Activo: TRadioButton
      Left = 5
      Top = 14
      Width = 52
      Height = 17
      Caption = 'Activo'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object RB_Inactivo: TRadioButton
      Left = 60
      Top = 14
      Width = 61
      Height = 17
      Caption = 'Inactivo'
      TabOrder = 1
    end
  end
  object TableV_Descuentos: TVirtualTable
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
        Name = 'montoDescuento'
        DataType = ftFloat
      end
      item
        Name = 'descripcion'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'estado'
        DataType = ftInteger
      end
      item
        Name = 'EsNuevo'
        DataType = ftInteger
      end>
    Left = 256
    Top = 48
    Data = {
      010007000600496E646963650E0000000C0049645F4465736375656E746F0300
      00000B0049645F456D706C6561646F030000000E006D6F6E746F446573637565
      6E746F060000000B006465736372697063696F6E0100FF00060065737461646F
      03000000070045734E7565766F03000000000000000000}
    object TableV_DescuentosIndice: TAutoIncField
      FieldName = 'Indice'
    end
    object TableV_DescuentosId_Descuento: TIntegerField
      FieldName = 'Id_Descuento'
    end
    object TableV_DescuentosId_Empleado: TIntegerField
      FieldName = 'Id_Empleado'
    end
    object TableV_DescuentosmontoDescuento: TFloatField
      FieldName = 'montoDescuento'
    end
    object TableV_Descuentosdescripcion: TStringField
      FieldName = 'descripcion'
      Size = 255
    end
    object TableV_Descuentosestado: TIntegerField
      FieldName = 'estado'
      OnGetText = TableV_DescuentosestadoGetText
    end
    object TableV_DescuentosEsNuevo: TIntegerField
      FieldName = 'EsNuevo'
    end
  end
  object DS_Descuentos: TDataSource
    DataSet = TableV_Descuentos
    Left = 288
    Top = 16
  end
  object Qr_BuscaDescuento: TADOQuery
    Connection = ControlCuentasBancarias.Coneccion_1
    Parameters = <
      item
        Name = 'idem'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select * from descuentos'
      'where id_empleado = :idem;')
    Left = 256
    Top = 16
    object Qr_BuscaDescuentoId_Descuento: TAutoIncField
      FieldName = 'Id_Descuento'
      ReadOnly = True
    end
    object Qr_BuscaDescuentoId_empleado: TSmallintField
      FieldName = 'Id_empleado'
    end
    object Qr_BuscaDescuentoMontoDescuento: TFloatField
      FieldName = 'MontoDescuento'
    end
    object Qr_BuscaDescuentoConcepto: TWideStringField
      FieldName = 'Concepto'
      Size = 255
    end
    object Qr_BuscaDescuentoEstado: TSmallintField
      FieldName = 'Estado'
    end
    object Qr_BuscaDescuentoFecha: TDateTimeField
      FieldName = 'Fecha'
    end
  end
  object PM_Descuentos: TPopupMenu
    OnPopup = PM_DescuentosPopup
    Left = 384
    Top = 16
    object MM_Modificar1: TMenuItem
      Caption = 'Modificar'
      OnClick = MM_Modificar1Click
    end
    object MM_N1: TMenuItem
      Caption = '-'
    end
    object MM_eliminar1: TMenuItem
      Caption = 'Eliminar'
      OnClick = MM_eliminar1Click
    end
  end
  object HK_1: TJvApplicationHotKey
    Active = True
    HotKey = 114
    OnHotKey = HK_1HotKey
    Left = 320
    Top = 16
  end
  object JvBalloonHint1: TJvBalloonHint
    UseBalloonAsApplicationHint = True
    Left = 352
    Top = 16
  end
end
