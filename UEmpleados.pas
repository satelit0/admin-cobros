unit UEmpleados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, ComCtrls, DateUtils, Buttons,
  JvBaseDlg, JvCalc, JvExMask, JvToolEdit, JvBaseEdits, JvExStdCtrls,
  JvEdit, JvValidateEdit, JvExComCtrls, JvDateTimePicker, DB, ADODB, MemDS,
  VirtualTable, JvComponentBase, JvBalloonHint, JvAppHotKey, ActnList;

type
  TFEmpleados = class(TForm)
    GB_1: TGroupBox;
    BBT_Guardar: TBitBtn;
    LB_4: TLabel;
    ECal_Descuentos: TJvCalcEdit;
    Label1: TLabel;
    ECal_SueldoNeto: TJvCalcEdit;
    Label3: TLabel;
    BBT_CrearNuevo: TBitBtn;
    BBT_Buscar: TBitBtn;
    BBT_Limpiar: TBitBtn;
    BBT_Eliminar: TBitBtn;
    ECal_SuleldoBruto: TJvCalcEdit;
    DTP_Fecha_Ing: TJvDateTimePicker;
    BBT_Salir: TBitBtn;
    Label5: TLabel;
    EL_TiempoServicio: TLabeledEdit;
    CBB_IntervaloPago: TComboBox;
    LB_6: TLabel;
    GB_2: TGroupBox;
    LB_1: TLabel;
    LB_2: TLabel;
    LB_3: TLabel;
    LB_5: TLabel;
    EL_Apellidos: TLabeledEdit;
    EL_Nombre: TLabeledEdit;
    EL_Direccion: TLabeledEdit;
    EM_Telefono: TMaskEdit;
    EM_Flota: TMaskEdit;
    EL_Apodo: TLabeledEdit;
    EL_Edad: TLabeledEdit;
    RG_1: TRadioGroup;
    RB_Masc: TRadioButton;
    RB_Femen: TRadioButton;
    EM_Cedula: TMaskEdit;
    DTP_Fecha_Nac: TJvDateTimePicker;
    Qr_InsertarEmpleado: TADOQuery;
    CKB_Estado: TCheckBox;
    CBB_TipoEmpleado: TComboBox;
    LB_8: TLabel;
    SBT_AgregarDescuentos: TSpeedButton;
    TableV_DescuentoTemp: TVirtualTable;
    TableV_DescuentoTempIndice: TAutoIncField;
    TableV_DescuentoTempId_Descuento: TIntegerField;
    TableV_DescuentoTempMontoDescuento: TFloatField;
    TableV_DescuentoTempDescripcion: TStringField;
    TableV_DescuentoTempEstado: TIntegerField;
    Qr_UltimoEmpleado: TADOQuery;
    Qr_UltimoEmpleadoultimo: TIntegerField;
    TableV_DescuentoTempId_Empleado: TIntegerField;
    TableV_DescuentoTempEsNuevo: TIntegerField;
    JvBalloonHint1: TJvBalloonHint;
    ECal_1: TJvCalcEdit;
    LB_9: TLabel;
    EL_1: TLabeledEdit;
    ActL_1: TActionList;
    act1: TAction;
    act2: TAction;
    procedure ECal_SuleldoBrutoKeyPress(Sender: TObject; var Key: Char);
    procedure ECal_DescuentosKeyPress(Sender: TObject; var Key: Char);
    procedure DTP_Fecha_NacExit(Sender: TObject);
    procedure DTP_Fecha_NacKeyPress(Sender: TObject; var Key: Char);
    procedure DTP_Fecha_IngExit(Sender: TObject);
    procedure DTP_Fecha_IngKeyPress(Sender: TObject; var Key: Char);
    procedure BBT_LimpiarClick(Sender: TObject);
    procedure BBT_GuardarClick(Sender: TObject);
    procedure BBT_CrearNuevoClick(Sender: TObject);
    procedure ECal_SuleldoBrutoExit(Sender: TObject);
    procedure ECal_DescuentosExit(Sender: TObject);
    procedure BBT_BuscarClick(Sender: TObject);
    procedure EL_ApellidosKeyPress(Sender: TObject; var Key: Char);
    procedure EL_NombreKeyPress(Sender: TObject; var Key: Char);
    procedure EM_CedulaKeyPress(Sender: TObject; var Key: Char);
    procedure EL_DireccionKeyPress(Sender: TObject; var Key: Char);
    procedure EM_TelefonoKeyPress(Sender: TObject; var Key: Char);
    procedure EM_FlotaKeyPress(Sender: TObject; var Key: Char);
    procedure EL_ApodoKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BBT_SalirClick(Sender: TObject);
    procedure SBT_AgregarDescuentosClick(Sender: TObject);
    procedure ECal_1KeyPress(Sender: TObject; var Key: Char);
    procedure ECal_1Exit(Sender: TObject);
    procedure EL_1KeyPress(Sender: TObject; var Key: Char);
    procedure RB_MascKeyPress(Sender: TObject; var Key: Char);
    procedure RB_FemenKeyPress(Sender: TObject; var Key: Char);
    procedure CBB_TipoEmpleadoKeyPress(Sender: TObject; var Key: Char);
    procedure CBB_IntervaloPagoKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure act1Execute(Sender: TObject);
  private
    { Private declarations }

    procedure LimpiarCampos;
    procedure InsertaEmpleado(cedula, apellidos, nombres,	apodo, direccion,
                              telefono, telefonoMovil:string;	fechaNacimiento:TDateTime;
                              sexo:string; fechaIngreso:TDateTime; salarioBruto:Double;
                              fechaCreado:TDateTime; intervaloPago:string; tipoEmpleado, estado:Integer;
                              MontoIncentivo:Double; DescripcionIncentivo:string);
    function ValidarCampos:Boolean;
    procedure ModificaEmpleado(Id_empleadoMod:Integer; cedula, apellidos, nombres,	apodo, direccion,
                              telefono, telefonoMovil:string;	fechaNacimiento:TDateTime;
                              sexo:string; fechaIngreso:TDateTime; salarioBruto:Double;
                              fechaCreado:TDateTime; intervaloPago:string; tipoEmpleado, estado:Integer;
                              MontoIncentivo:Double; DescripcionIncentivo:string);
  public
    { Public declarations }
   function CalculaEdad(Fecha:TDateTime; VerEdad:Integer):string;
   function CalculaSalarioNeto(Bruto, Descuento:string; Incentivo:Double):string;
   function ValidaCedulaExiste(NCedula:string; NM:Integer):Boolean;
   function ValidaNombre(Apellidos, Nombres:string; NM:Integer):Boolean;
   function BuscaNombreEmpleado(Id_empleado:Integer):string;
   function ObtnerMontoDescuento:Double;
  end;

