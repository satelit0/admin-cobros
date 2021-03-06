object FOpciones: TFOpciones
  Left = 287
  Top = 210
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Opci'#243'n - Cuentas Bancarias'
  ClientHeight = 454
  ClientWidth = 712
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
  object LB_24: TLabel
    Left = 504
    Top = 72
    Width = 89
    Height = 40
    Caption = 'LB_22'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -33
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 712
    Height = 454
    ActivePage = TS_Bancas
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TS_Bancas: TTabSheet
      Caption = 'Puntos de Venta (Bancas)'
      ImageIndex = 1
      OnShow = TS_BancasShow
      object LB_26: TLabel
        Left = 598
        Top = 0
        Width = 98
        Height = 13
        Caption = 'Equipos Libres/Taller'
      end
      object GB_4: TGroupBox
        Left = 1
        Top = 0
        Width = 585
        Height = 121
        BiDiMode = bdRightToLeft
        Caption = 'Banca'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        object LB_1: TLabel
          Left = 6
          Top = 15
          Width = 57
          Height = 13
          Caption = 'N'#250'm. Banca'
        end
        object Label2: TLabel
          Left = 69
          Top = 15
          Width = 61
          Height = 13
          Caption = 'N'#250'm. Turnos'
        end
        object LB_10: TLabel
          Left = 242
          Top = 15
          Width = 144
          Height = 13
          Caption = 'Nombre Empleado (1er Turno)'
        end
        object LB_13: TLabel
          Left = 135
          Top = 6
          Width = 6
          Height = 13
          Caption = '_'
        end
        object SBT_BuscaEmpleado: TSpeedButton
          Left = 542
          Top = 29
          Width = 25
          Height = 22
          Hint = 'Buscar Empleado'
          Caption = '...'
          ParentShowHint = False
          ShowHint = True
          OnClick = SBT_BuscaEmpleadoClick
        end
        object SBT_1: TSpeedButton
          Left = 542
          Top = 66
          Width = 26
          Height = 22
          Caption = '...'
          Enabled = False
        end
        object EL_DireccionBanca: TLabeledEdit
          Left = 6
          Top = 96
          Width = 534
          Height = 21
          Hint = 'Ingrese la direccion o ubicacion de la banca'
          CharCase = ecUpperCase
          EditLabel.Width = 75
          EditLabel.Height = 13
          EditLabel.BiDiMode = bdRightToLeft
          EditLabel.Caption = 'Direcci'#243'n Banca'
          EditLabel.ParentBiDiMode = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnKeyDown = EL_DireccionBancaKeyDown
          OnKeyPress = EL_DireccionBancaKeyPress
        end
        object SE_NumeroBanca: TJvSpinEdit
          Left = 6
          Top = 31
          Width = 57
          Height = 21
          Hint = 'Ingrese el n'#250'mero que sera asignado a la banca a crear'
          MaxValue = 100.000000000000000000
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnKeyDown = SE_NumeroBancaKeyDown
          OnKeyPress = SE_NumeroBancaKeyPress
        end
        object SE_NumeroTurno: TJvSpinEdit
          Left = 69
          Top = 31
          Width = 57
          Height = 21
          Hint = 'Cantidad de turnos en la banca'
          MaxValue = 2.000000000000000000
          MinValue = 1.000000000000000000
          Value = 1.000000000000000000
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnChange = SE_NumeroTurnoChange
          OnKeyPress = SE_NumeroTurnoKeyPress
        end
        object DTP_FechaOPeracion: TJvDateTimePicker
          Left = 134
          Top = 31
          Width = 102
          Height = 21
          Date = 40495.622148900460000000
          Time = 40495.622148900460000000
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnKeyPress = DTP_FechaOPeracionKeyPress
          DropDownDate = 40495.000000000000000000
        end
        object E_EmpleadoResponsable: TEdit
          Left = 241
          Top = 31
          Width = 299
          Height = 21
          Hint = 'Nombre del empleado'
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 2
        end
        object EL_3: TLabeledEdit
          Left = 241
          Top = 68
          Width = 299
          Height = 21
          CharCase = ecUpperCase
          EditLabel.Width = 146
          EditLabel.Height = 13
          EditLabel.BiDiMode = bdRightToLeft
          EditLabel.Caption = 'Nombre Empleado (2do Turno)'
          EditLabel.ParentBiDiMode = False
          Enabled = False
          ReadOnly = True
          TabOrder = 5
        end
      end
      object GB_5: TGroupBox
        Left = 0
        Top = 212
        Width = 704
        Height = 131
        Align = alBottom
        TabOrder = 2
        object DBGrid_Bancas: TJvDBGrid
          Left = 2
          Top = 34
          Width = 700
          Height = 95
          Align = alClient
          DataSource = DS_Bancas
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection]
          ParentFont = False
          ParentShowHint = False
          PopupMenu = PM_Bancas
          ReadOnly = True
          ShowHint = True
          TabOrder = 1
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnCellClick = DBGrid_BancasCellClick
          OnDblClick = DBGrid_BancasDblClick
          OnKeyUp = DBGrid_BancasKeyUp
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 18
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Numero_Banca'
              Title.Alignment = taCenter
              Title.Caption = 'N. Banca'
              Width = 58
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'CantidadTurnos'
              Title.Alignment = taCenter
              Title.Caption = 'N. Turnos'
              Width = 62
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Direccion_Banca'
              Title.Alignment = taCenter
              Title.Caption = 'Direcci'#243'n'
              Width = 345
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Fecha_Incio_Operacion'
              Title.Alignment = taCenter
              Title.Caption = 'Fecha Inci'#243' Operaci'#243'n'
              Width = 123
              Visible = True
            end
            item
              Alignment = taLeftJustify
              Expanded = False
              FieldName = 'Estado'
              Title.Alignment = taCenter
              Width = 70
              Visible = True
            end>
        end
        object DBNV_Bancas: TJvDBNavigator
          Left = 2
          Top = 15
          Width = 700
          Height = 19
          DataSource = DS_Bancas
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Align = alTop
          TabOrder = 0
          OnClick = DBNV_BancasClick
        end
      end
      object GB_7: TGroupBox
        Left = 0
        Top = 179
        Width = 704
        Height = 44
        TabOrder = 1
        object LB_14: TLabel
          Left = 336
          Top = 6
          Width = 120
          Height = 13
          Caption = 'Ingrese el N'#250'mero Banca'
        end
        object BBT_Guardar: TBitBtn
          Left = 16
          Top = 12
          Width = 75
          Height = 25
          Hint = 'Guardar nueva banca'
          Caption = '&Guardar'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
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
        object BBT_EliminarBanca: TBitBtn
          Left = 176
          Top = 12
          Width = 75
          Height = 25
          Hint = 'Elimina la banca seleccionada'
          Cancel = True
          Caption = '&Eliminar'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
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
        object BBT_Limpiar: TBitBtn
          Left = 256
          Top = 12
          Width = 75
          Height = 25
          Hint = 'Limpia los campos'
          Caption = '&Limpiar'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = BBT_LimpiarClick
        end
        object BBT_BuscarBanca: TBitBtn
          Left = 461
          Top = 13
          Width = 75
          Height = 25
          Hint = 'Buscar banca'
          Caption = '&Buscar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnClick = BBT_BuscarBancaClick
        end
        object EM_BuscaBanca: TJvMaskEdit
          Left = 336
          Top = 20
          Width = 118
          Height = 21
          Hint = 'Ingrese el n'#250'mero de banca para buscar'
          ClipboardCommands = [caCopy, caCut, caClear, caUndo]
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnKeyPress = EM_BuscaBancaKeyPress
        end
        object BBT_NuevaBanca: TBitBtn
          Left = 96
          Top = 12
          Width = 75
          Height = 25
          Hint = 'Crear nueva banca'
          Caption = '&Nuevo'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = BBT_NuevaBancaClick
        end
        object BBT_SalirBancas: TBitBtn
          Left = 544
          Top = 13
          Width = 75
          Height = 25
          Hint = 'Salir '
          Caption = '&Salir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnClick = BBT_SalirBancasClick
        end
      end
      object LV_2: TListView
        Left = 597
        Top = 16
        Width = 104
        Height = 161
        Columns = <
          item
            Caption = 'nada'
            Width = 0
          end
          item
            Alignment = taCenter
            Caption = 'N'#250'm. Banca'
            Width = 80
          end>
        GridLines = True
        ReadOnly = True
        TabOrder = 3
        ViewStyle = vsReport
      end
      object GB_10: TGroupBox
        Left = 0
        Top = 343
        Width = 704
        Height = 83
        Align = alBottom
        TabOrder = 4
        object DBGRID_2: TDBGrid
          Left = 2
          Top = 15
          Width = 700
          Height = 66
          Align = alClient
          DataSource = DS_Empleado
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection]
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = '_nombre'
              Title.Alignment = taCenter
              Title.Caption = 'Nombre Empleado'
              Width = 402
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'apodo'
              Title.Alignment = taCenter
              Title.Caption = 'Sobre Nombre (Apodo)'
              Width = 170
              Visible = True
            end>
        end
      end
      object JvGroupBox1: TJvGroupBox
        Left = 0
        Top = 120
        Width = 586
        Height = 61
        Caption = 'Local'
        TabOrder = 5
        object LB_27: TLabel
          Left = 7
          Top = 18
          Width = 35
          Height = 13
          Caption = 'Alquiler'
        end
        object LB_12: TLabel
          Left = 376
          Top = 17
          Width = 109
          Height = 13
          Caption = 'Fecha de Pago Alquiler'
        end
        object EL_DuenoLocal: TLabeledEdit
          Left = 131
          Top = 34
          Width = 241
          Height = 21
          Hint = 'Nombre del propietario del local'
          CharCase = ecUpperCase
          EditLabel.Width = 136
          EditLabel.Height = 13
          EditLabel.BiDiMode = bdRightToLeft
          EditLabel.Caption = 'Nombre Propietario del Local'
          EditLabel.ParentBiDiMode = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnKeyDown = EL_DuenoLocalKeyDown
          OnKeyPress = EL_DuenoLocalKeyPress
        end
        object ECal_Alquiler: TJvCalcEdit
          Left = 6
          Top = 34
          Width = 121
          Height = 21
          Hint = 'Monto pagado en alquiler a este local'
          ClickKey = 0
          DisplayFormat = '$ ,0.00##'
          ParentShowHint = False
          ShowButton = False
          ShowHint = True
          TabOrder = 1
          ZeroEmpty = False
          DecimalPlacesAlwaysShown = False
          OnKeyDown = ECal_AlquilerKeyDown
          OnKeyPress = ECal_AlquilerKeyPress
        end
        object CBB_FechaPagoAlquiler: TComboBox
          Left = 375
          Top = 34
          Width = 121
          Height = 21
          Hint = 'Fecha en la que se acordo el  pago del alquiler'
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 29
          TabOrder = 2
          Text = '30 de cada mes'
          Items.Strings = (
            '1 de cada mes'
            '2 de cada mes'
            '3 de cada mes'
            '4 de cada mes'
            '5 de cada mes'
            '6 de cada mes'
            '7 de cada mes'
            '8 de cada mes'
            '9 de cada mes'
            '10 de cada mes'
            '11 de cada mes'
            '12 de cada mes'
            '13 de cada mes'
            '14 de cada mes'
            '15 de cada mes'
            '16 de cada mes'
            '17 de cada mes'
            '18 de cada mes'
            '19 de cada mes'
            '20 de cada mes'
            '21 de cada mes'
            '22 de cada mes'
            '23 de cada mes'
            '24 de cada mes'
            '25 de cada mes'
            '26 de cada mes'
            '27 de cada mes'
            '28 de cada mes'
            '29 de cada mes'
            '30 de cada mes'
            '31 de cada mes')
        end
      end
    end
    object TS_Bancos: TTabSheet
      Caption = 'Cuentas Bancarias'
      OnShow = TS_BancosShow
      object GB_1: TGroupBox
        Left = 0
        Top = 0
        Width = 704
        Height = 175
        Align = alTop
        TabOrder = 0
        object GB_2: TGroupBox
          Left = 2
          Top = 15
          Width = 503
          Height = 158
          Align = alLeft
          Caption = 'Banco(s)'
          TabOrder = 0
          object DBNV_1: TJvDBNavigator
            Left = 2
            Top = 137
            Width = 499
            Height = 19
            DataSource = DS_Bancos
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
            Align = alBottom
            TabOrder = 0
            OnClick = DBNV_1Click
          end
          object DBGrid_Bancos: TJvDBGrid
            Left = 2
            Top = 15
            Width = 499
            Height = 122
            Align = alClient
            DataSource = DS_Bancos
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection]
            PopupMenu = PM_Bancos
            ReadOnly = True
            TabOrder = 1
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnCellClick = DBGrid_BancosCellClick
            OnKeyUp = DBGrid_BancosKeyUp
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            EditControls = <>
            RowsHeight = 17
            TitleRowHeight = 17
            Columns = <
              item
                Expanded = False
                FieldName = 'NombreBanco'
                Title.Alignment = taCenter
                Title.Caption = 'Instituci'#243'n Bancaria'
                Width = 170
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DescripcionCuenta'
                Title.Alignment = taCenter
                Title.Caption = 'Descripci'#243'n Cuenta'
                Width = 294
                Visible = True
              end>
          end
        end
        object GB_3: TGroupBox
          Left = 515
          Top = 15
          Width = 187
          Height = 158
          Align = alRight
          Caption = 'Cuenta(s)'
          TabOrder = 1
          object DBNV_2: TJvDBNavigator
            Left = 2
            Top = 137
            Width = 183
            Height = 19
            DataSource = DS_Cuentas
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
            Align = alBottom
            TabOrder = 0
          end
          object DBGrid_Cuentas: TJvDBGrid
            Left = 2
            Top = 15
            Width = 183
            Height = 122
            Align = alClient
            DataSource = DS_Cuentas
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection]
            PopupMenu = PM_Cuentas
            ReadOnly = True
            TabOrder = 1
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnCellClick = DBGrid_CuentasCellClick
            OnKeyUp = DBGrid_CuentasKeyUp
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            EditControls = <>
            RowsHeight = 17
            TitleRowHeight = 17
            Columns = <
              item
                Expanded = False
                FieldName = 'Cuenta'
                Title.Alignment = taCenter
                Title.Caption = 'N'#250'mero de Cuenta'
                Width = 150
                Visible = True
              end>
          end
        end
      end
      object BBT_Nuevo: TBitBtn
        Left = 16
        Top = 189
        Width = 75
        Height = 21
        Caption = '&Nuevo'
        TabOrder = 1
        OnClick = BBT_NuevoClick
      end
      object BBT_EliminarCuenta: TBitBtn
        Left = 175
        Top = 189
        Width = 75
        Height = 21
        Caption = 'Eliminar'
        Enabled = False
        TabOrder = 2
      end
      object BBT_Salir: TBitBtn
        Left = 255
        Top = 189
        Width = 75
        Height = 21
        Caption = '&Salir'
        TabOrder = 3
        OnClick = BBT_SalirClick
      end
      object GB_6: TGroupBox
        Left = 0
        Top = 232
        Width = 704
        Height = 194
        Align = alBottom
        Caption = 'Detalles Cuenta Bancaria'
        TabOrder = 4
        object LB_2: TLabel
          Left = 16
          Top = 115
          Width = 83
          Height = 16
          Caption = 'Balance Actual'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object LB_3: TLabel
          Left = 16
          Top = 24
          Width = 83
          Height = 16
          Caption = 'Nombre Banco'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object LB_4: TLabel
          Left = 15
          Top = 60
          Width = 40
          Height = 16
          Caption = 'Cuenta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object LB_5: TLabel
          Left = 16
          Top = 42
          Width = 109
          Height = 16
          Caption = 'Descripci'#243'n Cuenta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object LB_6: TLabel
          Left = 100
          Top = 24
          Width = 53
          Height = 16
          Caption = '............:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object LB_7: TLabel
          Left = 129
          Top = 43
          Width = 25
          Height = 16
          Caption = '.....:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object LB_8: TLabel
          Left = 57
          Top = 60
          Width = 97
          Height = 16
          Caption = '.......................:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object LB_9: TLabel
          Left = 109
          Top = 115
          Width = 45
          Height = 16
          Caption = '..........:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBLB_NombreBanco: TDBText
          Left = 157
          Top = 28
          Width = 96
          Height = 13
          AutoSize = True
          DataField = 'NombreBanco'
          DataSource = DS_Bancos
        end
        object DBLB_DescripcionCuenta: TDBText
          Left = 157
          Top = 45
          Width = 119
          Height = 13
          AutoSize = True
          DataField = 'DescripcionCuenta'
          DataSource = DS_Bancos
        end
        object DBLB_Cuenta: TDBText
          Left = 157
          Top = 63
          Width = 65
          Height = 13
          AutoSize = True
          DataField = 'Cuenta'
          DataSource = DS_Cuentas
        end
        object LB_18: TLabel
          Left = 15
          Top = 79
          Width = 69
          Height = 16
          Caption = 'Tipo Cuenta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object LB_19: TLabel
          Left = 85
          Top = 79
          Width = 69
          Height = 16
          Caption = '................:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object LB_20: TLabel
          Left = 158
          Top = 81
          Width = 29
          Height = 13
          Caption = 'LB_20'
          Visible = False
        end
        object ECal_3: TJvCalcEdit
          Left = 156
          Top = 108
          Width = 121
          Height = 22
          Hint = 'Muetra el balance de la cuenta seleccionada'
          Flat = True
          ParentFlat = False
          ClickKey = 0
          DisplayFormat = '$ ,0.00##'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
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
      object EL_BuscarBanco: TLabeledEdit
        Left = 384
        Top = 190
        Width = 145
        Height = 21
        EditLabel.Width = 86
        EditLabel.Height = 13
        EditLabel.Caption = 'Nombre del Banco'
        TabOrder = 5
        OnKeyPress = EL_BuscarBancoKeyPress
      end
      object BBT_BuscarBanco: TBitBtn
        Left = 536
        Top = 189
        Width = 57
        Height = 21
        Caption = '&Buscar'
        TabOrder = 6
        OnClick = BBT_BuscarBancoClick
      end
      object BBT_AgregarCuenta: TBitBtn
        Left = 602
        Top = 189
        Width = 91
        Height = 21
        Caption = '&Agregar Cuenta'
        TabOrder = 7
        OnClick = BBT_AgregarCuentaClick
      end
    end
    object TS_Veneficiarios: TTabSheet
      Caption = 'Beneficiarios'
      ImageIndex = 2
      OnShow = TS_VeneficiariosShow
      object LB_17: TLabel
        Left = 576
        Top = 384
        Width = 104
        Height = 13
        Caption = '(*) Campos requerido'
      end
      object GB_8: TGroupBox
        Left = 24
        Top = 40
        Width = 657
        Height = 130
        Caption = 'Datos del Propietario de Bancas'
        TabOrder = 0
        object LB_16: TLabel
          Left = 16
          Top = 66
          Width = 167
          Height = 13
          Caption = '(*) Porcentaje Sobre los Veneficios'
        end
        object EL_1: TLabeledEdit
          Left = 16
          Top = 42
          Width = 425
          Height = 21
          Hint = 'Nombre del Propietario de la Banca(s)'
          CharCase = ecUpperCase
          EditLabel.Width = 161
          EditLabel.Height = 13
          EditLabel.Caption = '(*) Nombre Propietario de Bancas'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
        object ECal_1: TJvCalcEdit
          Left = 16
          Top = 80
          Width = 121
          Height = 21
          TabOrder = 1
          DecimalPlacesAlwaysShown = False
          OnEnter = ECal_1Enter
          OnExit = ECal_1Exit
        end
        object BBT_AplicarPropietario: TBitBtn
          Left = 352
          Top = 90
          Width = 75
          Height = 25
          Caption = '&Guardar'
          TabOrder = 2
          OnClick = BBT_AplicarPropietarioClick
        end
        object BBT_EditaPropietario: TBitBtn
          Left = 272
          Top = 90
          Width = 75
          Height = 25
          Caption = '&Editar'
          TabOrder = 3
          OnClick = BBT_EditaPropietarioClick
        end
      end
      object GB_9: TGroupBox
        Left = 24
        Top = 180
        Width = 657
        Height = 124
        Caption = 'Datos Propietario del Consorcio'
        TabOrder = 1
        object LB_11: TLabel
          Left = 16
          Top = 65
          Width = 167
          Height = 13
          Caption = '(*) Porcentaje Sobre los Veneficios'
        end
        object EL_2: TLabeledEdit
          Left = 16
          Top = 41
          Width = 425
          Height = 21
          CharCase = ecUpperCase
          EditLabel.Width = 218
          EditLabel.Height = 13
          EditLabel.Caption = '(*) Consorcio o Nombre Propietario Consorcio'
          TabOrder = 0
        end
        object ECal_2: TJvCalcEdit
          Left = 16
          Top = 81
          Width = 121
          Height = 21
          TabOrder = 1
          DecimalPlacesAlwaysShown = False
          OnEnter = ECal_2Enter
          OnExit = ECal_2Exit
        end
        object BBT_EditaConsorcio: TBitBtn
          Left = 275
          Top = 84
          Width = 75
          Height = 25
          Caption = 'E&ditar'
          TabOrder = 2
          OnClick = BBT_EditaConsorcioClick
        end
        object BBT_AplicarConsorcio: TBitBtn
          Left = 357
          Top = 84
          Width = 75
          Height = 25
          Caption = 'Gu&ardar'
          TabOrder = 3
          OnClick = BBT_AplicarConsorcioClick
        end
      end
    end
    object TS_CambioBancaEmpleado: TTabSheet
      Caption = 'Ordenar Bancas/Empleados'
      ImageIndex = 3
      OnHide = TS_CambioBancaEmpleadoHide
      OnShow = TS_CambioBancaEmpleadoShow
      object LB_21: TLabel
        Left = 8
        Top = 8
        Width = 50
        Height = 13
        Caption = 'Empleado:'
      end
      object LB_23: TLabel
        Left = 576
        Top = 16
        Width = 65
        Height = 13
        Caption = 'Bancas Libres'
      end
      object LB_22: TLabel
        Left = 504
        Top = 47
        Width = 18
        Height = 40
        Caption = '_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -33
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object LB_25: TLabel
        Left = 505
        Top = 198
        Width = 18
        Height = 40
        Caption = '_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -33
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object SBT_Refrescar: TSpeedButton
        Left = 509
        Top = 148
        Width = 39
        Height = 37
        Flat = True
        Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          20000000000000100000C40E0000C40E00000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000F0E24648F7F0494500000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000CAA4345DF9E742EEFEFE4D17000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000AF8C2D43FFDA3DFFFDEA35C4FFFF55030000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000FEFEAE26FEFEA656FCF68D7CFDEF7594FAE8
          62A9EACD43C8E9BA34FFFFD62EFFFDE8279C0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000FFF79666FDF694C9FBEA8FFCFFF596FFFFF086FFFFE56FFFFFDA
          59FFFACE46FFE9BD35FFE6B628FFFFD621FFFCE8196F0000000000000000D289
          383FE3882870D37A1D70D37A1F70D37A1F70D37A1F70D37A1F70D37A1F70D37A
          1F70D37A1F70D37A1F70D37A1F70D37A1F70D37A1F70D37A1D70D1761D70D68F
          3F70FDE388B9FFF996FFFFEB8EFFFFE086FFFCDE85FFF9D978FFF5D165FFF0CA
          53FFEDC342FFEABE35FFE6B929FFE7B41CFFFED012FFFEE6095300000000D085
          3599F2BD84FFDFBB95FFDFB990FFDFB990FFDFB990FFDFB890FFDFB990FFDFB9
          90FFDFB990FFDFB990FFDFB890FFDFB990FFDFB890FFDEB992FFDDB58EFFFFD5
          7EFFFFF18EFFFFE082FFFFE082FFFFE183FFFFE185FFFBDC78FFF6D366FFF1CA
          53FFEDC342FFEABE35FFE7B929FFE4B31BFFF1BA0CFFE0B5059500000000D284
          328EE1D0BFFFCFD9E4FFCFD5DCFFCFD5DCFFCFD5DCFFD0D6DCFFCFD5DCFFCFD5
          DCFFCFD5DCFFCFD5DCFFCFD5DCFFCFD5DCFFCFD6DCFFCDD6E4FFE0D7B0FFF9DB
          79FFEACF7FFFE0CB8AFFE1CC8EFFE3CD8AFFE8CF84FFEBCE73FFEBC759FFECC3
          43FFEEC33FFFEABE36FFE8BA29FFE3B211FFD39C22FFB4643A3000000000D083
          308EFCEDD7FFFAFAFBFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFA
          FAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFF3EDDDFFE5CC81FFE8DD
          BAFFF0EEE8FFF3F4F7FFF4F6FAFFF3F4F7FFF2F1F0FFF0EDE4FFE9E1C8FFE0D0
          9EFFE1BD4CFFEDBF33FFE3B115FFE2C86AFFE6BA90FFC9620E3400000000D083
          308EFFF2DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE7CCFFF4F0E6FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF
          FFFFE2C56AFFE8B519FFDDBC55FFFCFDFDFFEFC59DFFC05B003500000000D083
          308EFFF1DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFF
          FFFFE0BE57FFDFBB4AFFF8F6F1FFFFFFFFFFECBF92FFC05B003500000000D083
          308EFFF1DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFBFBFAFFFAF7F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD
          FCFFDCC67FFFF7F2E4FFFFFFFFFFFFFFFFFFECC093FFC05B003500000000D083
          308EFFF1DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFE
          FFFFDCC272FFEFE6C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
          FCFFFCFBFAFFFFFFFFFFFFFFFFFFFFFFFFFFECC094FFC05B003500000000D083
          308EFFF1DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFE3CA
          7CFFDEB022FFF2EBD6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEABD8DFFC05B003500000000D083
          308EFFF1DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFE2CB83FFE3B3
          1AFFE4B934FFEEE9DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF7F5F2FFEDE6C6FFE8BB87FFC560003500000000D083
          308EFFF1DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3CD89FFDEAB0FFFEBBD
          2EFFE9BE39FFDDC06AFFE2D29FFFE8E0C4FFEDE8DBFFF2F1EBFFF6F5F4FFF5F5
          F4FFEFEDE5FFE7DDBEFFE5CB7DFFF7EFCDFFEEC49DFFC05B003500000000D083
          308EFFF1DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFFFE2CE91FFDAA604FFE7B721FFE9BC
          30FFECC23DFFF0C643FFF0C950FFEFCD64FFEED279FFEDD383FFECD489FFEBD3
          89FFECD280FFF5D470FFF8E098FFFFFFFFFFECC195FFC05B003500000000D083
          308EFFF1DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F2C4FFE1AC00FFE2AE12FFE6B724FFE9BC
          30FFECC13CFFEFC74BFFF3CF5EFFF8D771FFFDE083FFFFE186FFFEE084FFFEDF
          83FFFFDF7DFFFBE18EFFFCF8EEFFFFFFFFFFECC093FFC05B003500000000D083
          308EFFF1DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFFFE757FFE8B303FFE4B424FFE9BC
          30FFEBC13CFFEEC64BFFF2CE5DFFF6D570FFFADC81FFFCDC83FFFCDD7FFFFDE1
          7DFFFEE99BFFFEFAEBFFFFFFFFFFFFFFFFFFECC093FFC05B003500000000D083
          308EFFF1DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4FFFBE03FFFE7B414FFE7BB
          32FFEDC238FFF0C73EFFF4D153FFF9DB6BFFFCE584FFFEEC93FFFEF4A9FFFFFB
          D0FFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFECC093FFC05B003500000000D083
          308EFFF1DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0FFF9D931FFE7B5
          20FFE6C658FFFDF5A9FFFFF9BCFFFFFDD1FFFFFFE7FFFFFFF6FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECC093FFC05B003500000000D083
          308EFFF1DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FFF6D0
          1EFFE2C475FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECC093FFC05B003500000000D083
          308EFFF1DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA
          9EFFEDD76BFFFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECC093FFC05B003500000000D083
          308EFFF1DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFDFCC8FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECC093FFC05B003500000000D083
          308EFFF4DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEC295FFC05B003500000000D083
          308EF2E1CBFFEBECEEFFEBEAEBFFEBEAEAFFEBEBEAFFEBEBEAFFEBEBEAFFEBEB
          EBFFEBEBEAFFEBEAEBFFEBEBEBFFEBEBEBFFEBEAEBFFEBEAEAFFEBEAEBFFEBEA
          EAFFEBEAEBFFEBEAEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEAEAEBFFEBEA
          EBFFEAEBEBFFEBEBEBFFEBEBEBFFEBEEF0FFE3B78AFFCA60003500000000D284
          328EDECCB9FFCAD4DEFFCACFD5FFCACFD5FFCAD0D5FFCAD0D5FFCACFD5FFCACF
          D5FFCACFD5FFCACFD5FFCACFD5FFCACFD5FFCACFD5FFCAD0D5FFCACFD5FFCACF
          D5FFCACFD5FFCACFD5FFCAD0D5FFCAD0D5FFCACFD5FFCACFD5FFCACFD5FFCACF
          D5FFCACFD5FFCACFD5FFCACFD5FFCBD7E3FFD4AB80FFD36E003500000000D286
          348EE0B88DFFCEB9A2FFCEB69DFFCEB69DFFCEB69DFFCEB69DFFCEB69DFFCEB6
          9DFFCEB69DFFCEB69DFFCEB69DFFCEB69DFFCEB69DFFCEB69DFFCEB69DFFCEB6
          9DFFCEB69DFFCEB69DFFCEB69DFFCEB69DFFCEB69DFFCEB69DFFCEB69DFFCEB6
          9DFFCDB59CFFCCB29BFFCDB49BFFCCB49FFFD6A067FFD378133500000000D288
          398EE38F37FFD28330FFD28330FFD28330FFD28330FFD28330FFD28330FFD283
          30FFD28330FFD28330FFD28330FFD28330FFD28330FFD28330FFD28330FFD283
          30FFD28330FFD28330FFD28330FFD28330FFD28330FFD28330FFD28330FFD182
          30FFD58934FFDD953DFFD78E3AFFE2A550FFD98C39FFD386393500000000D287
          3A95EF9B42FFDD8F3DFFDD8F3DFFDD8F3DFFDD8F3DFFDD8F3DFFDD8F3DFFDD8F
          3DFFDD8F3DFFDD8F3DFFDD8F3DFFDD8F3DFFDD8F3DFFDD8F3DFFDD8F3DFFDD8F
          3DFFDD8F3DFFDD8F3DFFDD8F3DFFDD8F3DFFDD8F3DFFDD8F3DFFDD8F3DFFDB8B
          3AFFE8A24AFFFFC763FFEFB660FFFFFAA5FFE89D48FFCC7A2D3800000000D188
          3870E3933FC9D2863AC9D2863AC9D2863AC9D2863AC9D2863AC9D2863AC9D286
          3AC9D2863AC9D2863AC9D2863AC9D2863AC9D2863AC9D2863AC9D2863AC9D286
          3AC9D2863AC9D2863AC9D2863AC9D2863AC9D2863AC9D2863AC9D2863AC9D286
          3AC9D2893AC9D68E3EC9D28A3BC9D79444C9D68B3BC9D4853C2A000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        OnClick = SBT_RefrescarClick
      end
      object LV_1: TListView
        Left = 8
        Top = 32
        Width = 473
        Height = 305
        Columns = <
          item
            Caption = 'nada'
            Width = 0
          end
          item
            Caption = 'Indice'
            Width = 0
          end
          item
            Caption = 'IdEmp'
            Width = 0
          end
          item
            Caption = 'Nombre Empleado'
            Width = 349
          end
          item
            Alignment = taCenter
            Caption = 'No. Banca'
            Width = 70
          end>
        DragMode = dmAutomatic
        GridLines = True
        ReadOnly = True
        RowSelect = True
        TabOrder = 0
        ViewStyle = vsReport
        OnClick = LV_1Click
        OnKeyUp = LV_1KeyUp
      end
      object BBT_Agregar: TBitBtn
        Left = 488
        Top = 87
        Width = 80
        Height = 25
        Caption = '&Liberar >>'
        Enabled = False
        TabOrder = 1
        OnClick = BBT_AgregarClick
      end
      object BBT_Insertar: TBitBtn
        Left = 488
        Top = 240
        Width = 80
        Height = 25
        Caption = '<< &Insertar'
        Enabled = False
        TabOrder = 2
        OnClick = BBT_InsertarClick
      end
      object DBGrid_1: TJvDBGrid
        Left = 576
        Top = 32
        Width = 65
        Height = 305
        DataSource = DS_NBancas
        Options = [dgColLines, dgRowSelect, dgAlwaysShowSelection]
        TabOrder = 3
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = DBGRID_1CellClick
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 16
        TitleRowHeight = 16
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NBancas'
            Width = 40
            Visible = True
          end>
      end
      object BBT_SalirBancasEmp: TBitBtn
        Left = 407
        Top = 354
        Width = 75
        Height = 25
        Caption = 'Salir'
        TabOrder = 4
        OnClick = BBT_SalirBancasEmpClick
      end
      object BBT_AplicarBancasEmp: TBitBtn
        Left = 324
        Top = 355
        Width = 75
        Height = 25
        Caption = 'Aplicar'
        Enabled = False
        TabOrder = 5
        OnClick = BBT_AplicarBancasEmpClick
      end
    end
  end
  object DS_Bancos: TJvDataSource
    DataSet = Qr_BuscarBancos
    Left = 48
    Top = 378
  end
  object DS_Cuentas: TJvDataSource
    DataSet = Qr_BuscaCuentaBanco
    Left = 80
    Top = 378
  end
  object DS_Bancas: TJvDataSource
    DataSet = Qr_BuscaBanca
    Left = 112
    Top = 378
  end
  object PM_Cuentas: TPopupMenu
    Left = 48
    Top = 410
    object MM_ModificarCuenta: TMenuItem
      Caption = 'Modificar Cuenta'
      OnClick = MM_ModificarCuentaClick
    end
    object MM_N3: TMenuItem
      Caption = '-'
    end
    object MM_EliminarCuenta: TMenuItem
      Caption = 'Eliminar Cuenta'
      OnClick = MM_EliminarCuentaClick
    end
  end
  object Qr_BuscaBanca: TADOQuery
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
      end>
    SQL.Strings = (
      'select *from bancas as B'
      'where ((B.numero_Banca like :p1)and(B.estado <> -1))'
      'order by b.numero_banca;'
      ''
      ''
      ''
      ''
      ''
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Left = 16
    Top = 346
    object Qr_BuscaBancaId_Banca: TAutoIncField
      FieldName = 'Id_Banca'
      ReadOnly = True
    end
    object Qr_BuscaBancaNumero_Banca: TIntegerField
      FieldName = 'Numero_Banca'
    end
    object Qr_BuscaBancaCantidadTurnos: TIntegerField
      FieldName = 'CantidadTurnos'
    end
    object Qr_BuscaBancaId_Empleado_Banca: TIntegerField
      FieldName = 'Id_Empleado_Banca'
    end
    object Qr_BuscaBancaDireccion_Banca: TWideStringField
      FieldName = 'Direccion_Banca'
      Size = 100
    end
    object Qr_BuscaBancaNombre_Propietario: TWideStringField
      FieldName = 'Nombre_Propietario'
      Size = 100
    end
    object Qr_BuscaBancaMonto_Alquiler: TFloatField
      FieldName = 'Monto_Alquiler'
    end
    object Qr_BuscaBancaDia_Pago_Alquiler: TIntegerField
      FieldName = 'Dia_Pago_Alquiler'
    end
    object Qr_BuscaBancaFecha_Incio_Operacion: TDateTimeField
      FieldName = 'Fecha_Incio_Operacion'
    end
    object Qr_BuscaBancaFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object Qr_BuscaBancaEstado: TSmallintField
      FieldName = 'Estado'
      OnGetText = Qr_BuscaBancaEstadoGetText
    end
  end
  object PM_Bancas: TJvPopupMenu
    ImageMargin.Left = 0
    ImageMargin.Top = 0
    ImageMargin.Right = 0
    ImageMargin.Bottom = 0
    ImageSize.Height = 0
    ImageSize.Width = 0
    Left = 16
    Top = 410
    object MM_ModificarBanca1: TMenuItem
      Caption = 'Modificar Banca'
      OnClick = MM_ModificarBanca1Click
    end
    object MM_N1: TMenuItem
      Caption = '-'
    end
    object MM_Seleccionar1: TMenuItem
      Caption = 'Seleccionar'
      OnClick = MM_Seleccionar1Click
    end
  end
  object Qr_BuscarBancos: TADOQuery
    Connection = ControlCuentasBancarias.Coneccion_1
    Parameters = <
      item
        Name = 'p0'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = #39#39
      end>
    SQL.Strings = (
      'select * from bancos'
      'where NombreBanco like :p0'
      'order by nombrebanco'
      ' ')
    Left = 48
    Top = 314
    object Qr_BuscarBancosId_Banco: TAutoIncField
      FieldName = 'Id_Banco'
      ReadOnly = True
    end
    object Qr_BuscarBancosNombreBanco: TWideStringField
      FieldName = 'NombreBanco'
      Size = 100
    end
    object Qr_BuscarBancosDescripcionCuenta: TWideStringField
      FieldName = 'DescripcionCuenta'
      Size = 255
    end
    object Qr_BuscarBancosFecha: TDateTimeField
      FieldName = 'Fecha'
    end
  end
  object PM_Bancos: TJvPopupMenu
    ImageMargin.Left = 0
    ImageMargin.Top = 0
    ImageMargin.Right = 0
    ImageMargin.Bottom = 0
    ImageSize.Height = 0
    ImageSize.Width = 0
    Left = 144
    Top = 378
    object MM_ModificarBanco: TMenuItem
      Caption = 'Modificar'
      OnClick = MM_ModificarBancoClick
    end
    object MM_N2: TMenuItem
      Caption = '-'
    end
    object MM_EliminarBanco: TMenuItem
      Caption = 'Eliminar'
    end
  end
  object Qr_BuscaCuentaBanco: TADOQuery
    Connection = ControlCuentasBancarias.Coneccion_1
    DataSource = DS_Bancos
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
      'select * from CuentasBancarias'
      'where Id_Banco_cuentas = :p0;'
      ' ')
    Left = 16
    Top = 314
    object Qr_BuscaCuentaBancoId_CuentaBancaria: TAutoIncField
      FieldName = 'Id_CuentaBancaria'
      ReadOnly = True
    end
    object Qr_BuscaCuentaBancoId_Banco_cuentas: TIntegerField
      FieldName = 'Id_Banco_cuentas'
    end
    object Qr_BuscaCuentaBancoCuenta: TWideStringField
      FieldName = 'Cuenta'
      Size = 13
    end
    object Qr_BuscaCuentaBancoTipoCuenta: TIntegerField
      FieldName = 'TipoCuenta'
    end
    object Qr_BuscaCuentaBancofecha: TDateTimeField
      FieldName = 'fecha'
    end
  end
  object Qr_DetallesCuentaBanco: TADOQuery
    Connection = ControlCuentasBancarias.Coneccion_1
    Parameters = <>
    SQL.Strings = (
      
        'select b.id_Banco, b.nombreBanco, b.descripcionCuenta, c.id_cuen' +
        'taBancaria, c.cuenta,'
      '       c.tipoCuenta, c.id_Cuenta'
      'from Bancos as b, cuentasBancarias as c'
      'where')
    Left = 80
    Top = 314
  end
  object TableV_NBancas: TVirtualTable
    Active = True
    FieldDefs = <
      item
        Name = 'Indice'
        DataType = ftAutoInc
      end
      item
        Name = 'NBancas'
        DataType = ftString
        Size = 3
      end>
    Left = 80
    Top = 410
    Data = {
      010002000600496E646963650E00000007004E42616E63617301000300000000
      000000}
    object TableV_NBancasIndice: TAutoIncField
      FieldName = 'Indice'
    end
    object TableV_NBancasNBancas: TStringField
      FieldName = 'NBancas'
      Size = 3
    end
  end
  object DS_NBancas: TDataSource
    DataSet = TableV_NBancas
    Left = 48
    Top = 346
  end
  object Qr_bancasEmp: TADOQuery
    Connection = ControlCuentasBancarias.Coneccion_1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 't'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        'select e.nombres, e.apellidos, e.id_empleado, b.id_banca, b.nume' +
        'ro_banca, b.estado'
      'from empleados as e left join bancas as b'
      'on(e.id_empleado = b.id_empleado_banca)'
      'where (e.tipoEmpleado = :t)and(e.estado = 1)'
      'order by b.numero_banca'
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Left = 144
    Top = 314
    object Qr_bancasEmpnombres: TWideStringField
      FieldName = 'nombres'
      Size = 60
    end
    object Qr_bancasEmpapellidos: TWideStringField
      FieldName = 'apellidos'
      Size = 100
    end
    object Qr_bancasEmpid_empleado: TAutoIncField
      FieldName = 'id_empleado'
      ReadOnly = True
    end
    object Qr_bancasEmpid_banca: TAutoIncField
      FieldName = 'id_banca'
      ReadOnly = True
    end
    object Qr_bancasEmpnumero_banca: TIntegerField
      FieldName = 'numero_banca'
    end
    object Qr_bancasEmpestado: TSmallintField
      FieldName = 'estado'
    end
  end
  object DS_Empleado: TDataSource
    DataSet = Qr_EmpleadosID
    Left = 80
    Top = 346
  end
  object Qr_EmpleadosID: TADOQuery
    Connection = ControlCuentasBancarias.Coneccion_1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'idemp'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        'select id_empleado, nombres+'#39' '#39'+apellidos as _nombre, apodo from' +
        ' empleados'
      'where id_empleado = :idemp;'
      ' ')
    Left = 112
    Top = 314
    object Qr_EmpleadosIDid_empleado: TAutoIncField
      FieldName = 'id_empleado'
      ReadOnly = True
    end
    object Qr_EmpleadosID_nombre: TWideStringField
      FieldName = '_nombre'
      ReadOnly = True
      Size = 255
    end
    object Qr_EmpleadosIDapodo: TWideStringField
      FieldName = 'apodo'
      Size = 60
    end
  end
  object JvBalloonHint1: TJvBalloonHint
    CustomAnimationStyle = atRollHorNeg
    DefaultBalloonPosition = bpLeftDown
    DefaultIcon = ikNone
    Options = [boShowCloseBtn, boCustomAnimation]
    ApplicationHintOptions = [ahShowHeaderInHint]
    UseBalloonAsApplicationHint = True
    Left = 16
    Top = 378
  end
  object HK_1: TJvApplicationHotKey
    Active = True
    HotKey = 114
    OnHotKey = HK_1HotKey
    Left = 112
    Top = 346
  end
  object HK_2: TJvApplicationHotKey
    Active = True
    HotKey = 116
    OnHotKey = HK_2HotKey
    Left = 144
    Top = 346
  end
end
