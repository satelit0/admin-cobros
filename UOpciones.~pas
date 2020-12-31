unit UOpciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, JvExDBGrids, JvDBGrid, ExtCtrls, DBCtrls,
  JvDBControls, DB, JvDataSource, StdCtrls, ComCtrls, JvExStdCtrls,
  JvScrollBar, Mask, JvExMask, JvSpin, JvToolEdit, JvBaseEdits,
  JvExComCtrls, JvDateTimePicker, Buttons, Menus,ADODB, DateUtils,
  JvMaskEdit, JvMenus, DBClient, MemDS, VirtualTable, JvExControls,
  JvGradient, JvGammaPanel, JvComponentBase, JvBalloonHint, JvAppHotKey,
  JvGroupBox;

type
  TFOpciones = class(TForm)
    PageControl1: TPageControl;
    TS_Bancos: TTabSheet;
    DS_Bancos: TJvDataSource;
    DS_Cuentas: TJvDataSource;
    GB_1: TGroupBox;
    GB_2: TGroupBox;
    DBNV_1: TJvDBNavigator;
    DBGrid_Bancos: TJvDBGrid;
    GB_3: TGroupBox;
    DBNV_2: TJvDBNavigator;
    DBGrid_Cuentas: TJvDBGrid;
    TS_Bancas: TTabSheet;
    GB_4: TGroupBox;
    EL_DireccionBanca: TLabeledEdit;
    SE_NumeroBanca: TJvSpinEdit;
    LB_1: TLabel;
    SE_NumeroTurno: TJvSpinEdit;
    Label2: TLabel;
    GB_5: TGroupBox;
    DBGrid_Bancas: TJvDBGrid;
    DBNV_Bancas: TJvDBNavigator;
    DS_Bancas: TJvDataSource;
    BBT_Nuevo: TBitBtn;
    BBT_EliminarCuenta: TBitBtn;
    BBT_Salir: TBitBtn;
    GB_6: TGroupBox;
    EL_BuscarBanco: TLabeledEdit;
    BBT_BuscarBanco: TBitBtn;
    LB_2: TLabel;
    LB_3: TLabel;
    LB_4: TLabel;
    LB_5: TLabel;
    LB_6: TLabel;
    LB_7: TLabel;
    LB_8: TLabel;
    LB_9: TLabel;
    DBLB_NombreBanco: TDBText;
    DBLB_DescripcionCuenta: TDBText;
    DBLB_Cuenta: TDBText;
    PM_Cuentas: TPopupMenu;
    MM_EliminarCuenta: TMenuItem;
    LB_10: TLabel;
    BBT_AgregarCuenta: TBitBtn;
    DTP_FechaOPeracion: TJvDateTimePicker;
    LB_13: TLabel;
    Qr_BuscaBanca: TADOQuery;
    GB_7: TGroupBox;
    BBT_Guardar: TBitBtn;
    BBT_EliminarBanca: TBitBtn;
    BBT_Limpiar: TBitBtn;
    BBT_BuscarBanca: TBitBtn;
    LB_14: TLabel;
    EM_BuscaBanca: TJvMaskEdit;
    PM_Bancas: TJvPopupMenu;
    MM_ModificarBanca1: TMenuItem;
    MM_N1: TMenuItem;
    MM_Seleccionar1: TMenuItem;
    E_EmpleadoResponsable: TEdit;
    SBT_BuscaEmpleado: TSpeedButton;
    BBT_NuevaBanca: TBitBtn;
    BBT_SalirBancas: TBitBtn;
    Qr_BuscarBancos: TADOQuery;
    PM_Bancos: TJvPopupMenu;
    MM_ModificarBanco: TMenuItem;
    MM_N2: TMenuItem;
    MM_EliminarBanco: TMenuItem;
    Qr_BuscarBancosId_Banco: TAutoIncField;
    Qr_BuscarBancosNombreBanco: TWideStringField;
    Qr_BuscarBancosDescripcionCuenta: TWideStringField;
    Qr_BuscarBancosFecha: TDateTimeField;
    Qr_BuscaCuentaBanco: TADOQuery;
    MM_N3: TMenuItem;
    MM_ModificarCuenta: TMenuItem;
    Qr_BuscaCuentaBancoId_CuentaBancaria: TAutoIncField;
    Qr_BuscaCuentaBancoId_Banco_cuentas: TIntegerField;
    Qr_BuscaCuentaBancoCuenta: TWideStringField;
    Qr_BuscaCuentaBancoTipoCuenta: TIntegerField;
    Qr_BuscaCuentaBancofecha: TDateTimeField;
    TS_Veneficiarios: TTabSheet;
    GB_8: TGroupBox;
    EL_1: TLabeledEdit;
    GB_9: TGroupBox;
    EL_2: TLabeledEdit;
    ECal_1: TJvCalcEdit;
    ECal_2: TJvCalcEdit;
    LB_11: TLabel;
    LB_16: TLabel;
    BBT_AplicarPropietario: TBitBtn;
    BBT_EditaPropietario: TBitBtn;
    BBT_EditaConsorcio: TBitBtn;
    BBT_AplicarConsorcio: TBitBtn;
    LB_17: TLabel;
    TS_CambioBancaEmpleado: TTabSheet;
    Qr_DetallesCuentaBanco: TADOQuery;
    ECal_3: TJvCalcEdit;
    LB_18: TLabel;
    LB_19: TLabel;
    LB_20: TLabel;
    LB_21: TLabel;
    LB_23: TLabel;
    LV_1: TListView;
    BBT_Agregar: TBitBtn;
    BBT_Insertar: TBitBtn;
    TableV_NBancas: TVirtualTable;
    DS_NBancas: TDataSource;
    LB_22: TLabel;
    LB_24: TLabel;
    LB_25: TLabel;
    SBT_Refrescar: TSpeedButton;
    BBT_SalirBancasEmp: TBitBtn;
    BBT_AplicarBancasEmp: TBitBtn;
    Qr_bancasEmp: TADOQuery;
    TableV_NBancasIndice: TAutoIncField;
    TableV_NBancasNBancas: TStringField;
    LV_2: TListView;
    LB_26: TLabel;
    DBGrid_1: TJvDBGrid;
    Qr_bancasEmpnombres: TWideStringField;
    Qr_bancasEmpapellidos: TWideStringField;
    Qr_bancasEmpid_empleado: TAutoIncField;
    Qr_bancasEmpid_banca: TAutoIncField;
    Qr_bancasEmpnumero_banca: TIntegerField;
    Qr_bancasEmpestado: TSmallintField;
    GB_10: TGroupBox;
    DS_Empleado: TDataSource;
    DBGRID_2: TDBGrid;
    Qr_BuscaBancaId_Banca: TAutoIncField;
    Qr_BuscaBancaNumero_Banca: TIntegerField;
    Qr_BuscaBancaCantidadTurnos: TIntegerField;
    Qr_BuscaBancaId_Empleado_Banca: TIntegerField;
    Qr_BuscaBancaDireccion_Banca: TWideStringField;
    Qr_BuscaBancaNombre_Propietario: TWideStringField;
    Qr_BuscaBancaMonto_Alquiler: TFloatField;
    Qr_BuscaBancaDia_Pago_Alquiler: TIntegerField;
    Qr_BuscaBancaFecha_Incio_Operacion: TDateTimeField;
    Qr_BuscaBancaFecha: TDateTimeField;
    Qr_BuscaBancaEstado: TSmallintField;
    Qr_EmpleadosID: TADOQuery;
    Qr_EmpleadosIDid_empleado: TAutoIncField;
    Qr_EmpleadosID_nombre: TWideStringField;
    Qr_EmpleadosIDapodo: TWideStringField;
    JvBalloonHint1: TJvBalloonHint;
    HK_1: TJvApplicationHotKey;
    JvGroupBox1: TJvGroupBox;
    EL_DuenoLocal: TLabeledEdit;
    ECal_Alquiler: TJvCalcEdit;
    CBB_FechaPagoAlquiler: TComboBox;
    LB_27: TLabel;
    LB_12: TLabel;
    HK_2: TJvApplicationHotKey;
    EL_3: TLabeledEdit;
    SBT_1: TSpeedButton;
    procedure BBT_SalirClick(Sender: TObject);
    procedure BBT_NuevoClick(Sender: TObject);
    procedure BBT_AgregarCuentaClick(Sender: TObject);
    procedure BuscaID_Apodo;
    procedure BBT_GuardarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BBT_BuscarBancaClick(Sender: TObject);
    procedure EM_BuscaBancaKeyPress(Sender: TObject; var Key: Char);
    procedure BBT_LimpiarClick(Sender: TObject);
    procedure DBGrid_BancasDblClick(Sender: TObject);
    procedure MM_ModificarBanca1Click(Sender: TObject);
    procedure MM_Seleccionar1Click(Sender: TObject);
    procedure SBT_BuscaEmpleadoClick(Sender: TObject);
    procedure BBT_NuevaBancaClick(Sender: TObject);
    procedure TS_BancasShow(Sender: TObject);
    procedure TS_BancosShow(Sender: TObject);
    procedure BBT_SalirBancasClick(Sender: TObject);
    procedure BBT_BuscarBancoClick(Sender: TObject);
    procedure EL_BuscarBancoKeyPress(Sender: TObject; var Key: Char);
    procedure MM_ModificarBancoClick(Sender: TObject);
    procedure DBNV_1Click(Sender: TObject; Button: TNavigateBtn);
    procedure MM_ModificarCuentaClick(Sender: TObject);
    procedure BBT_AplicarPropietarioClick(Sender: TObject);
    procedure BBT_AplicarConsorcioClick(Sender: TObject);
    procedure BBT_EditaPropietarioClick(Sender: TObject);
    procedure BBT_EditaConsorcioClick(Sender: TObject);
    procedure TS_VeneficiariosShow(Sender: TObject);
    procedure DBGrid_BancosKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid_CuentasCellClick(Column: TColumn);
    procedure DBGrid_CuentasKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SE_NumeroBancaKeyPress(Sender: TObject; var Key: Char);
    procedure SE_NumeroTurnoKeyPress(Sender: TObject; var Key: Char);
    procedure EL_DireccionBancaKeyPress(Sender: TObject; var Key: Char);
    procedure DTP_FechaOPeracionKeyPress(Sender: TObject; var Key: Char);
    procedure EL_DuenoLocalKeyPress(Sender: TObject; var Key: Char);
    procedure ECal_AlquilerKeyPress(Sender: TObject; var Key: Char);
    procedure SE_NumeroBancaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EL_DireccionBancaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EL_DuenoLocalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ECal_AlquilerKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LV_1Click(Sender: TObject);
    procedure BBT_AgregarClick(Sender: TObject);
    procedure LV_2DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure BBT_InsertarClick(Sender: TObject);
    procedure DBGRID_1CellClick(Column: TColumn);
    procedure LV_1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TS_CambioBancaEmpleadoShow(Sender: TObject);
    procedure TS_CambioBancaEmpleadoHide(Sender: TObject);
    procedure SBT_RefrescarClick(Sender: TObject);
    procedure BBT_AplicarBancasEmpClick(Sender: TObject);
    procedure BBT_SalirBancasEmpClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ECal_1Enter(Sender: TObject);
    procedure ECal_1Exit(Sender: TObject);
    procedure ECal_2Enter(Sender: TObject);
    procedure ECal_2Exit(Sender: TObject);
    procedure Qr_BuscaBancaEstadoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure DBGrid_BancasCellClick(Column: TColumn);
    procedure DBNV_BancasClick(Sender: TObject; Button: TNavigateBtn);
    procedure DBGrid_BancasKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid_BancosCellClick(Column: TColumn);
    procedure MM_EliminarCuentaClick(Sender: TObject);
    procedure HK_1HotKey(Sender: TObject);
    procedure HK_2HotKey(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SE_NumeroTurnoChange(Sender: TObject);
  private
    { Private declarations }
    procedure InsertaBanca(Numero_Banca,	CantidadTurnos, Id_Empleado_Banca:Integer; Direccion_Banca,
                           Nombre_Propietario:string; Monto_Alquiler:Double;	DiaPago_Alquiler:Integer;
                           Fecha_Incio_Operacion,	Fecha:TDateTime; Estado:Integer);
    procedure MostrarEmpleados;
    procedure ModificaBanca(Id_Banca, Numero_Banca,	CantidadTurnos, Id_Empleado_Banca:Integer; Direccion_Banca,
                           Nombre_Propietario:string; Monto_Alquiler:Double;	DiaPago_Alquiler:Integer;
                           Fecha_Incio_Operacion,	Fecha:TDateTime);
    procedure ModificaVeneficiario(IdVen:Integer;NombreVen:string;Veneficio:Double);
    procedure InsertaVeneficiario(NombreVen,NVenef:string;Veneficio:Double;fecha:TDateTime);
    function ValidaCamposProp:Boolean;
    function ValidaCamposCons:Boolean;
    procedure GuardaVenefBanca(NombreVen,Veneficiario:string; VeneficioXC:Double; Fehca:TDateTime; Opcion:Integer);
    procedure GuardaVenefCons(NombreVen,Veneficiario:string; VeneficioXC:Double; Fehca:TDateTime; Opcion:Integer);
    function LlenaCamposValida(Veneficiario:string):Boolean;
    procedure InsertaNBanca(NBanca, AutoLlenadoLibres:integer);
    procedure EliminaBanco(Id_Banco:Integer);
    procedure EliminaCuentaBanco(Id_CuentaBanco:Integer);
    public
    { Public declarations }
    procedure BuscaBanca(ValorBusqueda:string; Opcion:Integer);
    procedure LimpiarCampos;
    function ValidaCampos:Boolean;
    function ValidaExisteNumeroBanca(NBanca:string; Opcion:Integer):Boolean;
    function ValidaEmpAsignado(Nombre, Apellidos:string):Boolean;
    procedure LlenarCampos;
    function BuscaEmpleadoBanca(Id_empleado:Integer):string;
    procedure InsertaBanco(NombreBanco,	DescripcionCuenta:String; fecha:TDateTime);
    procedure BuscaBanco(NBanco:string; Mensaje:Integer);
    procedure BuscaCuentaBanco(Id_Cuenta:Integer);
    procedure LlenarCamposCuenta;
    function ValidaExisteVenefBan(NombreVen:string; Opcion:Integer):Boolean;
    function ValidaExisteVenefCons(NombreVen:string; Opcion:Integer):Boolean;
    function BuscaIdVenf(NombreVenef:string):Integer;
    function BuscaIdBanca(NBanca:string):Integer;
    function BuscaNombreVenef(IdVenef:Integer):string;
    function BuscaNumeroBanca(IdBanca:Integer):Integer;
    function BuscaDireccionBanca(NBanca:Integer):string;
    function BuscaTipoVenef(IdVenef:Integer):string;
    function ObtenerIdVenfXDescripcion(Descripcion:string):Integer;
    function BuscaXCientoVenef(IdVenef:Integer):Double;
    function BuscaXCientoVenefTipo(Tipo:string):Double;
    function BuscaNombreVenfXTipo(Tipo:string):string;
    procedure ActualizaEmpleadosBancas;
    function ObtenerIdBanca(NBanca:Integer):Integer;
    procedure IngresaBancasEmpleados;
    procedure AjustaXCVeneficiario(Valor:Double; IdVneficiario:Integer);
    procedure LiberarBanca(idBanca:Integer);
    function ValidaBalance(Id_CuentaBanco:Integer):Boolean;
    procedure IDsBancasLlenar(Fecha:TDateTime);
    function ObtenerNBancas(IdBanca:Integer):Integer;
    procedure ModificaDepositoBanco(Credito:Double; NumeroTransaccion:string; IdDetallesCuenta, SMensaje:Integer);
  end;

var
  FOpciones: TFOpciones;
  Qr_MostrarEmpleados:TADOQuery;
  Qr_BuscaId_Apodo:TADOQuery;
  Qr_InsertaBanca:TADOQuery;
  Id_empleadoBanca:Integer;
  Qr_BuscaNBancaExiste:TADOQuery;
  Id_BancaMod:Integer;
  OpcionEditar:Integer;
  Qr_ModificaBanca:TADOQuery;
  Qr_BuscaEmpleadoBanca:TADOQuery;
  Qr_InsertaCuentaBanco:TADOQuery;
  Id_bancoMod:Integer;
  NuevoBanco:Integer;
  ModifNCuenta:Integer; //Modificar el numero de cuenta salamente.
  EditarBC:Integer; //bandera que para marcar cual de los dos update sera utilizado.
  IdCuentaBanco:Integer;
  Qr_ModVen:TADOQuery;
  Qr_InsertaVen:TADOQuery;
  Qr_BuscaVenefExiste:TADOQuery;
  Qr_BuscaIdBanca, Qr_BuscaVenef:TADOQuery;

  OpcionCons,OpcionProp,idVenf:Integer;
  NuevoVenefBanca, NuevoVenefCons:Boolean;
  LVValor, IndiceSelec1, IndiceSelec2:string[3];
  NItems, indiceItems:Integer;
  ActivaApl, MensajeEliminaCuenta:Boolean;
  valorItems:string[3];
  IDsBancas:array[0..99] of Integer;
implementation

uses UPrincipal, UCuentasBancarias, UBuscaEmpleado, UEmpleados,
  UCreditoBanco;

{$R *.dfm}

procedure TFOpciones.BBT_SalirClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFOpciones.BBT_NuevoClick(Sender: TObject);
begin
  try
    ModifNCuenta:=0;
    _FCuentasBancarias:=TFCuentasBancarias.Create(Self);
    _FCuentasBancarias.Caption:='Crear Nuevo Banco';
    _FCuentasBancarias.ME_Cuenta.Visible:=True;
    _FCuentasBancarias.CBB_TipoCuenta.Visible:=True;
    //_FCuentasBancarias.EL_NombreBanco.Enabled:=True;
    //_FCuentasBancarias.EL_NombreBanco.SetFocus;
    _FCuentasBancarias.LB_1.Visible:=True;
    _FCuentasBancarias.LB_2.Visible:=True;
    _FCuentasBancarias.ShowModal;
  finally
    Id_bancoMod:=0;
    NuevoBanco:=0;
    ModifNCuenta:=0;
    OpcionEditar:=0;
    Id_bancoMod:=0;
    _FCuentasBancarias.Free;
  end;
end;

procedure TFOpciones.BBT_AgregarCuentaClick(Sender: TObject);
begin
  try
    NuevoBanco:=1;
    ModifNCuenta:=1;
    _FCuentasBancarias:=TFCuentasBancarias.Create(Self);
    _FCuentasBancarias.Caption:='Crear Cuenta Bancaria';
    _FCuentasBancarias.EL_NombreBanco.Text:=Qr_BuscarBancosNombreBanco.AsString;
    _FCuentasBancarias.EL_DescripcionCuenta.Text:=Qr_BuscarBancosDescripcionCuenta.AsString;
    _FCuentasBancarias.ME_Cuenta.Visible:=True;
    _FCuentasBancarias.CBB_TipoCuenta.Visible:=True;
    _FCuentasBancarias.LB_1.Visible:=True;
    _FCuentasBancarias.LB_2.Visible:=True;
    _FCuentasBancarias.EL_NombreBanco.Enabled:=False;
    _FCuentasBancarias.EL_DescripcionCuenta.Enabled:=False;
    _FCuentasBancarias.ShowModal;
  finally
    NuevoBanco:=0;
    ModifNCuenta:=0;
    OpcionEditar:=0;
    Id_bancoMod:=0;
    _FCuentasBancarias.Free;
  end;
end;

procedure TFOpciones.MostrarEmpleados;
begin
  Qr_MostrarEmpleados:=TADOQuery.Create(Self);
  with Qr_MostrarEmpleados do
    begin
      Connection:=ControlCuentasBancarias.Coneccion_1;
      Close;
      SQL.Clear;
      SQL.Add('select id_empleado, nombres, apellidos from empleados');
      Open;
    end;
  Qr_MostrarEmpleados.First;
  {CBB_Empleado.Items.Clear;
  for I := 0 to Qr_MostrarEmpleados.RecordCount-1 do
    begin
      CBB_Empleado.Items.Add(Qr_MostrarEmpleados.fieldByName('nombres').AsString+' '+Qr_MostrarEmpleados.fieldByName('apellidos').AsString);
      Id_E[i]:=Qr_MostrarEmpleados.fieldbyname('id_empleado').AsInteger;
      Qr_MostrarEmpleados.Next;
    end;  }
  Qr_MostrarEmpleados.Free;
end;

procedure TFOpciones.BuscaID_Apodo;
begin
  Qr_BuscaId_Apodo:=TADOQuery.Create(Self);
  with Qr_BuscaId_Apodo do
    begin
      Connection:=ControlCuentasBancarias.Coneccion_1;
      Close;
      SQL.Clear;
      SQL.Add('select id_empleado, apodo from empleados where ')
    end;
end;

procedure TFOpciones.InsertaBanca(Numero_Banca, CantidadTurnos,
  Id_Empleado_Banca: Integer; Direccion_Banca, Nombre_Propietario: string;
  Monto_Alquiler: Double; DiaPago_Alquiler:Integer; Fecha_Incio_Operacion,
  Fecha: TDateTime; Estado:Integer);
begin
  Qr_InsertaBanca:=TADOQuery.Create(Self);
  with Qr_InsertaBanca do
    begin
      Connection:=ControlCuentasBancarias.Coneccion_1;
      Close;
      SQL.Clear;
      SQL.Add('insert into bancas(Numero_Banca,	CantidadTurnos,	Id_Empleado_Banca,'+
              'Direccion_Banca,	Nombre_Propietario,	Monto_Alquiler, Dia_Pago_Alquiler,'+
              'Fecha_Incio_Operacion,	Fecha, estado)');
      SQL.Add('values(:p0, :p1, :p2, :p3, :p4, :p5, :p6, :p7, :p8, :p9 );');
      Parameters[0].Value:=Numero_Banca;
      Parameters[1].Value:=CantidadTurnos;
      Parameters[2].Value:=Id_Empleado_Banca;
      Parameters[3].Value:=Direccion_Banca;
      Parameters[4].Value:=Nombre_Propietario;
      Parameters[5].Value:=Monto_Alquiler;
      Parameters[6].Value:=DiaPago_Alquiler;
      Parameters[7].Value:=Fecha_Incio_Operacion;
      Parameters[8].Value:=Fecha;
      Parameters[9].Value:=Estado;
      ExecSQL;
      MessageDlg('Datos guardados con éxcito.',mtInformation,[mbOK],0);
    end;
end;

procedure TFOpciones.BBT_GuardarClick(Sender: TObject);
var
  id_emp, Estado:Integer;
begin
  if ValidaCampos = True then
    begin
      if ValidaExisteNumeroBanca(SE_NumeroBanca.Text,Opcion) = True then
        begin
          if(ValidaEmpAsignado(nombreEmp, apellidosEmp) = True)then
            begin
              if(Trim(E_EmpleadoResponsable.Text) = '')then
                begin
                  id_emp:=-1;
                  Estado:=0;
                end
              else
                begin
                  id_emp:=Id_empleadoBanca;
                  Estado:=1;
                end;
              if Opcion = 0 then
                begin
                  InsertaBanca(StrToInt(SE_NumeroBanca.Text),StrToInt(SE_NumeroTurno.Text),id_emp,
                                        EL_DireccionBanca.Text,EL_DuenoLocal.Text,ECal_Alquiler.Value,
                                        CBB_FechaPagoAlquiler.ItemIndex,DateOf(DTP_FechaOPeracion.DateTime),
                                        Now,Estado);
                  if(id_emp = -1)then
                    begin
                      InsertaNBanca(-1,1);
                    end;
                end
              else
              if Opcion = 1 then
                begin
                  ModificaBanca(Id_BancaMod,StrToInt(SE_NumeroBanca.Text),StrToInt(SE_NumeroTurno.Text),
                                id_emp,EL_DireccionBanca.Text,EL_DuenoLocal.Text,ECal_Alquiler.Value,
                                CBB_FechaPagoAlquiler.ItemIndex,DateOf(DTP_FechaOPeracion.DateTime),Now);
                end;
              Opcion:=0;
              Id_empleadoBanca:=0;
              BBT_Guardar.Caption:='Guardar';
              LimpiarCampos;
              //BuscaBanca('0',0);
              BBT_BuscarBancaClick(Self);
              BBT_Guardar.Enabled:=False;
              BBT_Limpiar.Enabled:=False;
              BBT_EliminarBanca.Enabled:=False;
              nombreEmp:='';
              apellidosEmp:='';
              Caption:='Opción - Puntos de Venta(Bancas).';
            end;
        end;

    end;
end;

procedure TFOpciones.BuscaBanca(ValorBusqueda: string; Opcion:Integer);
begin
  with Qr_BuscaBanca do
    begin
      Close;
      if(Trim(ValorBusqueda) = '')then
        begin
          //Parameters[0].Value:=StrToInt(ValorBusqueda);
          with Qr_BuscaBanca do
            begin
              Close;
              SQL.Clear;
              SQL.Add('select * from bancas as B where ((B.numero_Banca like :p0)and(B.estado <> -1))order by b.numero_banca;');
              Parameters[0].Value:='%'+''+'%';
            end;
        end
      else
      if(Trim(ValorBusqueda) <> '')then
        begin
          with Qr_BuscaBanca do
            begin
              Close;
              SQL.Clear;
              SQL.Add('select * from bancas as B where ((B.numero_Banca = :p0)and(B.estado <> -1))order by b.numero_banca;');
              Parameters[0].Value:=ValorBusqueda;
            end;   
          //Parameters[0].Value:='%'+''+'%';
          //Parameters[2].Value:=0;
        end;
          Open;

      if Qr_BuscaBanca.RecordCount > 0 then
        begin
          MM_ModificarBanca1.Enabled:=True;
          MM_Seleccionar1.Enabled:=True;
        end
      else
        begin
          MM_ModificarBanca1.Enabled:=False;
          MM_Seleccionar1.Enabled:=False;
        end;
    end;
end;

procedure TFOpciones.FormShow(Sender: TObject);
begin
  //BuscaBanca('0',0);
  BuscaBanco('',1);
end;

procedure TFOpciones.BBT_BuscarBancaClick(Sender: TObject);
begin
  BuscaBanca(EM_BuscaBanca.Text,1);
  DBGrid_BancasCellClick(nil);
end;

procedure TFOpciones.EM_BuscaBancaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      BBT_BuscarBancaClick(Self);
    end;
  if not (Key in['0'..'9',#8]) then
    begin
      Key := #0
    end;
end;

procedure TFOpciones.LimpiarCampos;
begin
  SE_NumeroBanca.Value:=0;
  SE_NumeroTurno.Value:=1;
  E_EmpleadoResponsable.Clear;
  DTP_FechaOPeracion.DateTime:=Now;
  EL_DireccionBanca.Clear;
  EL_DuenoLocal.Clear;
  ECal_Alquiler.Value:=0;
  CBB_FechaPagoAlquiler.ItemIndex:=29;

end;

procedure TFOpciones.BBT_LimpiarClick(Sender: TObject);
begin
  LimpiarCampos;
end;

function TFOpciones.ValidaCampos: Boolean;
var MensajeDLg:Integer;
begin
  LB_1.Font.Color:=clBlack;
  LB_10.Font.Color:=clBlack;
  if (SE_NumeroBanca.Value = 0) then
    begin
      Result:=False;
      SE_NumeroBanca.SetFocus;
      LB_1.Font.Color:=clRed;
      MessageDlg('Ingrese un número para la nueva banca'+#13+'el cual no exista como banca creada.',mtInformation,[mbOK],0);
    end
  else
  if (Trim(E_EmpleadoResponsable.Text) = '')and(SBT_BuscaEmpleado.Enabled = True) then
    begin
      MensajeDLg:=MessageDlg('No se ha asignado un empleado a la banca.'+#13+#13+'Desea continuar sin asignar un empleado a la banca?',mtConfirmation,[mbYes,mbNo],0);
      if(MensajeDLg = mrYes)then
        begin
          Result:=True;
        end
      else
        begin
          Result:=False;
          SBT_BuscaEmpleadoClick(nil);
        end;
    end
  else
    begin
      Result:=True;
      LB_1.Font.Color:=clBlack;
      LB_10.Font.Color:=clBlack;
    end;

end;

function TFOpciones.ValidaExisteNumeroBanca(NBanca: string; Opcion:Integer): Boolean;
begin
  Qr_BuscaNBancaExiste:=TADOQuery.Create(Self);
  with Qr_BuscaNBancaExiste do
    begin
      Connection:=ControlCuentasBancarias.Coneccion_1;
      Close;
      SQL.Clear;
      SQL.Add('select Id_Banca, Numero_Banca from Bancas where Numero_Banca = :p0');
      Parameters[0].Value:=NBanca;
      Open;
    end;
  if(Opcion = 0)then
    begin
      if Qr_BuscaNBancaExiste.RecordCount > 0 then
        begin
          Result:=False;
          MessageDlg('Existe una banca con este número.',mtInformation,[mbOK],0);
          SE_NumeroBanca.SetFocus;
        end
      else
        begin
          Result:=True;
        end;
    end
  else
  if(Opcion = 1)then
    begin
      if(Qr_BuscaNBancaExiste.FieldByName('Id_Banca').Value = Id_BancaMod)or(Qr_BuscaNBancaExiste.RecordCount = 0)then
        begin
          Result:=True;
        end
      else
        begin
          Result:=False;
          MessageDlg('Existe una banca con este número.',mtInformation,[mbOK],0);
          SE_NumeroBanca.SetFocus;
        end;
    end;
    Qr_BuscaNBancaExiste.Free;
end;

procedure TFOpciones.ModificaBanca(Id_Banca, Numero_Banca, CantidadTurnos,
  Id_Empleado_Banca: Integer; Direccion_Banca, Nombre_Propietario: string;
  Monto_Alquiler: Double; DiaPago_Alquiler: Integer; Fecha_Incio_Operacion,
  Fecha: TDateTime);
begin
  try
    Qr_ModificaBanca:=TADOQuery.Create(Self);
    with Qr_ModificaBanca do
      begin
        Connection:=ControlCuentasBancarias.Coneccion_1;
        Close;
        SQL.Clear;

        SQL.Add('update Bancas set 	Numero_Banca = :p0,	CantidadTurnos = :p1,	Id_Empleado_Banca = :p2, '+
                 'Direccion_Banca = :p3,	Nombre_Propietario = :p4,	Monto_Alquiler = :p5,	Dia_Pago_Alquiler = :p6,'+
                 'Fecha_Incio_Operacion = :p7,	Fecha = :p8 where Id_Banca = :p9');
        Parameters[0].Value:=Numero_Banca;
        Parameters[1].Value:=CantidadTurnos;
        Parameters[2].Value:=Id_empleadoBanca;
        Parameters[3].Value:=Direccion_Banca;
        Parameters[4].Value:=Nombre_Propietario;
        Parameters[5].Value:=Monto_Alquiler;
        Parameters[6].Value:=DiaPago_Alquiler;
        Parameters[7].Value:=Fecha_Incio_Operacion;
        Parameters[8].Value:=Fecha;
        Parameters[9].Value:=Id_Banca;

        ExecSQL;
        Free;
        MessageDlg('Datos modificados con éxito.',mtInformation,[mbOK],0);
      end;
  except
    MessageBox(0,'Se produjo un error al intentar almacenar la información, contacte con el administrador del sistema.','Información',0);
  end;
end;

procedure TFOpciones.DBGrid_BancasDblClick(Sender: TObject);
begin
  if Qr_BuscaBanca.RecordCount > 0 then
    begin
      LB_1.Font.Color:=clBlack;
      LB_10.Font.Color:=clBlack;
      Id_BancaMod:=Qr_BuscaBancaId_Banca.AsInteger;
      //nombreEmp:=Qr_BuscaBancanombres.AsString;
      //apellidosEmp:=Qr_BuscaBancaapellidos.AsString;
      LlenarCampos;
    end;
end;

procedure TFOpciones.MM_ModificarBanca1Click(Sender: TObject);
begin
  Opcion:=1;
  BBT_Guardar.Enabled:=True;
  BBT_Limpiar.Enabled:=True;
  BBT_EliminarBanca.Enabled:=True;
  BBT_Guardar.Caption:='Modificar';
  _FOpciones.Caption:='Opción - Puntos de Venta(Modificar o Eliminar)';
  DBGrid_BancasDblClick(Self);
  GB_4.Enabled:=True;
  SBT_BuscaEmpleado.Enabled:=False;
  SBT_BuscaEmpleado.Hint:='La búsqueda de empleados no esta habilitada en modo edición.'+#13+'Para cambiar el empleado de la banca';
end;

procedure TFOpciones.MM_Seleccionar1Click(Sender: TObject);
begin
  DBGrid_BancasDblClick(Self);
  GB_4.Enabled:=False;
  _FOpciones.Caption:='Opción - Puntos de Ventas(Datos Generales)';
end;

procedure TFOpciones.LlenarCampos;
begin
  Id_empleadoBanca:=Qr_BuscaBancaId_Empleado_Banca.AsInteger;
  SE_NumeroBanca.Value:=Qr_BuscaBancaNumero_Banca.AsInteger;
  SE_NumeroTurno.Value:=Qr_BuscaBancaCantidadTurnos.AsInteger;
  E_EmpleadoResponsable.Text:=BuscaEmpleadoBanca(Qr_BuscaBancaId_Empleado_Banca.AsInteger);
  DTP_FechaOPeracion.DateTime:=Qr_BuscaBancaFecha_Incio_Operacion.AsDateTime;
  EL_DireccionBanca.Text:=Qr_BuscaBancaDireccion_Banca.AsString;
  EL_DuenoLocal.Text:=Qr_BuscaBancaNombre_Propietario.AsString;
  ECal_Alquiler.Value:=Qr_BuscaBancaMonto_Alquiler.Value;
  CBB_FechaPagoAlquiler.ItemIndex:=Qr_BuscaBancaDia_Pago_Alquiler.AsInteger;
end;

function TFOpciones.BuscaEmpleadoBanca(Id_empleado: Integer): string;
begin
  Qr_BuscaEmpleadoBanca:=TADOQuery.Create(Self);
  with Qr_BuscaEmpleadoBanca do
    begin
      Connection:=ControlCuentasBancarias.Coneccion_1;
      Close;
      SQL.Clear;
      SQL.Add('select nombres, apellidos from empleados where id_empleado = :p0;');
      Parameters[0].Value:=Id_empleado;
      Open;
    end;
  Result:=Qr_BuscaEmpleadoBanca.fieldbyName('Nombres').AsString+' '+Qr_BuscaEmpleadoBanca.fieldbyName('apellidos').AsString;
end;

procedure TFOpciones.SBT_BuscaEmpleadoClick(Sender: TObject);
begin
  EnviarA:='bancas';
  HK_1.Active:=False;
  _FEmpleados:=TFEmpleados.Create(Self);
  _FBuscaEmpleado:=TFBuscaEmpleado.Create(Self);
  _FBuscaEmpleado.DBGrid_1.PopupMenu:=nil;
  _FBuscaEmpleado.ShowModal;
  //_FEmpleados.Free;
  _FBuscaEmpleado.Free;
  HK_1.Active:=True;
end;

procedure TFOpciones.BBT_NuevaBancaClick(Sender: TObject);
begin
  BBT_Guardar.Enabled:=True;
  BBT_Limpiar.Enabled:=True;
  GB_4.Enabled:=True;
  BBT_Guardar.Caption:='Guardar';
  _FOpciones.Caption:='Opción - Crear Nuevo Punto de Venta(Banca)';
  Opcion:=0;
  Id_empleadoBanca:=0;
  SBT_BuscaEmpleado.Enabled:=True;
  SBT_BuscaEmpleado.Hint:='Buscar Empleado';
end;

procedure TFOpciones.TS_BancasShow(Sender: TObject);
begin
  _FOpciones.Caption:='Opción - Bancas';
  BuscaBanca(EM_BuscaBanca.Text,1);
  DTP_FechaOPeracion.DateTime:=Now;
  LB_13.Caption:='(*) Fecha Inicio de'+#13+'Operación';
  InsertaNBanca(-1,1);
  DBGrid_BancasCellClick(nil);
  GB_4.Enabled:=False;
  BBT_LimpiarClick(Self);
  BBT_Guardar.Enabled:=False;
  BBT_EliminarBanca.Enabled:=False;
  BBT_Limpiar.Enabled:=False;
end;

procedure TFOpciones.TS_BancosShow(Sender: TObject);
begin
  _FOpciones.Caption:='Opción - Bancos';
  BuscaBanco('',1);
  DBGrid_BancosCellClick(nil);
end;

procedure TFOpciones.BBT_SalirBancasClick(Sender: TObject);
begin
  if(CerrarFEmpleado = false)then
    begin
     // _FEmpleados.Free;
      //_FBuscaEmpleado.Free;
    end;
  Self.Close;
end;

procedure TFOpciones.InsertaBanco(NombreBanco,
  DescripcionCuenta: String; fecha: TDateTime);
begin
  try
    Qr_InsertaCuentaBanco:=TADOQuery.Create(Self);
    with Qr_InsertaCuentaBanco do
      begin
        Connection:=ControlCuentasBancarias.Coneccion_1;
        Close;
        SQL.Clear;
        SQL.Add('insert into bancos (NombreBanco, DescripcionCuenta, fecha)');
        SQL.Add('values(:p0, :p1, :p2)');
        Parameters[0].Value:=NombreBanco;
        Parameters[1].Value:=DescripcionCuenta;
        Parameters[2].Value:=fecha;
        ExecSQL;
        Free;
        MessageBox(0,'Datos guardados con éxito.','Información',0);
        BuscaBanco('',1);
      end;
  except
    MessageBox(0,'Se produjo un error al intentar almacenar la información, contacte con el administrador del sistema.','Información',0);
  end;
end;

procedure TFOpciones.BuscaBanco(NBanco: string; Mensaje:Integer);
begin
  with Qr_BuscarBancos do
    begin
      Close;
      Parameters[0].Value:='%'+NBanco+'%';
      Open;
    end;
  if Qr_BuscarBancos.RecordCount = 0 then
    begin
      if Mensaje = 0 then
        begin
          MessageDlg('No existe banco con este nombre',mtInformation,[mbOK],0);
        end
      else
      if Mensaje = 1 then
        begin

        end;
    end;
  if Qr_BuscarBancos.RecordCount > 0 then
    begin
      MM_ModificarBanco.Enabled:=True;
      MM_EliminarBanco.Enabled:= True;
    end
  else
    begin
      MM_ModificarBanco.Enabled:=False;
      MM_EliminarBanco.Enabled:=False;
    end;
end;

procedure TFOpciones.BBT_BuscarBancoClick(Sender: TObject);
begin
  BuscaBanco(EL_BuscarBanco.Text,0);
  DBGrid_BancosCellClick(nil);
end;

procedure TFOpciones.EL_BuscarBancoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    begin
      BBT_BuscarBancoClick(Self);
    end;
end;

procedure TFOpciones.MM_ModificarBancoClick(Sender: TObject);
begin
  try
    OpcionEditar:=1;
    EditarBC:=0;
    Id_bancoMod:=Qr_BuscarBancosId_Banco.AsInteger;
    _FCuentasBancarias:=TFCuentasBancarias.Create(Self);
    _FCuentasBancarias.Caption:='Modificar Datos Cuenta Bancaria';
    _FCuentasBancarias.EL_NombreBanco.Text:=Qr_BuscarBancosNombreBanco.AsString;
    _FCuentasBancarias.EL_DescripcionCuenta.Text:=Qr_BuscarBancosDescripcionCuenta.AsString;
    _FCuentasBancarias.ME_Cuenta.Visible:=False;
    _FCuentasBancarias.CBB_TipoCuenta.Visible:=False;
    _FCuentasBancarias.LB_1.Visible:=False;
    _FCuentasBancarias.LB_2.Visible:=False;
    _FCuentasBancarias.ShowModal;
  finally
    Opcion:=0;
    Id_bancoMod:=0;
    OpcionEditar:=0;
    _FCuentasBancarias.Free;
  end;
end;

procedure TFOpciones.BuscaCuentaBanco(Id_Cuenta: Integer);
begin
  with Qr_BuscaCuentaBanco do
    begin
      Close;
      Parameters[0].Value:=Id_Cuenta;
      Open;
    end;
  if Qr_BuscaCuentaBanco.RecordCount > 0 then
    begin
      MM_ModificarCuenta.Enabled:=True;
      MM_EliminarCuenta.Enabled:=True;
    end
  else
    begin
      MM_ModificarCuenta.Enabled:=False;
      MM_EliminarCuenta.Enabled:=False;
    end;
end;

procedure TFOpciones.DBNV_1Click(Sender: TObject; Button: TNavigateBtn);
begin
  BuscaCuentaBanco(Qr_BuscarBancosId_Banco.AsInteger);
end;

procedure TFOpciones.MM_ModificarCuentaClick(Sender: TObject);
begin
  try
    EditarBC:=1;
    OpcionEditar:=1;
    ModifNCuenta:=1;
    _FCuentasBancarias:=TFCuentasBancarias.Create(Self);
    _FCuentasBancarias.Caption:='Modificar Cuenta Bancaria';
    _FCuentasBancarias.EL_NombreBanco.Text:=Qr_BuscarBancosNombreBanco.AsString;
    _FCuentasBancarias.EL_DescripcionCuenta.Text:=Qr_BuscarBancosDescripcionCuenta.AsString;
    _FCuentasBancarias.ME_Cuenta.Visible:=True;
    _FCuentasBancarias.CBB_TipoCuenta.Visible:=True;
    _FCuentasBancarias.LB_1.Visible:=True;
    _FCuentasBancarias.LB_2.Visible:=True;
    _FCuentasBancarias.EL_NombreBanco.Enabled:=False;
    _FCuentasBancarias.EL_DescripcionCuenta.Enabled:=False;
    LlenarCamposCuenta;
    _FCuentasBancarias.ShowModal;
  finally
    EditarBC:=0;
    OpcionEditar:=0;
    ModifNCuenta:=0;
    _FCuentasBancarias.Free;
  end;
end;

procedure TFOpciones.LlenarCamposCuenta;
begin
  _FCuentasBancarias.ME_Cuenta.Text:=Qr_BuscaCuentaBancoCuenta.AsString;
  _FCuentasBancarias.CBB_TipoCuenta.ItemIndex:=Qr_BuscaCuentaBancoTipoCuenta.AsInteger;
  IdCuentaBanco:=Qr_BuscaCuentaBancoId_CuentaBancaria.AsInteger;
  Id_bancoMod:=Qr_BuscaCuentaBancoId_CuentaBancaria.AsInteger;
end;

procedure TFOpciones.InsertaVeneficiario(NombreVen,NVenef: string;
  Veneficio: Double;fecha:TDateTime);
begin
  try
    Qr_InsertaVen:=TADOQuery.Create(Self);
    with Qr_InsertaVen do
      begin
        Connection:=ControlCuentasBancarias.Coneccion_1;
        Close;
        SQL.Clear;
        SQL.Add('insert into veneficiarios(nombreVenef,veneficioXC,nVeneficiario,fecha)');
        SQL.Add('values(:p0, :p1, :p2, :p3)');
        Parameters[0].Value:=NombreVen;
        Parameters[1].Value:=Veneficio;
        Parameters[2].Value:=NVenef;
        Parameters[3].Value:=fecha;
        ExecSQL;
        MessageDlg('Datos guardados con éxito.',mtInformation,[mbOK],0);
      end;
  finally
    Qr_InsertaVen.Free;
  end;
end;

procedure TFOpciones.ModificaVeneficiario(IdVen: Integer;
  NombreVen: string; Veneficio: Double);
begin
  try
    Qr_ModVen:=TADOQuery.Create(Self);
    with Qr_ModVen do
      begin
        Connection:=ControlCuentasBancarias.Coneccion_1;
        Close;
        SQL.Clear;
        SQL.Add('update veneficiarios set nombreVenef = :p0, veneficioXC = :p1');
        SQL.Add('where id_Veneficiario = :p2');
        Parameters[0].Value:=NombreVen;
        Parameters[1].Value:=Veneficio;
        Parameters[2].Value:=IdVen;
        ExecSQL;
        MessageDlg('Datos modificados con éxito.',mtInformation,[mbOK],0);
      end;
  finally
    Qr_ModVen.Free;
  end
end;



function TFOpciones.ValidaCamposCons: Boolean;
begin
  EL_2.EditLabel.Font.Color:=clBlack;
  LB_11.Font.Color:=clBlack;
  if(Trim(EL_2.Text) = '')then
    begin
      Result:=False;
      EL_2.SetFocus;
      EL_2.EditLabel.Font.Color:=clRed;
      MessageDlg('Debe ingresar el nombre del Propietario del consorcio o el nombre del Consorcio.',mtInformation,[mbOK],0);
    end
  else
  if(Trim(ECal_2.Text) = '')then
    begin
      Result:=False;
      LB_11.Font.Color:=clRed;
      ECal_2.SetFocus;
      MessageDlg('Debe ingresar el porcentaje para el  Propietario del Consorcio.',mtInformation,[mbOK],0);
    end
  else
    begin
      Result:=True;
    end;
end;

function TFOpciones.ValidaCamposProp: Boolean;
begin
  EL_1.EditLabel.Font.Color:=clBlack;
  LB_16.Font.Color:=clBlack;
  if(Trim(EL_1.Text) = '')then
    begin
      Result:=False;
      EL_1.SetFocus;
      EL_1.EditLabel.Font.Color:=clRed;
      MessageDlg('Debe ingresar el nombre del Propietario de la(s) banca(s).',mtInformation,[mbOK],0);
    end
  else
  if(Trim(ECal_1.Text) = '')then
    begin
      Result:=False;
      LB_16.Font.Color:=clRed;
      ECal_1.SetFocus;
      MessageBox(0,'Debe ingresar el porcentaje para el  Propietario de la(s) banca(s).','Información',0);
    end
  else
    begin
      Result:=True;
    end;
end;

procedure TFOpciones.GuardaVenefBanca(NombreVen, Veneficiario: string;
  VeneficioXC: Double; Fehca: TDateTime; Opcion:Integer);
begin
  if(ValidaCamposProp = True)then
    begin
      if(ValidaExisteVenefBan(NombreVen,Opcion) = True)then
        begin
          if(Opcion = 0)then
            begin
              InsertaVeneficiario(NombreVen,Veneficiario,VeneficioXC,Fehca);
              NuevoVenefBanca:=LlenaCamposValida('Banca(s), Propietario');
            end
          else
          if(Opcion = 1)then
            begin
              ModificaVeneficiario(idVenf,NombreVen,VeneficioXC);
              NuevoVenefBanca:=LlenaCamposValida('Banca(s), Propietario');  
            end;
          //NuevoVenefCons:=LlenaCamposValida('Consorcio, Propietario')
        end;
    end;
end;

function TFOpciones.ValidaExisteVenefBan(NombreVen: string; Opcion:Integer): Boolean;
var
  idvenefModif:Integer;
begin
  Qr_BuscaVenefExiste:=TADOQuery.Create(Self);
  with Qr_BuscaVenefExiste do
    begin
      Connection:=ControlCuentasBancarias.Coneccion_1;
      Close;
      SQL.Clear;
      SQL.Add('select * from veneficiarios where nombreVenef = :p0;');
      Parameters[0].Value:=NombreVen;
      Open;
      idvenefModif:=fieldByName('id_veneficiario').AsInteger;
    end;
  if(Opcion = 0)then
    begin
      if(Qr_BuscaVenefExiste.RecordCount > 0)then
        begin
          Result:=False;
          MessageDlg('Este nombre ya esta registrado en el sistema. Ingrese un nombre diferente para continuar.',mtInformation,[mbOK],0);
        end
      else
        begin
          Result:=True;
        end;
    end
  else
  if(Opcion = 1)then
    begin
      with Qr_BuscaVenefExiste do
        begin
          SQL.Clear;
          SQL.Add('select id_veneficiario from veneficiarios where nombreVenef =:p0;');
          Parameters[0].Value:=NombreVen;
          Open;
        end;
      if((Qr_BuscaVenefExiste.RecordCount = 0)or(idvenefModif = Qr_BuscaVenefExiste.FieldByName('id_veneficiario').AsInteger))then
        begin
          Result:=True;
        end
      else
        begin
          Result:=False;
          MessageDlg('Este nombre ya existe, verifique para continuar.',mtInformation,[mbOK],0);
        end;
    end;
  Qr_BuscaVenefExiste.Free;
end;

function TFOpciones.BuscaIdVenf(NombreVenef: string): Integer;
begin
  Qr_BuscaVenef:=TADOQuery.Create(Self);
  with Qr_BuscaVenef do
    begin
      Connection:=ControlCuentasBancarias.Coneccion_1;
      Close;
      SQL.Clear;
      SQL.Add('select id_veneficiario from veneficiarios where nombreVenef = :p0;');
      Parameters[0].Value:=NombreVenef;
      Open;
      Result:=fieldByName('id_veneficiario').AsInteger;
      Free;
    end;
end;

function TFOpciones.LlenaCamposValida(Veneficiario: string): Boolean;
begin
  Qr_BuscaVenef:=TADOQuery.Create(Self);
  with Qr_BuscaVenef do
    begin
      Connection:=ControlCuentasBancarias.Coneccion_1;
      Close;
      SQL.Clear;
      SQL.Add('select * from veneficiarios where NVeneficiario = :p0;');
      Parameters[0].Value:=Veneficiario;
      Open;
    end;
  if(Qr_BuscaVenef.RecordCount > 0)then
    begin
      if(Veneficiario = 'Banca(s), Propietario')then
        begin
          EL_1.Text:=Qr_BuscaVenef.fieldByName('NombreVenef').AsString;
          ECal_1.Text:=Qr_BuscaVenef.fieldByName('VeneficioXC').AsString;
          OpcionProp:=1;
          EL_1.Enabled:=False;
          ECal_1.Enabled:=False;
          BBT_AplicarPropietario.Enabled:=False;
          BBT_EditaPropietario.Enabled:=True;
          if(OpcionCons = 1)then
          _FOpciones.Caption:='Opción - Veneficiarios.';
        end
      else
      if(Veneficiario = 'Consorcio, Propietario')then
        begin
          EL_2.Text:=Qr_BuscaVenef.fieldByName('NombreVenef').AsString;
          ECal_2.Text:=Qr_BuscaVenef.fieldByName('VeneficioXC').AsString;
          OpcionCons:=1;
          EL_2.Enabled:=False;
          ECal_2.Enabled:=False;
          BBT_AplicarConsorcio.Enabled:=False;
          BBT_EditaConsorcio.Enabled:=True;
          if(OpcionProp = 1)then
          _FOpciones.Caption:='Opción - Veneficiarios.';
        end;
      Result:=True;
    end
  else
    begin
      if(Veneficiario = 'Banca(s), Propietario')then
        begin
          OpcionProp:=0;
          EL_1.Enabled:=True;
          ECal_1.Enabled:=True;
          BBT_AplicarPropietario.Enabled:=True;
          BBT_EditaPropietario.Enabled:=False;
          _FOpciones.Caption:='Opción - Crear Veneficiario.';
          EL_1.SetFocus;
        end
      else
      if(Veneficiario = 'Consorcio, Propietario')then
        begin
          OpcionCons:=0;
          EL_2.Enabled:=True;
          ECal_2.Enabled:=True;
          BBT_AplicarConsorcio.Enabled:=True;
          BBT_EditaConsorcio.Enabled:=False;
          _FOpciones.Caption:='Opción - Crear Veneficiario.';
          if(OpcionProp = 1)then
          EL_2.SetFocus;
        end;
      Result:=False;
    end;
end;

procedure TFOpciones.BBT_AplicarPropietarioClick(Sender: TObject);
begin
  if(NuevoVenefBanca = False)then
    begin
      GuardaVenefBanca(EL_1.Text,'Banca(s), Propietario',ECal_1.Value,Now,OpcionProp);
    end
  else
    begin
      GuardaVenefBanca(EL_1.Text,'Banca(s), Propietario',ECal_1.Value,Now,OpcionProp);
      AjustaXCVeneficiario(ECal_2.Value,ObtenerIdVenfXDescripcion('Consorcio, Propietario'));
    end;
end;

procedure TFOpciones.BBT_AplicarConsorcioClick(Sender: TObject);
begin
  if(NuevoVenefCons = False)then
    begin
      GuardaVenefCons(EL_2.Text,'Consorcio, Propietario',ECal_2.Value,Now,OpcionCons);
    end
  else
    begin
      GuardaVenefCons(EL_2.Text,'Consorcio, Propietario',ECal_2.Value,Now,OpcionCons);
      AjustaXCVeneficiario(ECal_1.Value,ObtenerIdVenfXDescripcion('Banca(s), Propietario'));
    end;
end;

procedure TFOpciones.BBT_EditaPropietarioClick(Sender: TObject);
begin
  idVenf:=ObtenerIdVenfXDescripcion('Banca(s), Propietario');
  OpcionProp:=1;
  BBT_AplicarPropietario.Enabled:=True;
  EL_1.Enabled:=True;
  ECal_1.Enabled:=True;
  _FOpciones.Caption:='Opción - Modificar Datos Propietario Banca(s).';
end;

procedure TFOpciones.BBT_EditaConsorcioClick(Sender: TObject);
begin
  idVenf:=ObtenerIdVenfXDescripcion('Consorcio, Propietario');
  //OpcionCons:=1;
  BBT_AplicarConsorcio.Enabled:=True;
  EL_2.Enabled:=True;
  ECal_2.Enabled:=True;
  _FOpciones.Caption:='Opción - Modificar Propietario Consorcio o Nombre Consorcio.';
end;

procedure TFOpciones.TS_VeneficiariosShow(Sender: TObject);
begin
  NuevoVenefBanca:=LlenaCamposValida('Banca(s), Propietario');
  NuevoVenefCons:=LlenaCamposValida('Consorcio, Propietario');
  Caption:='Opción - Veneficiarios';
end;

procedure TFOpciones.GuardaVenefCons(NombreVen, Veneficiario: string;
  VeneficioXC: Double; Fehca: TDateTime; Opcion: Integer);
begin
  if(ValidaCamposCons = True)then
    begin
      if(ValidaExisteVenefCons(NombreVen,Opcion) = True)then
        begin
          if(Opcion = 0)then
            begin
              InsertaVeneficiario(NombreVen,Veneficiario,VeneficioXC,Fehca);
              NuevoVenefCons:=LlenaCamposValida('Consorcio, Propietario');
            end
          else
          if(Opcion = 1)then
            begin
              ModificaVeneficiario(idVenf,NombreVen,VeneficioXC);
              NuevoVenefCons:=LlenaCamposValida('Consorcio, Propietario');
            end;
          //NuevoVenefBanca:=LlenaCamposValida('Banca(s), Propietario');
        end;
    end;
end;

function TFOpciones.ValidaExisteVenefCons(NombreVen: string;
  Opcion: Integer): Boolean;
var
  idvenefModif:Integer;
begin
  Qr_BuscaVenefExiste:=TADOQuery.Create(Self);
  with Qr_BuscaVenefExiste do
    begin
      Connection:=ControlCuentasBancarias.Coneccion_1;
      Close;
      SQL.Clear;
      SQL.Add('select * from veneficiarios where nombreVenef = :p0;');
      Parameters[0].Value:=NombreVen;
      Open;
      idvenefModif:=fieldByName('id_veneficiario').AsInteger;
    end;
  if(Opcion = 0)then
    begin
      if(Qr_BuscaVenefExiste.RecordCount > 0)then
        begin
          Result:=False;
          MessageDlg('Este nombre ya esta registrado en el sistema. Ingrese un nombre diferente para continuar.',mtInformation,[mbOK],0);
        end
      else
        begin
          Result:=True;
        end;
    end
  else
  if(Opcion = 1)then
    begin
      with Qr_BuscaVenefExiste do
        begin
          SQL.Clear;
          SQL.Add('select id_veneficiario from veneficiarios where nombreVenef =:p0;');
          Parameters[0].Value:=NombreVen;
          Open;
        end;
      if((Qr_BuscaVenefExiste.RecordCount = 0)or(idvenefModif = Qr_BuscaVenefExiste.FieldByName('id_veneficiario').AsInteger))then
        begin
          Result:=True;
        end
      else
        begin
          Result:=False;
          MessageDlg('Este nombre ya existe, verifique para continuar.',mtInformation,[mbOK],0);
        end;
    end;
  Qr_BuscaVenefExiste.Free;
end;

function TFOpciones.BuscaIdBanca(NBanca: string): Integer;
begin
  Qr_BuscaIdBanca:=TADOQuery.Create(Self);
  with Qr_BuscaIdBanca do
    begin
      Connection:=ControlCuentasBancarias.Coneccion_1;
      Close;
      SQL.Clear;
      SQL.Add('select id_banca from bancas where numero_banca = :p0;');
      Parameters[0].Value:=StrToInt(NBanca);
      Open;
      Result:=fieldByName('id_banca').AsInteger;
      Free;
    end;
end;

function TFOpciones.BuscaNombreVenef(IdVenef: Integer): string;
var
  Qr_BuscaNVenef:TADOQuery;
begin
  Qr_BuscaNVenef:=TADOQuery.Create(Self);
  with Qr_BuscaNVenef do
    begin
      Connection:=ControlCuentasBancarias.Coneccion_1;
      Close;
      SQL.Clear;
      SQL.Add('select nombreVenef from veneficiarios where Id_Veneficiario = :p0;');
      Parameters[0].Value:=IdVenef;
      Open;
      Result:=Qr_BuscaNVenef.fieldByName('nombreVenef').AsString;
      Free;
    end;
end;

function TFOpciones.BuscaNumeroBanca(IdBanca: Integer): Integer;
var
  Qr_BuscaNumeroBanca:TADOQuery;
begin
  Qr_BuscaNumeroBanca:=TADOQuery.Create(Self);
  with Qr_BuscaNumeroBanca do
    begin
      Connection:=ControlCuentasBancarias.Coneccion_1;
      Close;
      SQL.Clear;
      SQL.Add('select numero_Banca from bancas where id_banca = :p0;');
      Parameters[0].Value:=IdBanca;
      Open;
      Result:=Qr_BuscaNumeroBanca.fieldByName('numero_Banca').AsInteger;
      Free;
    end;
end;

function TFOpciones.BuscaDireccionBanca(NBanca: Integer): string;
var
  Qr_DirBanca:TADOQuery;
begin
  Qr_DirBanca:=TADOQuery.Create(Self);
  with Qr_DirBanca do
    begin
      Connection:=ControlCuentasBancarias.Coneccion_1;
      Close;
      SQL.Clear;
      SQL.Add('select direccion_banca from bancas where numero_banca = :p0;');
      Parameters[0].Value:=NBanca;
      Open;
      Result:=fieldbyname('direccion_banca').AsString;
      Free;
    end;
end;

procedure TFOpciones.DBGrid_BancosKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if(Key = VK_DOWN)or(key = VK_UP)or(Key = VK_LEFT)or(Key = VK_RIGHT)then
    begin
      BuscaCuentaBanco(Qr_BuscarBancosId_Banco.AsInteger);
      DBGrid_CuentasCellClick(nil);
    end;

end;

procedure TFOpciones.DBGrid_CuentasCellClick(Column: TColumn);
begin
  _FCreditoBanco:=TFCreditoBanco.Create(Self);
  ECal_3.Value:=_FCreditoBanco.CalculaBalanceCuenta(Qr_BuscaCuentaBancoId_CuentaBancaria.AsInteger);
  _FCreditoBanco.Free;
  LB_20.Visible:=True;
  if(Qr_BuscaCuentaBancoTipoCuenta.AsInteger = 0)then
    begin
      LB_20.Caption:='Cuenta Corriente';
    end
  else
    begin
      LB_20.Caption:='Cuenta de Ahorros';
    end;
end;

procedure TFOpciones.DBGrid_CuentasKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if(Key = VK_DOWN)or(key = VK_UP)or(Key = VK_LEFT)or(Key = VK_RIGHT)then
    begin
      //BuscaCuentaBanco(Qr_BuscarBancosId_Banco.AsInteger);
      DBGrid_CuentasCellClick(nil);
    end;
end;

function TFOpciones.BuscaTipoVenef(IdVenef:Integer): string;
var
  Qr_TipoVenef:TADOQuery;
begin
  Qr_TipoVenef:=TADOQuery.Create(Self);
  with Qr_TipoVenef do
    begin
      Connection:=ControlCuentasBancarias.Coneccion_1;
      Close;
      SQL.Clear;
      SQL.Add('select nVeneficiario from veneficiarios where id_Veneficiario = :p0;');
      Parameters[0].Value:=IdVenef;
      Open;
      Result:=fieldbyname('nVeneficiario').AsString;
      Free;
    end;
end;

function TFOpciones.ObtenerIdVenfXDescripcion(Descripcion: string): Integer;
var
  Qr_IdVenef:TADOQuery;
begin
  Qr_IdVenef:=TADOQuery.Create(Self);
  with Qr_IdVenef do
    begin
      Connection:=ControlCuentasBancarias.Coneccion_1;
      Close;
      SQL.Clear;
      SQL.Add('select id_Veneficiario from Veneficiarios where nVeneficiario = :po;');
      Parameters[0].Value:=Descripcion;
      Open;
      Result:=fieldbyname('id_Veneficiario').AsInteger;
      Free;
    end;
end;

function TFOpciones.BuscaXCientoVenef(IdVenef:Integer): Double;
var
  Qr_XcientoVenef:TADOQuery;
begin
  Qr_XcientoVenef:=TADOQuery.Create(Self);
  with Qr_XcientoVenef do
    begin
      Connection:=ControlCuentasBancarias.Coneccion_1;
      Close;
      SQL.Clear;
      SQL.Add('select veneficioXC from veneficiarios where id_veneficiario = :p0;');
      Parameters[0].Value:=IdVenef;
      Open;
      Result:=fieldbyname('veneficioXC').AsFloat;
      Free;
    end;
end;

function TFOpciones.BuscaNombreVenfXTipo(Tipo: string): string;
var
  Qr_NombreTipoVenef:TADOQuery;
begin
  Qr_NombreTipoVenef:=TADOQuery.Create(Self);
  with Qr_NombreTipoVenef do
    begin
      Connection:=ControlCuentasBancarias.Coneccion_1;
      Close;
      SQL.Clear;
      SQL.Add('select nombreVenef from veneficiarios where nVeneficiario = :p0;');
      Parameters[0].Value:=Tipo;
      Open;
      Result:=fieldbyname('nombreVenef').AsString;
      Free;
    end;
end;

function TFOpciones.BuscaXCientoVenefTipo(Tipo: string): Double;
var
  Qr_XCientoVenef:TADOQuery;
begin
  Qr_XCientoVenef:=TADOQuery.Create(Self);
  with Qr_XCientoVenef do
    begin
      Connection:=ControlCuentasBancarias.Coneccion_1;
      Close;
      SQL.Clear;
      SQL.Add('select veneficioXC from veneficiarios where nVeneficiario = :p0;');
      Parameters[0].Value:=Tipo;
      Open;
      Result:=fieldbyname('veneficioXC').AsFloat;
      Free;
    end;
end;                             

function TFOpciones.ValidaEmpAsignado(Nombre, Apellidos: string): Boolean;
var
  Qr_EmpExiste:TADOQuery;
begin
  Qr_EmpExiste:=TADOQuery.Create(Self);
  with Qr_EmpExiste do
    begin
      Connection:=ControlCuentasBancarias.Coneccion_1;
      Close;
      SQL.Clear;
      SQL.Add('select e.id_empleado, b.numero_Banca from empleados as e left join bancas as b ');
      SQL.Add('on(e.id_empleado = b.id_empleado_Banca)');
      SQL.Add('where (e.nombres = :n)and(apellidos = :a)');
      Parameters[0].Value:=Nombre;
      Parameters[1].Value:=Apellidos;
      Open;
    end;
  if(Opcion = 0)then
    begin
      if((Qr_EmpExiste.RecordCount > 0)and(Qr_EmpExiste.FieldByName('numero_Banca').AsInteger > 0))then
        begin
          Result:=False;
          MessageDlg('El empleado seleccionado esta asignado a la banca #: '+Qr_EmpExiste.FieldbyName('numero_Banca').AsString  ,mtInformation,[mbOK],0);
        end
      else
        begin
          Result:=True;
        end;
    end
  else
  if(Opcion = 1)then
    begin
      if((Qr_EmpExiste.FieldByName('numero_banca').AsInteger = SE_NumeroBanca.Value)or(Qr_EmpExiste.RecordCount = 0))then
        begin
          Result:=True;
        end
      else
        begin
          Result:=False;
          MessageDlg('El empleado seleccionado esta asignado a la banca #: '+Qr_EmpExiste.FieldbyName('numero_Banca').AsString  ,mtInformation,[mbOK],0);
        end;
    end;
  Qr_EmpExiste.Free;
end;

procedure TFOpciones.SE_NumeroBancaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if(Key = #13)then
    EL_DireccionBanca.SetFocus;

end;

procedure TFOpciones.SE_NumeroTurnoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if(Key = #13)then
   // DTP_FechaOPeracion.SetFocus;
end;

procedure TFOpciones.EL_DireccionBancaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if(Key = #13)then
    ECal_Alquiler.SetFocus;
end;

procedure TFOpciones.DTP_FechaOPeracionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if(Key = #13)then
    EL_DireccionBanca.SetFocus;
end;

procedure TFOpciones.EL_DuenoLocalKeyPress(Sender: TObject; var Key: Char);
begin
  if(Key = #13)then
    ECal_Alquiler.SetFocus;
end;

procedure TFOpciones.ECal_AlquilerKeyPress(Sender: TObject; var Key: Char);
begin
  if(Key = #13)then
    CBB_FechaPagoAlquiler.SetFocus;
end;

procedure TFOpciones.SE_NumeroBancaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if(Key = VK_RIGHT)then
    SE_NumeroTurno.SetFocus;
end;

procedure TFOpciones.EL_DireccionBancaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if(Key = VK_UP)then
    SE_NumeroBanca.SetFocus;
  if(Key = VK_DOWN)then
    EL_DuenoLocal.SetFocus;
end;

procedure TFOpciones.EL_DuenoLocalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if(Key = VK_UP)then
    EL_DireccionBanca.SetFocus;
  if(Key = VK_DOWN)then
    ECal_Alquiler.SetFocus;
end;

procedure TFOpciones.ECal_AlquilerKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if(Key = VK_UP)then
    EL_DuenoLocal.SetFocus;
  if(Key = VK_DOWN)then
    CBB_FechaPagoAlquiler.SetFocus;
end;

procedure TFOpciones.LV_1Click(Sender: TObject);
var
  Si:Boolean;
begin
  if(LV_1.SelCount = 0)then
    begin
      //ShowMessage('Fuera de indice');
      BBT_Agregar.Enabled:=False;
      si:=False;
    end
  else
    begin
       LVValor:=LV_1.Selected.SubItems.Strings[3];
       IndiceSelec1:=LV_1.Selected.SubItems.Strings[0];
       LB_21.Caption:='Empleado: '+lv_1.Selected.SubItems.Strings[2];
       LB_22.Visible:=True;
       LB_22.Caption:=LV_1.Selected.SubItems.Strings[3];
       //ShowMessage(IndiceSelec);
       si:=True;
    end;
 if(si = True)then
  begin
     if(LVValor = '')then
      begin
        LB_22.Visible:=False;
        BBT_Agregar.Enabled:=False;
      end
     else
      begin                        
        BBT_Agregar.Enabled:=True;
      end;
  end;
end;

procedure TFOpciones.BBT_AgregarClick(Sender: TObject);
var
  selecciondo:Integer;
begin
  if(LV_1.Selected.SubItems.Strings[0] <> '')then
    begin
      selecciondo:=StrToInt(LV_1.Selected.SubItems.Strings[0]);
      LV_1.Items[selecciondo].SubItems.Insert(3,'');
      insertaNBanca(StrToInt(LVValor),0);
      ActivaApl:=True;
      BBT_AplicarBancasEmp.Enabled:=True;
      LB_22.Visible:=False;
      DBGRID_1CellClick(nil);
      BBT_Agregar.Enabled:=False;
    end
  else
    begin
      MessageDlg('Seleccione un empleado para continuar.',mtInformation,[mbOK],0);
    end;
end;

procedure TFOpciones.LV_2DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  Accept := Sender = LV_1;
end;

procedure TFOpciones.BBT_InsertarClick(Sender: TObject);
var
  seleccionado:string;
  MensajeDLg:Integer;
begin
  if(TableV_NBancas.RecordCount  > 0)then
    begin
      if(LV_1.SelCount > 0)then
        begin
           if(LV_1.Selected.SubItems.Strings[3] <> '')then
              begin
                MensajeDLg:=MessageDlg('Cofirme que desea sustituir la Banca #: '+LV_1.Selected.SubItems.Strings[3]+' por la Banca #: '+
                valorItems,mtConfirmation,[mbYes,mbNo],0);
                if(MensajeDLg = mrYes)then
                  begin
                    seleccionado:=LV_1.Selected.SubItems.Strings[3];
                    LV_1.Items.Item[(StrToInt(IndiceSelec1))].SubItems.Insert(3,valorItems);

                    TableV_NBancas.Delete;

                    TableV_NBancas.Append;
                    TableV_NBancasNBancas.AsString:=seleccionado;
                    TableV_NBancas.Post;

                    LB_25.Visible:=False;
                    //LB_22.Visible:=False;
                    LV_1Click(Sender);
                    BBT_Insertar.Enabled:=False;
                  end;
              end
           else
              begin
                LV_1.Items.Item[(StrToInt(IndiceSelec1))].SubItems.Insert(3,valorItems);
                TableV_NBancas.Delete;
                LB_25.Visible:=False;
                BBT_Insertar.Enabled:=False;
              end;
           ActivaApl:=True;
           BBT_AplicarBancasEmp.Enabled:=True;
           DBGRID_1CellClick(nil);
        end
      else
        begin
          MessageDlg('Seleccione un empleado para realizar la asignación',mtInformation,[mbOK],0);
        end;
    end
  else
    begin
      MessageDlg('Seleccione el empleado para asinarle la banca.',mtInformation,[mbOK],0);
    end;
end;

procedure TFOpciones.DBGRID_1CellClick(Column: TColumn);
begin
  if(TableV_NBancas.RecordCount > 0)then
    begin
      valorItems:=TableV_NBancasNBancas.AsString;
      LB_25.Visible:=True;
      LB_25.Caption:=valorItems;
      indiceItems:=TableV_NBancasIndice.AsInteger;
      BBT_Insertar.Enabled:=True;
    end
  else
    begin
      BBT_Insertar.Enabled:=False;
      LB_25.Visible:=False;
    end;
  if(LVValor = valorItems)then
    begin
      BBT_Agregar.Enabled:=False;
      LB_22.Visible:=False;
    end
  else
    begin
      //BBT_Agregar.Enabled:=True;
      //LB_22.Visible:=True;
    end;
end;

procedure TFOpciones.InsertaNBanca(NBanca, AutoLlenadoLibres: integer);
var
  I:Integer;
  Qr_BancasLibres:TADOQuery;
begin
  if(AutoLlenadoLibres = 0)then
    begin
      with TableV_NBancas do
        begin
          Append;
          TableV_NBancasNBancas.AsString:=IntToStr(NBanca);
          Post;
          Open;
        end;
    end
  else
  if(AutoLlenadoLibres = 1)then
    begin
      Qr_BancasLibres:=TADOQuery.Create(Self);
      with Qr_BancasLibres do
        begin
          Connection:=ControlCuentasBancarias.Coneccion_1;
          Close;
          SQL.Clear;
          SQL.Add('select numero_banca, id_banca, estado from bancas where estado = 0');
          SQL.Add('order by numero_banca');
          Open;
          First;
        end;
      LV_2.Items.Clear;
      for I := 0 to Qr_BancasLibres.RecordCount -1 do
        begin
          with TableV_NBancas do
              begin
                Append;
                TableV_NBancasNBancas.AsString:=IntToStr(Qr_BancasLibres.FieldByName('numero_banca').Value);
                Post;
                Open;
              end;
          LV_2.Items.Add.SubItems.Add(Qr_BancasLibres.FieldByName('numero_banca').AsString);
          Qr_BancasLibres.Next;
        end;
      Qr_BancasLibres.Free;
    end; 
end;

procedure TFOpciones.LV_1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  LV_1Click(Sender);
end;

procedure TFOpciones.TS_CambioBancaEmpleadoShow(Sender: TObject);
begin
  if(ActivaApl = False)then
    begin
      TableV_NBancas.Clear;
      ActualizaEmpleadosBancas;
      InsertaNBanca(-1,1);
    end;
  if(TableV_NBancas.RecordCount > 0)then
    begin
      DBGRID_1CellClick(nil);
    end;
  Caption:='Opción - Ordenar Bancas/Empleados.';
end;

procedure TFOpciones.TS_CambioBancaEmpleadoHide(Sender: TObject);
begin
  if(ActivaApl = False)then
    begin
      TableV_NBancas.Clear;
      LV_1.Items.Clear;
    end;
end;

procedure TFOpciones.SBT_RefrescarClick(Sender: TObject);
begin
  TableV_NBancas.Clear;
  LV_1.Items.Clear;
  InsertaNBanca(-1,1);
  ActualizaEmpleadosBancas;
  BBT_Agregar.Enabled:=False;
  BBT_Insertar.Enabled:=False;
  lb_22.Visible:=False;
  LB_25.Visible:=False;
  ActivaApl:=False;
  BBT_AplicarBancasEmp.Enabled:=False;
end;

procedure TFOpciones.ActualizaEmpleadosBancas;
var
  //Qr_bancasEmp:TADOQuery;
  I, v:Integer;
begin
  with Qr_bancasEmp do
    begin
      Close;
      Parameters[0].Value:=1;
      Open;
      First;
    end;
  NItems:=Qr_bancasEmp.RecordCount;
  LV_1.Items.Clear;
  for I := 0 to Qr_bancasEmp.RecordCount -1 do
    begin
       with LV_1.Items.Add do
          begin
            SubItems.Add(IntToStr(I));
            SubItems.Add(IntToStr(Qr_bancasEmpid_empleado.AsInteger));
            SubItems.Add(Qr_bancasEmpnombres.AsString+' '+Qr_bancasEmpapellidos.AsString);
            SubItems.Add(Qr_bancasEmpnumero_banca.AsString);
          end;
      Qr_bancasEmp.Next;
    end;
 // Qr_bancasEmp.Free;
end;

procedure TFOpciones.LiberarBanca(idBanca: Integer);
var
  Qr_LiberaBanca:TADOQuery;
begin
  Qr_LiberaBanca:=TADOQuery.Create(Self);
  with Qr_LiberaBanca do
    begin
      Connection:=ControlCuentasBancarias.Coneccion_1;
      Close;
      SQL.Clear;
      SQL.Add('update bancas set estado = 0, id_empleado_banca = -1');
      SQL.Add('where id_banca = :idB');
      Parameters[0].Value:=idBanca;
      ExecSQL;
      Free;
    end;
end;

function TFOpciones.ObtenerIdBanca(NBanca:Integer): Integer;
var
  Qr_IdBanca:TADOQuery;
begin
  Qr_IdBanca:=TADOQuery.Create(Self);
  with Qr_IdBanca do
    begin
      Connection:=ControlCuentasBancarias.Coneccion_1;
      Close;
      SQL.Clear;
      SQL.Add('select id_banca from Bancas where numero_banca = :n');
      Parameters[0].Value:=NBanca;
      Open;
      Result:=fieldbyname('id_banca').Value;
      Free;
    end;
end;

procedure TFOpciones.BBT_AplicarBancasEmpClick(Sender: TObject);
var
  I : Integer;
begin
  if(TableV_NBancas.RecordCount > 0)then
    begin
      TableV_NBancas.First;
      for I := 0 to TableV_NBancas.RecordCount -1 do
        begin
          LiberarBanca(ObtenerIdBanca(TableV_NBancasNBancas.AsInteger));
          TableV_NBancas.Next;
        end;
    end;
   IngresaBancasEmpleados;
  BBT_AplicarBancasEmp.Enabled:=False;
  ActivaApl:=False;
end;


procedure TFOpciones.IngresaBancasEmpleados;
var
  Qr_Actualiza:TADOQuery;
  I, idB : Integer;
begin
  try
    Qr_Actualiza:=TADOQuery.Create(Self);
    Qr_Actualiza.Connection:=ControlCuentasBancarias.Coneccion_1;
    for I := 0 to LV_1.Items.Count -1 do
      begin
        if(LV_1.Items.Item[i].SubItems.Strings[3] <> '')then
        with Qr_Actualiza do
          begin
            Connection:=ControlCuentasBancarias.Coneccion_1;
            Close;
            SQL.Clear;
            SQL.Add('update bancas set id_empleado_banca = :idemp, estado = 1');
            SQL.Add('where id_banca = :idB');
            Parameters[0].Value:=LV_1.Items.Item[i].SubItems.Strings[1];
            Parameters[1].Value:=ObtenerIdBanca(StrToInt(LV_1.Items.Item[i].SubItems.Strings[3]));
            ExecSQL;
          end;
      end;
  finally
    Qr_Actualiza.Free;
  end;
end;

procedure TFOpciones.BBT_SalirBancasEmpClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFOpciones.FormClose(Sender: TObject; var Action: TCloseAction);
var
  MensajeDLg:Integer;
begin
  if(ActivaApl = True)then
    begin
      MensajeDLg:=MessageDlg('Hay cambios que no han sido guardados.'+#13+#13+'Desea continuar sin guardar los cambios?',mtConfirmation,
      [mbYes,mbNo,mbCancel],0);
      if(MensajeDLg = mrYes)then
        begin
          Action:=caFree;
          ActivaApl:=False;
        end
      else
        begin
          Action:=caNone;
          PageControl1.TabIndex:=3;
        end;
    end;
end;

procedure TFOpciones.ECal_1Enter(Sender: TObject);
begin
  ECal_2.Value:=100 - ECal_1.Value;
end;

procedure TFOpciones.ECal_1Exit(Sender: TObject);
begin
  ECal_2.Value:=100 - ECal_1.Value;
end;


procedure TFOpciones.AjustaXCVeneficiario(Valor: Double; IdVneficiario:Integer);
var
  Qr_AjustaXC:TADOQuery;
begin
  Qr_AjustaXC:=TADOQuery.Create(Self);
  with Qr_AjustaXC do
    begin
      Connection:=ControlCuentasBancarias.Coneccion_1;
      Close;
      SQL.Clear;
      SQL.Add('update veneficiarios set veneficioXC = :V');
      SQL.Add('where id_veneficiario = :idv');
      Parameters[0].Value:=Valor;
      Parameters[1].Value:=IdVneficiario;
      ExecSQL;
      Free;
    end;
end;

procedure TFOpciones.ECal_2Enter(Sender: TObject);
begin
  ECal_1.Value:=100 - ECal_2.Value;
end;

procedure TFOpciones.ECal_2Exit(Sender: TObject);
begin
  ECal_1.Value:=100 - ECal_2.Value;
end;

procedure TFOpciones.Qr_BuscaBancaEstadoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if(Qr_BuscaBancaEstado.Value = 0)then
    Text:='Inactivo'
  else
  if(Qr_BuscaBancaEstado.Value = 1)then
    Text:='Activo';
end;

procedure TFOpciones.DBGrid_BancasCellClick(Column: TColumn);
begin
  with Qr_EmpleadosID do
      begin
        Close;
        Parameters[0].Value:=Qr_BuscaBancaId_Empleado_Banca.Value;
        Open;
      end;
end;

procedure TFOpciones.DBNV_BancasClick(Sender: TObject;
  Button: TNavigateBtn);
begin
  DBGrid_BancasCellClick(nil);
end;

procedure TFOpciones.DBGrid_BancasKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if((Key = vk_up)or(Key = vk_down)or(Key = vk_left)or(Key = VK_RIGHT))then
    DBGrid_BancasCellClick(nil);
end;

procedure TFOpciones.EliminaBanco(Id_Banco: Integer);
var
  Qr_EliminaBanco:TADOQuery;
begin
  //
end;

procedure TFOpciones.EliminaCuentaBanco(Id_CuentaBanco: Integer);
var
  Qr_EliminaCuentaB, Qr_EliminaDetallesCB:TADOQuery;
begin
  if(ValidaBalance(Id_CuentaBanco) = False)then
    begin
      Qr_EliminaCuentaB:=TADOQuery.Create(Self);
      Qr_EliminaDetallesCB:=TADOQuery.Create(Self);

      with Qr_EliminaDetallesCB do
        begin
          Connection:=ControlCuentasBancarias.Coneccion_1;
          close;
          SQL.Clear;
          sql.Add('delete from detallescuentabancaria where id_cuenta = :idc');
          Parameters[0].Value:=Id_CuentaBanco;
          ExecSQL;
          Free;
        end;
      if(MensajeEliminaCuenta = True)then
        begin
          if(MessageDlg('Confirme que desea eliminar la cuenta seleccionada?',mtConfirmation,[mbYes,mbNo],0) = IDYES)then
            begin
              with Qr_EliminaCuentaB do
                begin
                  Connection:=ControlCuentasBancarias.Coneccion_1;
                  Close;
                  SQL.Clear;
                  SQL.Add('delete from cuentasBancarias where id_cuentabancaria = :idcb');
                  Parameters[0].Value:=Id_CuentaBanco;
                  ExecSQL;
                  Free;
                end;
              MensajeEliminaCuenta:=False;
            end;
        end
      else
        begin
          with Qr_EliminaCuentaB do
            begin
              Connection:=ControlCuentasBancarias.Coneccion_1;
              Close;
              SQL.Clear;
              SQL.Add('delete from cuentasBancarias where id_cuentabancaria = :idcb');
              Parameters[0].Value:=Id_CuentaBanco;
              ExecSQL;
              Free;
            end;
        end;
    end;
end;

function TFOpciones.ValidaBalance(Id_CuentaBanco: Integer): Boolean;
var
  Qr_ValidaBalance, Qr_SumaCredito:TADOQuery;
  tBalance:Double;
begin
  tBalance:=0;
  Qr_ValidaBalance:=TADOQuery.Create(Self);
  Qr_SumaCredito:=TADOQuery.Create(Self);
  with Qr_ValidaBalance do
    begin
      Connection:=ControlCuentasBancarias.Coneccion_1;
      Close;
      SQL.Clear;
      SQL.Add('select dcb.id_cuenta');
      SQL.Add('from cuentasBancarias as cb left join detallesCuentaBancaria as dcb');
      SQL.Add('on(cb.id_cuentaBancaria = dcb.id_cuenta)');
      SQL.Add('where cb.id_cuentaBancaria = :idbc');
      Parameters[0].Value:=Id_CuentaBanco;
      Open;
    end;
  if(Qr_ValidaBalance.RecordCount > 0)then
    begin
       with Qr_SumaCredito do
        begin
          Connection:=ControlCuentasBancarias.Coneccion_1;
          Close;
          SQL.Clear;
          SQL.Add('select sum(credito) as Tcredito, sum(debito) as TDebito');
          SQL.Add('from detallesCuentaBancaria');
          SQL.Add('where id_cuenta = :idc');
          Parameters[0].Value:=Id_CuentaBanco;
          Open;
          //ShowMessage('Credito: '+Qr_SumaCredito.fieldbyName('Tcredito').AsString+', Debito: '+Qr_SumaCredito.fieldbyName('TDebito').AsString);
        end;
       if((Qr_SumaCredito.RecordCount > 0)and(Qr_SumaCredito.fieldbyName('Tcredito').Value <> null))then
        begin
          tBalance:=Qr_SumaCredito.fieldbyName('Tcredito').Value - Qr_SumaCredito.fieldbyName('TDebito').Value;
        end
       else
        begin
          tBalance:=0;
          MensajeEliminaCuenta:=True;
        end;
    end;
  if(tBalance > 0)then
    begin
      if(MessageDlg('La cuenta seleccionada refleja un balance de '+FormatFloat('RD$ #,##.00',tBalance)+#13+#13+
      'Desea Realmente eliminar esta cuenta?',mtConfirmation, [mbYes,mbNo],0) = IDYES)then
        begin
          Result:=False;
        end
      else
        Result:=True;
    end
  else
    begin
      Result:=False;
    end;
  Qr_ValidaBalance.Free;
  Qr_SumaCredito.Free;
end;

procedure TFOpciones.DBGrid_BancosCellClick(Column: TColumn);
begin
  BuscaCuentaBanco(Qr_BuscarBancosId_Banco.AsInteger);
  DBGrid_CuentasCellClick(nil);
end;

procedure TFOpciones.MM_EliminarCuentaClick(Sender: TObject);
begin
  EliminaCuentaBanco(Qr_BuscaCuentaBancoId_CuentaBancaria.Value);
  BBT_BuscarBancoClick(Self);
end;

procedure TFOpciones.HK_1HotKey(Sender: TObject);
begin
  self.Close;
end;

procedure TFOpciones.HK_2HotKey(Sender: TObject);
begin
  SBT_RefrescarClick(Self);
end;

procedure TFOpciones.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if(Key = #27)then
    Self.Close;
end;



procedure TFOpciones.IDsBancasLlenar(Fecha:TDateTime);
var
  I:Integer;
  Qr_IdBancas:TADOQuery;
begin
  //Qr_NBancas:=TADOQuery.Create(Self);
  Qr_IdBancas:=TADOQuery.Create(Self);
  with Qr_IdBancas do
    begin
      Connection:=ControlCuentasBancarias.Coneccion_1;
      Close;
      SQL.Clear;
      SQL.Add('select id_banca from CxCBancas where fecha = :p0');
      Parameters[0].Value:=Fecha;
      Open;
    end;
  if(Qr_IdBancas.RecordCount > 0)then
    begin
      for I := 0 to Qr_IdBancas.RecordCount - 1 do
        begin
          IDsBancas[I]:=Qr_IdBancas.FieldByName('id_bancas').AsInteger;
        end;
    end;

end;

function TFOpciones.ObtenerNBancas(IdBanca: Integer): Integer;
var
  Qr_NBanca:TADOQuery;
begin
  Qr_NBanca:=TADOQuery.Create(Self);
  with Qr_NBanca do
    begin
      Connection:=ControlCuentasBancarias.Coneccion_1;
      Close;
      SQL.Clear;
      SQL.Add('select numero_banca from Bancas where id_banca = :p0;');
      Parameters[0].Value:=IdBanca;
      Open;
      Result:=FieldByName('numero_banca').AsInteger;
      Free;
    end;
end;

procedure TFOpciones.ModificaDepositoBanco(Credito: Double;
  NumeroTransaccion: string; IdDetallesCuenta, SMensaje: Integer);
var
  Qr_ModDestallesDep:TADOQuery;
begin
  try
    Qr_ModDestallesDep:=TADOQuery.Create(Self);
    with Qr_ModDestallesDep do
      begin
        Connection:=ControlCuentasBancarias.Coneccion_1;
        Close;
        SQL.Add('update detallesCuentaBancaria set credito = :p0, numeroTransaccion = :p1');
        SQL.Add('where id_detallesCuentasBancarias = :p2');
        Parameters[0].Value:=Credito;
        Parameters[1].Value:=NumeroTransaccion;
        Parameters[2].Value:=IdDetallesCuenta;
        ExecSQL;
        Free;
        if(SMensaje = 1)then
          begin
            MessageDlg('Datos modificados con éxito.',mtInformation,[mbOK],0);
          end;
      end;
  except
    Qr_ModDestallesDep.Free;
    MessageDlg('Error al intentar modificar los datos. Error: 000002',mtInformation,[mbOK],0);
  end;
end;

procedure TFOpciones.SE_NumeroTurnoChange(Sender: TObject);
begin
  if(SE_NumeroTurno.Value = 1)then
    begin
      EL_3.Enabled:=False;
      SBT_1.Enabled:=False;
    end
  else
  if(SE_NumeroTurno.Value = 2)then
    begin
      EL_3.Enabled:=True;
      SBT_1.Enabled:=True;
    end;
end;

end.

//725 1779 pin