var
  FEmpleados: TFEmpleados;
  Qr_BuscaNombre:TADOQuery;
  Qr_BuscaCedula:TADOQuery;
  Qr_BuscaApodo:TADOQuery;
  Qr_ModificaEmpleado:TADOQuery;
  Opcion, Id_Empleado:Integer;
  Qr_BuscaNEmpleado:TADOQuery;
  BanderaCrearEmpleado:Boolean; // Marcar cuando lanzar desde empleados el formulario crear empleados
  NBancaMod, IdEmpBanca:Integer;
  FueraFecha:Boolean; //determinar cueando la fecha de a�os en servicio esta por es incorrecta con relacion a la fecha actual.
  EdadEmpleado:Double; //edad del empleado
implementation

uses UPrincipal, UBuscaEmpleado, UOpciones, UDescuentos;

{$R *.dfm}

{ TFEmpleados }

function TFEmpleados.CalculaSalarioNeto(Bruto, Descuento: string; Incentivo:Double): string;
var
  SueldoNeto, f_bruto, f_descuento:Double;
begin
  try
    f_bruto:=StrToFloat(Bruto);
    f_descuento:=StrToFloat(Descuento);
    SueldoNeto:=(f_bruto-f_descuento)+Incentivo;
    if SueldoNeto < 0 then
      begin
        MessageDlg('El Sueldo Neto no debe ser inferior a 0.',mtInformation,[mbOK],0);
      end
    else
      begin
        Result:=FloatToStr(SueldoNeto);
      end;
  except

  end;
end;

procedure TFEmpleados.ECal_SuleldoBrutoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    begin
      ECal_SueldoNeto.Text:=CalculaSalarioNeto(ECal_SuleldoBruto.Text,ECal_Descuentos.Text,ECal_1.Value);
      CBB_IntervaloPago.SetFocus;
    end;
end;

procedure TFEmpleados.ECal_DescuentosKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    begin
      ECal_SueldoNeto.Text:=CalculaSalarioNeto(ECal_SuleldoBruto.Text,ECal_Descuentos.Text,ECal_1.Value);
      //CBB_IntervaloPago.SetFocus;
    end;
  if Key = #44 then
    begin
      Key := #0;
    end;
end;

