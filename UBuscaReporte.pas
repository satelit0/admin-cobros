unit UBuscaReporte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DateUtils, ComCtrls, JvExComCtrls, JvDateTimePicker,
  StdCtrls, Buttons, DB, ADODB, Mask, JvExMask, JvToolEdit, JvBaseEdits,
  DBCtrls, JvExControls, JvArrowButton, Menus, JvComponentBase, JvAppHotKey,
  JvBalloonHint;

type
  TFBuscaReportes = class(TForm)
    NB_1: TNotebook;
    GB_1: TGroupBox;
    DTP_FInicio: TJvDateTimePicker;
    DTP_FFin: TJvDateTimePicker;
    LB_1: TLabel;
    LB_2: TLabel;
    Qr_TotalVeneficios: TADOQuery;
    Qr_TotalVeneficiosTVenef: TFloatField;
    Qr_TotalGasto: TADOQuery;
    Qr_TotalGastoTgastos: TFloatField;
    Qr_BuscaGastoCons_Ban: TADOQuery;
    CBB_NombreVenef: TComboBox;
    LB_3: TLabel;
    GB_2: TGroupBox;
    BBT_EnviaA: TBitBtn;
    RB_EnviarPantalla: TRadioButton;
    RB_EnviarPrinter: TRadioButton;
    Qr_BuscaGastoCons_BanmontoGasto: TFloatField;
    Qr_BuscaGastoCons_BandetallesGasto: TWideStringField;
    Qr_BuscaGastoCons_BanfechaGasto: TDateTimeField;
    Qr_BuscaGastoCons_Bannumero_banca: TIntegerField;
    GB_3: TGroupBox;
    DTP_BancoFechaInicial: TJvDateTimePicker;
    DTP_BancoFechaFinal: TJvDateTimePicker;
    LB_5: TLabel;
    LB_4: TLabel;
    CBB_Banco: TComboBox;
    LB_6: TLabel;
    CBB_Cuenta: TComboBox;
    LB_7: TLabel;
    GB_4: TGroupBox;
    RB_BancoPantalla: TRadioButton;
    RB_Printer: TRadioButton;
    BBT_EnviarA: TBitBtn;
    Qr_MuestraDetallesCuentaBanco: TADOQuery;
    Qr_MuestraDetallesCuentaBancoId_DetallesCuentasBancarias: TAutoIncField;
    Qr_MuestraDetallesCuentaBancoId_Cuenta: TIntegerField;
    Qr_MuestraDetallesCuentaBancoDebito: TFloatField;
    Qr_MuestraDetallesCuentaBancoCredito: TFloatField;
    Qr_MuestraDetallesCuentaBancoNumeroTransaccion: TWideStringField;
    Qr_MuestraDetallesCuentaBancoDescripcion: TWideStringField;
    Qr_MuestraDetallesCuentaBancoFechaCreado: TDateTimeField;
    Qr_MuestraDetallesCuentaBancoFecha: TDateTimeField;
    LB_8: TLabel;
    GB_BuscaEmpleado: TGroupBox;
    SBT_BuscaEmpleado: TSpeedButton;
    DTP_FechaNomina: TJvDateTimePicker;
    LB_9: TLabel;
    GB_5: TGroupBox;
    RB_RNPantalla: TRadioButton;
    RB_RNPrinter: TRadioButton;
    BBT_1: TBitBtn;
    M_ConceptoPago: TMemo;
    GB_6: TGroupBox;
    DTP_TodoGastoFin: TJvDateTimePicker;
    DTP_TodoGastoInicio: TJvDateTimePicker;
    LB_10: TLabel;
    LB_11: TLabel;
    GB_7: TGroupBox;
    RB_3: TRadioButton;
    RB_4: TRadioButton;
    Qr_TGastosFecha: TADOQuery;
    Qr_TGastosFechanumero_Banca: TIntegerField;
    Qr_TGastosFechamontoGasto: TFloatField;
    Qr_TGastosFechadetallesGasto: TWideStringField;
    Qr_TGastosFechanumeroComprobante: TWideStringField;
    Qr_TGastosFechafechaGasto: TDateTimeField;
    BBT_SalirTGastosGenerales: TBitBtn;
    CBB_NoBanca: TComboBox;
    LB_12: TLabel;
    Qr_TGBancaDescrip: TADOQuery;
    Qr_TGBancaDescripnumero_Banca: TIntegerField;
    Qr_TGBancaDescripmontoGasto: TFloatField;
    Qr_TGBancaDescripdetallesGasto: TWideStringField;
    Qr_TGBancaDescripnumeroComprobante: TWideStringField;
    Qr_TGBancaDescripfechaGasto: TDateTimeField;
    GB_8: TGroupBox;
    LB_13: TLabel;
    LB_14: TLabel;
    LB_15: TLabel;
    LB_16: TLabel;
    LB_17: TLabel;
    LB_18: TLabel;
    LB_19: TLabel;
    LB_20: TLabel;
    LB_21: TLabel;
    LB_22: TLabel;
    LB_23: TLabel;
    DBLB__nombre: TDBText;
    DBLB_numero_Banca: TDBText;
    DBLB_salarioBruto: TDBText;
    DBLB_descuento: TDBText;
    DBLB_intervaloPago: TDBText;
    DS_DatosNomina: TDataSource;
    LB_24: TLabel;
    LB_25: TLabel;
    DBLB_apodo: TDBText;
    LB_26: TLabel;
    CBB_IntervaloPago: TComboBox;
    LB_27: TLabel;
    GB_9: TGroupBox;
    RB_1: TRadioButton;
    RB_2: TRadioButton;
    Qr_DetallesDescuentosNominaTodo: TADOQuery;
    Qr_MuestraNomina: TADOQuery;
    Qr_DetallesDescuentosNominaTodomontoDescuento: TFloatField;
    Qr_DetallesDescuentosNominaTodoconcepto: TWideStringField;
    Qr_DetallesDescuentosNominaTodoestado: TSmallintField;
    Qr_DetallesDescuentosNominaTodoTdescuentos: TFloatField;
    DS_DetallesDescuentosNomina: TDataSource;
    LB_28: TLabel;
    BBT_2: TBitBtn;
    PM_1: TPopupMenu;
    MM_Bsquedapornmerobanca1: TMenuItem;
    MM_N1: TMenuItem;
    MM_Bsquedaporfechatodadlasbancas1: TMenuItem;
    BTM_1: TJvArrowButton;
    HK_1: TJvApplicationHotKey;
    BBT_3: TBitBtn;
    BBT_4: TBitBtn;
    JvBalloonHint1: TJvBalloonHint;
    LB_29: TLabel;
    LB_30: TLabel;
    DBLB_Incentivo: TDBText;
    Qr_MuestraNominaid_empleado: TAutoIncField;
    Qr_MuestraNominacedula: TWideStringField;
    Qr_MuestraNomina_nombre: TWideStringField;
    Qr_MuestraNominaapodo: TWideStringField;
    Qr_MuestraNominafechaIngreso: TDateTimeField;
    Qr_MuestraNominasalarioBruto: TFloatField;
    Qr_MuestraNominaintervaloPago: TWideStringField;
    Qr_MuestraNominanumero_Banca: TIntegerField;
    Qr_MuestraNominasexo: TWideStringField;
    Qr_MuestraNominaMontoIncentivo: TFloatField;
    Qr_MuestraNominaDescripcionIncentivo: TWideStringField;
    CKB_1: TCheckBox;
    procedure DTP_FInicioExit(Sender: TObject);
    procedure BBT_EnviaAClick(Sender: TObject);
    procedure CBB_NombreVenefDropDown(Sender: TObject);
    procedure CBB_NombreVenefChange(Sender: TObject);
    function CalculaBalanceCxCFechas(FechaInicia, FechaFinal:TDateTime):Double;
    procedure DTP_FInicioKeyPress(Sender: TObject; var Key: Char);
    procedure DTP_FFinKeyPress(Sender: TObject; var Key: Char);
    procedure CBB_NombreVenefKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    function ObtenerIdBanco(NBanco:string):Integer;
    procedure CBB_BancoChange(Sender: TObject);
    procedure BBT_EnviarAClick(Sender: TObject);
    procedure CBB_BancoKeyPress(Sender: TObject; var Key: Char);
    procedure CBB_CuentaKeyPress(Sender: TObject; var Key: Char);
    procedure DTP_BancoFechaInicialKeyPress(Sender: TObject;
      var Key: Char);
    procedure DTP_BancoFechaFinalKeyPress(Sender: TObject; var Key: Char);
    procedure SBT_BuscaEmpleadoClick(Sender: TObject);
    procedure RB_2Click(Sender: TObject);
    procedure RB_1Click(Sender: TObject);
    procedure BBT_SalirTGastosGeneralesClick(Sender: TObject);
    procedure CBB_NoBancaDropDown(Sender: TObject);
    procedure BBT_1Click(Sender: TObject);
    procedure M_ConceptoPagoKeyPress(Sender: TObject; var Key: Char);
    procedure BBT_2Click(Sender: TObject);
    procedure MM_Bsquedapornmerobanca1Click(Sender: TObject);
    procedure MM_Bsquedaporfechatodadlasbancas1Click(Sender: TObject);
    procedure BTM_1Click(Sender: TObject);
    procedure HK_1HotKey(Sender: TObject);
    procedure BBT_4Click(Sender: TObject);
    procedure BBT_3Click(Sender: TObject);
    procedure JvBalloonHint1BalloonClick(Sender: TObject);
    procedure Qr_MuestraNominaAfterOpen(DataSet: TDataSet);
    procedure CKB_1Click(Sender: TObject);
    procedure DBLB_descuentoMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure LlenarCombNomVenef;
    procedure LlenarComboBanco;
    procedure LlenarComboCuentas(IdBanco:Integer);
    function ObtenerIdCuenta(NCuenta:string):Integer;
    function ValidaReporteSoloBanca(Valor:Integer):Boolean;
    function ValidaCamposNomina:Boolean;
    function ValidaFecha(ValorFecha:TDateTime):Boolean;
  public
    { Public declarations }
    function CalculaCuentasBalanceFechas(IdCuenta:Integer; FechaInicio, FechaFin:TDateTime):Double;
    procedure ReporteGasto(IdGasto, NumeroBanca:Integer; Reporte:string;
              Fecha1, Fecha2:TDateTime; Imprimir, SMensaje:Integer);
  end;

