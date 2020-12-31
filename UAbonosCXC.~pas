unit UAbonosCXC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Mask, JvExMask, JvToolEdit, JvBaseEdits,
  Grids, DBGrids, DB, JvDataSource, JvMemoryDataset, ADODB, DateUtils,
  ExtCtrls, Menus, RpDefine, RpCon, RpConDS, RpBase, RpSystem, RpRave,
  JvComponentBase, JvAppHotKey;

type
  TFAbonoCXC = class(TForm)
    GB_1: TGroupBox;
    MData_CXC: TJvMemoryData;
    DS_DetalleDeuda: TJvDataSource;
    DBGRID_1: TDBGrid;
    MData_CXCId: TAutoIncField;
    MData_CXCDebito: TFloatField;
    MData_CXCNBanca: TIntegerField;
    MData_CXCIdCxC: TIntegerField;
    MData_CXCFecha: TDateTimeField;
    GB_2: TGroupBox;
    LB_2: TLabel;
    LB_1: TLabel;
    ECal_1: TJvCalcEdit;
    GB_3: TGroupBox;
    ECal_2: TJvCalcEdit;
    EL_1: TLabeledEdit;
    LB_3: TLabel;
    MData_CXCAbono: TFloatField;
    MData_CXCDiferencia: TFloatField;
    BBT_Aplicar: TBitBtn;
    LB_4: TLabel;
    PM_CxC: TPopupMenu;
    MM_Selecionar1: TMenuItem;
    MM_N1: TMenuItem;
    MM_DesglosePagos1: TMenuItem;
    MM_Visualizar1: TMenuItem;
    MM_N2: TMenuItem;
    MM_Imprimir1: TMenuItem;
    RVC_1: TRvDataSetConnection;
    RVP_1: TRvProject;
    RVS_1: TRvSystem;
    BBT_1: TBitBtn;
    Qr_MostrarNombre: TADOQuery;
    Qr_MostrarNombre_nombre: TWideStringField;
    RVC_2: TRvDataSetConnection;
    Qr_MuestraAbonos: TADOQuery;
    Qr_MuestraAbonoscredito: TFloatField;
    Qr_MuestraAbonosdescripcion: TWideStringField;
    Qr_MuestraAbonosfecha: TDateTimeField;
    Qr_MuestraAbonosnumero_banca: TIntegerField;
    Qr_MuestraAbonosid_cxcBancas: TAutoIncField;
    RVC_3: TRvDataSetConnection;
    BBT_Salir: TBitBtn;
    procedure DBGRID_1DblClick(Sender: TObject);
    procedure BBT_AplicarClick(Sender: TObject);
    procedure MM_Selecionar1Click(Sender: TObject);
    procedure MM_Visualizar1Click(Sender: TObject);
    procedure ECal_2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BBT_1Click(Sender: TObject);
    procedure EL_1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BBT_AplicarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BBT_1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ECal_2KeyPress(Sender: TObject; var Key: Char);
    procedure EL_1KeyPress(Sender: TObject; var Key: Char);
    procedure BBT_SalirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure InsertaAbonoCxC(IdCxC:Integer; Credito:Double; Descripcion:string; Fecha:TDateTime);
    procedure LimpiarCampos;
    function ValidaCampos:Boolean;
  public
    { Public declarations }
    procedure MostrarDetDeudad(IdEmpleado:Integer);
    function BuscaAbonoCXC(IdCXC:Integer):Double;
    procedure MostrarDetallesCXC;
    function SumaAbono(IdEmpleado:Integer):Double;
//    function BuscaIdCXC()
  end;

var
  FAbonoCXC: TFAbonoCXC;
  IdCxCBancas:Integer;   

implementation

uses UPrincipal, UBuscaEmpleado, UCxC, UEmpleados, UIngresosBancas,
  UGastos, UOpciones, UCuentasBancarias;

{$R *.dfm}

procedure TFAbonoCXC.MostrarDetDeudad(IdEmpleado: Integer);
var
  Qr_DetDeuda:TADOQuery;
  I:Integer;
  DeudaTotal, GastoB:Double;
