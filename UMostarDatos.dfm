object FMostrarDatos: TFMostrarDatos
  Left = 380
  Top = 303
  Width = 519
  Height = 225
  Caption = 'Bancas Computadas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGRID_1: TDBGrid
    Left = 0
    Top = 0
    Width = 503
    Height = 152
    Align = alClient
    DataSource = DS_1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'numero_Banca'
        Title.Alignment = taCenter
        Title.Caption = 'N'#250'mero de Banca'
        Width = 117
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'direccion_Banca'
        Title.Alignment = taCenter
        Title.Caption = 'Direcci'#243'n Banca'
        Width = 738
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'veneficiosVenta'
        Title.Alignment = taCenter
        Title.Caption = 'Beneficios Venta'
        Width = 138
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ingresoEfectivo'
        Title.Alignment = taCenter
        Title.Caption = 'Monto Recibido'
        Width = 118
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'diferencia'
        Title.Alignment = taCenter
        Title.Caption = 'Diferencia'
        Width = 114
        Visible = True
      end>
  end
  object SPANEL_1: TStatusBar
    Left = 0
    Top = 152
    Width = 503
    Height = 35
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    Panels = <
      item
        Width = 250
      end
      item
        Width = 250
      end>
    UseSystemFont = False
  end
  object DS_1: TDataSource
    DataSet = Qr_BancasMostrar
    Left = 24
    Top = 112
  end
  object Qr_BancasMostrar: TADOQuery
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
      
        'select b.numero_Banca, b.direccion_Banca, cxc.veneficiosVenta, c' +
        'xc.ingresoEfectivo, cxc.diferencia,'
      
        '(select sum(veneficiosVenta) from CxCBancas where fecha = :p0)as' +
        ' tBB,'
      
        '(select sum(ingresoEfectivo) from CxCBancas where fecha = :p1)as' +
        ' tIE'
      'from Bancas as b, CxCBancas as cxc'
      
        'where (b.id_banca = cxc.id_banca)and(cxc.fecha = :p2) order by n' +
        'umero_banca;'
      ' '
      ' '
      ' ')
    Left = 56
    Top = 112
    object Qr_BancasMostrarnumero_Banca: TIntegerField
      FieldName = 'numero_Banca'
    end
    object Qr_BancasMostrardireccion_Banca: TWideStringField
      FieldName = 'direccion_Banca'
      Size = 100
    end
    object Qr_BancasMostrarveneficiosVenta: TFloatField
      FieldName = 'veneficiosVenta'
      DisplayFormat = 'RD$ #,##00.0'
    end
    object Qr_BancasMostraringresoEfectivo: TFloatField
      FieldName = 'ingresoEfectivo'
      DisplayFormat = 'RD$ #,##00.0'
    end
    object Qr_BancasMostrardiferencia: TFloatField
      FieldName = 'diferencia'
      DisplayFormat = 'RD$ #,##00.0'
    end
    object Qr_BancasMostrartBB: TFloatField
      FieldName = 'tBB'
    end
    object Qr_BancasMostrartIE: TFloatField
      FieldName = 'tIE'
    end
  end
end