function TFEmpleados.CalculaEdad(Fecha: TDateTime; VerEdad:Integer): string;
var A, AA, M, MM, D, DD: Word;
   Anio, Mes, Dia:Double;
begin
  DecodeDate(Fecha, A, M, D);
  DecodeDate(Date, AA, MM, DD);
  Anio := Int(AA - A);
    if( M <= MM ) then
       Mes := MM - M
    else
      begin
        Mes := MM+12-M;
        Anio := Anio -1;
      end;
        if( D <= DD ) then
          Dia := DD - D
        else
      begin
        Dia:=DD+MonthDays[IsLeapYear(AA),MM]-D;
        Mes := Mes -1;
      end;
  if Mes < 0 then
    begin
      Anio := Anio - 1;
      Mes := 12 + Mes;
    end;
  if(Anio < 0)or(Mes < 0)or(Dia < 0)then
    begin
      FueraFecha:=False;
    end
  else
    begin
      FueraFecha:=True;
    end;
  if(VerEdad = 1)then
    begin
      EdadEmpleado:=Anio;
    end;
  Result := Format('%.0f A�os, %.0f Meses, %.0f Dias', [Anio,Mes,Dia]);
end;

procedure TFEmpleados.DTP_Fecha_NacExit(Sender: TObject);
begin
  EL_Edad.Text:=CalculaEdad(DTP_Fecha_Nac.DateTime,0);
  RB_Femen.SetFocus;
end;

procedure TFEmpleados.DTP_Fecha_NacKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    begin
      EL_Edad.Text:=CalculaEdad(DTP_Fecha_Nac.DateTime,0);
      GB_1.SetFocus;
    end;
end;

procedure TFEmpleados.DTP_Fecha_IngExit(Sender: TObject);
begin
  EL_TiempoServicio.Text:=CalculaEdad(DTP_Fecha_Ing.DateTime,0);
end;

procedure TFEmpleados.DTP_Fecha_IngKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    begin
      EL_TiempoServicio.Text:=CalculaEdad(DTP_Fecha_Ing.DateTime,0);
      ECal_1.SetFocus;
    end;
end;

procedure TFEmpleados.LimpiarCampos;
begin
  EL_Apellidos.Clear;
  EL_Nombre.Clear;
  EM_Cedula.Clear;
  EL_Apodo.Clear;
  EL_Direccion.Clear;
  EM_Telefono.Clear;
  EM_Flota.Clear;
  DTP_Fecha_Nac.DateTime:=Now;
  EL_Edad.Clear;
  RB_Masc.Checked:=False;
  RB_Femen.Checked:=False;
  DTP_Fecha_Ing.DateTime:=Now;
  EL_TiempoServicio.Clear;
  ECal_SuleldoBruto.Value:=0;
  ECal_Descuentos.Value:=0;
  ECal_SueldoNeto.Value:=0;
  EL_Apellidos.SetFocus;
  CBB_IntervaloPago.ItemIndex:=-1;
  ECal_1.Value:=0;
  EL_1.Clear;
end;

procedure TFEmpleados.BBT_LimpiarClick(Sender: TObject);
begin
  LimpiarCampos;
end;

procedure TFEmpleados.InsertaEmpleado(cedula, apellidos, nombres, apodo,
  direccion, telefono, telefonoMovil: string; fechaNacimiento: TDateTime;
  sexo: string; fechaIngreso: TDateTime; salarioBruto: Double; fechaCreado: TDateTime; intervaloPago:string;
  tipoEmpleado, estado:Integer; MontoIncentivo:Double; DescripcionIncentivo:string);
begin
  try
    with Qr_InsertarEmpleado do
      begin
        Close;
        Parameters.ParamByName('cedula').Value:=cedula;
        Parameters.ParamByName('apellidos').Value:=apellidos;
        Parameters.ParamByName('nombres').Value:=nombres;
        Parameters.ParamByName('apodo').Value:=apodo;
        Parameters.ParamByName('direccion').Value:=direccion;
        Parameters.ParamByName('telefono').Value:=telefono;
        Parameters.ParamByName('telefonoMovil').Value:=telefonoMovil;
        Parameters.ParamByName('fechaNacimiento').Value:=fechaNacimiento;
        Parameters.ParamByName('sexo').Value:=sexo;
        Parameters.ParamByName('fechaIngreso').Value:=fechaIngreso;
        Parameters.ParamByName('salarioBruto').Value:=salarioBruto;
        Parameters.ParamByName('fechaCreado').Value:=fechaCreado;
        Parameters.ParamByName('intervaloPago').Value:=intervaloPago;
        Parameters.ParamByName('tipoEmpleado').Value:=tipoEmpleado;
        Parameters.ParamByName('estado').Value:=estado;
        Parameters.ParamByName('montoInc').Value:=MontoIncentivo;
        Parameters.ParamByName('descripcionInc').Value:=DescripcionIncentivo;
        ExecSQL;
        //Free;
        Qr_UltimoEmpleado.Open;
      end;
    MessageDlg('Datos guardados con �xito.',mtInformation,[mbOK],0);
  except
    MessageDlg('Se produjo un error al intentar almacenar la informaci�n, contacte con el administrador del sistema.',mtInformation,[mbOK],0);
  end;