begin
  DeudaTotal:=0;
  GastoB:=0;
  Qr_DetDeuda:=TADOQuery.Create(Self);
  with Qr_DetDeuda do
    begin
      Connection:=ControlCuentasBancarias.Coneccion_1;
      Close;
      SQL.Clear;
      SQL.Add('select * from cxcBancas as c, bancas as b');
      SQL.Add('where(c.id_banca = b.id_banca)and(c.estadoCuenta = -1)and(c.id_Empleado = :p0);');
      Parameters[0].Value:=IdEmpleado;
      //Parameters[1].Value:=IdEmpleado;
      Open;
    end;
  MData_CXC.Close;
  MData_CXC.Active:=True;
  for I:= 0 to Qr_DetDeuda.RecordCount-1 do
  begin
    MData_CXC.Append;
    GastoB:=(Qr_DetDeuda.fieldbyname('veneficiosVenta').AsFloat - Qr_DetDeuda.fieldbyname('ingresoEfectivo').AsFloat)-Qr_DetDeuda.fieldbyname('diferencia').AsFloat;
    MData_CXCDebito.AsFloat:=Qr_DetDeuda.fieldbyname('veneficiosVenta').AsFloat - (Qr_DetDeuda.fieldbyname('ingresoEfectivo').AsFloat+GastoB);
    MData_CXCIdCxC.AsInteger:=Qr_DetDeuda.fieldbyname('id_cxcBancas').AsInteger;
    MData_CXCNBanca.AsInteger:=Qr_DetDeuda.fieldbyname('numero_banca').AsInteger;
    MData_CXCFecha.AsDateTime:=DateOf(Qr_DetDeuda.fieldbyname('c.fecha').AsDateTime);
    MData_CXCAbono.AsFloat:=BuscaAbonoCXC(Qr_DetDeuda.fieldbyname('id_cxcBancas').AsInteger);

    MData_CXCDiferencia.AsFloat:=(Qr_DetDeuda.fieldbyname('veneficiosVenta').AsFloat - (Qr_DetDeuda.fieldbyname('ingresoEfectivo').AsFloat+GastoB))-
                                 (BuscaAbonoCXC(Qr_DetDeuda.fieldbyname('id_cxcBancas').AsInteger));
    MData_CXC.Post;
    GastoB:=0;
    Qr_DetDeuda.Next;
  end;
  Qr_DetDeuda.Free;
  MData_CXC.Open;
  MData_CXC.First;
  for I:= 0 to MData_CXC.RecordCount-1 do
    begin
      DeudaTotal:=DeudaTotal+MData_CXCDiferencia.AsFloat;
      MData_CXC.Next;
    end;
  ECal_1.Value:=DeudaTotal;
end;

procedure TFAbonoCXC.DBGRID_1DblClick(Sender: TObject);
begin
  if(MData_CXC.RecordCount > 0)then
    begin
      ECal_2.Value:=MData_CXCDiferencia.Value;
      IdCxCBancas:=MData_CXCIdCxC.AsInteger;
      GB_3.Enabled:=True;
      ECal_2.SetFocus;
    end;
end;

function TFAbonoCXC.BuscaAbonoCXC(IdCXC: Integer): Double;
var
  Qr_BAbonoCXC:TADOQuery;
begin
  Qr_BAbonoCXC:=TADOQuery.Create(Self);
  with Qr_BAbonoCXC do
    begin
      Connection:=ControlCuentasBancarias.Coneccion_1;
      Close;
      SQL.Clear;
      SQL.Add('select sum(credito) as cred from detCxcCobro where id_CxcBanca_detalle = :p0;');
      Parameters[0].Value:=IdCXC;
      Open;
      Result:=fieldbyname('cred').AsFloat;
      Free;
    end;
end;

procedure TFAbonoCXC.InsertaAbonoCxC(IdCxC: Integer; Credito: Double;
  Descripcion:string; Fecha: TDateTime);
var
  Qr_InsertaAbonoCxC:TADOQuery;
begin
  Qr_InsertaAbonoCxC:=TADOQuery.Create(Self);
  with Qr_InsertaAbonoCxC do
    begin
      Connection:=ControlCuentasBancarias.Coneccion_1;
      Close;
      SQL.Clear;
      SQL.Add('insert into detCxcCobro(id_cxcbanca_detalle, credito, descripcion, fecha)');
      SQL.Add('values(:p0, :p1, :p2, :p3)');
      Parameters[0].Value:=IdCxC;
      Parameters[1].Value:=Credito;
      Parameters[2].Value:=Descripcion;
      Parameters[3].Value:=Fecha;
      ExecSQL;
      Free;
      MessageDlg('Acción realizada con éxito.',mtInformation,[mbOK],0);
    end;
end;

procedure TFAbonoCXC.BBT_AplicarClick(Sender: TObject);
var
  dif:Double;
begin
  LB_4.Visible:=False;
  if(ValidaCampos = True)then
    begin
      _CXCBancas:=TCxC.Create;
      if(ECal_2.Value = MData_CXCDiferencia.AsFloat)then
        begin
          InsertaAbonoCxC(IdCxCBancas,ECal_2.Value,EL_1.Text,DateOf(Now));
          _CXCBancas.ModificaCuenta(IdCxCBancas,0);
        end
      else
      if(ECal_2.Value < MData_CXCDiferencia.AsFloat)then
        begin
          InsertaAbonoCxC(IdCxCBancas,ECal_2.Value,EL_1.Text,DateOf(Now));
          _CXCBancas.ModificaCuenta(IdCxCBancas,-1);
        end
      else
      if(ECal_2.Value > MData_CXCDiferencia.AsFloat)then
        begin
          dif:=ECal_2.Value - MData_CXCDiferencia.AsFloat;
          InsertaAbonoCxC(IdCxCBancas,MData_CXCDiferencia.AsFloat,EL_1.Text,DateOf(Now));
          _CXCBancas.ModificaCuenta(IdCxCBancas,0);
          LB_4.Font.Color:=clRed;
          LB_4.Caption:='has ingresado un monto superior al monto'+#13+'por cobrar con un excedente de $ '+FloatToStr(dif);
          LB_4.Visible:=True;
        end;
      _CXCBancas.Free;
      MostrarDetallesCXC;
      LimpiarCampos;
      GB_3.Enabled:=False;
    end;
