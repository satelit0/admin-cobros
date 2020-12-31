unit UIngresosBancas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, JvExMask, JvToolEdit, JvBaseEdits, ComCtrls,
  JvExComCtrls, JvDateTimePicker, JvExStdCtrls, JvCombobox, JvMonthCalendar,
  Grids, DBGrids, JvExDBGrids, JvDBGrid, JvScrollBar, ExtCtrls, DBCtrls,
  JvDBControls, DB, JvDataSource, Buttons, Menus, JvMenus, JvComponentBase,
  JvXPCore, JvExButtons, JvBitBtn, JvFormTransparent, JvExControls,
  JvArrowButton, ADODB, DateUtils, UCxC, JvMemoryDataset, JvGroupBox,
  JvAppHotKey, JvBalloonHint;

type
  TFRelacionGananciaGastosDeudas = class(TForm)
    GroupBox1: TGroupBox;
    LB_2: TLabel;    Calendario_1: TJvMonthCalendar;
    GB_1: TGroupBox;
    DBGrid_Gastos: TJvDBGrid;
    DBNV_1: TJvDBNavigator;
    DS_Gastos: TJvDataSource;
    PM_DetallesGastos: TJvPopupMenu;
    EliminarGasto1: TMenuItem;
    N1: TMenuItem;
    Modificar1: TMenuItem;
    JvXPStyleManager1: TJvXPStyleManager;
    PM_SumarRestarG: TJvPopupMenu;
    MM_Sumar: TMenuItem;
    MenuItem2: TMenuItem;
    MM_Restar: TMenuItem;
    Qr_GastosVeneficios: TADOQuery;
    Qr_GastosVeneficiosid_gasto: TAutoIncField;
    Qr_GastosVeneficiosmontoGasto: TFloatField;
    Qr_GastosVeneficiosdetallesGasto: TWideStringField;
    Qr_GastosVeneficiosfechaGasto: TDateTimeField;
    Qr_GastosVeneficiosfecha: TDateTimeField;
    Qr_GastosVeneficiosnumeroComprobante: TWideStringField;
    Qr_GastosVeneficiosid_Banca: TAutoIncField;
    Qr_GastosVeneficiosid_empleado_banca: TIntegerField;
    Qr_GastosVeneficiosdireccion_Banca: TWideStringField;
    Qr_GastosVeneficiosnumero_banca: TIntegerField;
    GB_2: TGroupBox;
    LB_11: TLabel;
    MData_1: TJvMemoryData;
    GB_3: TGroupBox;
    LB_13: TLabel;
    DS_1: TDataSource;
    LB_10: TLabel;
    M_1: TMemo;
    MData_1Id: TAutoIncField;
    MData_1NBanca: TIntegerField;
    MData_1DireccionB: TStringField;
    MData_1MontoGasto: TFloatField;
    MData_1DebitarA: TIntegerField;
    MData_1FechaG: TDateTimeField;
    JvGroupBox1: TJvGroupBox;
    LB_3: TLabel;
    LB_6: TLabel;
    LB_7: TLabel;
    LB_15: TLabel;
    ECal_VeneficiosBanca: TJvCalcEdit;
    ECal_MontoRecivido: TJvCalcEdit;
    ECal_MontoFaltante: TJvCalcEdit;
    ECal_TotalGastos: TJvCalcEdit;
    JvGroupBox2: TJvGroupBox;
    CBB_NombreBanco: TJvComboBox;
    LB_8: TLabel;
    LB_9: TLabel;
    CBB_Cuenta: TJvComboBox;
    EL_NumeroRBanco: TLabeledEdit;
    JvGroupBox3: TJvGroupBox;
    LB_4: TLabel;
    ECal_Gasto: TJvCalcEdit;
    LB_14: TLabel;
    M_DescripcionG: TMemo;
    LB_5: TLabel;
    CBB_CuentaDestino: TJvComboBox;
    BBT_Agregar: TBitBtn;
    BBT_Guardar: TBitBtn;
    BBT_Limpiar: TBitBtn;
    BBT_Salir: TBitBtn;
    MData_1Origen: TIntegerField;
    MData_1IdBanca: TIntegerField;
    MData_1IdGasto: TIntegerField;
    MData_1IdEmpBanca: TIntegerField;
    MData_1IdDetallesCB: TIntegerField;
    MData_1NumeroTransCB: TStringField;
    MData_1IdCuentaBanco: TIntegerField;
    MData_1EsNuevo: TIntegerField;
    Qr_Bancas: TADOQuery;
    MData_1TGasto: TFloatField;
    MData_1BeneficiosVenta: TFloatField;
    MData_1IngresoRecibido: TFloatField;
    MData_1IdCuenta: TIntegerField;
    HK_1: TJvApplicationHotKey;
    Qr_Bancasid_banca: TAutoIncField;
    Qr_Bancasnumero_banca: TIntegerField;
    Qr_Bancasid_empleado_banca: TIntegerField;
    Qr_Bancasdireccion_Banca: TWideStringField;
    JvBalloonHint1: TJvBalloonHint;
    CBB_NBancas: TJvComboBox;
    LB_1: TLabel;
    SBT_1: TSpeedButton;
    SBT_2: TSpeedButton;
    EL_1: TLabeledEdit;
    MData_GastosEditar: TJvMemoryData;
    MData_GastosEditarIdGasto: TIntegerField;
    MData_1IdCxCBanca: TIntegerField;
    MData_1DescripcionG: TStringField;
    MData_1FacturaG: TStringField;
    MData_1Diferencia: TFloatField;
    procedure BBT_SalirClick(Sender: TObject);
    procedure BBT_LimpiarClick(Sender: TObject);
    procedure ECal_VeneficiosBancaKeyPress(Sender: TObject; var Key: Char);
    procedure ECal_MontoFaltanteChange(Sender: TObject);
    procedure ECal_MontoRecividoKeyPress(Sender: TObject; var Key: Char);
    procedure ECal_VeneficiosBancaExit(Sender: TObject);
    procedure ECal_MontoRecividoExit(Sender: TObject);
    procedure ECal_GastoChange(Sender: TObject);
    procedure MM_SumarClick(Sender: TObject);
    procedure ECal_GastoKeyPress(Sender: TObject; var Key: Char);
    procedure CBB_NombreBancoDropDown(Sender: TObject);
    procedure CBB_NombreBancoChange(Sender: TObject);
    procedure CBB_NBancasDropDown(Sender: TObject);
    procedure CBB_NBancasChange(Sender: TObject);
    procedure BBT_GuardarClick(Sender: TObject);
    procedure Calendario_1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CBB_CuentaDestinoDropDown(Sender: TObject);
    procedure EliminarGasto1Click(Sender: TObject);
    procedure Modificar1Click(Sender: TObject);
    procedure BBT_AgregarClick(Sender: TObject);
    procedure CBB_NombreBancoKeyPress(Sender: TObject; var Key: Char);
    procedure CBB_CuentaKeyPress(Sender: TObject; var Key: Char);
    procedure EL_NumeroRBancoKeyPress(Sender: TObject; var Key: Char);
    procedure CBB_NBancasKeyPress(Sender: TObject; var Key: Char);
    procedure M_DescripcionGKeyPress(Sender: TObject; var Key: Char);
    procedure HK_1HotKey(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SBT_2Click(Sender: TObject);
    procedure SBT_1Click(Sender: TObject);
    procedure CBB_CuentaDestinoKeyPress(Sender: TObject; var Key: Char);
    procedure EL_1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure LimpiarCampos(DBLimpiar:Integer);
    procedure Limpiar;
    function CalculaDiferencia(Venficio, MontoR, Gastos:Double):Double;
    procedure LlenarComboNBanco(LlenarComboB:integer);
    procedure LlenarComboCuentas(Id_Cuenta:Integer);
    procedure LlenarComboNbanca;
    function ValidaCampos:Boolean;
    function ValidaComposBancos:Boolean;
    function ValidaCamposGasto:Boolean;
    procedure LlenarCombDebitarA;
    procedure InsertaGastoTem(NBanca:Integer; DireccionB, DescripcionG, FacturaG:string;
              MontoGasto, Diferencia:Double; DebitarA:Integer; FechaG:TDateTime; IdBanca,
              IdEmpleado:Integer);
    procedure EliminaGastoTem;
    procedure ModificaGastoTemp(IdGasto:Integer);
    procedure BuscaDatosBenBanca(NBanca:Integer; FechaCreado:TDateTime);
    procedure GuardaModificacion(IdCxCBanca,IdDetalleCB,IdGasto, DebitarA,
              IdBanca, IdEmpleado:Integer; BeneficioB,MontoD,MontoG, Diferencia:Double;
              NumeroTransaccion, FacturaG, DescripcionG:string; FechaG:TDateTime;
              EsNuevoG, EstadoCuenta, SMensaje:Integer);

  public
    { Public declarations }
    function ObternerIdBanca(NBanca:Integer):Integer;
    procedure BuscaGasto(fecha:TDateTime; NBanca, IdEmpleado:Integer);
    //function BuscaIdBanca(NBanca:Integer):Integer;
    procedure LlenarCamposGasto;
    procedure LlenarCamposDB;
    procedure HabilitaComponentes(AccionHDh:Integer);

  end;

var
  FRelacionGananciaGastosDeudas: TFRelacionGananciaGastosDeudas;
  Qr_LlenarCombBancos:TADOQuery;
  Qr_LlenarCombCuentas:TADOQuery;
  Id_BancoArray: array[0..99] of Integer;
  Id_CuentaBArray: array[0..99] of Integer;
  Id_Empleado: array[0..99] of Integer;
  Id_Venf:array[0..4] of Integer;
  Id_Emp:Integer;
  IdCuentaBanco:Integer;
  Qr_LlenarCombNBanca:TADOQuery;
  Qr_BuscaVeneficiario:TADOQuery;
  IdGasto, IndiceTep:Integer;
  GastoTemp:Double;
  BeneficiosLimpio:Boolean; //determinar si hay datos para mostrar en el registro de beneficios de la banca.
//  MdataGastosCargas:TJvMemoryData; //Almacena los id's de los gastos cargados a la tabla temporal de gastos
implementation

uses UPrincipal, CCuentasB_TLB, UEmpleados, UGastos, UCuentasBancarias,
  UOpciones, UMostarDatos;

{$R *.dfm}

procedure TFRelacionGananciaGastosDeudas.BBT_SalirClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFRelacionGananciaGastosDeudas.LimpiarCampos(DBLimpiar:Integer);
begin
  ECal_VeneficiosBanca.Clear;
  ECal_Gasto.Clear;
  ECal_MontoRecivido.Clear;
  ECal_MontoFaltante.Clear;
  //EL_1.Clear;
  CBB_CuentaDestino.ItemIndex:=-1;
  CBB_CuentaDestino.ItemIndex:=-1;
  CBB_NombreBanco.ItemIndex:=-1;
  M_DescripcionG.Clear;
  EL_NumeroRBanco.Clear;
  CBB_Cuenta.ItemIndex:=-1;
  CBB_Cuenta.ItemIndex:=-1;
  ECal_TotalGastos.Clear;
  CBB_NBancas.SetFocus;
  if(DBLimpiar = 1)then
    begin
      MData_1.Close;
      CBB_NBancas.ItemIndex:=-1;
    end;

end;

procedure TFRelacionGananciaGastosDeudas.BBT_LimpiarClick(Sender: TObject);
begin
  LimpiarCampos(1);
end;

function TFRelacionGananciaGastosDeudas.CalculaDiferencia(Venficio,
  MontoR, Gastos: Double): Double;
var
    Diferencia:Double;
begin
  Diferencia:=Venficio-(MontoR+Gastos);
  Result:=Diferencia;
end;

procedure TFRelacionGananciaGastosDeudas.ECal_VeneficiosBancaKeyPress(
  Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      ECal_MontoFaltante.Value:=CalculaDiferencia(ECal_VeneficiosBanca.Value,ECal_MontoRecivido.Value,ECal_TotalGastos.Value);
      if(JvGroupBox2.Enabled = True)then
      ECal_MontoRecivido.SetFocus;
    end;
  if Key = #44 then
    begin
      Key := #0;
    end;
end;

procedure TFRelacionGananciaGastosDeudas.ECal_MontoFaltanteChange(
  Sender: TObject);
begin
  if ECal_MontoFaltante.Value < 0 then
    begin
      ECal_MontoFaltante.Font.Color:=clRed;
    end
  else
    begin
      ECal_MontoFaltante.Font.Color:=clBlack;
    end;
end;

procedure TFRelacionGananciaGastosDeudas.ECal_MontoRecividoKeyPress(
  Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      ECal_MontoFaltante.Value:=CalculaDiferencia(ECal_VeneficiosBanca.Value,ECal_MontoRecivido.Value,ECal_TotalGastos.Value);
      if(JvGroupBox2.Enabled = True)then
      CBB_NombreBanco.SetFocus;
    end;
  if Key = #44 then
    begin
      Key := #0;
    end;
end;

procedure TFRelacionGananciaGastosDeudas.ECal_VeneficiosBancaExit(
  Sender: TObject);
begin
  ECal_MontoFaltante.Value:=CalculaDiferencia(ECal_VeneficiosBanca.Value,ECal_MontoRecivido.Value,ECal_TotalGastos.Value);
end;

procedure TFRelacionGananciaGastosDeudas.ECal_MontoRecividoExit(
  Sender: TObject);
begin
  ECal_MontoFaltante.Value:=CalculaDiferencia(ECal_VeneficiosBanca.Value,ECal_MontoRecivido.Value,ECal_TotalGastos.Value);
end;

procedure TFRelacionGananciaGastosDeudas.ECal_GastoChange(Sender: TObject);
begin
  ECal_MontoFaltante.Value:=CalculaDiferencia(ECal_VeneficiosBanca.Value,ECal_MontoRecivido.Value,ECal_TotalGastos.Value);
end;

procedure TFRelacionGananciaGastosDeudas.MM_SumarClick(Sender: TObject);
begin
  BBT_Agregar.Tag:=0;
  BBT_Agregar.Caption:='Agregar(Sumar)';
end;

procedure TFRelacionGananciaGastosDeudas.Limpiar;
begin
  ECal_Gasto.Clear;
  M_DescripcionG.Clear;
  BBT_Agregar.Tag:=0;
  BBT_Agregar.Caption:='Agregar(Sumar)';
  CBB_CuentaDestino.ItemIndex:=-1;
  EL_1.Clear;
end;

procedure TFRelacionGananciaGastosDeudas.ECal_GastoKeyPress(
  Sender: TObject; var Key: Char);
begin
  if Key = #44 then
    begin
      Key := #0;
    end;
  if(Key = #13)then
    begin
      M_DescripcionG.SetFocus;
    end;
end;

procedure TFRelacionGananciaGastosDeudas.LlenarComboNBanco(LlenarComboB:integer);
var
  I:Integer;
begin
  Qr_LlenarCombBancos:=TADOQuery.Create(Self);
  with Qr_LlenarCombBancos do
    begin
      Connection:=ControlCuentasBancarias.Coneccion_1;
      Close;
      SQL.Clear;
      SQL.Add('select id_banco, nombreBanco from Bancos');
      Open;
      First;
    end;
  CBB_NombreBanco.Clear;
  //while not (Qr_LlenarCombCuentas.Eof) do
  for I:=0 to Qr_LlenarCombBancos.RecordCount-1 do
    begin
      if(LlenarComboB = 1)then
        begin
          CBB_NombreBanco.Items.Add(Qr_LlenarCombBancos.fieldByName('nombreBanco').AsString);
        end;
      Id_BancoArray[i]:=Qr_LlenarCombBancos.fieldByName('id_banco').AsInteger;
      Qr_LlenarCombBancos.Next;
    end;
  Qr_LlenarCombBancos.Free;
end;

procedure TFRelacionGananciaGastosDeudas.CBB_NombreBancoDropDown(
  Sender: TObject);
begin
  if(Trim(ECal_MontoRecivido.Text) <> '')then
    begin
      LlenarComboNBanco(1);
    end
  else
    begin
      CBB_NombreBanco.Clear;
      CBB_Cuenta.Clear;
      JvBalloonHint1.ActivateHint(ECal_MontoRecivido,'No has ingresado el monto recibido en efectivo por lo tanto '+#13+'no esta permitido seleccionar un banco.'+#13+#13+
      'Para realizar un deposito ingrese el valor en el campo "Monto Recibido"',ikError,'Error',5000);
    end;
end;

procedure TFRelacionGananciaGastosDeudas.LlenarComboCuentas(Id_cuenta:Integer);
var
  I:Integer;
begin
  Qr_LlenarCombCuentas:=TADOQuery.Create(Self);
  with Qr_LlenarCombCuentas do
    begin
      Connection:=ControlCuentasBancarias.Coneccion_1;
      Close;
      SQL.Clear;
      SQL.Add('select id_cuentaBancaria, cuenta from CuentasBancarias');
      SQL.Add('where id_banco_cuentas = :p0;');
      Parameters[0].Value:=Id_Cuenta;
      Open;
      First;
    end;
  CBB_Cuenta.Items.Clear;
  //CBB_Cuenta.Items.Insert(-1,'Elija una cuenta');
  for I := 0 to Qr_LlenarCombCuentas.RecordCount -1 do
    begin
      CBB_Cuenta.Items.Add(Qr_LlenarCombCuentas.fieldByName('cuenta').AsString);
      Id_CuentaBArray[I]:=Qr_LlenarCombCuentas.fieldByName('id_cuentaBancaria').Value;
      //Qr_LlenarCombCuentas.Next;
    end;
  Qr_LlenarCombCuentas.Free;
end;

procedure TFRelacionGananciaGastosDeudas.CBB_NombreBancoChange(Sender: TObject);
begin
  LlenarComboCuentas(Id_BancoArray[CBB_NombreBanco.ItemIndex]);
end;

procedure TFRelacionGananciaGastosDeudas.LlenarComboNbanca;
var
  I:Integer;
begin
  Qr_LlenarCombNBanca:=TADOQuery.Create(Self);
  with Qr_LlenarCombNBanca do
    begin
      Connection:=ControlCuentasBancarias.Coneccion_1;
      Close;
      SQL.Clear;
      SQL.Add('select id_banca, Numero_Banca, id_empleado_banca  from bancas');
      SQL.Add('where estado = 1 order by numero_banca');
      Open;
      First;
    end;
  CBB_NBancas.Clear;
  for I:= 0 to Qr_LlenarCombNBanca.RecordCount-1 do
    begin
      if(Qr_LlenarCombNBanca.fieldByName('numero_Banca').AsString <> '0')then
        begin
          CBB_NBancas.Items.Add(Qr_LlenarCombNBanca.fieldByName('numero_Banca').AsString);
          Id_Empleado[i]:=Qr_LlenarCombNBanca.fieldByName('id_empleado_banca').AsInteger;
        end;
      Qr_LlenarCombNBanca.Next;
    end;
  Qr_LlenarCombNBanca.Free;
end;

procedure TFRelacionGananciaGastosDeudas.CBB_NBancasDropDown(
  Sender: TObject);
begin
  LlenarComboNbanca;
  //CBB_NBancas.ItemIndex:=0;
end;

procedure TFRelacionGananciaGastosDeudas.CBB_NBancasChange(
  Sender: TObject);
begin
  LimpiarCampos(0);
  _FEmpleados:=TFEmpleados.Create(Self);
  _FOpciones:=TFOpciones.Create(Self);
  LB_10.Caption:='Nom. Emp: '+_FEmpleados.BuscaNombreEmpleado(Id_Empleado[CBB_NBancas.ItemIndex]);
  Id_Emp:=Id_Empleado[CBB_NBancas.ItemIndex];
  BuscaGasto(DateOf(Calendario_1.Date),StrToInt(CBB_NBancas.Text),Id_Emp);
  LB_11.Caption:=CBB_NBancas.Text;
  LB_11.Visible:=True;
  M_1.Text:=_FOpciones.BuscaDireccionBanca(StrToInt(CBB_NBancas.Text));
  _FOpciones.Free;
  _FEmpleados.Free;
  BuscaDatosBenBanca(StrToInt(CBB_NBancas.Text),DateOf(Calendario_1.Date));
  LlenarCamposDB;
end;

procedure TFRelacionGananciaGastosDeudas.BBT_GuardarClick(Sender: TObject);
var
  estadoCuenta:Integer;
  DescripcionMovimiento:string;
  GastoExiste:Boolean;
begin
  if(ValidaCampos = True)then
    begin
      if(ECal_MontoFaltante.Value < 0)then
        begin
          estadoCuenta:= 1; // el empleado tendra un debito a su cuenta por cobrar
        end
      else
      if(ECal_MontoFaltante.Value > 0)then
        begin
          estadoCuenta:= -1;   // el empleado temdra una cuenta por cobrar (credito)
        end
      else
      if(ECal_MontoFaltante.Value = 0)then
        begin
          estadoCuenta:=0; // al empleado no se le generara una cuenta por cobrar (credito)
        end;
      DescripcionMovimiento:='DEPOSITO POR CONCEPTO DE BENEFICIOS BANCA No.('+CBB_NBancas.Text+')';
      if(BBT_Guardar.Tag = 0)then
        begin
           _CXCBancas:=TCxC.Create;
           _CXCBancas.InsertaCuenta(ObternerIdBanca(StrToInt(CBB_NBancas.Text)),Id_Emp,ECal_VeneficiosBanca.Value,ECal_MontoRecivido.Value,
                                     ECal_MontoFaltante.Value,DateOf(Calendario_1.Date),estadoCuenta,1);
           _CXCBancas.Free;
           if(Trim(ECal_MontoRecivido.Text) <> '')then
            begin
              _FCuentasBancarias:=TFCuentasBancarias.Create(Self);
              _FCuentasBancarias.InsertaDetalleCuenta(_FCuentasBancarias.BuscaIDCuentaBanco(CBB_Cuenta.Text),0,
                                                    ECal_MontoRecivido.Value,EL_NumeroRBanco.Text,
                                                    DescripcionMovimiento,DateOf(Calendario_1.Date),Now,ObternerIdBanca(StrToInt(CBB_NBancas.Text)),0);
              _FCuentasBancarias.Free;
            end;
          if(Trim(ECal_TotalGastos.Text) <> '')then
            begin
              _FOpciones:=TFOpciones.Create(Self);
              _FGastos:=TFGastos.Create(Self);
              MData_1.Open;
              MData_1.First;
              if not(MData_1.IsEmpty)then
                begin
                  while not(MData_1.Eof)do
                    begin
                      _FGastos.InsertaGasto(_FOpciones.BuscaIdBanca(CBB_NBancas.Text),MData_1MontoGasto.AsFloat, MData_1DescripcionG.AsString,
                                            MData_1DebitarA.AsInteger,EL_1.Text,DateOf(MData_1FechaG.AsDateTime),
                                            Now,Id_Emp,0,0);
                      MData_1.Next;
                    end;
                end;
              _FOpciones.Free;
              _FGastos.Free;
            end;
          BuscaGasto(DateOf(Calendario_1.Date),StrToInt(CBB_NBancas.Text),Id_Emp);
        end
      else
      if(BBT_Guardar.Tag = 1)then
        begin
          MData_1.First;
          while not MData_1.Eof do
            begin
              GuardaModificacion(MData_1IdCxCBanca.AsInteger,MData_1IdDetallesCB.AsInteger,MData_1IdGasto.AsInteger,MData_1DebitarA.AsInteger
                                 ,MData_1IdBanca.AsInteger,MData_1IdEmpBanca.AsInteger,MData_1BeneficiosVenta.AsFloat,MData_1IngresoRecibido.AsFloat,
                                 MData_1MontoGasto.AsFloat,ECal_MontoFaltante.Value,MData_1NumeroTransCB.AsString,MData_1FacturaG.AsString,MData_1DescripcionG.AsString,DateOf(Calendario_1.Date),
                                 MData_1EsNuevo.AsInteger,estadoCuenta,1);

              MData_1.Next;
            end;
          if not(MData_GastosEditar.IsEmpty)then
            begin
              MData_GastosEditar.First;
              _FGastos:=TFGastos.Create(Self);
              while not MData_GastosEditar.Eof do
                begin
                  _FGastos.EliminaGasto(MData_GastosEditarIdGasto.AsInteger,0);
                  MData_GastosEditar.Next;
                end;
              _FGastos.Free;
            end;
        end;
      HabilitaComponentes(2);
      LimpiarCampos(1);
        if(MostrarCerrado = True)then
        begin
         //_FMostrarDatos:=TFMostrarDatos.Create(Self);
         _FMostrarDatos.ObtenerBancasRegistradas(DateOf(Now));
        end;                                                      
    end;
end;

procedure TFRelacionGananciaGastosDeudas.BuscaGasto(fecha:TDateTime; NBanca, IdEmpleado:Integer);
begin
  with Qr_GastosVeneficios do
    begin
      Close;
      Parameters[0].Value:=IdEmpleado;
      Parameters[1].Value:=fecha;
      Parameters[2].Value:=NBanca;
      Open;
    end;
end;

procedure TFRelacionGananciaGastosDeudas.Calendario_1Click(
  Sender: TObject);
begin
  if CBB_NBancas.ItemIndex > -1 then
    begin
      BuscaGasto(DateOf(Calendario_1.Date),StrToInt(CBB_NBancas.Text),Id_Emp);
    end;
  if(Trim(CBB_NBancas.Text) = '')then
    begin
      //JvBalloonHint1.ActivateHint(CBB_NBancas,'Seleccione un número de banca antes de selecionar una fecha.',ikError,'Error',6000);
    end
  else
    begin
      CBB_NBancasChange(Self);
    end;
end;

function TFRelacionGananciaGastosDeudas.ValidaCampos: Boolean;
begin
  LB_1.Font.Color:=0;
  LB_3.Font.Color:=0;
  LB_8.Font.Color:=0;
  LB_9.Font.Color:=0;
  LB_5.Font.Color:=0;
  LB_14.Font.Color:=0;
  LB_4.Font.Color:=0;
  if(CBB_NBancas.ItemIndex = -1)then
    begin
      Result:=False;
      LB_1.Font.Color:=clRed;
      CBB_NBancas.SetFocus;
      JvBalloonHint1.ActivateHint(CBB_NBancas,'Seleccione un número de banca para continuar.',ikError,'Error',5000);
      //MessageBox(0,'Seleccione el número de banca para continuar.','Información',0);
    end
  else
  if(Trim(ECal_VeneficiosBanca.Text) = '')then
    begin
      Result:=False;
      LB_3.Font.Color:=clRed;
      if(JvGroupBox1.Enabled = True)then
        begin
          ECal_VeneficiosBanca.SetFocus;
          JvBalloonHint1.ActivateHint(ECal_VeneficiosBanca,'Ingrese monto a cobrar a la banca.',ikError,'Error',5000);
        end;
      //MessageBox(0,'Ingrese monto a cobrar a la banca.','Información',0);
    end
  else
  if(ValidaComposBancos = False)then
    begin
      Result:=False;
    end
  else
  if(ValidaCamposGasto = False)then
    begin
      Result:=False;
    end
  else
  if(Trim(ECal_MontoRecivido.Text) = '')then
    begin
      if (MessageDlg('No has ingresado el monto de dinero recibido en efectivo de la banca seleccionada.'+#13+#13+
      'Desea continuar sin registrar cobro recibido?',mtInformation,[mbYes,mbNo],0) = mrYes)then
        begin
          Result:=True;
        end
      else
        begin
          Result:=False;
        end;
    end
  else
  if(CompareDate(DateOf(Now), DateOf(Calendario_1.Date)) = -1)then
    begin
      Result:=False;
      JvBalloonHint1.ActivateHint(Calendario_1,'La fecha seleccionada en el calendario es superior a la fecha actual.'+#13+
      'Selecione una fecha igual o inferior a la fecha actual.',ikError,'Error',5000);
      //MessageDlg('La fecha seleccionada en el calendario es superior a la fecha actual.'+#13+
      //'Selecione una fecha igual o inferior a la fecha actual.',mtInformation,[mbOK],0);
    end
  else
  if(BBT_Agregar.Tag = 2)then
    begin
      Result:=False;
      JvBalloonHint1.ActivateHint(BBT_Agregar,'En estos momentos se esta editando un gasto.'+#13+'Complete esta acción para continuar.',ikError,'Error',5000);
    end
  else
    begin
      Result:=True;
    end;
  if(Trim(ECal_MontoRecivido.Text) = '')then
    begin
      CBB_NombreBanco.ItemIndex:=-1;
      CBB_Cuenta.ItemIndex:=-1;
      EL_NumeroRBanco.Clear;
    end;
end;

procedure TFRelacionGananciaGastosDeudas.LlenarCombDebitarA;
var
  I:Integer;
begin
  Qr_BuscaVeneficiario:=TADOQuery.Create(Self);
  with Qr_BuscaVeneficiario do
    begin
      Connection:=ControlCuentasBancarias.Coneccion_1;
      Close;
      SQL.Clear;
      SQL.Add('select id_veneficiario, nombreVenef from veneficiarios;');
      Open;
      First;
    end;
  CBB_CuentaDestino.Clear;
  for I := 0 to Qr_BuscaVeneficiario.RecordCount-1 do
    begin
      CBB_CuentaDestino.Items.Add(Qr_BuscaVeneficiario.fieldByName('nombrevenef').AsString);
      Id_Venf[i]:=Qr_BuscaVeneficiario.fieldByName('id_veneficiario').AsInteger;
      Qr_BuscaVeneficiario.Next;
    end;
  Qr_BuscaVeneficiario.Free;
end;

procedure TFRelacionGananciaGastosDeudas.FormShow(Sender: TObject);
begin
  LlenarComboNBanco(0);
  LlenarCombDebitarA;
  
end;

procedure TFRelacionGananciaGastosDeudas.CBB_CuentaDestinoDropDown(
  Sender: TObject);
begin
  CBB_CuentaDestino.Perform(CB_SETDROPPEDWIDTH,250,0);
end;

{function TFRelacionGananciaGastosDeudas.BuscaIdBanca(
  NBanca: Integer): Integer;
var
  Qr_IdBanca:TADOQuery;
begin
  Qr_IdBanca:=TADOQuery.Create(Self);
  with Qr_IdBanca do
    begin
      Connection:=ControlCuentasBancarias.Coneccion_1;
      Close;
      SQL.Clear;
      SQL.Add('select id_banca from bancas where numero_Banca = :p0;');
      Parameters[0].Value:=NBanca;
      Open;
      Result:=fieldbyname('id_banca').AsInteger;
      Free;
    end;
end;   }

procedure TFRelacionGananciaGastosDeudas.InsertaGastoTem(NBanca: Integer;
  DireccionB, DescripcionG, FacturaG: string; MontoGasto, Diferencia: Double; DebitarA: Integer;
  FechaG: TDateTime; IdBanca, IdEmpleado:Integer);
begin
  MData_1.Active:=True;
  MData_1.Append;
  MData_1IdBanca.Value:=IdBanca;
  MData_1IdEmpBanca.Value:=IdEmpleado;
  MData_1NBanca.AsInteger:=NBanca;
  MData_1DireccionB.AsString:=DireccionB;
  MData_1DescripcionG.AsString:=DescripcionG;
  MData_1MontoGasto.AsFloat:=MontoGasto;
  MData_1DebitarA.AsInteger:=DebitarA;
  MData_1FechaG.AsDateTime:=FechaG;
  MData_1FacturaG.Value:=FacturaG;
  MData_1Diferencia.value:=Diferencia;
  MData_1EsNuevo.Value:=1;
  MData_1Origen.Value:=0;
  MData_1.Post;
end;

procedure TFRelacionGananciaGastosDeudas.EliminaGastoTem;
begin
  MData_1.Delete;
end;

procedure TFRelacionGananciaGastosDeudas.EliminarGasto1Click(
  Sender: TObject);
var
  MensajeDLg:Integer;
begin
  if(MData_1.RecordCount > 0)then
    begin
      MData_GastosEditar.Active:=True;
      MensajeDLg:=MessageDlg('Confirme que desea eliminar este registro.', mtConfirmation,[mbYes,mbNo],0);
      if(MensajeDLg = mrYes)then
        begin
          MData_GastosEditar.Append;
          MData_GastosEditarIdGasto.Value:=MData_1IdGasto.AsInteger;
          MData_GastosEditar.Post;
          ECal_TotalGastos.Value:=ECal_TotalGastos.Value-MData_1MontoGasto.AsFloat;
          ECal_MontoFaltante.Value:=CalculaDiferencia(ECal_VeneficiosBanca.Value,ECal_MontoRecivido.Value,ECal_TotalGastos.Value);
          EliminaGastoTem;          
        end
      else
        begin
          BBT_Agregar.Tag:=0;
          BBT_Agregar.Caption:='Agregar(Suma)';
          MData_GastosEditar.Active:=False;
        end;
    end
  else
    begin
      MessageDlg('No hay datos para eliminar.',mtInformation,[mbOK],0);
    end;
end;

procedure TFRelacionGananciaGastosDeudas.ModificaGastoTemp(
  IdGasto: Integer);
begin
  _FOpciones:=TFOpciones.Create(Self);
  MData_1.Active:=True;
  MData_1.Edit;
  MData_1Id.AsInteger:=IdGasto;
  MData_1DireccionB.AsString:=_FOpciones.BuscaDireccionBanca(StrToInt(CBB_NBancas.Text));
  MData_1DescripcionG.AsString:=M_DescripcionG.Text;
  MData_1MontoGasto.AsFloat:=ECal_Gasto.Value;
  MData_1DebitarA.AsInteger:=_FOpciones.BuscaIdVenf(CBB_CuentaDestino.Text);
  MData_1FechaG.AsDateTime:=DateOf(Calendario_1.Date);
  MData_1Diferencia.Value:=ECal_MontoFaltante.Value;
  MData_1FacturaG.Value:=EL_1.Text;
  MData_1EsNuevo.Value:=0;
  MData_1Origen.Value:=0;
  MData_1.Post;
  MessageDlg('Datos modificados con éxito.',mtInformation,[mbOK],0);
end;

procedure TFRelacionGananciaGastosDeudas.LlenarCamposGasto;
begin
  ECal_Gasto.Value:=MData_1MontoGasto.AsFloat;
  M_DescripcionG.Text:=MData_1DescripcionG.AsString;
  CBB_CuentaDestino.ItemIndex:=0;
  EL_1.Text:=MData_1FacturaG.AsString;
end;

procedure TFRelacionGananciaGastosDeudas.Modificar1Click(Sender: TObject);
begin
    if(MData_1.RecordCount > 0)then
    begin
      LlenarCamposGasto;
      BBT_Agregar.Caption:='Agregar(Editar)';
      BBT_Agregar.Tag:=2;
      BBT_Agregar.Enabled:=True;
      IdGasto:=MData_1Id.AsInteger;
      GastoTemp:=MData_1MontoGasto.AsFloat;
    end;
end;

procedure TFRelacionGananciaGastosDeudas.BBT_AgregarClick(Sender: TObject);
var
  Tgasto:Double;
begin
  LB_4.Font.Color:=0;
  LB_14.Font.Color:=0;
  LB_5.Font.Color:=0;
  if(Trim(CBB_NBancas.Text) <> '')then
    begin
      if(Trim(ECal_Gasto.Text) <> '')then
        begin
          if(ValidaCamposGasto = True)then
            begin
              if BBT_Agregar.Tag = 0 then
                begin
                  _FOpciones:=TFOpciones.Create(Self);
                  ECal_TotalGastos.Value:=ECal_TotalGastos.Value+ECal_Gasto.Value;
                  ECal_MontoFaltante.Value:=CalculaDiferencia(ECal_VeneficiosBanca.Value,ECal_MontoRecivido.Value,ECal_TotalGastos.Value);
                  InsertaGastoTem(StrToInt(CBB_NBancas.Text),_FOpciones.BuscaDireccionBanca(StrToInt(CBB_NBancas.Text)),M_DescripcionG.Text,
                                  EL_1.Text,ECal_Gasto.Value,ECal_MontoFaltante.Value,_FOpciones.BuscaIdVenf(CBB_CuentaDestino.Text), DateOf(Calendario_1.Date),
                                  ObternerIdBanca(StrToInt(CBB_NBancas.Text)),Id_Emp);
                  MData_1.Open;
                  Limpiar;
                end
              else
              if(BBT_Agregar.Tag = 2)then
                begin
                  Tgasto:=ECal_TotalGastos.Value-GastoTemp;
                  ModificaGastoTemp(IdGasto);
                  ECal_TotalGastos.Value:=Tgasto+ECal_Gasto.Value;
                  //ECal_TotalGastos.Value:=ECal_TotalGastos.Value-ECal_Gasto.Value;
                  ECal_MontoFaltante.Value:=CalculaDiferencia(ECal_VeneficiosBanca.Value,ECal_MontoRecivido.Value,ECal_TotalGastos.Value);
                  Limpiar;
                end;

              BBT_Agregar.Caption:='Agregar(Sumar)';
              BBT_Agregar.Tag:=0;
            end;
        end
      else
        begin
          JvBalloonHint1.ActivateHint(JvGroupBox3,'Debe suministrar la información necesaria para registrar un gasto.'+#13+'- Monto Gasto.'+#13+
          '- Descripción del gasto.'+#13+'- Debitar.'+#13+#13+'Esta infrormación es requerida para registrar un gasto.',ikError,'Error',5000);
          //MessageDlg('Debe suministrar la información necesaria para registrar un gasto.'+#13+'- Monto Gasto.'+#13+
          //'- Descripción del gasto.'+#13+'- Debitar.'+#13+#13+'Esta infrormación es requerida para registrar un gasto.',mtInformation,[mbOK],0);
        end;
    end
  else
    begin
      JvBalloonHint1.ActivateHint(CBB_NBancas,'Seleccione un número de banca para continuar.',ikError,'Error',3000);
    end;

end;

function TFRelacionGananciaGastosDeudas.ValidaComposBancos: Boolean;
var
  MensajeDLg:Integer;
begin
  if(Trim(ECal_MontoRecivido.Text) <> '')then
    begin
      if(CBB_NombreBanco.ItemIndex = -1)then
        begin
          Result:=False;
          LB_8.Font.Color:=clRed;
          if(JvGroupBox2.Enabled = True)then
            begin
              CBB_NombreBanco.SetFocus;
            end;
          JvBalloonHint1.ActivateHint(CBB_NombreBanco,'Seleccione un banco en el cual se depositará el monto efectivo.',ikError,'Error',5000);
          //MessageDlg('Seleccione un banco en el cual se depositará el monto efectivo.', mtInformation, [mbOK],0);
        end
      else
      if(CBB_Cuenta.ItemIndex = -1)then
        begin
          Result:=False;
          LB_9.Font.Color:=clRed;
          if(JvGroupBox2.Enabled = True)then
            begin
              CBB_Cuenta.SetFocus;
            end;
          JvBalloonHint1.ActivateHint(CBB_Cuenta,'Seleccione una cuenta de banco.',ikError,'Error',5000);
         // MessageDlg('Seleccione una cuenta de banco.', mtInformation, [mbOK],0);
        end
      else
        begin
          Result:=True;
        end;
    end
  else
    begin
      Result:=True;
    end;
end;

procedure TFRelacionGananciaGastosDeudas.CBB_NombreBancoKeyPress(
  Sender: TObject; var Key: Char);
begin
if(Key = #13)then
  begin
    CBB_Cuenta.SetFocus;
  end;
end;

procedure TFRelacionGananciaGastosDeudas.CBB_CuentaKeyPress(
  Sender: TObject; var Key: Char);
begin
  if(Key = #13)then
    begin
      EL_NumeroRBanco.SetFocus;
    end;
end;

procedure TFRelacionGananciaGastosDeudas.EL_NumeroRBancoKeyPress(
  Sender: TObject; var Key: Char);
begin
  if(Key = #13)then
    begin
      ECal_Gasto.SetFocus;
    end;
end;

procedure TFRelacionGananciaGastosDeudas.CBB_NBancasKeyPress(
  Sender: TObject; var Key: Char);
begin
  if(Key = #13)then
    begin
      ECal_VeneficiosBanca.SetFocus;
    end;
end;

function TFRelacionGananciaGastosDeudas.ValidaCamposGasto: Boolean;
begin
  if(Trim(ECal_Gasto.Text) <> '')then
    begin
      if(Trim(M_DescripcionG.Text) = '')then
        begin
          Result:=False;
          LB_14.Font.Color:=clRed;
          if(JvGroupBox3.Enabled = True)then
            begin
              M_DescripcionG.SetFocus;
              JvBalloonHint1.ActivateHint(M_DescripcionG,'Ingrese una descripción del gasto para continuar.',ikError,'Error',5000);
            end;
          //MessageDlg('Ingrese una descripción del gasto para continuar.',mtInformation,[mbOK],0);
        end
      else
      if(CBB_CuentaDestino.ItemIndex = -1)then
        begin
          Result:=False;
          LB_5.Font.Color:=clRed;
          if(JvGroupBox3.Enabled = True)then
            begin
              CBB_CuentaDestino.SetFocus;
              JvBalloonHint1.ActivateHint(CBB_CuentaDestino,'Seleccione a quien se le realizará el débito.',ikError,'Error',5000);
            end;
          //MessageDlg('Seleccione a quien se le realizara el debito.',mtInformation,[mbOK],0);
        end
      else
        begin
          Result:=True;
        end;
    end
  else
    begin
      Result:=True;
    end;
end;

procedure TFRelacionGananciaGastosDeudas.M_DescripcionGKeyPress(
  Sender: TObject; var Key: Char);
begin
  if(Key in['a'..'z','ñ'])then
    begin
      Key := UpCase(Key);
    end;
    if(Key = #13)then
    begin
      CBB_CuentaDestino.SetFocus;
    end;
end;

procedure TFRelacionGananciaGastosDeudas.BuscaDatosBenBanca(
  NBanca: Integer; FechaCreado:TDateTime);
var
  Qr_DetallesGastos, Qr_Beneficios, Qr_DetallesCuentaBanco:TADOQuery;
begin
  try
    //Qr_Bancas:=TADOQuery.Create(Self);
    with Qr_Bancas do
      begin
        //Connection:=ControlCuentasBancarias.Coneccion_1;
        Close;
        {SQL.Clear;
        //SQL.Add('id_banca, numero_banca from Bancas where (estado = 1)and(numero_banca = :p0);');
        SQL.Add('select b.id_banca, b.numero_banca, b.id_empleado_banca, dc.id_DetallesCuentasBancarias, dc.credito, dc.numeroTransaccion');
        SQL.Add(', dc.id_cuenta,b.direccion_Banca from Bancas as b right join DetallesCuentaBancaria as dc');
        SQL.Add('on(b.id_banca = dc.id_banca)');
        SQL.Add('where (dc.id_banca = :p0)and(dc.fechaCreado = :p1); '); }
        Parameters[0].Value:=ObternerIdBanca(NBanca);
        //Parameters[1].Value:=FechaCreado;
        //Parameters[2].Value:=FechaCreado;
        Open;
      end;
      Qr_Bancas.RecordCount;
    if(Qr_Bancas.RecordCount > 0)then
      begin
        //Qr_Beneficios:=TADOQuery.Create(Self);
        Qr_DetallesGastos:=TADOQuery.Create(Self);
        with Qr_DetallesGastos do
          begin
            Connection:=ControlCuentasBancarias.Coneccion_1;
            Close;
            SQL.Clear;
            SQL.Add('select id_gasto, montoGasto, detallesGasto, debitarA, origen, fechaGasto, numeroComprobante');
            SQL.Add(',(select sum(montoGasto) from Gastos where (id_banca = :p0)and(fechaGasto = :p1)) as tGasto');
            SQL.Add('from Gastos where (id_banca = :p2)and(fechaGasto = :p3);');
            Parameters[0].Value:=ObternerIdBanca(NBanca);
            Parameters[1].Value:=FechaCreado;
            Parameters[2].Value:=ObternerIdBanca(NBanca);
            Parameters[3].Value:=FechaCreado;
            Open;
          end;
        Qr_DetallesGastos.RecordCount;
        Qr_DetallesCuentaBanco:=TADOQuery.Create(Self);
        with Qr_DetallesCuentaBanco do
          begin
            Connection:=ControlCuentasBancarias.Coneccion_1;
            Close;
            SQL.Clear;
            SQL.Add('select dc.id_cuenta, dc.id_DetallesCuentasBancarias, dc.credito, dc.numeroTransaccion, cb.id_Banco_Cuentas');
            SQL.Add('from DetallesCuentaBancaria as dc, CuentasBancarias as cb');
            SQL.Add('where(dc.id_cuenta = cb.id_CuentaBancaria)and(dc.id_banca = :p0)and(dc.fechaCreado = :p1);');
            Parameters[0].Value:=ObternerIdBanca(NBanca);
            Parameters[1].Value:=FechaCreado;
            Open;
          end;
        Qr_DetallesCuentaBanco.RecordCount;
        Qr_Beneficios:=TADOQuery.Create(Self);
        with Qr_Beneficios do
          begin
            Connection:=ControlCuentasBancarias.Coneccion_1;
            Close;
            SQL.Clear;
            SQL.Add('select id_CxCBancas, veneficiosVenta, ingresoEfectivo, diferencia');
            SQL.Add('from CxCBancas');
            SQL.Add('where (id_banca = :p0)and(fecha = :p1);');
            Parameters[0].Value:=ObternerIdBanca(NBanca);
            Parameters[1].Value:=FechaCreado;
            Open;
          end;
        if (Qr_Beneficios.RecordCount = 0)then
          begin
            BeneficiosLimpio:=False;
          end
        else
          begin
            BeneficiosLimpio:=True;
          end;
        Qr_DetallesGastos.First;
        MData_1.Close;
        if(Qr_DetallesGastos.RecordCount > 0)then
          begin
            while not Qr_DetallesGastos.Eof do
              begin
                MData_1.Active:=True;
                MData_1.Append;
                MData_1IdBanca.Value:=Qr_Bancasid_banca.Value;
                MData_1IdCxCBanca.Value:=Qr_Beneficios.FieldByName('id_CxCBancas').AsInteger;
                MData_1IdCuenta.Value:=Qr_DetallesCuentaBanco.FieldByName('id_cuenta').AsInteger;
                MData_1IdGasto.Value:=Qr_DetallesGastos.FieldByName('id_gasto').Value;
                MData_1IdEmpBanca.Value:=Qr_Bancasid_empleado_banca.Value;
                MData_1IdDetallesCB.Value:=Qr_DetallesCuentaBanco.FieldByName('id_DetallesCuentasBancarias').AsInteger;
                MData_1BeneficiosVenta.Value:=Qr_Beneficios.FieldByName('veneficiosVenta').AsFloat;
                MData_1NumeroTransCB.Value:=Qr_DetallesCuentaBanco.FieldByName('numeroTransaccion').AsString;
                MData_1NBanca.AsInteger:=Qr_Bancasnumero_banca.Value;
                MData_1IdCuentaBanco.Value:=Qr_DetallesCuentaBanco.FieldByName('id_Banco_Cuentas').AsInteger;
                MData_1DireccionB.AsString:=Qr_Bancasdireccion_Banca.Value;
                MData_1DescripcionG.AsString:=Qr_DetallesGastos.FieldByName('detallesGasto').AsString;
                MData_1MontoGasto.AsFloat:=Qr_DetallesGastos.FieldByName('montoGasto').AsFloat;
                MData_1DebitarA.AsInteger:=Qr_DetallesGastos.FieldByName('debitarA').AsInteger;
                MData_1FechaG.AsDateTime:=Qr_DetallesGastos.FieldByName('fechaGasto').Value;
                MData_1TGasto.Value:=Qr_DetallesGastos.FieldByName('tGasto').AsFloat;
                MData_1IngresoRecibido.Value:=Qr_Beneficios.FieldByName('ingresoEfectivo').AsFloat;
                MData_1FacturaG.Value:=Qr_DetallesGastos.FieldByName('numeroComprobante').AsString;
                MData_1Diferencia.Value:=Qr_Beneficios.FieldByName('diferencia').AsFloat;
                MData_1EsNuevo.Value:=0;
                MData_1Origen.Value:=0;
                MData_1.Post;
                Qr_DetallesGastos.Next;
              end;
          end
        else
          begin
            MData_1.Active:=True;
            MData_1.Append;
            MData_1IdBanca.Value:=Qr_Bancasid_banca.Value;
            MData_1IdCxCBanca.Value:=Qr_Beneficios.FieldByName('id_CxCBancas').AsInteger;
            MData_1IdCuenta.Value:=Qr_DetallesCuentaBanco.FieldByName('id_cuenta').AsInteger;
            MData_1IdGasto.Value:=Qr_DetallesGastos.FieldByName('id_gasto').AsInteger;
            MData_1IdEmpBanca.Value:=Qr_Bancasid_empleado_banca.Value;
            MData_1IdDetallesCB.Value:=Qr_DetallesCuentaBanco.FieldByName('id_DetallesCuentasBancarias').AsInteger;
            MData_1BeneficiosVenta.Value:=Qr_Beneficios.FieldByName('veneficiosVenta').AsFloat;
            MData_1NumeroTransCB.Value:=Qr_DetallesCuentaBanco.FieldByName('numeroTransaccion').AsString;
            MData_1NBanca.AsInteger:=Qr_Bancasnumero_banca.Value;
            MData_1IdCuentaBanco.Value:=Qr_DetallesCuentaBanco.FieldByName('id_Banco_Cuentas').AsInteger;
            MData_1DireccionB.AsString:=Qr_Bancasdireccion_Banca.Value;
            MData_1DescripcionG.AsString:=Qr_DetallesGastos.FieldByName('detallesGasto').AsString;
            MData_1MontoGasto.Visible:=false;//AsFloat:=Qr_DetallesGastos.FieldByName('montoGasto').AsFloat;
            MData_1DebitarA.AsInteger:=Qr_DetallesGastos.FieldByName('debitarA').AsInteger;
            MData_1FechaG.Visible:=False; //Qr_DetallesGastos.FieldByName('fechaGasto').AsDateTime;
            MData_1TGasto.Value:=Qr_DetallesGastos.FieldByName('tGasto').AsFloat;
            MData_1IngresoRecibido.Value:=Qr_Beneficios.FieldByName('ingresoEfectivo').AsFloat;
            MData_1FacturaG.Value:=Qr_DetallesGastos.FieldByName('numeroComprobante').AsString;
            MData_1Diferencia.Value:=Qr_Beneficios.FieldByName('diferencia').AsFloat;
            MData_1EsNuevo.Value:=0;
            MData_1Origen.Value:=0;
            MData_1.Post;
          end;
        CBB_NombreBancoChange(Self);
      end;
  finally
      Qr_Beneficios.Free;
      Qr_DetallesGastos.Free;
      Qr_DetallesCuentaBanco.Free;
  end;
end;

function TFRelacionGananciaGastosDeudas.ObternerIdBanca(
  NBanca: Integer): Integer;
var
  Qr_ObtenerIdB:TADOQuery;
begin
  try
    Qr_ObtenerIdB:=TADOQuery.Create(Self);
    with Qr_ObtenerIdB do
      begin
        Connection:=ControlCuentasBancarias.Coneccion_1;
        Close;
        SQL.Clear;
        SQL.Add('select id_banca from bancas where numero_banca = :p0;');
        Parameters[0].Value:=NBanca;
        Open;
        Result:=FieldByName('id_banca').AsInteger;
      end;
  finally
    Qr_ObtenerIdB.Free;
  end;
end;

procedure TFRelacionGananciaGastosDeudas.LlenarCamposDB;
var
  I,J:Integer;
begin
  //LimpiarCampos(0);
  ECal_VeneficiosBanca.Value:=MData_1BeneficiosVenta.AsFloat;
  ECal_MontoRecivido.Value:=MData_1IngresoRecibido.Value;
  ECal_TotalGastos.Value:=MData_1TGasto.Value;
  ECal_MontoFaltante.Value:=MData_1BeneficiosVenta.Value - (MData_1IngresoRecibido.Value + MData_1TGasto.Value);
  for I := 0 to 5 do
    begin
      if(Id_BancoArray[I] = MData_1IdCuentaBanco.Value)then
        begin
          LlenarComboNBanco(1);
          CBB_NombreBanco.ItemIndex:=I;

          LlenarComboCuentas(Id_BancoArray[CBB_NombreBanco.ItemIndex]);
          //Exit;
        end;
      if(Id_CuentaBArray[I] = MData_1IdCuenta.Value)then
        begin
          CBB_Cuenta.ItemIndex:=I;
          //Exit;
        end;
    end;
  SBT_2.Down:=True;
  if(CompareDate(DateOf(Now),DateOf(Calendario_1.Date)) = 1){and(BeneficiosLimpio = True)}then
    begin
      SBT_1.Visible:=True;
      SBT_2.Visible:=True;
      HabilitaComponentes(0);
      //BBT_Agregar.Enabled:=False;
    end
  else
  if(CompareDate(DateOf(Now),DateOf(Calendario_1.Date)) = 0)then
    begin
      HabilitaComponentes(3);
      //BBT_Agregar.Enabled:=False;
    end
  else
    begin
      SBT_1.Visible:=False;
      SBT_2.Visible:=False;
      HabilitaComponentes(2);
    end;                                                                                                        
end;

procedure TFRelacionGananciaGastosDeudas.HK_1HotKey(Sender: TObject);
begin
  Self.Close;
end;

procedure TFRelacionGananciaGastosDeudas.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if(Key = #27)then
    Self.Close;
end;

procedure TFRelacionGananciaGastosDeudas.HabilitaComponentes(
  AccionHDh: Integer);
begin
  if(AccionHDh = 0)then      //Dehabilita componentes
    begin
      if(BeneficiosLimpio = True)then
        begin
          JvGroupBox1.Enabled:=False;
          JvGroupBox2.Enabled:=False;
          JvGroupBox3.Enabled:=False;
          GB_1.Enabled:=False;
          BBT_Guardar.Tag:=0;
          BBT_Guardar.Caption:='&Guardar';
          CBB_NBancas.SetFocus;
        end
      else
      if(CompareDate(DateOf(Now),DateOf(Calendario_1.Date)) = 1)then
        begin
          JvGroupBox1.Enabled:=False;
          JvGroupBox2.Enabled:=False;
          JvGroupBox3.Enabled:=False;
          GB_1.Enabled:=True;
          BBT_Guardar.Tag:=0;
          BBT_Agregar.Enabled:=True;
          BBT_Guardar.Caption:='&Guardar';
          CBB_NBancas.SetFocus;
        end
      else
        begin
          JvGroupBox1.Enabled:=True;
          JvGroupBox2.Enabled:=True;
          JvGroupBox3.Enabled:=True;
          GB_1.Enabled:=True;
          BBT_Guardar.Tag:=0;
          BBT_Agregar.Enabled:=True;
          BBT_Guardar.Caption:='&Guardar';
          CBB_NBancas.SetFocus;
        end;
    end
  else
  if(AccionHDh = 1)then   //modo edicion
    begin
      if((BeneficiosLimpio = True))then
        begin
          JvGroupBox1.Enabled:=True;
          //JvGroupBox2.Enabled:=True;
          JvGroupBox3.Enabled:=True;
          GB_1.Enabled:=True;
          BBT_Guardar.Tag:=1;
          BBT_Guardar.Caption:='&Mod. Datos';
          ECal_VeneficiosBanca.SetFocus;
        end
      else
      if(CompareDate(DateOf(Now),DateOf(Calendario_1.Date)) = 1)then
        begin
          JvGroupBox1.Enabled:=True;
          JvGroupBox2.Enabled:=True;
          JvGroupBox3.Enabled:=True;
          GB_1.Enabled:=True;
          BBT_Guardar.Tag:=0;
          BBT_Agregar.Enabled:=True;
          BBT_Guardar.Caption:='&Guardar';
          ECal_VeneficiosBanca.SetFocus;
        end;
    end
  else
  if(AccionHDh = 2)then   //normal
    begin
      JvGroupBox1.Enabled:=True;
      JvGroupBox2.Enabled:=True;
      JvGroupBox3.Enabled:=True;
      GB_1.Enabled:=True;
      BBT_Guardar.Tag:=0;
      BBT_Agregar.Enabled:=True;
      BBT_Guardar.Caption:='&Guardar';
      CBB_NBancas.SetFocus;
      SBT_1.Visible:=False;
      SBT_2.Visible:=False;
    end
  else
  if(AccionHDh = 3)then
    begin
      if(CompareDate(DateOf(Now),DateOf(Calendario_1.Date)) = 0)and(BeneficiosLimpio = True)then
        begin
          JvGroupBox1.Enabled:=True;
          JvGroupBox2.Enabled:=True;
          JvGroupBox3.Enabled:=True;
          GB_1.Enabled:=True;
          BBT_Guardar.Tag:=1;
          BBT_Guardar.Caption:='&Mod. Datos';
          SBT_1.Visible:=False;
          SBT_2.Visible:=False;
          //ECal_VeneficiosBanca.SetFocus;
        end
      else
      if(BeneficiosLimpio = False)then
        begin
          JvGroupBox1.Enabled:=True;
          JvGroupBox2.Enabled:=True;
          JvGroupBox3.Enabled:=True;
          GB_1.Enabled:=True;
          BBT_Guardar.Tag:=0;
          BBT_Agregar.Tag:=0;
          BBT_Agregar.Enabled:=True;
          BBT_Guardar.Caption:='&Guardar';
          SBT_1.Visible:=False;
          SBT_2.Visible:=False;
          //ECal_VeneficiosBanca.SetFocus;
        end;
    end;
end;

procedure TFRelacionGananciaGastosDeudas.SBT_2Click(Sender: TObject);
begin
  SBT_2.Down:=True;
  HabilitaComponentes(0);
end;

procedure TFRelacionGananciaGastosDeudas.SBT_1Click(Sender: TObject);
begin
  SBT_1.Down:=True;
  HabilitaComponentes(1);//si es 1 habilita los componentes y habilita modificar
end;

procedure TFRelacionGananciaGastosDeudas.GuardaModificacion(IdCxCBanca,
  IdDetalleCB, IdGasto, DebitarA, IdBanca, IdEmpleado: Integer; BeneficioB, MontoD, MontoG, Diferencia:
  Double; NumeroTransaccion, FacturaG, DescripcionG: string; FechaG:TDateTime;
  EsNuevoG, EstadoCuenta, SMensaje: Integer);
begin
  try
    _FOpciones:=TFOpciones.Create(Self);
    _FGastos:=TFGastos.Create(Self);
    _CXCBancas:=TCxC.Create;      
    _CXCBancas.ModificaDestallesCuenta(BeneficioB,MontoD,Diferencia,IdCxCBanca,EstadoCuenta,0);
    _FOpciones.ModificaDepositoBanco(MontoD,NumeroTransaccion,IdDetalleCB,0);
    if(EsNuevoG = 1)then
      begin
        _FGastos.InsertaGasto(IdBanca,MontoG,DescripcionG,DebitarA,FacturaG,FechaG,Now,IdEmpleado,0,0);
      end
    else
    if(EsNuevoG = 0)then
      begin
        _FGastos.ModificaGasto(IdGasto,IdBanca,MontoG,DescripcionG,DebitarA,FacturaG,FechaG,0);
      end;
    if(SMensaje = 1)then
      //MessageDlg('Datos modificados con éxito.',mtInformation,[mbOK],0);
  finally
    _FOpciones.Free;
    _FGastos.Free;
    _CXCBancas.Free;
    //MData_GastosEditar.Active:=False;
  end;
end;

procedure TFRelacionGananciaGastosDeudas.CBB_CuentaDestinoKeyPress(
  Sender: TObject; var Key: Char);
begin
  if(Key = #13)then
    EL_1.SetFocus;
end;

procedure TFRelacionGananciaGastosDeudas.EL_1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if(Key = #13)then
    BBT_Agregar.SetFocus;
end;

procedure TFRelacionGananciaGastosDeudas.FormCreate(Sender: TObject);
begin
  Calendario_1.Date:=Now;
end;

end.