end;

procedure TFEmpleados.BBT_GuardarClick(Sender: TObject);
var
  sexo, tipoEmp:string;
  est:Integer;
begin
  if RB_Masc.Checked = True then
    begin
      sexo:='Masculino';
    end;
  if RB_Femen.Checked = True then
    begin
      sexo:='Femenino';
    end;
  if(CKB_Estado.Checked = True)then
    begin
      est:=1;
    end
  else
    begin
      est:=0;
    end;
  if ValidarCampos = True then
    begin
      if ValidaNombre(EL_Apellidos.Text,EL_Nombre.Text,Opcion) = True then
        begin
          if ValidaCedulaExiste(EM_Cedula.Text,Opcion) = True then
              begin
                EL_Edad.Text:=CalculaEdad(DTP_Fecha_Nac.DateTime,0);
                EL_TiempoServicio.Text:=CalculaEdad(DTP_Fecha_Ing.DateTime,0);
                ECal_SueldoNeto.Text:=CalculaSalarioNeto(ECal_SuleldoBruto.Text,ECal_Descuentos.Text,ECal_1.Value);
                if Opcion = 0 then
                  begin
                    InsertaEmpleado(EM_Cedula.Text,EL_Apellidos.Text,EL_Nombre.Text,EL_Apodo.Text, EL_Direccion.Text,
                                    EM_Telefono.Text,EM_Flota.Text,DateOf(DTP_Fecha_Nac.DateTime),sexo,DateOf(DTP_Fecha_Ing.DateTime),
                                    ECal_SuleldoBruto.Value,Now,CBB_IntervaloPago.Text,CBB_TipoEmpleado.ItemIndex,est,ECal_1.Value,EL_1.Text);
                    if(TableV_DescuentoTemp.RecordCount > 0)then
                      begin
                        _FDescuento:=TFDescuento.Create(Self);
                        TableV_DescuentoTemp.First;
                        while not TableV_DescuentoTemp.Eof do
                          begin
                            IdEmpleadoDes:=Qr_UltimoEmpleadoultimo.Value;
                            _FDescuento.InsertaDescuento(IdEmpleadoDes,TableV_DescuentoTempEstado.Value,TableV_DescuentoTempDescripcion.AsString,
                                                         TableV_DescuentoTempMontoDescuento.Value,DateOf(Now),0);
                            TableV_DescuentoTemp.Next;
                          end;
                        _FDescuento.Free;
                      end;
                  end
                else
                if Opcion = 1 then
                  begin
                    ModificaEmpleado(Id_Empleado, EM_Cedula.Text,EL_Apellidos.Text,EL_Nombre.Text,EL_Apodo.Text, EL_Direccion.Text,
                                    EM_Telefono.Text,EM_Flota.Text,DateOf(DTP_Fecha_Nac.DateTime),sexo,DateOf(DTP_Fecha_Ing.DateTime),
                                    ECal_SuleldoBruto.Value,Now,CBB_IntervaloPago.Text,CBB_TipoEmpleado.ItemIndex, est, ECal_1.Value,EL_1.Text);
                  //Guardar datos desde la tabla temporal a DB
                    _FDescuento:=TFDescuento.Create(Self);
                    _FDescuento.BuscaDescuento(Id_Empleado);
                    if(_FDescuento.Qr_BuscaDescuento.RecordCount > 0)then
                      begin
                        if(TableV_DescuentoTemp.RecordCount > 0)then
                          begin
                            TableV_DescuentoTemp.First;
                            while not TableV_DescuentoTemp.Eof do
                              begin
                                if(TableV_DescuentoTempEsNuevo.Value = -1)then
                                  begin
                                    _FDescuento.ModificaDescuento(TableV_DescuentoTempId_Descuento.Value,TableV_DescuentoTempEstado.Value,TableV_DescuentoTempDescripcion.AsString,
                                                                 TableV_DescuentoTempMontoDescuento.Value,0);
                                  end
                                else
                                if(TableV_DescuentoTempEsNuevo.Value = 1)then
                                  begin
                                    _FDescuento.InsertaDescuento(Id_Empleado,TableV_DescuentoTempEstado.Value,TableV_DescuentoTempDescripcion.AsString,
                                                             TableV_DescuentoTempMontoDescuento.Value,DateOf(Now),0);
                                  end;
                                TableV_DescuentoTemp.Next;
                              end;
                          end;
                      end
                    else
                    if(_FDescuento.Qr_BuscaDescuento.RecordCount = 0)then
                      begin
                        if(TableV_DescuentoTemp.RecordCount > 0)then
                          begin
                            TableV_DescuentoTemp.First;
                            while not TableV_DescuentoTemp.Eof do
                              begin
                                _FDescuento.InsertaDescuento(Id_Empleado,TableV_DescuentoTempEstado.Value,TableV_DescuentoTempDescripcion.AsString,
                                                             TableV_DescuentoTempMontoDescuento.Value,DateOf(Now),0);
                                TableV_DescuentoTemp.Next;
                              end;
                          end;
                      end;
                    _FDescuento.Free;
                   //fin guardar datos temporal en DB
                    if(CKB_Estado.Checked = False)and(IdEmpBanca > -1)then
                      begin
                        _FOpciones:=TFOpciones.Create(Self);
                        _FOpciones.LiberarBanca(_FOpciones.ObtenerIdBanca(NBancaMod));
                        _FOpciones.Free;
                      end;
                  end;
                    GB_2.Enabled:=False;
                    GB_1.Enabled:=False;
                    BBT_Guardar.Enabled:=False;
                    BBT_Limpiar.Enabled:=False;
                    _FEmpleados.Caption:='Empleados(Datos Generales)';
                    BBT_Guardar.Caption:='Guardar';
                    Id_Empleado:=0;
                    Opcion:=0;
                    IdEmpleadoDes:=0;
              end;
        end
      else
        begin
          EL_Apellidos.SetFocus;
        end;
    end;
