unit UCuentasBancarias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, JvExMask, JvToolEdit, JvMaskEdit,
  Buttons,ADODB, JvComponentBase, JvAppHotKey;

type
  TFCuentasBancarias = class(TForm)
    GB_1: TGroupBox;
    EL_NombreBanco: TLabeledEdit;
    EL_DescripcionCuenta: TLabeledEdit;
    CBB_TipoCuenta: TComboBox;
    LB_1: TLabel;
    ME_Cuenta: TJvMaskEdit;
    LB_2: TLabel;
    BBT_Guardar: TBitBtn;
    BBT_Salir: TBitBtn;
    LB_3: TLabel;
    HK_1: TJvApplicationHotKey;
    procedure BBT_SalirClick(Sender: TObject);
    procedure BBT_GuardarClick(Sender: TObject);
    procedure LimpiarCampos;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ME_CuentaKeyPress(Sender: TObject; var Key: Char);
    procedure EL_NombreBancoKeyPress(Sender: TObject; var Key: Char);
    procedure EL_DescripcionCuentaKeyPress(Sender: TObject; var Key: Char);
    procedure HK_1HotKey(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure ModificaBanco(NombreBanco, DescripcionCuenta: String);
    procedure ModificaCuentaBanco(Id_banco:Integer; NCuenta:string; TipoCuenta:Integer);
    procedure InsertaCuentaBanco(Id_banco:Integer; NCuenta:string; TipoCuenta:Integer; Fecha:TDateTime; MensajeS:Integer);
  public
    { Public declarations }
    function ValidaCompos:Boolean;
    function ValidaBancoExiste(NBanco:string; OpcionExiste:Integer):Boolean;
    function UltimoIdCuenta:Integer; //Retorna el ultimo valor insertado.
    function ValidaCuentaExiste(NCuenta:string):Boolean;
    function ValidaCamposCuenta(NCuenta:string; Opcion:Integer):Boolean;
    procedure InsertaDetalleCuenta(IdCuenta:Integer; Debito, Credito:Double; NTransaccion,
                                   Descripcion:string; FechaCreado, Fecha:TDateTime; IdBancaDC,
                                   Mensaje:Integer);
    function BuscaIDCuentaBanco(NCuenta:string):Integer;
  end;

var
  FCuentasBancarias: TFCuentasBancarias;
  Qr_BuscaBancoExiste:TADOQuery;
  Qr_ModificaBanco:TADOQuery;
  Qr_UltimaCuentaInsert:TADOQuery;
  Qr_ModificaCuentaBanco:TADOQuery;
  Qr_BuscaCuentaExiste:TADOQuery;
  Qr_InsertaDetalleCuenta:TADOQuery;
  Qr_BuscaCBanco:TADOQuery;
implementation

uses UPrincipal, UOpciones;

{$R *.dfm}

procedure TFCuentasBancarias.BBT_SalirClick(Sender: TObject);
begin
  Self.Close;
end;

function TFCuentasBancarias.ValidaCompos: Boolean;
begin
  if (Trim(EL_NombreBanco.Text) = '')then
    begin
      Result:=False;
      MessageBox(0,'El campo nombre del banco esta vacio.','Información',0);
      EL_NombreBanco.EditLabel.Font.Color:=clRed;
    end
  else
    begin
      EL_NombreBanco.EditLabel.Font.Color:=clBlack;
      Result:=True;
    end;

end;

procedure TFCuentasBancarias.BBT_GuardarClick(Sender: TObject);
begin
  if ValidaCompos = True then
    begin
      if (ValidaBancoExiste(EL_NombreBanco.Text,OpcionEditar) = True) then
        begin
          if OpcionEditar = 0 then
            begin
              if NuevoBanco = 0 then
                begin
                  _FOpciones.InsertaBanco(EL_NombreBanco.Text,EL_DescripcionCuenta.Text,Now);
                  if Trim(ME_Cuenta.Text) <> '' then
                    begin
                      if ValidaCuentaExiste(ME_Cuenta.Text) = True then
                        begin
                          InsertaCuentaBanco(UltimoIdCuenta,ME_Cuenta.Text,CBB_TipoCuenta.ItemIndex,Now,0);
                        end;
                    end;
                end
              else
              if NuevoBanco  = 1 then
                begin
                  if (ValidaCamposCuenta(ME_Cuenta.Text,1) = True)then
                    begin
                      if (ValidaCuentaExiste(ME_Cuenta.Text) = true) then
                        begin
                          InsertaCuentaBanco(_FOpciones.Qr_BuscarBancosId_Banco.AsInteger,ME_Cuenta.Text,CBB_TipoCuenta.ItemIndex,Now,1);
                        end;
                    end;
                end;
                //
            end
          else
          if OpcionEditar = 1 then
            begin
              if (EditarBC = 0) then
                begin
                  ModificaBanco(EL_NombreBanco.Text,EL_DescripcionCuenta.Text);
                end
              else
              if (EditarBC = 1) then
                begin
                  if(ValidaCamposCuenta(ME_Cuenta.Text,1) = True)then
                    begin
                      if (ValidaCuentaExiste(ME_Cuenta.Text) = True) then
                        begin
                          ModificaCuentaBanco(Id_bancoMod,ME_Cuenta.Text,CBB_TipoCuenta.ItemIndex);
                          EditarBC:=0;
                          ModifNCuenta:=0;
                        end;
                    end;
                end;
              //_FOpciones.BuscaBanco('',1);
              //LimpiarCampos;

            end;
          _FOpciones.BBT_BuscarBancoClick(Self);

        end;
    end;
end;

function TFCuentasBancarias.ValidaBancoExiste(NBanco: string; OpcionExiste:Integer): Boolean;
begin
  Qr_BuscaBancoExiste:=TADOQuery.Create(Self);
  with Qr_BuscaBancoExiste do
    begin
      Connection:=ControlCuentasBancarias.Coneccion_1;
      Close;
      SQL.Clear;
      SQL.Add('select id_banco, NombreBanco from bancos where NombreBanco = :p0');
      Parameters[0].Value:=NBanco;
      Open;
    end;
  if (OpcionExiste = 0)then
    begin
      if Qr_BuscaBancoExiste.RecordCount > 0 then
        begin
          if NuevoBanco = 1 then
            begin
              Result:=True;
            end
          else
          if NuevoBanco = 0 then
            begin
              Result:=False;
              MessageBox(0,'Existe un banco con este nombre, ingrese un nombre diferente.','Información',0);
            end;
        end
      else
        begin
          Result:=True;
        end;
    end
  else
  if (OpcionExiste = 1) then
    begin
      if EditarBC = 0 then
        begin
          if (Id_bancoMod = Qr_BuscaBancoExiste.FieldByName('id_banco').AsInteger)or(Qr_BuscaBancoExiste.RecordCount = 0) then
           begin
            Result:=True;
           end
          else
            begin
              MessageBox(0,'Existe un banco con este nombre, ingrese un nombre diferente.','Información',0);
              Result:=False;
            end;
        end
      else
      if EditarBC = 1 then
        begin
          Result:=True;
        end;
    end;
  Qr_BuscaBancoExiste.Free;
end;

procedure TFCuentasBancarias.LimpiarCampos;
begin
  EL_NombreBanco.Clear;
  EL_DescripcionCuenta.Clear;
  ME_Cuenta.Clear;
  CBB_TipoCuenta.ItemIndex:=0;
end;

procedure TFCuentasBancarias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  OpcionEditar:=0;
  NuevoBanco:=0;
end;

procedure TFCuentasBancarias.ModificaBanco(NombreBanco,
  DescripcionCuenta: String);
begin
  try
    Qr_ModificaBanco:=TADOQuery.Create(Self);
    with Qr_ModificaBanco do
      begin
        Connection:=ControlCuentasBancarias.Coneccion_1;
        Close;
        SQL.Clear;
        SQL.Add('update bancos set NombreBanco = :p0, DescripcionCuenta = :p1');
        SQL.Add('where id_banco = :p2');
        Parameters[0].Value:=NombreBanco;
        Parameters[1].Value:=DescripcionCuenta;
        Parameters[2].Value:=Id_bancoMod;
        ExecSQL;
        Free;
        MessageBox(0,'Datos modificados con éxito.','Información',0);
        _FOpciones.BuscaBanco('',1);
        Self.Close;
      end;
  except
    OpcionEditar:=0;
    MessageBox(0,'Se produjo un error al intentar guardar los datos. Comuniquese con el administrador.','Información',0);
    Self.Close;
  end;
end;

procedure TFCuentasBancarias.InsertaCuentaBanco(Id_banco:Integer; NCuenta:string; TipoCuenta: Integer; Fecha:TDateTime; MensajeS:Integer);
begin
  try
    Qr_InsertaCuentaBanco:=TADOQuery.Create(Self);
    with Qr_InsertaCuentaBanco do
      begin
        Connection:=ControlCuentasBancarias.Coneccion_1;
        Close;
        SQL.Clear;
        SQL.Add('insert into cuentasBancarias (Id_Banco_cuentas, Cuenta, TipoCuenta, fecha)');
        SQL.Add('values(:p0, :p1, :p2, :p3)');
        Parameters[0].Value:=Id_banco;
        Parameters[1].Value:=NCuenta;
        Parameters[2].Value:=TipoCuenta;
        Parameters[3].Value:=Fecha;
        ExecSQL;
        if(MensajeS = 1)then
          begin
            MessageDlg('El número de cuenta a sido agregada con éxito.', mtInformation, [mbOK],0);
          end;
        Free;
        Self.Close;
      end;
  except

  end;
end;

function TFCuentasBancarias.UltimoIdCuenta: Integer;
begin
  Qr_UltimaCuentaInsert:=TADOQuery.Create(Self);
  with Qr_UltimaCuentaInsert do
    begin
      Connection:=ControlCuentasBancarias.Coneccion_1;
      Close;
      SQL.Clear;
      SQL.Add('select Id_banco from bancos');
      Open;
      Last;
      Result:=FieldByName('Id_banco').AsInteger;
      Free;
    end;
end;


procedure TFCuentasBancarias.ModificaCuentaBanco(Id_banco:Integer; NCuenta:string;
  TipoCuenta: Integer);
begin
  try
    Qr_ModificaCuentaBanco:=TADOQuery.Create(Self);
    with Qr_ModificaCuentaBanco do
      begin
        Connection:=ControlCuentasBancarias.Coneccion_1;
        Close;
        SQL.Clear;
        SQL.Add('update cuentasBancarias set cuenta = :p0, tipoCuenta = :p1');
        SQL.Add('where Id_CuentaBancaria = :p2');
        Parameters[0].Value:=NCuenta;
        Parameters[1].Value:=TipoCuenta;
        Parameters[2].Value:=Id_banco;
        ExecSQL;
        Free;
        MessageBox(0,'Datos modificados con éxito.','Información',0);
        _FOpciones.BuscaCuentaBanco(_FOpciones.Qr_BuscarBancosId_Banco.AsInteger);
        Self.Close;
      end;
  except
  end;
end;

procedure TFCuentasBancarias.ME_CuentaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in['0'..'9',#8,#13]) then
    begin
      Key:=#0;
    end;
  if(Key = #13)then
    begin
      CBB_TipoCuenta.SetFocus;
    end;
end;

function TFCuentasBancarias.ValidaCuentaExiste(NCuenta: string): Boolean;
begin
  Qr_BuscaCuentaExiste:=TADOQuery.Create(Self);
  with Qr_BuscaCuentaExiste do
    begin
      Connection:=ControlCuentasBancarias.Coneccion_1;
      Close;
      SQL.Clear;
      SQL.Add('select id_cuentaBancaria, cuenta from cuentasBancarias where cuenta = :p0;');
      Parameters[0].Value:=NCuenta;
      Open;
    end;
   if (ModifNCuenta = 0) then
    begin
      Result:=True;
    end
   else
   if ModifNCuenta = 1 then
    begin
      if (Qr_BuscaCuentaExiste.FieldByName('id_cuentaBancaria').AsInteger = IdCuentaBanco)or(Qr_BuscaCuentaExiste.RecordCount = 0) then
        begin
          Result:=True;
        end
      else
        begin
          MessageBox(0,'Existe un número de cuenta ya existe.','Información',0);
          Result:=False;
        end;
    end;
end;

function TFCuentasBancarias.ValidaCamposCuenta(NCuenta: string;
  Opcion: Integer): Boolean;
begin
  if (Opcion = 1)then
    begin
      if (Trim(ME_Cuenta.Text) = '') then
        begin
          Result:=False;
          MessageDlg('El Campo "Cuenta" esta vacio, ingrese un número de cuenta para continuar',mtInformation,[mbOK],0);
        end
      else
        begin
          Result:=True;
        end;
    end;
end;

procedure TFCuentasBancarias.InsertaDetalleCuenta(IdCuenta: Integer;
  Debito, Credito: Double; NTransaccion, Descripcion: string; FechaCreado,
  Fecha: TDateTime; IdBancaDC, Mensaje:Integer);
begin
  try
    Qr_InsertaDetalleCuenta:=TADOQuery.Create(Self);
    with Qr_InsertaDetalleCuenta do
      begin
        Connection:=ControlCuentasBancarias.Coneccion_1;
        Close;
        SQL.Clear;
        SQL.Add('insert into detallesCuentaBancaria(id_cuenta, debito, credito,'+
               'numeroTransaccion, fechaCreado, fecha, descripcion, id_banca)');
        SQL.Add('values(:p0, :p1, :p2, :p3, :p4, :p5, :p6, :P7)');
        Parameters[0].Value:=IdCuenta;
        Parameters[1].Value:=Debito;
        Parameters[2].Value:=Credito;
        Parameters[3].Value:=NTransaccion;
        Parameters[4].Value:=FechaCreado;
        Parameters[5].Value:=Fecha;
        Parameters[6].Value:=Descripcion;
        Parameters[7].Value:=IdBancaDC;
        ExecSQL;
        Free;
        if(Mensaje = 1)then
          begin
            MessageDlg('Datos guardados con éxito.',mtInformation,[mbOK],0);
          end;
      end;
  except
    Qr_InsertaDetalleCuenta.Free;
    MessageBox(0,'Se produjo un error al intentar guardar los datos. Comuniquese con el administrador del sistema.','Información',0);
  end;
end;

function TFCuentasBancarias.BuscaIDCuentaBanco(NCuenta: string): Integer;
begin
  Qr_BuscaCBanco:=TADOQuery.Create(Self);
  with Qr_BuscaCBanco do
    begin
      Connection:=ControlCuentasBancarias.Coneccion_1;
      Close;
      SQL.Clear;
      SQL.Add('select id_cuentaBancaria from cuentasBancarias where cuenta = :p0');
      Parameters[0].Value:=NCuenta;
      Open;
    end;
  Result:=Qr_BuscaCBanco.fieldByName('id_cuentaBancaria').AsInteger;
  Qr_BuscaCBanco.Free;
end;

procedure TFCuentasBancarias.EL_NombreBancoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if(Key = #13)then
    begin
      EL_DescripcionCuenta.SetFocus;
    end;
end;

procedure TFCuentasBancarias.EL_DescripcionCuentaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if(Key = #13)then
    begin
      BBT_Guardar.SetFocus;
    end;
end;

procedure TFCuentasBancarias.HK_1HotKey(Sender: TObject);
begin
  Self.Close;
end;

procedure TFCuentasBancarias.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if(Key = #27)then
    Self.Close;
end;

end.
