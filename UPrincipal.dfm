object ControlCuentasBancarias: TControlCuentasBancarias
  Left = 618
  Top = 219
  BorderStyle = bsSingle
  ClientHeight = 483
  ClientWidth = 439
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -20
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  HelpFile = '0'
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 24
  object SPANEL_1: TStatusBar
    Left = 0
    Top = 461
    Width = 439
    Height = 22
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Panels = <
      item
        Width = 200
      end
      item
        Alignment = taRightJustify
        Width = 50
      end>
    UseSystemFont = False
  end
  object JvNavPanelHeader1: TJvNavPanelHeader
    Left = 0
    Top = 0
    Width = 439
    Height = 41
    Align = alTop
    Alignment = taCenter
    Caption = 'Consorcio de Bancas la Fortuna de Isidro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    ImageIndex = 0
  end
  object XPManifest1: TXPManifest
    Left = 395
    Top = 424
  end
  object MainMenu1: TMainMenu
    Left = 299
    Top = 424
    object Archivo1: TMenuItem
      Caption = 'Archivo'
      object Empleados1: TMenuItem
        Caption = 'Empleados'
        OnClick = Empleados1Click
      end
      object MM_N3: TMenuItem
        Caption = '-'
      end
      object MM_IngresoEfectivo1: TMenuItem
        Caption = 'Manejo Cuentas de Banco'
        object MM_Credito: TMenuItem
          Caption = 'Cr'#233'dito'
          OnClick = MM_CreditoClick
        end
        object MM_N5: TMenuItem
          Caption = '-'
        end
        object MM_Debito: TMenuItem
          Caption = 'D'#233'bito'
          OnClick = MM_DebitoClick
        end
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object RelacinVeneficiosGastosDeudas1: TMenuItem
        Caption = 'Beneficios/Gastos Bancas'
        OnClick = RelacinVeneficiosGastosDeudas1Click
      end
      object MM_N1: TMenuItem
        Caption = '-'
      end
      object MM_CuentasPorCobrar1: TMenuItem
        Caption = 'Cuentas Por Cobrar'
        OnClick = MM_CuentasPorCobrar1Click
      end
      object MM_N4: TMenuItem
        Caption = '-'
      end
      object MM_Usuarios1: TMenuItem
        Caption = 'Usuarios'
        OnClick = MM_Usuarios1Click
      end
      object MM_N10: TMenuItem
        Caption = '-'
      end
      object MM_Opciones: TMenuItem
        Caption = 'Opciones'
        OnClick = MM_OpcionesClick
      end
      object MM_N2: TMenuItem
        Caption = '-'
      end
      object MM_Salir: TMenuItem
        Caption = 'Salir'
        OnClick = MM_SalirClick
      end
    end
    object MM_Ver1: TMenuItem
      Caption = 'Ver'
      object MM_BancasComputadas1: TMenuItem
        Caption = 'Bancas Computadas'
        OnClick = MM_BancasComputadas1Click
      end
    end
    object MM_Gastos: TMenuItem
      Caption = 'Gastos'
      object MM_ManejoGasto: TMenuItem
        Caption = 'Manejo de Gasto'
        OnClick = MM_ManejoGastoClick
      end
    end
    object MM_Nomina2: TMenuItem
      Caption = 'Descuentos'
      object MM_ManejoDescuentos1: TMenuItem
        Caption = 'Manejo Descuentos'
        OnClick = MM_ManejoDescuentos1Click
      end
    end
    object MM_Reportes1: TMenuItem
      Caption = 'Reportes'
      object MM_ResumenVeneficiosGastos1: TMenuItem
        Caption = 'Beneficios/Gastos'
        OnClick = MM_ResumenVeneficiosGastos1Click
      end
      object MM_N6: TMenuItem
        Caption = '-'
      end
      object MM_DetallesCuentasBanco: TMenuItem
        Caption = 'Cuentas Banco'
        OnClick = MM_DetallesCuentasBancoClick
      end
      object MM_N7: TMenuItem
        Caption = '-'
      end
      object MM_Nomina1: TMenuItem
        Caption = 'Nomina'
        OnClick = MM_Nomina1Click
      end
      object MM_N8: TMenuItem
        Caption = '-'
      end
      object MM_Gastos1: TMenuItem
        Caption = 'Gastos'
        OnClick = MM_Gastos1Click
      end
    end
  end
  object Coneccion_1: TADOConnection
    ConnectionString = 'FILE NAME=C:\Control Bancas\Coneccion.udl'
    LoginPrompt = False
    Provider = 'C:\Control Bancas\Coneccion.udl'
    Left = 299
    Top = 392
  end
  object T_1: TTimer
    OnTimer = T_1Timer
    Left = 363
    Top = 424
  end
  object JvLoginDialog1: TJvLoginDialog
    HelpContext = 1
    Caption = 'Inicio de Sesi'#243'n'
    Active = False
    AppTitleLabelCaption = 'Control Bancas'
    PasswordLabelCaption = 'Clave Usuario'
    UserNameLabelCaption = 'Nombre Usuario'
    OnCheckUser = JvLoginDialog1CheckUser
    Left = 395
    Top = 392
  end
  object JvBalloonHint1: TJvBalloonHint
    UseBalloonAsApplicationHint = True
    Left = 363
    Top = 392
  end
  object HK_Principal: TJvApplicationHotKey
    Active = True
    HotKey = 114
    OnHotKey = HK_PrincipalHotKey
    Left = 331
    Top = 392
  end
  object JvTrayIcon1: TJvTrayIcon
    Active = True
    Animated = True
    IconIndex = 0
    DropDownMenu = PM_1
    PopupMenu = PM_1
    Visibility = [tvVisibleTaskBar, tvVisibleTaskList, tvAutoHide, tvRestoreDbClick, tvMinimizeDbClick, tvAnimateToTray]
    OnDblClick = JvTrayIcon1DblClick
    Left = 267
    Top = 424
  end
  object PM_1: TPopupMenu
    Left = 331
    Top = 424
    object MM_Maximizar1: TMenuItem
      Caption = 'Restaurar'
      OnClick = MM_Maximizar1Click
    end
    object MM_N11: TMenuItem
      Caption = '-'
    end
    object MM_Minimizar1: TMenuItem
      Caption = 'Minimizar'
      OnClick = MM_Minimizar1Click
    end
    object MM_N9: TMenuItem
      Caption = '-'
    end
    object MM_Salir1: TMenuItem
      Caption = 'Salir(Cerrar la Aplicaci'#243'n)'
      OnClick = MM_Salir1Click
    end
  end
  object actlst1: TActionList
    Left = 267
    Top = 392
    object act1: TAction
      Caption = 'act1'
    end
  end
end