end;

function TFEmpleados.ValidarCampos: Boolean;
begin
  //Result:=False;
  if(Trim(EL_Apellidos.Text) = '')then
    begin
      Result:=False;
      JvBalloonHint1.ActivateHint(EL_Apellidos, 'Ingrese el/los apellidos del empleado.', ikError, 'Error', 5000);
    end
  else
  if(Trim(EL_Nombre.Text) = '')then
    begin
      Result:=False;
      JvBalloonHint1.ActivateHint(EL_Nombre, 'Ingrese el/los nombres del empleado.', ikError, 'Error', 5000);
    end
  else
  if((RB_Masc.Checked = False)and(RB_Femen.Checked = False))then
    begin
      Result:=False;
      JvBalloonHint1.ActivateHint(RG_1, 'Seleccione el sexo.', ikError, 'Error', 5000);
    end
  else
  if(FueraFecha = False)then
    begin
      Result:=False;
      JvBalloonHint1.ActivateHint(DTP_Fecha_Ing, 'La fecha de inicio de servicio es inferior a la fecha actual, ingrese una fecha valida.', ikError, 'Error', 5000);
    end
  else
  if(ECal_SuleldoBruto.Value <= 0)then
    begin
      Result:=False;
      JvBalloonHint1.ActivateHint(ECal_SuleldoBruto, 'Ingrese el sueldo.', ikError, 'Error', 5000);
    end
  else
  if((Trim(ECal_1.Text) <> '')and(Trim(EL_1.Text) = '')) then
    begin
      Result:=False;
      JvBalloonHint1.ActivateHint(EL_1, 'Ingrese una descripci�n para el incentivo.', ikError, 'Error', 5000);
    end
  else
  if((Trim(ECal_1.Text) = '')and(Trim(EL_1.Text) <> '')) then
    begin
      Result:=False;
      JvBalloonHint1.ActivateHint(ECal_1, 'Ingres� una descripci�n para el incentivo pero no'+#13+'el monto del incentivo, ingrese el monto del incentivo para continuar o'+#13+
      'elimine la descripci�n del incentivo.', ikError, 'Error', 5000);
    end
  else
  if(CBB_IntervaloPago.ItemIndex = -1)then
    begin
      Result:=False;
      JvBalloonHint1.ActivateHint(CBB_IntervaloPago, 'Seleccione el intervalo de pago.', ikError, 'Error', 5000);
    end
  else
    begin
      Result:=True;
    end;
end;