end;
procedure TFAbonoCXC.MostrarDetallesCXC;
begin
  _CXCBancas:=TCxC.Create;
  MostrarDetDeudad(Id_empleadoBanca);
 // ECal_1.Value:=_CXCBancas.CalculaBalance(Id_empleadoBanca);//-SumaAbono(Id_empleadoBanca);

  _CXCBancas.Free;
end;

function TFAbonoCXC.SumaAbono(IdEmpleado: Integer): Double;
var
  Qr_SumaAbono:TADOQuery;
begin
  Qr_SumaAbono:=TADOQuery.Create(Self);
  with Qr_SumaAbono do
    begin
      Connection:=ControlCuentasBancarias.Coneccion_1;
      Close;
      SQL.Clear;                 
      SQL.Add('select sum(veneficios - ingresoefectivo) as TAbono from cxcBancas');
      SQL.Add('where(estadoCuenta = -1)and(id_Empleado = :p0);');
      Parameters[0].Value:=IdEmpleado;
      Open;
      Result:=fieldbyname('TAbono').AsFloat;
      Free;
    end;
end;

procedure TFAbonoCXC.LimpiarCampos;
begin
  ECal_2.Clear;
  EL_1.Clear;
end;

function TFAbonoCXC.ValidaCampos: Boolean;
begin
  if(Trim(ECal_2.Text) = '')then
    begin
      Result:=False;
      MessageDlg('Ingrese un monto para realizar el pago a esta cuenta.',mtInformation,[mbOK],0);
    end
  else
  if(Trim(EL_1.Text) = '')then
    begin
      Result:=False;
      MessageDlg('Ingrese una descripción sobre el pago que esta recibiendo.',mtInformation,[mbOK],0);
    end
  else
    begin
      Result:=True;
    end;
end;

procedure TFAbonoCXC.MM_Selecionar1Click(Sender: TObject);
begin
  DBGRID_1DblClick(Self);
end;

procedure TFAbonoCXC.MM_Visualizar1Click(Sender: TObject);
begin
  Qr_MostrarNombre.Close;
  Qr_MostrarNombre.Parameters[0].Value:=Id_empleadoBanca;;
  Qr_MostrarNombre.Open;
  with Qr_MuestraAbonos do
    begin
      Close;
      Parameters[0].Value:=MData_CXCIdCxC.AsInteger;
      Open;
    end;
    if(Qr_MuestraAbonos.RecordCount = 0)then
      begin
        MessageDlg('No existen datos para mostrar.',mtInformation,[mbOK],0);
      end
    else
      begin
        RVP_1.Execute;
      end;   
end;

procedure TFAbonoCXC.ECal_2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if(Key = VK_DOWN)then
    begin
      EL_1.SetFocus;
    end;
  if(Key = VK_RIGHT)then
    begin
      BBT_Aplicar.SetFocus;
    end;
  if(Key = VK_UP)then
    begin
      BBT_1.SetFocus;
    end;
end;

procedure TFAbonoCXC.BBT_1Click(Sender: TObject);
begin
  try
    _FEmpleados:=TFEmpleados.Create(Self);
    EnviarA:='CXC';
    _FBuscaEmpleado:=TFBuscaEmpleado.Create(Self);
    _FBuscaEmpleado.BBT_CrearNEmpleado.Enabled:=False;
    _FBuscaEmpleado.ShowModal;
  finally
    LB_4.Visible:=False;
    _FEmpleados.Free;
    _FBuscaEmpleado.free;
  end;
end;
procedure TFAbonoCXC.EL_1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if(Key = VK_DOWN)then
    begin
      DBGRID_1.SetFocus;
    end;
  if(Key = VK_UP)then
    begin
      BBT_Aplicar.SetFocus;
    end;
end;

procedure TFAbonoCXC.BBT_AplicarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if(Key = VK_DOWN)then
    begin
      EL_1.SetFocus;
    end;
  if(Key = VK_LEFT)then
    begin
      ECal_2.SetFocus;
    end;
  if(Key = VK_UP)then
    begin
      BBT_1.SetFocus;
    end;
end;

procedure TFAbonoCXC.BBT_1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if(Key = VK_DOWN)then
    begin
      ECal_2.SetFocus;
    end;
end;

procedure TFAbonoCXC.ECal_2KeyPress(Sender: TObject; var Key: Char);
begin
  if(Key = #13)then
    begin
      EL_1.SetFocus;
    end;
end;

procedure TFAbonoCXC.EL_1KeyPress(Sender: TObject; var Key: Char);
begin
  if(Key = #13)then
    begin
      BBT_Aplicar.SetFocus;
    end;
end;

procedure TFAbonoCXC.BBT_SalirClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFAbonoCXC.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if(Key = #27)then
    Self.Close;
end;

end.
