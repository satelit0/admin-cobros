unit UCxC;

interface

uses ADODB, Messages, SysUtils, Variants, Classes, Windows, Dialogs;

type
  TCxC = class(TObject)
  private

  public
    procedure InsertaCuenta(IdBanca, IdEmpleado:Integer; VeneficiosBanca, IngresoEfectivo,
                            Diferencia:Double; Fecha:TDateTime; EstadoCuenta, OpcionMensaje:Integer);
    function CalculaBalance(IdEmpleado:Integer):Double;
    procedure ModificaCuenta(IdCxC, estadoCuenta:Integer);
    procedure ModificaDestallesCuenta(BeneficiosBanca, IngresoEfectivo, Diferencia:Double; IdCxCBanca, EstadoCuenta, OpcionMensaje:Integer);

end;
var
  Qr_InsertaCuenta:TADOQuery;
implementation

uses UPrincipal, DB;

{ TCxC }

function TCxC.CalculaBalance(IdEmpleado: Integer): Double;
var
  Qr_Balance:TADOQuery;
begin
  Qr_Balance:=TADOQuery.Create(nil);
  with Qr_Balance do
    begin
      Connection:=ControlCuentasBancarias.Coneccion_1;
      Close;
      SQL.Add('select sum(c.veneficiosVenta - c.ingresoEfectivo) as balance, sum(d.credito) as abono from cxcBancas as c left join detCxCCobro as d');
      SQL.Add('on(c.id_CXCBancas = d.id_cxcBanca_detalle)');
      SQL.Add('where(estadoCuenta = -1)and(id_Empleado = :p0);');
      Parameters[0].Value:=IdEmpleado;
      Open;
      Result:=fieldbyname('balance').AsFloat - fieldbyname('abono').AsFloat;
      //Free;
    end;
   //Qr_Balance.fieldbyname('balance').AsFloat;
   //Qr_Balance.fieldbyname('abono').AsFloat;
   Qr_Balance.Free;
end;

procedure TCxC.InsertaCuenta(IdBanca, IdEmpleado: Integer; VeneficiosBanca,
  IngresoEfectivo, Diferencia: Double; Fecha: TDateTime; EstadoCuenta, OpcionMensaje:Integer);
begin
  try
    Qr_InsertaCuenta:=TADOQuery.Create(nil);
    with Qr_InsertaCuenta do
      begin
        Connection:=ControlCuentasBancarias.Coneccion_1;
        Close;
        SQL.Clear;
        SQL.Add('insert into CxCBancas (Id_Banca, Id_Empleado, VeneficiosVenta, IngresoEfectivo, Fecha, EstadoCuenta, Diferencia)');
        SQL.Add('Values(:p0, :p1, :p2, :p3, :p4, :p5, :p6)');
        Parameters[0].Value:=IdBanca;
        Parameters[1].Value:=IdEmpleado;
        Parameters[2].Value:=VeneficiosBanca;
        Parameters[3].Value:=IngresoEfectivo;
        Parameters[4].Value:=Fecha;
        Parameters[5].Value:=EstadoCuenta;
        Parameters[6].Value:=Diferencia;
        ExecSQL;
        Free;
        if(OpcionMensaje =1)then
          begin
            MessageDlg('Datos guardados con �xito.',mtInformation, [mbOK],0);
          end;
      end;
  except
    MessageBox(0,'Se produjo un error al intentar guardar los datos. Comuniquese con el administrador del sistema.','Informaci�n',0);
  end;
end;

procedure TCxC.ModificaCuenta(IdCxC, estadoCuenta: Integer);
var
  Qr_ModCuenta:TADOQuery;
begin
  Qr_ModCuenta:=TADOQuery.Create(nil);
  with Qr_ModCuenta do
    begin
      Connection:=ControlCuentasBancarias.Coneccion_1;
      Close;
      SQL.Clear;
      SQL.Add('update cxcBancas set estadoCuenta = :p0');
      SQL.Add('where id_cxcBancas = :p1;');
      Parameters[0].Value:=estadoCuenta;
      Parameters[1].Value:=IdCxC;
      ExecSQL;
      Free;
    end;
end;

procedure TCxC.ModificaDestallesCuenta(BeneficiosBanca,
  IngresoEfectivo, Diferencia: Double;  IdCxCBanca, EstadoCuenta,OpcionMensaje: Integer);
var
  Qr_MdetallesC:TADOQuery;
begin
  try
    Qr_MdetallesC:=TADOQuery.Create(nil);
    with Qr_MdetallesC do
      begin
        Connection:=ControlCuentasBancarias.Coneccion_1;
        Close;
        SQL.Clear;
        SQL.Add('update CxCBancas set VeneficiosVenta = :p0, ingresoEfectivo = :p1, estadoCuenta = :p2, diferencia = :p3');
        SQL.Add('where id_CxCBancas = :p4;');
        Parameters[0].Value:=BeneficiosBanca;
        Parameters[1].Value:=IngresoEfectivo;
        Parameters[2].Value:=EstadoCuenta;
        Parameters[3].Value:=diferencia;
        Parameters[4].Value:=IdCxCBanca;
        ExecSQL;
        Free;
        if(OpcionMensaje = 1)then
          MessageDlg('Datos modificados con �xito.',mtInformation,[mbOK],0);
      end;
  except
    Qr_MdetallesC.Free;
    MessageDlg('Error al modificar datos. Error: 0CXB2',mtError,[mbOK],0);
  end;
end;

end.