var
  FBuscaReportes: TFBuscaReportes;
  IdVenef, RIdEmpleado:Integer;
  TipoVenef, NombreVenef:string;
  RDebito, RCredito:Double;
  tGt:Double; //total de gastos para reporte de total de gastos por fecha

implementation

uses UPrincipal, UReportes, UOpciones, UCreditoBanco, UBuscaEmpleado,
  UEmpleados, UGastos;

{$R *.dfm}

procedure TFBuscaReportes.DTP_FInicioExit(Sender: TObject);
begin
  //DTP_FFin.DateTime:=IncMonth(DTP_FInicio.DateTime);
end;

procedure TFBuscaReportes.BBT_EnviaAClick(
  Sender: TObject);
var
  formato:TJvCalcEdit;
  BalanceCxC,VenefPropCons,VenefPropBanca,XCVenefProp,VenefNeto:Double;
  IdVenefCos:Integer;
begin
  if(CompareDate(DateOf(DTP_FFin.Date),DateOf(DTP_FInicio.Date)) >= 0)then
    begin
      if(Trim(CBB_NombreVenef.Text) <> '')then
        begin
          _FOpciones:=TFOpciones.Create(Self);
          IdVenefCos:=_FOpciones.obtenerIdVenfXDescripcion('Consorcio, Propietario');
          with Qr_TotalVeneficios do
            begin
              Close;
              Parameters[0].Value:=DateOf(DTP_FInicio.DateTime);
              Parameters[1].Value:=DateOf(DTP_FFin.DateTime);
              Open;
            end;
          with Qr_TotalGasto do
            begin
              Close;
              Parameters[0].Value:=IdVenefCos;
              Parameters[1].Value:=DateOf(DTP_FInicio.DateTime);
              Parameters[2].Value:=DateOf(DTP_FFin.DateTime);
              Open;
            end;
          with Qr_BuscaGastoCons_Ban do
            begin
              Close;
              Parameters[0].Value:=idVenef;   //DebitarA
              Parameters[1].Value:=DateOf(DTP_FInicio.DateTime);
              Parameters[2].Value:=DateOf(DTP_FFin.DateTime);
              Open;
            end;

            VenefNeto:=Qr_TotalVeneficiosTVenef.AsFloat - Qr_TotalGastoTgastos.AsFloat;
            XCVenefProp:=_FOpciones.BuscaXCientoVenefTipo('Banca(s), Propietario'); //por ciento Veneficio prpiertario de las bancas
            VenefPropBanca:=((VenefNeto*XCVenefProp)/100);
            VenefPropCons:=VenefNeto-VenefPropBanca;

          _FReportes:=TFReportes.Create(Self);
          if(BBT_EnviaA.Tag = 0)then
            begin
              with _FReportes do
                begin
                  QRL_17.Caption:='Reporte General Beneficios Gasto desde '+DateToStr(DTP_FInicio.Date)+' hasta '+DateToStr(DTP_FFin.Date)+
                  ' para un total de '+IntToStr(DaysBetween(DTP_FInicio.DateTime,DTP_FFin.DateTime))+'dia(s)';
                  QRL_44.Enabled:=False;
                  QRL_36.Caption:=' <--('+_FOpciones.BuscaNombreVenef(IdVenef)+')';
                  QRL_37.Caption:=' <--('+_FOpciones.BuscaNombreVenfXTipo('Banca(s), Propietario')+')';
                  QRL_38.Caption:=' <--('+_FOpciones.BuscaNombreVenef(IdVenef)+')';
                  QRL_43.Caption:='Propietario Consorcio: '+_FOpciones.BuscaNombreVenef(IdVenef);
                  QRL_26.Caption:=FormatFloat(formatNumerico,Qr_TotalVeneficiosTVenef.AsFloat);
                  QRL_27.Caption:=FormatFloat(formatNumerico,Qr_TotalGastoTgastos.AsFloat);
                  QRL_30.Caption:=FormatFloat(formatNumerico,VenefNeto);
                  QRL_33.Caption:=FormatFloat(formatNumerico,VenefPropBanca);
                  QRL_35.Caption:=FormatFloat(formatNumerico,VenefPropCons);
                  if(RB_EnviarPantalla.Checked = True)then
                    begin
                      QRP_ResumenVenfGastos.Preview;
                    end
                  else
                    begin
                      QRP_ResumenVenfGastos.Print;
                    end;
                end;
            end
          else
          if(BBT_EnviaA.Tag = 1)then
            begin
              with Qr_TotalGasto do
                begin
                  Close;
                  Parameters[0].Value:=IdVenef;
                  Parameters[1].Value:=DateOf(DTP_FInicio.DateTime);
                  Parameters[2].Value:=DateOf(DTP_FFin.DateTime);
                  Open;
                end;
              BalanceCxC:=CalculaBalanceCxCFechas(DateOf(DTP_FInicio.DateTime),DateOf(DTP_FFin.DateTime));
              with _FReportes do
                begin
                  QRL_17.Caption:='Reporte General Beneficios Gasto desde '+DateToStr(DTP_FInicio.Date)+' hasta '+DateToStr(DTP_FFin.Date)+
                  ' para un total de '+IntToStr(DaysBetween(DTP_FInicio.DateTime,DTP_FFin.DateTime))+'dia(s)';
                  QRL_36.Enabled:=False;//Caption:=' <--('+_FOpciones.BuscaNombreVenef(IdVenef)+')';
                  QRL_37.Enabled:=False;//Caption:=' <--('+_FOpciones.BuscaNombreVenfXDescripcion('Banca(s), Propietario')+')';
                  QRL_38.Enabled:=False;//Caption:=' <--('+_FOpciones.BuscaNombreVenfXDescripcion('Consorcio, Propietario')+')';
                  QRL_43.Caption:='Propietario Banca(s): '+_FOpciones.BuscaNombreVenef(IdVenef);
                  QRL_31.Caption:='Balance Cuenta por Cobrar';
                  QRL_18.Caption:='Total de Beneficios Prop';
                  QRL_28.Caption:='Beneficios';
                  QRL_29.Caption:='.............................:';
                  //QRL_32.Caption:
                  //QRL_24.Enabled:=False;
                  QRL_34.Caption:='...............:';
                  //QRL_35.Enabled:=False;
                  QRL_25.Caption:='Total Benficios Netos';
                  QRDBL_numero_banca1.DataSet:=Qr_BuscaGastoCons_Ban;
                  QRL_26.Caption:=FormatFloat(formatNumerico,VenefPropBanca);
                  QRL_27.Caption:=FormatFloat(formatNumerico,Qr_TotalGastoTgastos.AsFloat);
                  QRL_30.Caption:=FormatFloat(formatNumerico,VenefPropBanca-Qr_TotalGastoTgastos.AsFloat);
                  QRL_33.Caption:=FormatFloat(formatNumerico,BalanceCxC);
                  QRL_35.Caption:=FormatFloat(formatNumerico,(VenefPropBanca-Qr_TotalGastoTgastos.AsFloat)-BalanceCxC);
                  if(RB_EnviarPantalla.Checked = True)then
                    begin
                      QRP_ResumenVenfGastos.Preview;
                    end
                  else
                    begin
                      QRP_ResumenVenfGastos.Print;
                    end;
                end;
            end;
          _FReportes.Free;
          _FOpciones.Free;
        end
      else
        begin
          JvBalloonHint1.ActivateHint(CBB_NombreVenef,'Selecione un beneficiario.',ikError,'Error',5000);
          //MessageDlg('Selecione una opción para continuar.',mtInformation,[mbOK],0);
        end;
    end
  else
    begin
      JvBalloonHint1.ActivateHint(DTP_FInicio,'La fecha inicial es superior a la fecha final. '+#13+'La fecha inicial debe ser igual o inferior a la fecha final.',ikError,'Error',5000);
      //MessageDlg('La fecha inicial es superior a la fecha final. '+#13+'La fecha inicial debe ser igual o superior a la fecha final.',mtInformation,
      //[mbOK],0);
    end;
end;

procedure TFBuscaReportes.LlenarCombNomVenef;
var
  Qr_CombVenef:TADOQuery;
begin
  Qr_CombVenef:=TADOQuery.Create(Self);
  with Qr_CombVenef do
    begin
      Connection:=ControlCuentasBancarias.Coneccion_1;
      Close;
      SQL.Clear;
      SQL.Add('select nombreVenef from veneficiarios');
      Open;
      First;
    end;
  CBB_NombreVenef.Clear;
  while not(Qr_CombVenef.Eof)do
    begin
      CBB_NombreVenef.Items.Add(Qr_CombVenef.fieldbyname('nombreVenef').AsString);
      Qr_CombVenef.Next;
    end;
  Qr_CombVenef.Free;
end;

procedure TFBuscaReportes.CBB_NombreVenefDropDown(Sender: TObject);
begin
  LlenarCombNomVenef;
end;

procedure TFBuscaReportes.CBB_NombreVenefChange(Sender: TObject);

begin
  _FOpciones:=TFOpciones.Create(Self);
  idVenef:=_FOpciones.BuscaIdVenf(CBB_NombreVenef.Text);
  TipoVenef:=_FOpciones.BuscaTipoVenef(IdVenef);
  _FOpciones.Free;
  if(TipoVenef = 'Banca(s), Propietario')then
    begin
      BBT_EnviaA.Tag:=1;
    end
  else
  if(TipoVenef = 'Consorcio, Propietario')then
    begin
      BBT_EnviaA.Tag:=0;
    end;
end;


function TFBuscaReportes.CalculaBalanceCxCFechas(FechaInicia,
  FechaFinal: TDateTime): Double;
var
  Qr_Dif_Abono, Qr_CxCBancas:TADOQuery;
  Balance:Double;
begin
  Balance:=0;
  Qr_CxCBancas:=TADOQuery.Create(Self);
  Qr_Dif_Abono:=TADOQuery.Create(Self);
  with Qr_CxCBancas do
    begin
      Connection:=ControlCuentasBancarias.Coneccion_1;
      Close;
      SQL.Clear;
      SQL.Add('select * from CxCBancas');
      SQL.Add('where fecha between :f1 and :f2;');
      Parameters[0].Value:=FechaInicia;
      Parameters[1].Value:=FechaFinal;
      Open;
      First;
    end;
  while not(Qr_CxCBancas.Eof)do
    begin
      with Qr_Dif_Abono do
        begin
          Connection:=ControlCuentasBancarias.Coneccion_1;
          Close;
          SQL.Clear;
          SQL.Add('select c.diferencia, (select sum(credito) from detCxCCobro where id_CxCBanca_detalle = :p1) as Abono '+
          'from CxCBancas as c where (c.estadoCuenta = -1)and(c.id_CxCBancas = :p0);');
          Parameters[0].Value:=Qr_CxCBancas.fieldbyname('id_CxCBancas').AsInteger;
          Parameters[1].Value:=Qr_CxCBancas.fieldbyname('id_CxCBancas').AsInteger;
          Open;
          Balance:=Balance+(fieldbyname('diferencia').AsFloat - fieldbyname('Abono').AsFloat);
        end;
      Qr_CxCBancas.Next;
    end;
  Result:=Balance;
  Qr_CxCBancas.Free;
  Qr_Dif_Abono.Free;
end;


procedure TFBuscaReportes.DTP_FInicioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if(Key = #13)then
    begin
      DTP_FFin.SetFocus;
    end;
end;

procedure TFBuscaReportes.DTP_FFinKeyPress(Sender: TObject; var Key: Char);
begin
  if(Key = #13)then
    begin
      CBB_NombreVenef.SetFocus;
    end;
end;

procedure TFBuscaReportes.CBB_NombreVenefKeyPress(Sender: TObject;
  var Key: Char);
begin
  if(Key = #13)then
    begin
      BBT_EnviaA.SetFocus;
    end;
end;

procedure TFBuscaReportes.LlenarComboBanco;
var
  Qr_Bancos:TADOQuery;
begin
  Qr_Bancos:=TADOQuery.Create(Self);
  with Qr_Bancos do
    begin
      Connection:=ControlCuentasBancarias.Coneccion_1;
      Close;
      SQL.Clear;
      SQL.Add('select nombreBanco from bancos');
      Open;
      First;
    end;
  CBB_Banco.Clear;
  while not(Qr_Bancos.Eof)do
    begin
      CBB_Banco.Items.Add(Qr_Bancos.FieldByName('nombreBanco').AsString);
      Qr_Bancos.Next;
    end;
  Qr_Bancos.Free;
end;

procedure TFBuscaReportes.FormShow(Sender: TObject);
begin

  LlenarComboBanco;
  if(NB_1.PageIndex = 3)then
    DTP_TodoGastoFin.SetFocus
  else
  if(NB_1.PageIndex = 2)then
    RB_1Click(Self);
  DTP_FFin.DateTime:=Now;
  DTP_FInicio.DateTime:=IncDay(DTP_FFin.DateTime,-30);
  DTP_BancoFechaFinal.DateTime:=Now;
  DTP_BancoFechaInicial.DateTime:=IncDay(DTP_BancoFechaFinal.DateTime,-30);

end;

function TFBuscaReportes.ObtenerIdBanco(NBanco: string): Integer;
var
  Qr_IdBanco:TADOQuery;
begin
  Qr_IdBanco:=TADOQuery.Create(Self);
  with Qr_IdBanco do
    begin
      Connection:=ControlCuentasBancarias.Coneccion_1;
      Close;
      SQL.Clear;
      SQL.Add('select id_banco from bancos where nombreBanco = :p0;');
      Parameters[0].Value:=NBanco;
      Open;
      Result:=fieldbyname('id_Banco').AsInteger;
      Free;
    end;
end;

procedure TFBuscaReportes.LlenarComboCuentas(IdBanco: Integer);
var
  Qr_Cuenta:TADOQuery;
begin
  Qr_Cuenta:=TADOQuery.Create(Self);
  with Qr_Cuenta do
    begin
      Connection:=ControlCuentasBancarias.Coneccion_1;
      Close;
      SQL.Clear;
      SQL.Add('select cuenta from cuentasBancarias where id_banco_cuentas = :p0;');
      Parameters[0].Value:=IdBanco;
      Open;
      First;
    end;
  CBB_Cuenta.Clear;
  while not(Qr_Cuenta.Eof)do
    begin
      CBB_Cuenta.Items.Add(Qr_Cuenta.fieldbyname('cuenta').AsString);
      Qr_Cuenta.Next;
    end;
  Qr_Cuenta.Free;
end;

procedure TFBuscaReportes.CBB_BancoChange(Sender: TObject);
begin
  LlenarComboCuentas(ObtenerIdBanco(CBB_Banco.Text));
end;

function TFBuscaReportes.CalculaCuentasBalanceFechas(
  IdCuenta: Integer; FechaInicio, FechaFin:TDateTime): Double;
var
  Qr_Balance:TADOQuery;
begin
  Qr_Balance:=TADOQuery.Create(Self);
  with Qr_Balance do
    begin
      Connection:=ControlCuentasBancarias.Coneccion_1;
      Close;
      SQL.Clear;
      SQL.Add('select sum(debito) as debito, sum(credito) as credito from DetallesCuentaBancaria');
      SQL.Add('where (id_cuenta = :p0)and(fechaCreado between :f1 and :f2)');
      Parameters[0].Value:=IdCuenta;
      Parameters[1].Value:=FechaInicio;
      Parameters[2].Value:=FechaFin;
      Open;
      RDebito:=fieldbyname('debito').AsFloat;
      RCredito:=fieldbyname('credito').AsFloat;
      Result:=fieldbyname('credito').AsFloat-fieldbyname('debito').AsFloat;
      Free;
    end;
end;

function TFBuscaReportes.ObtenerIdCuenta(NCuenta: string): Integer;
var
  Qr_IdCuenta:TADOQuery;
begin
  Qr_IdCuenta:=TADOQuery.Create(Self);
  with Qr_IdCuenta do
    begin
      Connection:=ControlCuentasBancarias.Coneccion_1;
      Close;
      SQL.Clear;
      SQL.Add('select id_cuentaBancaria from CuentasBancarias where cuenta = :p0;');
      Parameters[0].Value:=NCuenta;
      Open;
      Result:=fieldbyname('id_cuentaBancaria').AsInteger;
      Free;
    end;
end;

procedure TFBuscaReportes.BBT_EnviarAClick(Sender: TObject);
var
  Qr_DatosBanco:TADOQuery;
begin
  LB_6.Font.Color:=0;
  LB_7.Font.Color:=0;
  if(CBB_Banco.ItemIndex > -1)then
    begin
      if(CBB_Cuenta.ItemIndex > -1)then
        begin
          if(CompareDate(DateOf(DTP_BancoFechaFinal.Date),DateOf(DTP_BancoFechaInicial.Date)) >= 0)then
            begin
              Qr_DatosBanco:=TADOQuery.Create(Self);
              with Qr_DatosBanco do
                begin
                  Connection:=ControlCuentasBancarias.Coneccion_1;
                  Close;
                  SQL.Clear;
                  SQL.Add('select nombreBanco, descripcionCuenta from Bancos where id_banco = :p0');
                  Parameters[0].Value:=ObtenerIdBanco(CBB_Banco.Text);
                  Open;
                end;
              with Qr_MuestraDetallesCuentaBanco do
                begin
                  Close;
                  Parameters[0].Value:=ObtenerIdCuenta(CBB_Cuenta.Text);
                  Parameters[1].Value:=DateOf(DTP_BancoFechaInicial.Date);
                  Parameters[2].Value:=DateOf(DTP_BancoFechaFinal.Date);
                  Open;
                end;
              if(Qr_MuestraDetallesCuentaBanco.RecordCount > 0)then
                begin
                  _FReportes:=TFReportes.Create(Self);
                  _FCreditoBanco:=TFCreditoBanco.Create(Self);
                  with _FReportes do
                    begin
                      QRL_49.Caption:='Banco: '+Qr_DatosBanco.fieldbyname('nombreBanco').AsString+'       Descripción Cuenta: '+
                      Qr_DatosBanco.fieldbyname('descripcionCuenta').AsString;
                      QRL_46.Caption:='Reporte Cuentas de Banco desde '+DateToStr(DateOf(DTP_BancoFechaInicial.DateTime))+' hasta '+DateToStr(DateOf(DTP_BancoFechaFinal.Date))+' para un total de '+IntToStr(DaysBetween(DTP_BancoFechaInicial.Date,DTP_BancoFechaFinal.Date))+' dia(s).';
                      QRL_47.Caption:='No. Cuenta: '+CBB_Cuenta.Text;
                      QRL_48.Caption:='Balance: '+FormatFloat(formatNumerico, _FCreditoBanco.CalculaBalanceCuenta(ObtenerIdCuenta(CBB_Cuenta.Text)));
                      QRL_55.Caption:='Balance a la fecha: '+FormatFloat(formatNumerico, CalculaCuentasBalanceFechas(ObtenerIdCuenta(CBB_Cuenta.Text),DateOf(DTP_BancoFechaInicial.Date),DateOf(DTP_BancoFechaFinal.Date)));
                      QRL_54.Caption:='Total Débito: '+FormatFloat(formatNumerico, RDebito);
                      QRL_56.Caption:='Total Cédito: '+FormatFloat(formatNumerico, RCredito);
                      if(RB_BancoPantalla.Checked = True)then
                        begin
                          QRP_DetallesCuentaBanco.Preview;
                        end
                      else
                        begin
                          QRP_DetallesCuentaBanco.Print;
                        end;
                      Free;
                    end;
                  _FCreditoBanco.Free;
                end
              else
                begin
                  MessageDlg('No hay datos para mostrar en este rango de fechas.', mtInformation,[mbOK],0);
                end;
              Qr_DatosBanco.Free;
            end
          else
            begin
              JvBalloonHint1.ActivateHint(DTP_BancoFechaInicial,'La fecha inicial es superior a la fecha final, '+#13+'la fecha inicial debe ser igual o superior a la fecha final.',
              ikError,'Error',5000);
              //MessageDlg('La fecha inicial es inferior a la fecha final, la fecha inicial debe ser igual o inferior a la fecha final.',mtInformation,[mbOK],0);
            end;
        end
      else
        begin
          JvBalloonHint1.ActivateHint(CBB_Cuenta,'Seleccione el No. de cuenta.',ikError,'Error',5000);
          //MessageDlg('Seleccione el No. de cuenta para continuar.', mtInformation, [mbOK],0);
          LB_7.Font.Color:=clRed;
          CBB_Cuenta.SetFocus;
        end;
    end
  else
    begin
      JvBalloonHint1.ActivateHint(CBB_Banco,'Seleccione el banco para continuar.',ikError,'Error',5000);
      //MessageDlg('Seleccione el banco para continuar.', mtInformation,[mbOK],0);
      LB_6.Font.Color:=clRed;
      CBB_Banco.SetFocus;
    end;
end;

procedure TFBuscaReportes.CBB_BancoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if(Key = #13)then
    begin
      CBB_Cuenta.SetFocus;
    end;
end;

procedure TFBuscaReportes.CBB_CuentaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if(Key = #13)then
    begin
      DTP_BancoFechaInicial.SetFocus;
    end
end;

procedure TFBuscaReportes.DTP_BancoFechaInicialKeyPress(Sender: TObject;
  var Key: Char);
begin
  if(Key = #13)then
    begin
      DTP_BancoFechaFinal.SetFocus;
    end
end;

procedure TFBuscaReportes.DTP_BancoFechaFinalKeyPress(Sender: TObject;
  var Key: Char);
begin
  if(Key = #13)then
    begin
      BBT_EnviarA.SetFocus;
    end
end;

procedure TFBuscaReportes.SBT_BuscaEmpleadoClick(Sender: TObject);
begin
  try
    HK_1.Active:=False;
    EnviarA:='reporte';
    _FEmpleados:=TFEmpleados.Create(Self);
    _FBuscaEmpleado:=TFBuscaEmpleado.Create(Self);
    _FBuscaEmpleado.DBGrid_1.PopupMenu:=nil;
    _FBuscaEmpleado.BBT_CrearNEmpleado.Visible:=False;
    _FBuscaEmpleado.ShowModal;
  finally
    _FEmpleados.Free;
    _FBuscaEmpleado.Free;
    HK_1.Active:=True;
  end;
  if(EnviarA = 'reporte')then
    begin
      with Qr_MuestraNomina do
        begin
          Close;
          Parameters[0].Value:=RIdEmpleado;
          Open;
        end;
      with Qr_DetallesDescuentosNominaTodo do
        begin
          Close;
          Parameters[0].Value:=RIdEmpleado;
          Parameters[1].Value:=RIdEmpleado;
          //Parameters[2].Value:=RIdEmpleado;
          Open;
        end;
      if(Qr_MuestraNominasalarioBruto.Value > 0)then
        begin
          LB_28.Caption:=FormatFloat(formatNumerico,(Qr_MuestraNominasalarioBruto.Value - Qr_DetallesDescuentosNominaTodoTdescuentos.Value)+Qr_MuestraNominamontoIncentivo.Value);
          LB_28.Visible:=True;
        end;
    end;
end;

procedure TFBuscaReportes.RB_2Click(Sender: TObject);
begin
  //EL_NombreEmpleado.Clear;
  SBT_BuscaEmpleado.Enabled:=False;
  _FBuscaReporte.ClientHeight:=214;
  GB_8.Visible:=False;
  CBB_IntervaloPago.Enabled:=True;
  Qr_MuestraNomina.Close;
  Qr_DetallesDescuentosNominaTodo.Close;
  LB_28.Visible:=False;
  with Qr_MuestraNomina do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select e.id_empleado, e.cedula, e.nombres+" "+e.apellidos as _nombre, e.apodo, e.fechaIngreso, e.salarioBruto,');
      SQL.Add('e.intervaloPago, e.sexo, e.MontoIncentivo, e.DescripcionIncentivo, b.numero_Banca from empleados as e left join bancas  as b');
      SQL.Add('on(e.id_empleado = b.id_empleado_banca)');
      SQL.Add('where e.intervaloPago like :intp');
    end;
end;

procedure TFBuscaReportes.RB_1Click(Sender: TObject);
begin
  SBT_BuscaEmpleado.Enabled:=True;
  CBB_IntervaloPago.Enabled:=False;
  _FBuscaReporte.ClientHeight:=421;
  GB_8.Visible:=True;
  Qr_DetallesDescuentosNominaTodo.Close;
  Qr_MuestraNomina.Close;
  with Qr_MuestraNomina do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select e.id_empleado, e.cedula, e.nombres+" "+e.apellidos as _nombre, e.apodo, e.fechaIngreso, e.salarioBruto,');
      SQL.Add('e.intervaloPago, e.sexo, e.MontoIncentivo, e.DescripcionIncentivo, b.numero_Banca from empleados as e left join bancas  as b');
      SQL.Add('on(e.id_empleado = b.id_empleado_banca) where e.id_empleado = :idemp and e.estado = 1');

    end;
end;

procedure TFBuscaReportes.BBT_SalirTGastosGeneralesClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFBuscaReportes.CBB_NoBancaDropDown(Sender: TObject);
var
  Qr_Muestra_NBancas:TADOQuery;
begin
  Qr_Muestra_NBancas:=TADOQuery.Create(Self);
  with Qr_Muestra_NBancas do
    begin
      Connection:=ControlCuentasBancarias.Coneccion_1;
      Close;
      SQL.Clear;
      SQL.Add('select numero_banca, id_banca from bancas where numero_banca <> 0');
      Open;
    end;
  Qr_Muestra_NBancas.First;
  CBB_NoBanca.Items.Clear;
  while not(Qr_Muestra_NBancas.Eof)do
    begin
      CBB_NoBanca.Items.Add(Qr_Muestra_NBancas.FieldByName('numero_banca').AsString);
      Qr_Muestra_NBancas.Next;
    end;
  Qr_Muestra_NBancas.Free;
end;

function TFBuscaReportes.ValidaReporteSoloBanca(Valor: Integer): Boolean;
begin
  LB_12.Font.Color:=0;
  if(Trim(CBB_NoBanca.Text) = '')then
    begin
      Result:=False;
      LB_12.Font.Color:=255;
      MessageDlg('Seleccione un número de banca para procesar el reporte.',mtInformation,[mbOK],0);
      CBB_NoBanca.SetFocus;
    end
  else
    begin
      Result:=True;
    end;
end;

function TFBuscaReportes.ValidaCamposNomina: Boolean;
var
    MensajeDLg:integer;
begin
 if((Qr_MuestraNomina.Active = False)and(RB_1.Checked = True))then
  begin
    Result:=False;
    JvBalloonHint1.ActivateHint(SBT_BuscaEmpleado,'Para mostrar el reporte de '+#13+'nomina debes seleccionar un empleado o'+#13+'seleccionar todos los empleados.'+#13+#13+
    'Para buscar un empleado pulse el botón "B. Emp."',ikError,'Error',5000);
    //MessageDlg('Para mostrar el reporte de nomina debes seleccionar un empleado.',mtInformation,[mbOK],0);
  end
 else
  if(Trim(M_ConceptoPago.Text) = '')then
    begin
      MensajeDLg:=MessageDlg('No has ingresado una observación o comentario.'+#13+#13+
      'Desea continuar sin ingresar una observación?',mtInformation,[mbYes, mbNo],0);
      if(MensajeDLg = mrYes)then
        begin
          Result:=True;
        end
      else
        begin
          Result:=False;
          M_ConceptoPago.SetFocus;
        end;
    end
  else
    begin
      Result:=True;
    end;
end;

procedure TFBuscaReportes.BBT_1Click(Sender: TObject);
begin
  if(RB_1.Checked = True)then
    begin
      if(ValidaCamposNomina = True)then
        begin
           if(ValidaFecha(DTP_FechaNomina.Date) = True)then
            begin
              _FReportes:=TFReportes.Create(Self);
              with _FReportes do
                begin
                  QRL_61.Caption:='Pago de nomina.';
                  QRL_74.Caption:=DateToStr(DTP_FechaNomina.Date);
                  if(CKB_1.Checked = True)then
                    begin
                      QRL_73.Caption:=FormatFloat(formatNumerico,(Qr_MuestraNominasalarioBruto.Value - Qr_DetallesDescuentosNominaTodoTdescuentos.Value)+Qr_MuestraNominaMontoIncentivo.Value);
                      QRL_72.Caption:=FormatFloat(formatNumerico,Qr_DetallesDescuentosNominaTodoTdescuentos.Value);
                      QRSubDetail1.Enabled:=True;
                    end
                  else
                    begin
                      QRL_73.Caption:=FormatFloat(formatNumerico,Qr_MuestraNominasalarioBruto.Value + Qr_MuestraNominaMontoIncentivo.Value);
                      QRL_72.Caption:=FormatFloat(formatNumerico,0);
                      QRSubDetail1.Enabled:=False;
                    end;
                  QRL_75.Caption:=FormatFloat(formatNumerico,Qr_MuestraNominasalarioBruto.Value);

                  QRL_81.Caption:=FormatFloat(formatNumerico,Qr_MuestraNominamontoIncentivo.Value);
                  if(Trim(M_ConceptoPago.Text) <> '')then
                    begin
                      QRL_80.Enabled:=True;
                      QRRichText1.Lines.Text:=M_ConceptoPago.Text;
                    end
                  else
                    begin
                      QRL_80.Enabled:=False;
                    end;
                  if(RB_RNPantalla.Checked = True)then
                    begin
                      QRP_Nomina.Preview;
                      QRP_Nomina.Free;
                    end
                  else
                  if(RB_RNPrinter.Checked = True)then
                    begin
                      QRP_Nomina.Print;
                    end;
                end;
            end;
        end;
    end
  else
  if(RB_2.Checked = True)then
    begin
      if(ValidaFecha(DTP_FechaNomina.Date) = True)then
        begin
          _FReportes:=TFReportes.Create(Self);
          if(CBB_IntervaloPago.ItemIndex = 0)then
            begin
              Qr_MuestraNomina.Parameters[0].Value:='%'+''+'%';
            end
          else
          if(CBB_IntervaloPago.ItemIndex = 1)or(CBB_IntervaloPago.ItemIndex = 2)then
            begin
              Qr_MuestraNomina.Close;
              Qr_MuestraNomina.SQL.Clear;
              Qr_MuestraNomina.SQL.Add('select e.id_empleado, e.cedula, e.nombres+" "+e.apellidos as _nombre, e.apodo, e.fechaIngreso, e.salarioBruto,');
              Qr_MuestraNomina.SQL.Add('e.intervaloPago, e.sexo, e.montoIncentivo,e.descripcionIncentivo, b.numero_Banca ');
              Qr_MuestraNomina.SQL.Add('from empleados as e left join bancas  as b');
              Qr_MuestraNomina.SQL.Add('on(e.id_empleado = b.id_empleado_banca)');
              Qr_MuestraNomina.SQL.Add('where e.intervaloPago like :intp');
              Qr_MuestraNomina.Parameters[0].Value:='%'+CBB_IntervaloPago.Text+'%';
            end;
          Qr_MuestraNomina.Open;
              with _FReportes do
                begin
                  QRL_74.Caption:=DateToStr(DTP_FechaNomina.Date);
                  if(RB_RNPantalla.Checked = True)then
                    begin
                      if(Trim(M_ConceptoPago.Text) <> '')then
                        begin
                          QRL_80.Enabled:=True;
                          QRRichText1.Lines.Text:=M_ConceptoPago.Text;
                        end
                      else
                        begin
                          QRL_80.Enabled:=False;
                        end;
                      QRP_Nomina.Preview;
                      QRP_Nomina.Free;
                    end
                  else
                  if(RB_RNPrinter.Checked = True)then
                    begin
                      QRP_Nomina.Print;
                    end;
                end;
        end;
    end;
end;

function TFBuscaReportes.ValidaFecha(ValorFecha: TDateTime): Boolean;
begin
  if(CompareDate(DateOf(Now),DateOf(DTP_FechaNomina.Date)) = -1)then
    begin
      if(MessageDlg('La fecha seleccionado es mayor a la fecha actual.'+#13+#13+'Desea continuar de todas formas?',mtConfirmation,[mbYes,mbNo],0) = IDYES)then
        begin
          Result:=True;
        end
      else
        begin
          Result:=False;
          //DTP_FechaNomina.SetFocus;
        end;
    end
  else
    begin
      Result:=True;
    end;
end;

procedure TFBuscaReportes.M_ConceptoPagoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if(Key in['a'..'z'])then
    begin
      Key :=UpCase(Key);
    end;
end;

procedure TFBuscaReportes.BBT_2Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TFBuscaReportes.ReporteGasto(IdGasto, NumeroBanca: Integer;
  Reporte: string; Fecha1, Fecha2:TDateTime; Imprimir, SMensaje: Integer);
begin
  try
    _FReportes:=TFReportes.Create(Self);
    if(Reporte = 'A')then
      begin
        with _FReportes do
          begin
            with Qr_Gasto do
              begin
                Close;
                SQL.Clear;
                SQL.Add('select g.id_gasto,g.id_banca,g.montoGasto,g.detallesGasto,g.debitarA,g.numeroComprobante, g.fechaGasto,g.origen,b.numero_Banca');
                SQL.Add('from gastos as g, bancas as b where(g.id_banca = b.id_banca)and(g.id_gasto = :p1) order by g.fechaGasto;');
                Parameters[0].Value:=IdGasto;
                Open;
              end;
          end;
      end
    else
    if(Reporte = 'T')then
      begin
        with _FReportes do
          begin
            with Qr_Gasto do
              begin
                Close;
                SQL.Clear;
                SQL.Add('select g.id_gasto,g.id_banca,g.montoGasto,g.detallesGasto,g.debitarA,g.numeroComprobante, g.fechaGasto,g.origen,b.numero_Banca');
                SQL.Add('from gastos as g, bancas as b where(g.id_banca = b.id_banca)order by g.fechaGasto;');
                Open;
              end;
          end;
      end
    else
    if(Reporte = 'B')then
      begin
        with _FReportes do
          begin
            with Qr_Gasto do
              begin
                Close;
                SQL.Clear;
                SQL.Add('select g.id_gasto,g.id_banca,g.montoGasto,g.detallesGasto,g.debitarA,g.numeroComprobante, g.fechaGasto,g.origen,b.numero_Banca');
                SQL.Add('from gastos as g, bancas as b');
                SQL.Add('where (g.id_banca = b.id_banca)and(g.fechaGasto between :f1 and :f2)and(b.numero_Banca = :n) order by g.fechaGasto;');
                Parameters[0].Value:=Fecha1;
                Parameters[1].Value:=Fecha2;
                Parameters[2].Value:=NumeroBanca;
                Open;
              end;
            QRL_2.Caption:='Reporte de Gastos desde: '+DateToStr(DTP_TodoGastoInicio.Date)+' Hasta '+ DateToStr(DTP_TodoGastoFin.Date)+
            ' para un total de '+IntToStr(DaysBetween(DTP_TodoGastoInicio.DateTime,DTP_TodoGastoFin.DateTime))+' dias.';
          end;
      end
    else
    if(Reporte = 'F')then
      begin
        with _FReportes do
          begin
            with Qr_Gasto do
              begin
                Close;
                SQL.Clear;
                SQL.Add('select g.id_gasto,g.id_banca,g.montoGasto,g.detallesGasto,g.debitarA,g.numeroComprobante, g.fechaGasto,g.origen,b.numero_Banca');
                SQL.Add('from gastos as g, bancas as b');
                SQL.Add('where (g.id_banca = b.id_banca)and(g.fechaGasto between :f1 and :f2) order by g.fechaGasto;');
                Parameters[0].Value:=Fecha1;
                Parameters[1].Value:=Fecha2;
                Open;
              end;
            QRL_2.Caption:='Reporte de Gastos desde: '+DateToStr(DTP_TodoGastoInicio.Date)+' Hasta '+ DateToStr(DTP_TodoGastoFin.Date)+
            ' para un total de '+IntToStr(DaysBetween(DTP_TodoGastoInicio.DateTime,DTP_TodoGastoFin.DateTime))+' dias.';
          end;
      end;
    if(_FReportes.Qr_Gasto.RecordCount > 0)then
      begin
        _FReportes.Qr_GastomontoGasto.DisplayFormat:=formatNumerico1;
        _FReportes.QRExpr1.Mask:=formatNumerico;
        if(Imprimir = 0)then
          _FReportes.QRP_Gastos.Preview
        else
        if(Imprimir = 1)then
          _FReportes.QRP_Gastos.Print;
      end
    else
      begin
        if(SMensaje = 1)then
          MessageDlg('El reporte solicitado no contiene información para mostrar.',mtInformation,[mbOK],0);
      end;
  finally
    _FReportes.Free;
  end;
end;

procedure TFBuscaReportes.MM_Bsquedapornmerobanca1Click(Sender: TObject);
begin
  Caption:='Reporte de Gastos por Número de Banca.';
   LB_12.Visible:=True;
   CBB_NoBanca.Visible:=True;
   GB_6.Height:=161;
   DTP_TodoGastoInicio.DateTime:=Now;
   DTP_TodoGastoFin.DateTime:=Now;
   todoNBanca:=0;
   ClientHeight:=238;
end;

procedure TFBuscaReportes.MM_Bsquedaporfechatodadlasbancas1Click(
  Sender: TObject);
begin
  Caption:='Reporte General de Gastos.';
  DTP_TodoGastoInicio.DateTime:=Now;
  DTP_TodoGastoFin.DateTime:=Now;
  todoNBanca:=1;
  ClientHeight:=238;
end;

procedure TFBuscaReportes.BTM_1Click(Sender: TObject);
var
  Imprimir:Integer;
begin
  if(RB_3.Checked = True)then
    Imprimir:=0
  else
    begin
      Imprimir:=1;
    end;
  if(CompareDate(DateOf(DTP_TodoGastoFin.Date),DateOf(DTP_TodoGastoInicio.Date)) >= 0)then
    begin
      if(todoNBanca = 0)then
        begin
          if(CBB_NoBanca.ItemIndex > -1)then
            ReporteGasto(-1,StrToInt(CBB_NoBanca.Text),'B',DTP_TodoGastoInicio.DateTime,DTP_TodoGastoFin.DateTime,Imprimir,1)
          else
            begin
              MessageDlg('Seleccione un número de banca para continuar.',mtInformation,[mbOK],0);
            end;
        end
      else
      if(todoNBanca = 1)then
        ReporteGasto(-1,-1,'F',DTP_TodoGastoInicio.DateTime,DTP_TodoGastoFin.DateTime,Imprimir,1);
    end
  else
    begin
      MessageDlg('La fecha inicial es superior a la fecha final, la fecha inicial debe ser igual o inferior a la fecha final.',mtInformation,[mbOK],0);
    end;
end;

procedure TFBuscaReportes.HK_1HotKey(Sender: TObject);
begin
  Self.Close;
end;

procedure TFBuscaReportes.BBT_4Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TFBuscaReportes.BBT_3Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TFBuscaReportes.JvBalloonHint1BalloonClick(Sender: TObject);
begin
  SBT_BuscaEmpleadoClick(Self);
end;

procedure TFBuscaReportes.Qr_MuestraNominaAfterOpen(DataSet: TDataSet);
begin
  if(CKB_1.Checked = False)then
    DBLB_descuento.Font.Color:=255
  else
    DBLB_descuento.Font.Color:=0;
end;

procedure TFBuscaReportes.CKB_1Click(Sender: TObject);
begin
  Qr_MuestraNominaAfterOpen(nil);
end;

procedure TFBuscaReportes.DBLB_descuentoMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if(CKB_1.Checked = True)then
    DBLB_descuento.Hint:='Si has habilitado "Incluir Descuentos"'+#13+'este campo se tornara de color Negro.'
  else
    DBLB_descuento.Hint:='Si has deshabilitado "Incluir Descuentos"'+#13+'este campo se tornara de color Rojo.';
end;

procedure TFBuscaReportes.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if(Key = #27)then
    Self.Close;
end;

end.
