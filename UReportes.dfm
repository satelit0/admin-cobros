object FReportes: TFReportes
  Left = 236
  Top = 220
  Width = 865
  Height = 501
  Caption = 'FReportes'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object NB_Reportes: TNotebook
    Left = 0
    Top = 0
    Width = 849
    Height = 463
    Align = alClient
    PageIndex = 3
    TabOrder = 0
    object TPage
      Left = 0
      Top = 0
      Caption = 'Gastos'
      object QRP_Gastos: TQuickRep
        Left = 16
        Top = 40
        Width = 816
        Height = 1056
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        DataSet = Qr_Gasto
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Functions.Strings = (
          'PAGENUMBER'
          'COLUMNNUMBER'
          'REPORTTITLE')
        Functions.DATA = (
          '0'
          '0'
          #39#39)
        Options = [FirstPageHeader, LastPageFooter]
        Page.Columns = 1
        Page.Orientation = poPortrait
        Page.PaperSize = Letter
        Page.Values = (
          100.000000000000000000
          2794.000000000000000000
          100.000000000000000000
          2159.000000000000000000
          100.000000000000000000
          100.000000000000000000
          0.000000000000000000)
        PrinterSettings.Copies = 1
        PrinterSettings.Duplex = False
        PrinterSettings.FirstPage = 0
        PrinterSettings.LastPage = 0
        PrinterSettings.OutputBin = Auto
        PrintIfEmpty = True
        ReportTitle = 'Reporte de Gastos'
        SnapToGrid = True
        Units = Native
        Zoom = 100
        object PageHeaderBand1: TQRBand
          Left = 38
          Top = 38
          Width = 740
          Height = 85
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = True
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            224.895833333333300000
            1957.916666666667000000)
          BandType = rbPageHeader
          object QRL_1: TQRLabel
            Left = 8
            Top = 8
            Width = 445
            Height = 28
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              74.083333333333330000
              21.166666666666670000
              21.166666666666670000
              1177.395833333333000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Consorcio de Bancas la Fortuna de Isidro'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -24
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 18
          end
          object QRL_2: TQRLabel
            Left = 8
            Top = 64
            Width = 118
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              169.333333333333300000
              312.208333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Reporte de Gastos '
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRL_3: TQRLabel
            Left = 306
            Top = 64
            Width = 39
            Height = 17
            Enabled = False
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              809.625000000000000000
              169.333333333333300000
              103.187500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Fecha'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRL_4: TQRLabel
            Left = 469
            Top = 64
            Width = 39
            Height = 17
            Enabled = False
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1240.895833333333000000
              169.333333333333300000
              103.187500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Fecha'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRSysData1: TQRSysData
            Left = 685
            Top = 9
            Width = 49
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1812.395833333333000000
              23.812500000000000000
              129.645833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            Color = clWhite
            Data = qrsPageNumber
            Transparent = False
            FontSize = 10
          end
          object QRL_5: TQRLabel
            Left = 624
            Top = 10
            Width = 57
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1651.000000000000000000
              26.458333333333330000
              150.812500000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'P'#225'gina #:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRL_11: TQRLabel
            Left = 129
            Top = 64
            Width = 140
            Height = 17
            Enabled = False
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              341.312500000000000000
              169.333333333333300000
              370.416666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Para la Banca N'#250'mero:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRL_12: TQRLabel
            Left = 386
            Top = 64
            Width = 37
            Height = 17
            Enabled = False
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1021.291666666667000000
              169.333333333333300000
              97.895833333333330000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Hasta'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRSysData2: TQRSysData
            Left = 651
            Top = 45
            Width = 40
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1722.437500000000000000
              119.062500000000000000
              105.833333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            Color = clWhite
            Data = qrsTime
            Transparent = False
            FontSize = 10
          end
          object QRL_14: TQRLabel
            Left = 613
            Top = 45
            Width = 34
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1621.895833333333000000
              119.062500000000000000
              89.958333333333330000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Hora:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRL_15: TQRLabel
            Left = 613
            Top = 64
            Width = 42
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1621.895833333333000000
              169.333333333333300000
              111.125000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Fecha:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRSysData3: TQRSysData
            Left = 658
            Top = 64
            Width = 38
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1740.958333333333000000
              169.333333333333300000
              100.541666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            Color = clWhite
            Data = qrsDate
            Transparent = False
            FontSize = 10
          end
        end
        object TitleBand1: TQRBand
          Left = 38
          Top = 123
          Width = 740
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = True
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            50.270833333333330000
            1957.916666666667000000)
          BandType = rbTitle
          object QRL_6: TQRLabel
            Left = 8
            Top = 0
            Width = 64
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              0.000000000000000000
              169.333333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'No. Banca'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRL_7: TQRLabel
            Left = 80
            Top = 0
            Width = 77
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              211.666666666666700000
              0.000000000000000000
              203.729166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Monto Gasto'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRL_8: TQRLabel
            Left = 164
            Top = 0
            Width = 73
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              433.916666666666700000
              0.000000000000000000
              193.145833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Descripci'#243'n'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRL_9: TQRLabel
            Left = 659
            Top = 1
            Width = 39
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1743.604166666667000000
              2.645833333333333000
              103.187500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Fecha'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRL_13: TQRLabel
            Left = 567
            Top = 0
            Width = 64
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1500.187500000000000000
              0.000000000000000000
              169.333333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'No. Comp.'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object DetailBand1: TQRBand
          Left = 38
          Top = 142
          Width = 740
          Height = 18
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          BeforePrint = DetailBand1BeforePrint
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            47.625000000000000000
            1957.916666666667000000)
          BandType = rbDetail
          object QRDBL_montoGasto: TQRDBText
            Left = 80
            Top = 0
            Width = 74
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              211.666666666666700000
              0.000000000000000000
              195.791666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = Qr_Gasto
            DataField = 'montoGasto'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBL_detallesGasto: TQRDBText
            Left = 163
            Top = 0
            Width = 398
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              431.270833333333300000
              0.000000000000000000
              1053.041666666667000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Qr_Gasto
            DataField = 'detallesGasto'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBL_fechaGasto: TQRDBText
            Left = 658
            Top = 0
            Width = 78
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1740.958333333333000000
              0.000000000000000000
              206.375000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Qr_Gasto
            DataField = 'fechaGasto'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBL_numeroComprobante: TQRDBText
            Left = 566
            Top = 0
            Width = 85
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1497.541666666667000000
              0.000000000000000000
              224.895833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = Qr_Gasto
            DataField = 'numeroComprobante'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBL_numero_Banca: TQRDBText
            Left = 496
            Top = 0
            Width = 57
            Height = 17
            Enabled = False
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1312.333333333333000000
              0.000000000000000000
              150.812500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = FGastos.Qr_BuscaGasto
            DataField = 'numero_Banca'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRL_77: TQRLabel
            Left = 9
            Top = 0
            Width = 49
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              23.812500000000000000
              0.000000000000000000
              129.645833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRL_77'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object PageFooterBand1: TQRBand
          Left = 38
          Top = 160
          Width = 740
          Height = 22
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          LinkBand = DetailBand1
          Size.Values = (
            58.208333333333330000
            1957.916666666667000000)
          BandType = rbPageFooter
          object QRL_10: TQRLabel
            Left = 5
            Top = 2
            Width = 74
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              13.229166666666670000
              5.291666666666667000
              195.791666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Total Gasto:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRExpr1: TQRExpr
            Left = 84
            Top = 2
            Width = 167
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              222.250000000000000000
              5.291666666666667000
              441.854166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            Master = QRP_Gastos
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'sum(Qr_Gasto.montoGasto)'
            FontSize = 10
          end
        end
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'ResumenVenfGastos'
      object QRP_ResumenVenfGastos: TQuickRep
        Left = 24
        Top = 16
        Width = 816
        Height = 1056
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        DataSet = FBuscaReportes.Qr_BuscaGastoCons_Ban
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Functions.Strings = (
          'PAGENUMBER'
          'COLUMNNUMBER'
          'REPORTTITLE')
        Functions.DATA = (
          '0'
          '0'
          #39#39)
        Options = [FirstPageHeader, LastPageFooter]
        Page.Columns = 1
        Page.Orientation = poPortrait
        Page.PaperSize = Letter
        Page.Values = (
          99.060000000000000000
          2794.000000000000000000
          99.060000000000000000
          2159.000000000000000000
          99.060000000000000000
          99.060000000000000000
          0.000000000000000000)
        PrinterSettings.Copies = 1
        PrinterSettings.Duplex = False
        PrinterSettings.FirstPage = 0
        PrinterSettings.LastPage = 0
        PrinterSettings.OutputBin = Auto
        PrintIfEmpty = True
        ReportTitle = 'Reporte General - Gastos Veneficios.'
        SnapToGrid = True
        Units = Inches
        Zoom = 100
        object TitleBand2: TQRBand
          Left = 37
          Top = 122
          Width = 741
          Height = 154
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            407.458333333333300000
            1960.562500000000000000)
          BandType = rbTitle
          object QRL_18: TQRLabel
            Left = 8
            Top = 8
            Width = 152
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              21.166666666666670000
              402.166666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Total de Beneficios Banca'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRL_19: TQRLabel
            Left = 162
            Top = 8
            Width = 49
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              428.625000000000000000
              21.166666666666670000
              129.645833333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = '..........: '
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRL_21: TQRLabel
            Left = 8
            Top = 32
            Width = 97
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              84.666666666666670000
              256.645833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Total de Gastos '
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRL_22: TQRLabel
            Left = 106
            Top = 32
            Width = 105
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              280.458333333333300000
              84.666666666666670000
              277.812500000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = '.........................:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRL_26: TQRLabel
            Left = 261
            Top = 8
            Width = 48
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              690.562500000000000000
              21.166666666666670000
              127.000000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRL_26'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRL_27: TQRLabel
            Left = 261
            Top = 32
            Width = 48
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              690.562500000000000000
              84.666666666666670000
              127.000000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRL_27'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRL_28: TQRLabel
            Left = 8
            Top = 56
            Width = 99
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              148.166666666666700000
              261.937500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Beneficios Netos'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRL_29: TQRLabel
            Left = 110
            Top = 56
            Width = 101
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              291.041666666666700000
              148.166666666666700000
              267.229166666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = '........................:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRShape1: TQRShape
            Left = 240
            Top = 50
            Width = 75
            Height = 1
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              2.645833333333333000
              635.000000000000000000
              132.291666666666700000
              198.437500000000000000)
            Shape = qrsRectangle
          end
          object QRL_30: TQRLabel
            Left = 261
            Top = 56
            Width = 48
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              690.562500000000000000
              148.166666666666700000
              127.000000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRL_30'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRL_31: TQRLabel
            Left = 8
            Top = 80
            Width = 168
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              211.666666666666700000
              444.500000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Beneficios Propietario Banca'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRL_32: TQRLabel
            Left = 178
            Top = 80
            Width = 33
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              470.958333333333300000
              211.666666666666700000
              87.312500000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = '.......:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRL_33: TQRLabel
            Left = 261
            Top = 80
            Width = 48
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              690.562500000000000000
              211.666666666666700000
              127.000000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRL_33'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRL_25: TQRLabel
            Left = 8
            Top = 104
            Width = 189
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              275.166666666666700000
              500.062500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Beneficios Propietario Consorcio'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRL_34: TQRLabel
            Left = 202
            Top = 104
            Width = 9
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              534.458333333333300000
              275.166666666666700000
              23.812500000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = ': '
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRL_35: TQRLabel
            Left = 261
            Top = 104
            Width = 48
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              690.562500000000000000
              275.166666666666700000
              127.000000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRL_35'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRL_36: TQRLabel
            Left = 327
            Top = 32
            Width = 48
            Height = 17
            Enabled = False
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              865.187500000000000000
              84.666666666666670000
              127.000000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRL_36'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRL_37: TQRLabel
            Left = 327
            Top = 80
            Width = 48
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              865.187500000000000000
              211.666666666666700000
              127.000000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRL_37'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRL_38: TQRLabel
            Left = 327
            Top = 104
            Width = 48
            Height = 17
            Enabled = False
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              865.187500000000000000
              275.166666666666700000
              127.000000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRL_38'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRShape2: TQRShape
            Left = -1
            Top = 131
            Width = 742
            Height = 1
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = True
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              2.645833333333333000
              -2.645833333333333000
              346.604166666666700000
              1963.208333333333000000)
            Shape = qrsRectangle
          end
          object QRL_39: TQRLabel
            Left = 9
            Top = 133
            Width = 76
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              23.812500000000000000
              351.895833333333300000
              201.083333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Monto Gasto'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRL_40: TQRLabel
            Left = 101
            Top = 133
            Width = 108
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              267.229166666666700000
              351.895833333333300000
              285.750000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Descripci'#243'n Gasto'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRShape3: TQRShape
            Left = -1
            Top = 151
            Width = 742
            Height = 1
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = True
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              2.645833333333333000
              -2.645833333333333000
              399.520833333333400000
              1963.208333333333000000)
            Shape = qrsRectangle
          end
          object QRL_42: TQRLabel
            Left = 662
            Top = 133
            Width = 37
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1751.541666666667000000
              351.895833333333300000
              97.895833333333330000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Fecha'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRShape4: TQRShape
            Left = 240
            Top = 98
            Width = 75
            Height = 1
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              2.645833333333333000
              635.000000000000000000
              259.291666666666700000
              198.437500000000000000)
            Shape = qrsRectangle
          end
          object QRL_43: TQRLabel
            Left = 389
            Top = 7
            Width = 48
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1029.229166666667000000
              18.520833333333330000
              127.000000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRL_43'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRL_44: TQRLabel
            Left = 595
            Top = 133
            Width = 62
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1574.270833333333000000
              351.895833333333300000
              164.041666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'No. Banca'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object QRBand1: TQRBand
          Left = 37
          Top = 37
          Width = 741
          Height = 85
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = True
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            224.895833333333300000
            1960.562500000000000000)
          BandType = rbPageHeader
          object QRL_16: TQRLabel
            Left = 8
            Top = 8
            Width = 445
            Height = 28
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              74.083333333333330000
              21.166666666666670000
              21.166666666666670000
              1177.395833333333000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Consorcio de Bancas la Fortuna de Isidro'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -24
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 18
          end
          object QRL_17: TQRLabel
            Left = 8
            Top = 64
            Width = 213
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              169.333333333333300000
              563.562500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Reporte General  Beneficios, Gastos'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRSysData4: TQRSysData
            Left = 685
            Top = 9
            Width = 46
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1812.395833333333000000
              23.812500000000000000
              121.708333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            Color = clWhite
            Data = qrsPageNumber
            Transparent = False
            FontSize = 10
          end
          object QRL_20: TQRLabel
            Left = 625
            Top = 10
            Width = 56
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1653.645833333333000000
              26.458333333333330000
              148.166666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'P'#225'gina #:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRSysData5: TQRSysData
            Left = 657
            Top = 45
            Width = 37
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1738.312500000000000000
              119.062500000000000000
              97.895833333333330000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            Color = clWhite
            Data = qrsTime
            Transparent = False
            FontSize = 10
          end
          object QRL_23: TQRLabel
            Left = 613
            Top = 45
            Width = 32
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1621.895833333333000000
              119.062500000000000000
              84.666666666666670000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Hora:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRL_24: TQRLabel
            Left = 613
            Top = 64
            Width = 41
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1621.895833333333000000
              169.333333333333300000
              108.479166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Fecha:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRSysData6: TQRSysData
            Left = 657
            Top = 64
            Width = 36
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1738.312500000000000000
              169.333333333333300000
              95.250000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            Color = clWhite
            Data = qrsDate
            Transparent = False
            FontSize = 10
          end
        end
        object DetailBand2: TQRBand
          Left = 37
          Top = 276
          Width = 741
          Height = 18
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            47.625000000000000000
            1960.562500000000000000)
          BandType = rbDetail
          object QRDBL_MontoGasto2: TQRDBText
            Left = 11
            Top = 0
            Width = 72
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              29.104166666666670000
              0.000000000000000000
              190.500000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = FBuscaReportes.Qr_BuscaGastoCons_Ban
            DataField = 'MontoGasto'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBL_MontoGasto1: TQRDBText
            Left = 100
            Top = 0
            Width = 493
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              264.583333333333300000
              0.000000000000000000
              1304.395833333333000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = FBuscaReportes.Qr_BuscaGastoCons_Ban
            DataField = 'DetallesGasto'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBL_FechaGasto1: TQRDBText
            Left = 662
            Top = 0
            Width = 72
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1751.541666666667000000
              0.000000000000000000
              190.500000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = FBuscaReportes.Qr_BuscaGastoCons_Ban
            DataField = 'FechaGasto'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBL_numero_banca1: TQRDBText
            Left = 600
            Top = 0
            Width = 53
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1587.500000000000000000
              0.000000000000000000
              140.229166666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataField = 'numero_banca'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'DetalleCuentaBanco'
      object QRP_DetallesCuentaBanco: TQuickRep
        Left = 32
        Top = 24
        Width = 816
        Height = 1056
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        DataSet = FBuscaReportes.Qr_MuestraDetallesCuentaBanco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Functions.Strings = (
          'PAGENUMBER'
          'COLUMNNUMBER'
          'REPORTTITLE'
          'QRSTRINGSBAND1')
        Functions.DATA = (
          '0'
          '0'
          #39#39
          #39#39)
        Options = [FirstPageHeader, LastPageFooter]
        Page.Columns = 1
        Page.Orientation = poPortrait
        Page.PaperSize = Letter
        Page.Values = (
          100.000000000000000000
          2794.000000000000000000
          100.000000000000000000
          2159.000000000000000000
          100.000000000000000000
          100.000000000000000000
          0.000000000000000000)
        PrinterSettings.Copies = 1
        PrinterSettings.Duplex = False
        PrinterSettings.FirstPage = 0
        PrinterSettings.LastPage = 0
        PrinterSettings.OutputBin = Auto
        PrintIfEmpty = True
        ReportTitle = 'Reporte Cuentas de Banco.'
        SnapToGrid = True
        Units = Native
        Zoom = 100
        object PageHeaderBand2: TQRBand
          Left = 38
          Top = 38
          Width = 740
          Height = 83
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = True
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            219.604166666666700000
            1957.916666666667000000)
          BandType = rbPageHeader
          object QRL_45: TQRLabel
            Left = 8
            Top = 8
            Width = 452
            Height = 28
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              74.083333333333330000
              21.166666666666670000
              21.166666666666670000
              1195.916666666667000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Consorcio de Bancas La Fortuna de Isidro'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -24
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 18
          end
          object QRL_46: TQRLabel
            Left = 8
            Top = 64
            Width = 161
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              169.333333333333300000
              425.979166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Reporte Cuentas de Banco '
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRSysData7: TQRSysData
            Left = 685
            Top = 9
            Width = 46
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1812.395833333333000000
              23.812500000000000000
              121.708333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            Color = clWhite
            Data = qrsPageNumber
            Transparent = False
            FontSize = 10
          end
          object QRL_57: TQRLabel
            Left = 625
            Top = 10
            Width = 56
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1653.645833333333000000
              26.458333333333330000
              148.166666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'P'#225'gina #:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRSysData8: TQRSysData
            Left = 651
            Top = 45
            Width = 37
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1722.437500000000000000
              119.062500000000000000
              97.895833333333330000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            Color = clWhite
            Data = qrsTime
            Transparent = False
            FontSize = 10
          end
          object QRL_58: TQRLabel
            Left = 613
            Top = 45
            Width = 32
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1621.895833333333000000
              119.062500000000000000
              84.666666666666670000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Hora:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRL_59: TQRLabel
            Left = 613
            Top = 64
            Width = 41
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1621.895833333333000000
              169.333333333333300000
              108.479166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Fecha:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRSysData9: TQRSysData
            Left = 658
            Top = 64
            Width = 36
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1740.958333333333000000
              169.333333333333300000
              95.250000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            Color = clWhite
            Data = qrsDate
            Transparent = False
            FontSize = 10
          end
        end
        object ColumnHeaderBand1: TQRBand
          Left = 38
          Top = 121
          Width = 740
          Height = 64
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = True
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            169.333333333333300000
            1957.916666666667000000)
          BandType = rbColumnHeader
          object QRL_47: TQRLabel
            Left = 8
            Top = 2
            Width = 88
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              5.291666666666667000
              232.833333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'No. de Cuenta:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRL_48: TQRLabel
            Left = 232
            Top = 2
            Width = 52
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              613.833333333333300000
              5.291666666666667000
              137.583333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Balance:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRL_49: TQRLabel
            Left = 8
            Top = 23
            Width = 114
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              60.854166666666670000
              301.625000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Descripcion Cuenta'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRShape5: TQRShape
            Left = -2
            Top = 43
            Width = 743
            Height = 1
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              2.645833333333333000
              -5.291666666666667000
              113.770833333333300000
              1965.854166666667000000)
            Shape = qrsRectangle
          end
          object QRL_50: TQRLabel
            Left = 8
            Top = 45
            Width = 143
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              119.062500000000000000
              378.354166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Descripci'#243'n Transacci'#243'n'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRL_51: TQRLabel
            Left = 581
            Top = 45
            Width = 38
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1537.229166666667000000
              119.062500000000000000
              100.541666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'D'#233'bito'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRL_52: TQRLabel
            Left = 669
            Top = 45
            Width = 42
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1770.062500000000000000
              119.062500000000000000
              111.125000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Cr'#233'dito'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRL_53: TQRLabel
            Left = 479
            Top = 45
            Width = 37
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1267.354166666667000000
              119.062500000000000000
              97.895833333333330000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Fecha'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object DetailBand3: TQRBand
          Left = 38
          Top = 185
          Width = 740
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            52.916666666666670000
            1957.916666666667000000)
          BandType = rbDetail
          object QRDBL_Descripcion: TQRDBText
            Left = 8
            Top = 1
            Width = 69
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              2.645833333333333000
              182.562500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = FBuscaReportes.Qr_MuestraDetallesCuentaBanco
            DataField = 'Descripcion'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBL_FechaCreado: TQRDBText
            Left = 461
            Top = 1
            Width = 78
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1219.729166666667000000
              2.645833333333333000
              206.375000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = FBuscaReportes.Qr_MuestraDetallesCuentaBanco
            DataField = 'FechaCreado'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBL_Debito: TQRDBText
            Left = 581
            Top = 1
            Width = 38
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1537.229166666667000000
              2.645833333333333000
              100.541666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = FBuscaReportes.Qr_MuestraDetallesCuentaBanco
            DataField = 'Debito'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBL_Credito: TQRDBText
            Left = 669
            Top = 1
            Width = 42
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1770.062500000000000000
              2.645833333333333000
              111.125000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = FBuscaReportes.Qr_MuestraDetallesCuentaBanco
            DataField = 'Credito'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object PageFooterBand2: TQRBand
          Left = 38
          Top = 205
          Width = 740
          Height = 21
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            55.562500000000000000
            1957.916666666667000000)
          BandType = rbPageFooter
          object QRL_55: TQRLabel
            Left = 8
            Top = 2
            Width = 52
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              5.291666666666667000
              137.583333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Balance;'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRL_54: TQRLabel
            Left = 331
            Top = 2
            Width = 48
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              875.770833333333300000
              5.291666666666667000
              127.000000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRL_54'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRL_56: TQRLabel
            Left = 559
            Top = 2
            Width = 48
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1479.020833333333000000
              5.291666666666667000
              127.000000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRL_56'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'Nomina'
      object QRP_Nomina: TQuickRep
        Left = 8
        Top = 8
        Width = 816
        Height = 528
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        DataSet = FBuscaReportes.Qr_MuestraNomina
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Functions.Strings = (
          'PAGENUMBER'
          'COLUMNNUMBER'
          'REPORTTITLE')
        Functions.DATA = (
          '0'
          '0'
          #39#39)
        Options = [FirstPageHeader, LastPageFooter]
        Page.Columns = 1
        Page.Orientation = poPortrait
        Page.PaperSize = Custom
        Page.Values = (
          127.000000000000000000
          1397.000000000000000000
          99.060000000000000000
          2159.000000000000000000
          99.060000000000000000
          99.060000000000000000
          0.000000000000000000)
        PrinterSettings.Copies = 1
        PrinterSettings.Duplex = False
        PrinterSettings.FirstPage = 0
        PrinterSettings.LastPage = 0
        PrinterSettings.OutputBin = Auto
        PrintIfEmpty = True
        SnapToGrid = True
        Units = Inches
        Zoom = 100
        object PageHeaderBand3: TQRBand
          Left = 37
          Top = 37
          Width = 741
          Height = 55
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = True
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            145.520833333333300000
            1960.562500000000000000)
          BandType = rbPageHeader
          object QRL_60: TQRLabel
            Left = 175
            Top = 1
            Width = 352
            Height = 30
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              79.375000000000000000
              463.020833333333300000
              2.645833333333333000
              931.333333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Consorcio de Bancas la Fortuna  de Isidro'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 14
          end
          object QRL_61: TQRLabel
            Left = 9
            Top = 35
            Width = 49
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              23.812500000000000000
              92.604166666666670000
              129.645833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRL_61'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRSysData11: TQRSysData
            Left = 651
            Top = 5
            Width = 40
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1722.437500000000000000
              13.229166666666670000
              105.833333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            Color = clWhite
            Data = qrsTime
            Transparent = False
            FontSize = 10
          end
          object QRL_63: TQRLabel
            Left = 606
            Top = 5
            Width = 40
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1603.375000000000000000
              13.229166666666670000
              105.833333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Hora..:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRL_64: TQRLabel
            Left = 605
            Top = 24
            Width = 42
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1600.729166666667000000
              63.500000000000000000
              111.125000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Fecha:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRL_74: TQRLabel
            Left = 651
            Top = 24
            Width = 49
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1722.437500000000000000
              63.500000000000000000
              129.645833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRL_74'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object DetailBand4: TQRBand
          Left = 37
          Top = 92
          Width = 741
          Height = 145
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = True
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          BeforePrint = DetailBand4BeforePrint
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = True
          Size.Values = (
            383.645833333333300000
            1960.562500000000000000)
          BandType = rbDetail
          object QRL_66: TQRLabel
            Left = 8
            Top = 7
            Width = 119
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              18.520833333333330000
              314.854166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Nombre Empleado:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRL_62: TQRLabel
            Left = 8
            Top = 28
            Width = 78
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              74.083333333333330000
              206.375000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Sueldo Bruto'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRL_65: TQRLabel
            Left = 8
            Top = 74
            Width = 73
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              195.791666666666700000
              193.145833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Descuentos'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRL_68: TQRLabel
            Left = 8
            Top = 96
            Width = 76
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              254.000000000000000000
              201.083333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Sueldo Neto'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRL_69: TQRLabel
            Left = 87
            Top = 28
            Width = 37
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              230.187500000000000000
              74.083333333333330000
              97.895833333333330000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = '...........:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRL_70: TQRLabel
            Left = 96
            Top = 74
            Width = 28
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              254.000000000000000000
              195.791666666666700000
              74.083333333333330000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = '........:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRL_71: TQRLabel
            Left = 84
            Top = 96
            Width = 40
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              222.250000000000000000
              254.000000000000000000
              105.833333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = '............:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRL_75: TQRLabel
            Left = 127
            Top = 28
            Width = 49
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              336.020833333333300000
              74.083333333333330000
              129.645833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRL_75'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRL_67: TQRLabel
            Left = 8
            Top = 123
            Width = 145
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              325.437500000000000000
              383.645833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Detalles de Descuentos'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRL_79: TQRLabel
            Left = 520
            Top = 8
            Width = 50
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1375.833333333333000000
              21.166666666666670000
              132.291666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'C'#233'dula: '
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRL_72: TQRLabel
            Left = 127
            Top = 74
            Width = 49
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              336.020833333333300000
              195.791666666666700000
              129.645833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRL_72'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRL_73: TQRLabel
            Left = 127
            Top = 96
            Width = 49
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              336.020833333333300000
              254.000000000000000000
              129.645833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRL_73'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBL_cedula: TQRDBText
            Left = 573
            Top = 8
            Width = 42
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1516.062500000000000000
              21.166666666666670000
              111.125000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = FBuscaReportes.Qr_MuestraNomina
            DataField = 'cedula'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBL__nombre: TQRDBText
            Left = 131
            Top = 7
            Width = 54
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              346.604166666666700000
              18.520833333333330000
              142.875000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = FBuscaReportes.Qr_MuestraNomina
            DataField = '_nombre'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRL_41: TQRLabel
            Left = 8
            Top = 49
            Width = 54
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              129.645833333333300000
              142.875000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Incentivo'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRL_78: TQRLabel
            Left = 65
            Top = 49
            Width = 58
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              171.979166666666700000
              129.645833333333300000
              153.458333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = '..................:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRL_81: TQRLabel
            Left = 128
            Top = 50
            Width = 49
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              338.666666666666700000
              132.291666666666700000
              129.645833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRL_81'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object QRSubDetail1: TQRSubDetail
          Left = 37
          Top = 237
          Width = 741
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          Enabled = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            52.916666666666670000
            1960.562500000000000000)
          Master = QRP_Nomina
          DataSet = Qr_DetalleNominaGeneral
          PrintBefore = False
          PrintIfEmpty = True
          object QRDBL_montoDescuento: TQRDBText
            Left = 10
            Top = 1
            Width = 103
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              26.458333333333330000
              2.645833333333333000
              272.520833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = Qr_DetalleNominaGeneral
            DataField = 'montoDescuento'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBL_concepto: TQRDBText
            Left = 117
            Top = 1
            Width = 57
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              309.562500000000000000
              2.645833333333333000
              150.812500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = Qr_DetalleNominaGeneral
            DataField = 'concepto'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object PageFooterBand3: TQRBand
          Left = 37
          Top = 257
          Width = 741
          Height = 88
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            232.833333333333300000
            1960.562500000000000000)
          BandType = rbPageFooter
          object QRL_76: TQRLabel
            Left = 480
            Top = 71
            Width = 248
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1270.000000000000000000
              187.854166666666700000
              656.166666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Firma:______________________________'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRL_80: TQRLabel
            Left = 10
            Top = 2
            Width = 101
            Height = 17
            Enabled = False
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              26.458333333333330000
              5.291666666666667000
              267.229166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'OBSERVACI'#211'N:'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRRichText1: TQRRichText
            Left = 8
            Top = 21
            Width = 713
            Height = 40
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              105.833333333333300000
              21.166666666666670000
              55.562500000000000000
              1886.479166666667000000)
            Alignment = taLeftJustify
            AutoStretch = False
            Color = clWindow
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
          end
        end
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'Nomina'
    end
  end
  object Qr_DetalleNominaGeneral: TADOQuery
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
      'where id_empleado = :idEmp and estado = 1;')
    Left = 14
    Top = 43
    object Qr_DetalleNominaGeneralmontoDescuento: TFloatField
      FieldName = 'montoDescuento'
      DisplayFormat = 'RD$ #,##.00'
      currency = True
    end
    object Qr_DetalleNominaGeneralconcepto: TWideStringField
      FieldName = 'concepto'
      Size = 255
    end
    object Qr_DetalleNominaGeneralestado: TSmallintField
      FieldName = 'estado'
    end
    object Qr_DetalleNominaGeneralTdescuentos: TFloatField
      FieldName = 'Tdescuentos'
    end
  end
  object Qr_Gasto: TADOQuery
    Connection = ControlCuentasBancarias.Coneccion_1
    Parameters = <
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
      
        'select g.id_gasto,g.id_banca,g.montoGasto,g.detallesGasto,g.debi' +
        'tarA,g.numeroComprobante,'
      'g.fechaGasto,g.origen,b.numero_Banca'
      'from gastos as g, bancas as b'
      'where(g.id_banca = b.id_banca)and(g.id_gasto = :p1)'
      'order by g.fechaGasto;')
    Left = 13
    Top = 96
    object Qr_Gastoid_gasto: TAutoIncField
      FieldName = 'id_gasto'
      ReadOnly = True
    end
    object Qr_Gastoid_banca: TIntegerField
      FieldName = 'id_banca'
    end
    object Qr_GastomontoGasto: TFloatField
      FieldName = 'montoGasto'
    end
    object Qr_GastodetallesGasto: TWideStringField
      FieldName = 'detallesGasto'
      Size = 100
    end
    object Qr_GastodebitarA: TIntegerField
      FieldName = 'debitarA'
    end
    object Qr_GastonumeroComprobante: TWideStringField
      FieldName = 'numeroComprobante'
      Size = 15
    end
    object Qr_GastofechaGasto: TDateTimeField
      FieldName = 'fechaGasto'
    end
    object Qr_Gastoorigen: TIntegerField
      FieldName = 'origen'
    end
    object Qr_Gastonumero_Banca: TIntegerField
      FieldName = 'numero_Banca'
    end
  end
end