procedure TFEmpleados.BBT_CrearNuevoClick(Sender: TObject);
begin
  GB_2.Enabled:=True;
  GB_1.Enabled:=True;
  BBT_Guardar.Enabled:=True;
  BBT_Limpiar.Enabled:=True;
  Opcion:=0;
  Id_Empleado:=0;
  LimpiarCampos;
  _FEmpleados.Caption:='Empleados(Registrar Nuevo)';
  BBT_Guardar.Caption:='&Guardar';
  TableV_DescuentoTemp.Clear;
end;

procedure TFEmpleados.ECal_SuleldoBrutoExit(Sender: TObject);
begin
  ECal_SueldoNeto.Text:=CalculaSalarioNeto(ECal_SuleldoBruto.Text,ECal_Descuentos.Text,ECal_1.Value);
end;

procedure TFEmpleados.ECal_DescuentosExit(Sender: TObject);
begin
  ECal_SueldoNeto.Text:=CalculaSalarioNeto(ECal_SuleldoBruto.Text,ECal_Descuentos.Text,ECal_1.Value);
end;

procedure TFEmpleados.BBT_BuscarClick(Sender: TObject);
begin
  try
//    HK_Empleados.Active:=False;
    EnviarA:='empleados';
    _FBuscaEmpleado:=TFBuscaEmpleado.Create(Self);
    _FBuscaEmpleado.BBT_CrearNEmpleado.Enabled:=False;
   { if(BanderaCrearEmpleado = True)then
      begin
        _FBuscaEmpleado.BBT_CrearNEmpleado.Enabled:=False;
      end;}
    //Self.Hide;
    _FBuscaEmpleado.ShowModal;

  finally
    _FBuscaEmpleado.Free;
{    if(BanderaCrearEmpleado = True)then
      begin
        //Self.Show;
//        HK_Empleados.Active:=True;
      end
    else
      begin
        _FBuscaEmpleado.Free;
        BanderaCrearEmpleado:=False;
//        HK_Empleados.Active:=True;
      end;                             }
  end;
end;

function TFEmpleados.ValidaCedulaExiste(NCedula: string; NM:Integer): Boolean;
begin
  Qr_BuscaCedula:=TADOQuery.Create(Self);
  with Qr_BuscaCedula do
    begin
      Connection:=ControlCuentasBancarias.Coneccion_1;
      Close;
      SQL.Clear;
      SQL.Add('Select Id_empleado, cedula from empleados where cedula = '+QuotedStr(NCedula));
      Open;
    end;
  if NM = 0 then
    begin
      if(Qr_BuscaCedula.RecordCount > 0)and(Trim(EM_Cedula.Text) <> '')then
        begin
          Result:=False;
          JvBalloonHint1.ActivateHint(EM_Cedula,'El n�mero de c�dula ingresado ya existe para otro empleado.',ikError,'Error',5000);
        end
      else
        begin
          Result:=True;
        end;
    end
  else
  if NM = 1 then
    begin
      if (Qr_BuscaCedula.RecordCount = 0)or(Qr_BuscaCedula.FieldByName('Id_empleado').AsInteger = Id_Empleado)or(Trim(EM_Cedula.Text) = '')then
        begin
          Result:=True;
        end
      else
     // ifthen
        begin
          JvBalloonHint1.ActivateHint(EM_Cedula,'El n�mero de c�dula ingresado ya existe para otro empleado.',ikError,'Error',5000);
          Result:=False;
        end;
    end;
  Qr_BuscaCedula.Free;
end;

procedure TFEmpleados.ModificaEmpleado(Id_empleadoMod: Integer; cedula,
  apellidos, nombres, apodo, direccion, telefono, telefonoMovil: string;
  fechaNacimiento: TDateTime; sexo: string; fechaIngreso: TDateTime;
  salarioBruto: Double; fechaCreado: TDateTime;
  intervaloPago: string; tipoEmpleado, estado:Integer; MontoIncentivo:Double;
  DescripcionIncentivo:string);
