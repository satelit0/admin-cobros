program CCuentasB;

uses
  Forms,
  Messages,
  Windows,
  UPrincipal in 'UPrincipal.pas' {ControlCuentasBancarias},
  UEmpleados in 'UEmpleados.pas' {FEmpleados},
  UIngresosBancas in 'UIngresosBancas.pas' {FRelacionGananciaGastosDeudas},
  UOpciones in 'UOpciones.pas' {FOpciones},
  UCuentasBancarias in 'UCuentasBancarias.pas' {FCuentasBancarias},
  CCuentasB_TLB in 'CCuentasB_TLB.pas',
  UBuscaEmpleado in 'UBuscaEmpleado.pas' {FBuscaEmpleado},
  UGastos in 'UGastos.pas' {FGastos},
  UCxC in 'UCxC.pas',
  UAbonosCXC in 'UAbonosCXC.pas' {FAbonoCXC},
  UCreditoBanco in 'UCreditoBanco.pas' {FCreditoBanco},
  UReportes in 'UReportes.pas' {FReportes},
  UBuscaReporte in 'UBuscaReporte.pas' {FBuscaReportes},
  UDescuentos in 'UDescuentos.pas' {FDescuento},
  ULogin in 'ULogin.pas' {FLoginUsuario},
  UMostarDatos in 'UMostarDatos.pas' {FMostrarDatos};

const
  CM_RESTORE = WM_USER + $1000;

var
  RvHandle : hWnd;

{$R *.TLB}

{$R *.res}

begin
  RvHandle := FindWindow('CCuentasB.exe', NIL);
  if RvHandle > 0 then 
    begin
      PostMessage(RvHandle, CM_RESTORE, 0, 0);
      Exit;
    end;
  Application.Initialize;
  Application.CreateForm(TControlCuentasBancarias, ControlCuentasBancarias);
  Application.Run;
end.
