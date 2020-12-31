unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, XPMan, ComCtrls, UEmpleados, DateUtils, JvExControls,
  JvPageList, JvNavigationPane, UCuentasBancarias, DB, ADODB, UIngresosBancas,
  UOpciones, UBuscaEmpleado, UGastos, UCxC, StdCtrls, UAbonosCXC, RpBase,
  RpSystem, RpDefine, RpRave, UCreditoBanco, UReportes, ExtCtrls, UBuscaReporte,
  IniFiles, JvComponentBase, JvXPCore, JvFormTransparent, JvLED, JvButton,
  KAZip, UDescuentos, JvBaseDlg, JvLoginForm, JvBalloonHint, ULogin,
  JvAppHotKey, JvTrayIcon, JvAppStorage, ActnList, JvExExtCtrls,
  JvExtComponent, JvItemsPanel, UMostarDatos, JvExComCtrls, JvStatusBar;
const 
  CM_RESTORE = WM_USER + $1000;


type
  TControlCuentasBancarias = class(TForm)
    XPManifest1: TXPManifest;
    MainMenu1: TMainMenu;
    Archivo1: TMenuItem;
    Empleados1: TMenuItem;
    N3: TMenuItem;
    RelacinVeneficiosGastosDeudas1: TMenuItem;
    MM_N4: TMenuItem;
    MM_Opciones: TMenuItem;
    MM_Gastos: TMenuItem;
    MM_ManejoGasto: TMenuItem;
    Coneccion_1: TADOConnection;
    MM_N1: TMenuItem;
    MM_CuentasPorCobrar1: TMenuItem;
    MM_N2: TMenuItem;
    MM_Salir: TMenuItem;
    MM_N3: TMenuItem;
    MM_IngresoEfectivo1: TMenuItem;
    MM_Credito: TMenuItem;
    MM_N5: TMenuItem;
    MM_Debito: TMenuItem;
    T_1: TTimer;
    MM_Reportes1: TMenuItem;
    MM_ResumenVeneficiosGastos1: TMenuItem;
    MM_N6: TMenuItem;
    MM_DetallesCuentasBanco: TMenuItem;
    MM_N7: TMenuItem;
    MM_Nomina1: TMenuItem;
    MM_N8: TMenuItem;
    MM_Gastos1: TMenuItem;
    JvNavPanelHeader1: TJvNavPanelHeader;
    MM_Nomina2: TMenuItem;
    MM_ManejoDescuentos1: TMenuItem;
    JvLoginDialog1: TJvLoginDialog;
    JvBalloonHint1: TJvBalloonHint;
    MM_N10: TMenuItem;
    MM_Usuarios1: TMenuItem;
    HK_Principal: TJvApplicationHotKey;
    JvTrayIcon1: TJvTrayIcon;
    PM_1: TPopupMenu;
    MM_Maximizar1: TMenuItem;
    MM_N9: TMenuItem;
    MM_Salir1: TMenuItem;
    actlst1: TActionList;
    act1: TAction;
    MM_N11: TMenuItem;
    MM_Minimizar1: TMenuItem;
    MM_Ver1: TMenuItem;
    MM_BancasComputadas1: TMenuItem;
    SPANEL_1: TStatusBar;
    procedure MM_OpcionesClick(Sender: TObject);
    procedure Empleados1Click(Sender: TObject);
    procedure MM_ManejoGastoClick(Sender: TObject);
    procedure MM_CuentasPorCobrar1Click(Sender: TObject);
    procedure MM_SalirClick(Sender: TObject);
    procedure MM_CreditoClick(Sender: TObject);
    procedure RelacinVeneficiosGastosDeudas1Click(Sender: TObject);
    procedure MM_DebitoClick(Sender: TObject);
    procedure T_1Timer(Sender: TObject);
    procedure MM_ResumenVeneficiosGastos1Click(Sender: TObject);
    procedure MM_DetallesCuentasBancoClick(Sender: TObject);
    procedure MM_Nomina1Click(Sender: TObject);
    procedure MM_ManejoDescuentos1Click(Sender: TObject);
    procedure MM_Usuarios1Click(Sender: TObject);
    procedure JvLoginDialog1CheckUser(Sender: TObject; const UserName,
      Password: String; var AllowLogin: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure MM_Gastos1Click(Sender: TObject);
    procedure HK_PrincipalHotKey(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MM_Salir1Click(Sender: TObject);
    procedure MM_Maximizar1Click(Sender: TObject);
    procedure JvTrayIcon1DblClick(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure MM_Minimizar1Click(Sender: TObject);
    procedure MM_BancasComputadas1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CreateParams(var Params: TCreateParams); override;
    procedure RestoreRequest(var message: TMessage); message CM_RESTORE;

  end;
const
  formatNumerico = 'RD$ #,##0.00';
  formatNumerico1 = '#,##0.00';
var
  ControlCuentasBancarias: TControlCuentasBancarias;
  _FEmpleados:TFEmpleados;
  _FCuentasBancarias:TFCuentasBancarias;
  _FBuscaEmpleado:TFBuscaEmpleado;
  _FOpciones:TFOpciones;
  _FGastos:TFGastos;
  _FAbonosCXC:TFAbonoCXC;
  _CXCBancas:TCxC;
  _FCreditoBanco:TFCreditoBanco;
  _FReportes:TFReportes;
  _FBuscaReporte:TFBuscaReportes;
  _FDescuento:TFDescuento;
  _FLogin:TFLoginUsuario;
  _FMostrarDatos:TFMostrarDatos;
  IDUsuarioLogeado:Integer;
  NombreLogin, NombreUsuario,_NombreLogin, ApellidosLogin:string;//valores usuario logueado
  nombreEmp, apellidosEmp :string; // capturar los valores de nombre y apellidos del empleado
  EnviarA:string;
  IdBanca:Integer;
  OpcionDebitoCredito:string;
  todoNBanca:Integer; //determinar el numero de bancas que sera incluida en el reporte de gastos.
  CerrarFEmpleado:Boolean; //determinar cuando debe destruirce el for empleados.
  MostrarCerrado:Boolean;
implementation


var
  _FRelacionVGD:TFRelacionGananciaGastosDeudas;


{$R *.dfm}

//escribe valor string en archivo INI
procedure esCadINI (clave, cadena : string; valor : String);
begin
  with tinifile.create (changefileext(paramstr(0),'.INI')) do
  try
    WriteString (clave, cadena, valor);
  finally
    free;
  end;
end;

//lee un valor string del INI
function leCadINI (clave, cadena : string; defecto : String) : String;
begin
  with tinifile.create (changefileext(paramstr(0),'.INI')) do
  try
    result := ReadString (clave, cadena, defecto);
  finally
    free;
  end;
end;

procedure TControlCuentasBancarias.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.WinClassName := 'CCuentasB.exe';
end;

procedure TControlCuentasBancarias.RestoreRequest(var message: TMessage);
begin 
  if IsIconic(Application.Handle) = TRUE then
    Application.Restore
  else 
    Application.BringToFront;
end;

procedure TControlCuentasBancarias.MM_OpcionesClick(Sender: TObject);
begin
  try
    HK_Principal.Active:=False;
    _FOpciones:=TFOpciones.Create(Self);
    _FOpciones.ShowModal;
  finally
    _FOpciones.Free;
    HK_Principal.Active:=True;
  end;
end;

procedure TControlCuentasBancarias.Empleados1Click(Sender: TObject);
begin
  try
    HK_Principal.Active:=False;
    BanderaCrearEmpleado:=True;
    _FEmpleados:=TFEmpleados.Create(Self);
    _FEmpleados.Caption:='Empleado(Registrar Nuevo)';
    _FEmpleados.DTP_Fecha_Nac.DateTime:=Now;
    _FEmpleados.DTP_Fecha_Ing.DateTime:=Now;
    //_FEmpleados.HK_Empleados.Active:=True;
    _FEmpleados.ShowModal;
  finally
   // if(CerrarFEmpleado = False)then
      _FEmpleados.Free;
      HK_Principal.Active:=True;
  end;
end;

procedure TControlCuentasBancarias.MM_ManejoGastoClick(Sender: TObject);
begin
  try
    HK_Principal.Active:=False;
    _FGastos:=TFGastos.Create(Self);
    _FGastos.ShowModal;
  finally
    _FGastos.Free;
    HK_Principal.Active:=True;
  end;
end;

procedure TControlCuentasBancarias.MM_CuentasPorCobrar1Click(
  Sender: TObject);
begin
  try
    HK_Principal.Active:=False;
    _FAbonosCXC:=TFAbonoCXC.Create(Self);
    _FAbonosCXC.ShowModal;
  finally
    _FAbonosCXC.Free;
    HK_Principal.Active:=True;
  end; 
end;

procedure TControlCuentasBancarias.MM_SalirClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TControlCuentasBancarias.MM_CreditoClick(Sender: TObject);
begin
  try
    HK_Principal.Active:=False;
    OpcionDebitoCredito:='credito';
    _FCreditoBanco:=TFCreditoBanco.Create(Self);
    _FCreditoBanco.Caption:='Manejo de Cuentas de Banco (Ingresos)';
    _FCreditoBanco.ShowModal;
  finally
    _FCreditoBanco.Free;
    HK_Principal.Active:=True;
  end;
end;

procedure TControlCuentasBancarias.RelacinVeneficiosGastosDeudas1Click(
  Sender: TObject);
begin
  try
    HK_Principal.Active:=False;
    _FRelacionVGD:=TFRelacionGananciaGastosDeudas.Create(Self);
    _FRelacionVGD.ShowModal;
  finally
    _FRelacionVGD.Free;
    HK_Principal.Active:=True;
  end;
end;

procedure TControlCuentasBancarias.MM_DebitoClick(Sender: TObject);
begin
  try
    HK_Principal.Active:=False;
    OpcionDebitoCredito:='debito';
    _FCreditoBanco:=TFCreditoBanco.Create(Self);
    _FCreditoBanco.Caption:='Manejo de Cuentas de Banco (egresos)';
    _FCreditoBanco.LB_3.Caption:='(*) Monto Retiro';
    _FCreditoBanco.ShowModal;
  finally
    _FCreditoBanco.Free;
    HK_Principal.Active:=True;
  end;
end;

procedure TControlCuentasBancarias.T_1Timer(Sender: TObject);
begin

  SPANEL_1.Panels[1].Text:=DateToStr(DateOf(Now))+'  |  '+TimeToStr(TimeOf(Now));
end;

procedure TControlCuentasBancarias.MM_ResumenVeneficiosGastos1Click(
  Sender: TObject);
begin
  try
    HK_Principal.Active:=False;
    _FBuscaReporte:=TFBuscaReportes.Create(Self);
    with _FBuscaReporte do
      begin
        NB_1.PageIndex:=0;
        BBT_EnviaA.Caption:='&Enviar A:';
        Caption:='Reporte General de Estado.';
        ClientHeight:=238;
        ShowModal;
      end;
  finally
    _FBuscaReporte.Free;
    HK_Principal.Active:=True;
  end;
end;

procedure TControlCuentasBancarias.MM_DetallesCuentasBancoClick(
  Sender: TObject);
begin
  try
    HK_Principal.Active:=False;
    _FBuscaReporte:=TFBuscaReportes.Create(Self);
    with _FBuscaReporte do
      begin
        NB_1.PageIndex:=1;
        BBT_EnviarA.Caption:='&Enviar A:';
        Caption:='Reporte Cuentas de Banco.';
        ClientHeight:=238;
        DTP_BancoFechaFinal.DateTime:=IncDay(DTP_BancoFechaInicial.DateTime,7);
        ShowModal;
      end;
  finally
    _FBuscaReporte.Free;
    HK_Principal.Active:=True;
  end;
end;

procedure TControlCuentasBancarias.MM_Nomina1Click(Sender: TObject);
begin
  try
    HK_Principal.Active:=False;
    _FBuscaReporte:=TFBuscaReportes.Create(Self);
    with _FBuscaReporte do
      begin
        NB_1.PageIndex:=2;
        BBT_1.Caption:='&Enviar A:';
        Caption:='Reporte Nomina.';
        GB_8.Visible:=True;
        ClientHeight:=421;
        CBB_IntervaloPago.Enabled:=False;
        DTP_FechaNomina.DateTime:=Now;
        ShowModal;
      end;
  finally
    _FBuscaReporte.Free;
    HK_Principal.Active:=True;
  end;
end;

procedure TControlCuentasBancarias.MM_ManejoDescuentos1Click(
  Sender: TObject);
begin
  try
    DescuentoActivo:=False;
    HK_Principal.Active:=False;
    _FDescuento:=TFDescuento.Create(Self);
    _FDescuento.BBT_2.Visible:=True;
    _FDescuento.ShowModal;
  finally
    _FDescuento.Free;
    HK_Principal.Active:=True;
  end;

end;

procedure TControlCuentasBancarias.MM_Usuarios1Click(Sender: TObject);
begin
  try
    HK_Principal.Active:=False;
    _FLogin:=TFLoginUsuario.Create(Self);
    _FLogin.ShowModal;
  finally
    _FLogin.Free;
    HK_Principal.Active:=True;
  end;
end;

procedure TControlCuentasBancarias.JvLoginDialog1CheckUser(Sender: TObject;
  const UserName, Password: String; var AllowLogin: Boolean);
var
  Qr_Login, Qr_ExUses, Qr_InsertaUses:TADOQuery;
  Permitir:Boolean;
begin
  try
    esCadINI('VCentral','NB','0');
    esCadINI('VCentral','CT','0');
    esCadINI('VCentral','IEB','0');
    esCadINI('VCentral','DIR','Central Consorcio');
    esCadINI('VCentral','EST','-1');
    Qr_ExUses:=TADOQuery.Create(Self);
    with Qr_ExUses do
      begin
        Connection:=Coneccion_1;
        Close;
        SQL.Clear;
        SQL.Add('select * from Login');
        Open;
      end;
    if(Qr_ExUses.RecordCount = 0)then
      begin
        Qr_InsertaUses:=TADOQuery.Create(Self);
        with Qr_InsertaUses do
          begin
            Connection:=Coneccion_1;
            Close;
            SQL.Clear;
            SQL.Add('insert into Login(nombreUsuario, claveUsuario, nombre, apellidos)');
            SQL.Add('values("admin", "admin", "Administrador","")');
            ExecSQL;
            Free;
          end;
      end;
    Qr_ExUses.Free;
    AllowLogin:=False;
    Qr_Login:=TADOQuery.Create(Self);
    with Qr_Login do
      begin
        Connection:=ControlCuentasBancarias.Coneccion_1;
        Close;
        SQL.Add('select *,nombre+" "+apellidos as _Nombre from Login');
        SQL.Add('where nombreUsuario = :NUsu and claveUsuario = :CUsu');
        Parameters[0].Value:=UserName;
        Parameters[1].Value:=Password;
        Open;
      end;
      if(Qr_Login.RecordCount = 1)then
        begin
          IDUsuarioLogeado:=Qr_Login.FieldByName('id_login').Value;
          NombreLogin:=Qr_Login.FieldByName('nombre').Value;
          _NombreLogin:=Qr_Login.FieldByName('_Nombre').Value;
          ApellidosLogin:=Qr_Login.FieldByName('apellidos').Value;
          NombreUsuario:=Qr_Login.FieldByName('nombreUsuario').Value;
          SPANEL_1.Panels[0].Text:=_NombreLogin+' ('+NombreUsuario+')';
          Permitir:=True;
          JvLoginDialog1.LoggedUser:=Qr_Login.FieldByName('nombre').Value;
          AllowLogin:=True;
        end
      else
        begin
          JvLoginDialog1.AttemptNumber:=JvLoginDialog1.AttemptNumber - 1;
          if(JvLoginDialog1.AttemptNumber = 0)then
            begin
              //JvLoginDialog1.TerminateApplication;
              Application.Terminate;
            end
          else
            begin
              Permitir:=False;
              AllowLogin:=False;
              //JvLoginDialog1.AppTitleLabelCaption:='Incorrecto';
              //JvLoginDialog1.Execute;
            end;
        end;
  finally
    Qr_Login.Free;
    if(Permitir = True)then
      begin
        AllowLogin:=True;
        //Application.Terminate;

      end;
  end;
end;

procedure TControlCuentasBancarias.FormCreate(Sender: TObject);
var
  Qr_BCExiste, Qr_InsertDC:TADOQuery;
begin
//  JvLoginDialog1.Execute;

  //JvLoginDialog1.Execute;
  try
    Qr_BCExiste:=TADOQuery.Create(Self);
    with Qr_BCExiste do
      begin
        Connection:=Coneccion_1;
        Close;
        SQL.Clear;
        SQL.Add('select id_Banca from bancas where numero_Banca = 0;');
        Open;
      end;
    if(Qr_BCExiste.RecordCount = 0)then
      begin
        Qr_InsertDC:=TADOQuery.Create(Self);
        with Qr_InsertDC do
          begin
            Connection:=Coneccion_1;
            Close;
            SQL.Clear;
            SQL.Add('insert into bancas(numero_banca, cantidadTurnos, id_empleado_banca,direccion_banca, estado)');
            SQL.Add('values(:nbanca, :cturno, :idempB, :Direcc, :estado);');
            Parameters[0].Value:=leCadINI('VCentral','NB','');
            Parameters[1].Value:=leCadINI('VCentral','CT','');
            Parameters[2].Value:=leCadINI('VCentral','IEB','');
            Parameters[3].Value:=leCadINI('VCentral','DIR','');
            Parameters[4].Value:=leCadINI('VCentral','EST','');
            ExecSQL;
            Free;
          end;
      end;
  finally
    Qr_BCExiste.Free;
  end;
end;

procedure TControlCuentasBancarias.MM_Gastos1Click(Sender: TObject);
begin
  try
    HK_Principal.Active:=False;
    _FBuscaReporte:=TFBuscaReportes.Create(Self);
    _FBuscaReporte.NB_1.PageIndex:=3;
    _FBuscaReporte.Caption:='Reporte General de Gastos.';
    _FBuscaReporte.DTP_TodoGastoInicio.DateTime:=Now;
    _FBuscaReporte.DTP_TodoGastoFin.DateTime:=Now;
    _FBuscaReporte.BTM_1.Caption:='&Enviar A:';
    todoNBanca:=1;
    _FBuscaReporte.ClientHeight:=238;

    _FBuscaReporte.ShowModal;
  finally
    _FBuscaReporte.Free;
    HK_Principal.Active:=True;
  end;
end;

procedure TControlCuentasBancarias.HK_PrincipalHotKey(
  Sender: TObject);
begin
  Application.Terminate;
end;

procedure TControlCuentasBancarias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //JvTrayIcon1.Active:=True;
  Action:=caNone;
  //JvTrayIcon1.Active:=True;
  JvTrayIcon1.HideApplication;
  JvTrayIcon1.BalloonHint('Control Bancas','Control de Cuentas se esta ejecutando minimizado.',TBalloonType(2),5000,true);
  //ControlCuentasBancarias.Visible:=False;
end;

procedure TControlCuentasBancarias.MM_Salir1Click(Sender: TObject);
begin
  if(MessageDlg('Confirme que desea salir',mtConfirmation,[mbYes,mbNo],0) = IDYES)then
    begin
      Application.Terminate;
      JvTrayIcon1.Active:=False;
    end;
end;

procedure TControlCuentasBancarias.MM_Maximizar1Click(Sender: TObject);
begin
  //ControlCuentasBancarias.WindowState:=wsNormal;
  JvTrayIcon1.ShowApplication;
  //JvTrayIcon1.Active:=False;
  //ControlCuentasBancarias.Show;

end;

procedure TControlCuentasBancarias.JvTrayIcon1DblClick(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  MM_Maximizar1Click(Self);
end;

procedure TControlCuentasBancarias.MM_Minimizar1Click(Sender: TObject);
begin
  if(IsWindowVisible(Handle))then
    JvTrayIcon1.HideApplication;
end;

procedure TControlCuentasBancarias.MM_BancasComputadas1Click(
  Sender: TObject);
begin
  try
    _FMostrarDatos:=TFMostrarDatos.Create(Self);
    MostrarCerrado:=True;
    _FMostrarDatos.Show;
  except

  end;
end;