begin
  try
    Qr_ModificaEmpleado:=TADOQuery.Create(Self);
    with Qr_ModificaEmpleado do
      begin
        Connection:=ControlCuentasBancarias.Coneccion_1;
        Close;
        SQL.Clear;
        SQL.Add('update empleados set cedula = :p0 , apellidos = :p1, nombres = :p2, apodo = :p3, direccion = :p4,'+
        'telefono = :p5, telefonoMovil = :p6, fechaNacimiento = :p7, sexo = :p8, fechaIngreso = :p9, salarioBruto = :p10,'+
        'fechaCreado = :p11, intervaloPago = :p12, estado = :p13,  tipoEmpleado = :p14, montoIncentivo = :p15, descripcionIncentivo = :p16');
        SQL.Add('where id_empleado = :p17' );
        Parameters[0].Value:=cedula;
        Parameters[1].Value:=apellidos;
        Parameters[2].Value:=nombres;
        Parameters[3].Value:=apodo;
        Parameters[4].Value:=direccion;
        Parameters[5].Value:=telefono;
        Parameters[6].Value:=telefonoMovil;
        Parameters[7].Value:=fechaNacimiento;
        Parameters[8].Value:=sexo;
        Parameters[9].Value:=fechaIngreso;
        Parameters[10].Value:=salarioBruto;
        Parameters[11].Value:=fechaCreado;
        Parameters[12].Value:=intervaloPago;
        Parameters[13].Value:=estado;
        Parameters[14].Value:=tipoEmpleado;
        Parameters[15].Value:=MontoIncentivo;
        Parameters[16].Value:=DescripcionIncentivo;
        Parameters[17].Value:=Id_empleadoMod;
        //Parameters[16].Value:=
        ExecSQL;
        Free;
      end;
    MessageDlg('Datos modificados con �xito.',mtInformation,[mbOK],0);
  except
    MessageBox(0,'Se produjo un error al intentar almacenar la informaci�n, contacte con el administrador del sistema.','Informaci�n',0);
  end;
end;

function TFEmpleados.ValidaNombre(Apellidos, Nombres: string; NM:Integer): Boolean;
begin
  Qr_BuscaNombre:=TADOQuery.Create(Self);
  with Qr_BuscaNombre do
    begin
      Connection:=ControlCuentasBancarias.Coneccion_1;
      Close;
      SQL.Clear;
      SQL.Add('select * from empleados where apellidos = '+QuotedStr(Apellidos)+' and nombres = '+QuotedStr(Nombres));
      Open;
    end;
  if NM = 0 then
    begin
      if Qr_BuscaNombre.RecordCount > 0 then
        begin
          Result:=False;
          MessageBox(0,'Existe un empleado con este nombre.','Informaci�n',0);
        end
      else
        begin
          Result:=True;
        end;
    end
  else
  if NM = 1 then
    begin
      if (Qr_BuscaNombre.RecordCount = 0)or(Qr_BuscaNombre.FieldByName('Id_empleado').AsInteger = Id_Empleado) then
        begin
          Result:=True;
        end
      else
        begin
          Result:=False;
          MessageBox(0,'Existe un empleado con este nombre.','Informaci�n',0);
        end;
    end;
  Qr_BuscaNombre.Free;
end;

function TFEmpleados.BuscaNombreEmpleado(Id_empleado: Integer): string;
begin
  Qr_BuscaNEmpleado:=TADOQuery.Create(Self);
  with Qr_BuscaNEmpleado do
    begin
      Connection:=ControlCuentasBancarias.Coneccion_1;
      Close;
      SQL.Clear;
      SQL.Add('select nombres, apellidos, apodo from empleados');
      SQL.Add('where id_empleado = :p0;');
      Parameters[0].Value:=Id_Empleado;
      Open;
    end;
  Result:=Qr_BuscaNEmpleado.fieldByName('nombres').AsString+' '+Qr_BuscaNEmpleado.fieldByName('apellidos').AsString+
              ' ('+Qr_BuscaNEmpleado.fieldByName('apodo').AsString+')';
  Qr_BuscaNEmpleado.Free;
end;



