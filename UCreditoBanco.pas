unit UCreditoBanco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, JvExMask, JvToolEdit, JvBaseEdits, ExtCtrls,
  DBCtrls, Grids, DBGrids, Buttons, ComCtrls, JvExComCtrls,
  JvDateTimePicker, DateUtils, ADODB, DB, JvComponentBase, JvBalloonHint,
  JvAppHotKey;

type
  TFCreditoBanco = class(TForm)
    GB_1: TGroupBox;
    CBB_NomBanco: TComboBox;
    LB_1: TLabel;
    CBB_NCuentaBanco: TComboBox;
    LB_2: TLabel;
    LB_3: TLabel;
    ECal_1: TJvCalcEdit;
    GB_2: TGroupBox;
    DBGRID_1: TDBGrid;
    dbnvgr1: TDBNavigator;
    BBT_Aplicar: TBitBtn;
    BBT_Salir: TBitBtn;
    GB_3: TGroupBox;
    EL_1: TLabeledEdit;
    DTP_1: TJvDateTimePicker;
    LB_5: TLabel;
    EL_2: TLabeledEdit;
    LB_6: TLabel;
    Qr_DetalleCuentaBacaria: TADOQuery;
    DS_1: TDataSource;
    Qr_DetalleCuentaBacariaId_DetallesCuentasBancarias: TAutoIncField;
    Qr_DetalleCuentaBacariaId_Cuenta: TIntegerField;
    Qr_DetalleCuentaBacariaDebito: TFloatField;
    Qr_DetalleCuentaBacariaCredito: TFloatField;
    Qr_DetalleCuentaBacariaNumeroTransaccion: TWideStringField;
    Qr_DetalleCuentaBacariaDescripcion: TWideStringField;
    Qr_DetalleCuentaBacariaFechaCreado: TDateTimeField;
    Qr_DetalleCuentaBacariaFecha: TDateTimeField;
    ECal_2: TJvCalcEdit;
    LB_4: TLabel;
    JvBalloonHint1: TJvBalloonHint;
    HK_1: TJvApplicationHotKey;
    procedure FormShow(Sender: TObject);
    procedure CBB_NomBancoDropDown(Sender: TObject);
    procedure CBB_NomBancoChange(Sender: TObject);
    procedure BBT_AplicarClick(Sender: TObject);
    procedure CBB_NCuentaBancoChange(Sender: TObject);
    procedure EL_2KeyPress(Sender: TObject; var Key: Char);
    procedure ECal_1KeyPress(Sender: TObject; var Key: Char);
    procedure EL_1KeyPress(Sender: TObject; var Key: Char);
    procedure DTP_1KeyPress(Sender: TObject; var Key: Char);
    procedure CBB_NomBancoKeyPress(Sender: TObject; var Key: Char);
    procedure CBB_NCuentaBancoKeyPress(Sender: TObject; var Key: Char);
    procedure BBT_SalirClick(Sender: TObject);
    procedure HK_1HotKey(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    function ValidaCampos:Boolean;
    procedure LlenarCombNomBanco;
    procedure LlenarCombCuentasB(Id_Banco:Integer);
    procedure LimpiarCampos;
  public
    { Public declarations }
    function BuscaIdBanco(NombBanco:string):Integer;
    procedure BuscaDetalleCuentaB(IdCuenta:Integer);
    function BuscaIdCuentaB(NCuenta:string):Integer;
    function CalculaBalanceCuenta(IdCuenta:Integer):Double;
  
  end;

var
  FCreditoBanco: TFCreditoBanco;
  //IdBanco:array[0..20] of Integer;
  //IdCuenta:array[0..10] of Integer;

implementation

uses UPrincipal, UCuentasBancarias;

{$R *.dfm}

{ TFCreditoBanco }

procedure TFCreditoBanco.LlenarCombNomBanco;
var
  Qr_Bancos:TADOQuery;
  I:Integer;
begin
  Qr_Bancos:=TADOQuery.Create(Self);
  with Qr_Bancos do
    begin
      Connection:=ControlCuentasBancarias.Coneccion_1;
      Close;
      SQL.Clear;
      SQL.Add('select id_banco, nombrebanco, descripcionCuenta from Bancos order by nombrebanco');
      Open;
      First;
    end;
  CBB_NomBanco.Clear;
  for I:= 0 to Qr_Bancos.RecordCount-1 do
    begin
      CBB_NomBanco.Items.Add(Qr_Bancos.fieldbyname('nombrebanco').AsString);
      //IdBanco[i]:=Qr_Bancos.fieldbyname('id_banco').AsInteger;
      Qr_Bancos.Next;
    end;
  Qr_Bancos.Free;
end;

function TFCreditoBanco.ValidaCampos: Boolean;
var
  MensageDLg:Integer;
begin
  LB_1.Font.Color:=0;
  LB_2.Font.Color:=0;
  lb_3.Font.Color:=0;
  EL_1.EditLabel.Font.Color:=0;
  LB_5.Font.Color:=0;
  EL_2.EditLabel.Font.Color:=0;
  if(CBB_NomBanco.ItemIndex = -1)or(Trim(CBB_NomBanco.Text) = '')then
    begin
      Result:=False;
      LB_1.Font.Color:=clRed;
      JvBalloonHint1.ActivateHint(CBB_NomBanco, 'Seleccione el Banco.', ikError, 'Error', 5000);
      CBB_NomBanco.SetFocus;
    end
  else
  if(CBB_NCuentaBanco.ItemIndex = -1)then
    begin
      Result:=False;
      lb_2.Font.Color:=clRed;
      JvBalloonHint1.ActivateHint(CBB_NCuentaBanco, 'Seleccione el número de cuenta.', ikError, 'Error', 5000);
      CBB_NCuentaBanco.SetFocus;
    end
  else
  if(Trim(ECal_1.Text) = '')then
    begin
      Result:=False;
      LB_3.Font.Color:=clRed;
      JvBalloonHint1.ActivateHint(ECal_1, 'Ingrese el monto.', ikError, 'Error', 5000);
      ECal_1.SetFocus;
    end
  else
  if(Trim(EL_1.Text) = '')then
    begin
      Result:=False;
      EL_1.EditLabel.Font.Color:=clRed;
      JvBalloonHint1.ActivateHint(EL_1, 'Ingrese una descripción.', ikError, 'Error', 5000);
      EL_1.SetFocus;
    end
  else
  if(CompareDate(Now, DateOf(DTP_1.Date)) = -1 )then
    begin
      //MessageDlg('La fecha seleccionada es superior a la fecha actual.',mtInformation,[mbOK],0);
      Result:=False;
      LB_5.Font.Color:=clRed;
      JvBalloonHint1.ActivateHint(DTP_1,'La fecha seleccionada es superior a la fecha actual.', ikError, 'Error', 5000);
      DTP_1.SetFocus;
    end
  else
  if(Trim(EL_2.Text) = '')then
    begin
      MensageDLg:=MessageDlg('No has ingresado un número de transacción bancaria.'+#13+#13+
      'Desea continuar sin registrar un número de transacción?',mtConfirmation,[mbYes,mbNo],0);
      if(MensageDLg = mrYes)then
        begin
          Result:=True;
        end
      else
        begin
          Result:=False;
          EL_2.EditLabel.Font.Color:=clRed;
          EL_2.SetFocus;
        end;
    end
  else
    begin
      Result:=True;
    end;
end;

procedure TFCreditoBanco.FormShow(Sender: TObject);
begin
  DTP_1.DateTime:=Now;
  ECal_2.DisplayFormat:=formatNumerico;
  ECal_1.DisplayFormat:=formatNumerico;
end;

procedure TFCreditoBanco.CBB_NomBancoDropDown(Sender: TObject);
begin
  LlenarCombNomBanco;
end;

procedure TFCreditoBanco.CBB_NomBancoChange(Sender: TObject);
begin
  LlenarCombCuentasB(BuscaIdBanco(CBB_NomBanco.Text));
  //BuscaDetalleCuentaB(0);    
end;

procedure TFCreditoBanco.BBT_AplicarClick(Sender: TObject);
begin
  if(ValidaCampos = True)then
    begin
       _FCuentasBancarias:=TFCuentasBancarias.Create(Self);
      if(OpcionDebitoCredito = 'credito')then
        begin

          _FCuentasBancarias.InsertaDetalleCuenta(BuscaIdCuentaB(CBB_NCuentaBanco.Text),0,ECal_1.Value,
                                                  EL_2.Text,EL_1.Text,DateOf(DTP_1.Date),Now,0,1);
        end
      else
      if(OpcionDebitoCredito = 'debito')then
        begin
           _FCuentasBancarias.InsertaDetalleCuenta(BuscaIdCuentaB(CBB_NCuentaBanco.Text),ECal_1.Value,0,
                                                  EL_2.Text,EL_1.Text,DateOf(DTP_1.Date),Now,0,1);
        end;
      _FCuentasBancarias.Free;
      BuscaDetalleCuentaB(BuscaIdCuentaB(CBB_NCuentaBanco.Text));
      ECal_2.Value:=CalculaBalanceCuenta(BuscaIdCuentaB(CBB_NCuentaBanco.Text));
      LimpiarCampos;
    end;
end;

procedure TFCreditoBanco.LlenarCombCuentasB(Id_Banco: Integer);
var
  Qr_CuentaB:TADOQuery;
  I:Integer;
begin
  Qr_CuentaB:=TADOQuery.Create(Self);
  with Qr_CuentaB do
    begin
      Connection:=ControlCuentasBancarias.Coneccion_1;
      Close;
      SQL.Clear;
      SQL.Add('select cuenta from cuentasBancarias');
      SQL.Add('where id_banco_cuentas = :p0;');
      Parameters[0].Value:=Id_Banco;
      Open;
      First;
    end;
  CBB_NCuentaBanco.Clear;
  for I := 0 to Qr_CuentaB.RecordCount-1 do
    begin
      CBB_NCuentaBanco.Items.Add(Qr_CuentaB.fieldbyname('cuenta').AsString);
      //IdBanco[i]:=Qr_CuentaB.Fieldbyname('id_cuentaBancaria').AsInteger;
      Qr_CuentaB.Next;
    end;
end;

function TFCreditoBanco.BuscaIdBanco(NombBanco: string): Integer;
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
      Parameters[0].Value:=NombBanco;
      Open;
      Result:=fieldbyname('id_banco').AsInteger;
      Free;
    end;
end;

procedure TFCreditoBanco.BuscaDetalleCuentaB(IdCuenta: Integer);
begin
  with Qr_DetalleCuentaBacaria do
    begin
      Close;
      Parameters[0].Value:=IdCuenta;
      Open;
    end;
  Qr_DetalleCuentaBacaria.RecordCount;
end;

function TFCreditoBanco.BuscaIdCuentaB(NCuenta: string): Integer;
var
  Qr_IdCuenta:TADOQuery;
begin
  Qr_IdCuenta:=TADOQuery.Create(Self);
  with Qr_IdCuenta do
    begin
      Connection:=ControlCuentasBancarias.Coneccion_1;
      Close;
      SQL.Clear;
      SQL.Add('select id_CuentaBancaria from CuentasBancarias where cuenta = :p0;');
      Parameters[0].Value:=NCuenta;
      Open;
      Result:=fieldbyname('id_CuentaBancaria').AsInteger;
      Free;
    end;
end;

procedure TFCreditoBanco.CBB_NCuentaBancoChange(Sender: TObject);
var
  Id_Cuenta:Integer;
begin
  if(Trim(CBB_NCuentaBanco.Text) <> '')then
    begin
      Id_Cuenta:=BuscaIdCuentaB(CBB_NCuentaBanco.Text);
      BuscaDetalleCuentaB(Id_Cuenta);
      ECal_2.Value:=CalculaBalanceCuenta(Id_Cuenta);
    end
  else
    begin
      BuscaDetalleCuentaB(0);
    end;
end;

function TFCreditoBanco.CalculaBalanceCuenta(
  IdCuenta: Integer): Double;
var
  Qr_BalanceCuenta:TADOQuery;
begin
  Qr_BalanceCuenta:=TADOQuery.Create(Self);
  with Qr_BalanceCuenta do
    begin
      Connection:=ControlCuentasBancarias.Coneccion_1;
      Close;
      SQL.Clear;
      SQL.Add('select sum(debito) as debito, sum(credito) as credito from DetallesCuentaBancaria');
      SQL.Add('where id_cuenta = :p0;');
      Parameters[0].Value:=IdCuenta;
      Open;
      Result:=fieldbyname('credito').AsFloat - fieldbyname('debito').AsFloat;
      Free;
    end;
end;

procedure TFCreditoBanco.LimpiarCampos;
begin
  CBB_NomBanco.ItemIndex:=-1;
  CBB_NCuentaBanco.ItemIndex:=-1;
  EL_2.Clear;
  ECal_1.Clear;
  EL_1.Clear;
  DTP_1.DateTime:=Now;;
end;

procedure TFCreditoBanco.EL_2KeyPress(Sender: TObject; var Key: Char);
begin
  if(Key = #13)then
    begin
      ECal_1.SetFocus;
    end;
end;

procedure TFCreditoBanco.ECal_1KeyPress(Sender: TObject; var Key: Char);
begin
  if(Key = #13)then
    begin
      EL_1.SetFocus;
    end;
end;

procedure TFCreditoBanco.EL_1KeyPress(Sender: TObject; var Key: Char);
begin
  if(Key = #13)then
    begin
      DTP_1.SetFocus;
    end;
end;

procedure TFCreditoBanco.DTP_1KeyPress(Sender: TObject; var Key: Char);
begin
  if(Key = #13)then
    begin
      BBT_Aplicar.SetFocus;
    end;
end;

procedure TFCreditoBanco.CBB_NomBancoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if(Key = #13)then
  CBB_NCuentaBanco.SetFocus;
end;

procedure TFCreditoBanco.CBB_NCuentaBancoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if(Key = #13)then
    EL_2.SetFocus;
end;

procedure TFCreditoBanco.BBT_SalirClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFCreditoBanco.HK_1HotKey(Sender: TObject);
begin
  Self.Close;
end;

procedure TFCreditoBanco.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if(Key = #27)then
    Self.Close;
end;

end.