procedure TFEmpleados.EL_ApellidosKeyPress(Sender: TObject; var Key: Char);
begin
  if(Key = #13)then
    begin
      EL_Nombre.SetFocus;
    end;
end;

procedure TFEmpleados.EL_NombreKeyPress(Sender: TObject; var Key: Char);
begin
  if(Key = #13)then
    begin
      EM_Cedula.SetFocus;
    end;
end;

procedure TFEmpleados.EM_CedulaKeyPress(Sender: TObject; var Key: Char);
begin
  if(Key = #13)then
    begin
      EL_Apodo.SetFocus;
    end;
end;

procedure TFEmpleados.EL_DireccionKeyPress(Sender: TObject; var Key: Char);
begin
  if(Key = #13)then
    begin
      EM_Telefono.SetFocus;
    end;
end;

procedure TFEmpleados.EM_TelefonoKeyPress(Sender: TObject; var Key: Char);
begin
  if(Key = #13)then
    begin
      EM_Flota.SetFocus;
    end;
end;

procedure TFEmpleados.EM_FlotaKeyPress(Sender: TObject; var Key: Char);
begin
  if(Key = #13)then
    begin
      DTP_Fecha_Nac.SetFocus;
    end;
end;

procedure TFEmpleados.EL_ApodoKeyPress(Sender: TObject; var Key: Char);
begin
  if(Key = #13)then
    begin
      EL_Direccion.SetFocus;
    end;
end;

procedure TFEmpleados.FormClose(Sender: TObject; var Action: TCloseAction);
begin
{  if(CerrarFEmpleado = false)then

  else
    begin
      EnviarA:='bancas';
      Action:=caFree
    end; }
end;

procedure TFEmpleados.BBT_SalirClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFEmpleados.SBT_AgregarDescuentosClick(Sender: TObject);
begin
  if(Trim(EL_Apellidos.Text) <> '')and(Trim(EL_Nombre.Text) <> '')then
    begin
      try
//        HK_Empleados.Active:=False;
        DescuentoActivo:=True;
        _FDescuento:=TFDescuento.Create(Self);
        DescuentoTemp:=True;
        if(TableV_DescuentoTemp.RecordCount > 0)then
          begin
            TableV_DescuentoTemp.First;
            while not TableV_DescuentoTemp.Eof do
              begin
                _FDescuento.TableV_Descuentos.Append;
                _FDescuento.TableV_DescuentosId_Descuento.Value:=TableV_DescuentoTempId_Descuento.Value;
                _FDescuento.TableV_DescuentosId_Empleado.Value:=TableV_DescuentoTempId_Empleado.Value;
                _FDescuento.TableV_DescuentosmontoDescuento.Value:=TableV_DescuentoTempMontoDescuento.Value;
                _FDescuento.TableV_Descuentosdescripcion.Value:=TableV_DescuentoTempDescripcion.AsString;
                _FDescuento.TableV_Descuentosestado.Value:=TableV_DescuentoTempEstado.Value;
                _FDescuento.TableV_DescuentosEsNuevo.Value:=TableV_DescuentoTempEsNuevo.Value;
                _FDescuento.TableV_Descuentos.Post;
                TableV_DescuentoTemp.Next;
              end;
          end;
        _FDescuento.ShowModal;
      finally
        _FDescuento.Free;
        DescuentoTemp:=False;
        DescuentoActivo:=False;
//        HK_Empleados.Active:=True;
      end;
    end
  else
    begin
      MessageDlg('Para asignar descuentos:'+#13+'> Ingrese los datos del empleado o'+#13+'> Seleccionar un empleado para modificarlo.',mtInformation,[mbOK],0);
    end;
end;

function TFEmpleados.ObtnerMontoDescuento: Double;
begin
  Result:=0;
  TableV_DescuentoTemp.First;
  while not TableV_DescuentoTemp.Eof do
    begin
      if(TableV_DescuentoTempEstado.Value = 1)then
        begin
          Result:=Result+TableV_DescuentoTempMontoDescuento.Value;
        end;
      TableV_DescuentoTemp.Next;
    end;
end;

procedure TFEmpleados.ECal_1KeyPress(Sender: TObject; var Key: Char);
begin
  if(Key = #13)then
    begin
      if(Trim(ECal_1.Text) <> '')then
        EL_1.SetFocus
      else
        ECal_SuleldoBruto.SetFocus;

    end;
end;

procedure TFEmpleados.ECal_1Exit(Sender: TObject);
begin
  ECal_SueldoNeto.Text:=CalculaSalarioNeto(ECal_SuleldoBruto.Text,ECal_Descuentos.Text,ECal_1.Value);
end;

procedure TFEmpleados.EL_1KeyPress(Sender: TObject; var Key: Char);
begin
  if(Key = #13)then
    ECal_SuleldoBruto.SetFocus;
end;

procedure TFEmpleados.RB_MascKeyPress(Sender: TObject; var Key: Char);
begin
  if(Key = #13)then
    CBB_TipoEmpleado.SetFocus;
end;

procedure TFEmpleados.RB_FemenKeyPress(Sender: TObject; var Key: Char);
begin
  if(Key = #13)then
    CBB_TipoEmpleado.SetFocus;
end;

procedure TFEmpleados.CBB_TipoEmpleadoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if(Key = #13)then
    DTP_Fecha_Ing.SetFocus;
end;

procedure TFEmpleados.CBB_IntervaloPagoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if(Key = #13)then
    BBT_Guardar.SetFocus;
end;

procedure TFEmpleados.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if(Key = #27)then
    Self.Close;
end;

procedure TFEmpleados.act1Execute(Sender: TObject);
begin
  Self.Close;
end;

end.
