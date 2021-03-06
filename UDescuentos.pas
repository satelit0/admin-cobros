unit UDescuentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, JvExMask, JvToolEdit, JvBaseEdits, Buttons, ADODB,
  DateUtils, DB, MemDS, VirtualTable, ExtCtrls, DBCtrls, Grids, DBGrids,
  Menus, JvComponentBase, JvAppHotKey, JvBalloonHint;

type
  TFDescuento = class(TForm)
    M_1: TMemo;
    LB_1: TLabel;
    ECal_Descuento: TJvCalcEdit;
    LB_2: TLabel;
    BBT_Aplicar: TBitBtn;
    BBT_Salir: TBitBtn;
    TableV_Descuentos: TVirtualTable;
    GB_1: TGroupBox;
    dbnvgr1: TDBNavigator;
    DS_Descuentos: TDataSource;
    DBGRID_1: TDBGrid;
    Qr_BuscaDescuento: TADOQuery;
    Qr_BuscaDescuentoId_Descuento: TAutoIncField;
    Qr_BuscaDescuentoId_empleado: TSmallintField;
    Qr_BuscaDescuentoMontoDescuento: TFloatField;
    Qr_BuscaDescuentoConcepto: TWideStringField;
    Qr_BuscaDescuentoEstado: TSmallintField;
    Qr_BuscaDescuentoFecha: TDateTimeField;
    TableV_DescuentosIndice: TAutoIncField;
    TableV_DescuentosId_Descuento: TIntegerField;
    TableV_DescuentosmontoDescuento: TFloatField;
    TableV_Descuentosdescripcion: TStringField;
    TableV_Descuentosestado: TIntegerField;
    PM_Descuentos: TPopupMenu;
    MM_Modificar1: TMenuItem;
    MM_N1: TMenuItem;
    MM_eliminar1: TMenuItem;
    TableV_DescuentosId_Empleado: TIntegerField;
    TableV_DescuentosEsNuevo: TIntegerField;
    BBT_2: TBitBtn;
    HK_1: TJvApplicationHotKey;
    JvBalloonHint1: TJvBalloonHint;
    GB_2: TGroupBox;
    RB_Activo: TRadioButton;
    RB_Inactivo: TRadioButton;
    procedure BBT_SalirClick(Sender: TObject);
    procedure BBT_AplicarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGRID_1DblClick(Sender: TObject);
    procedure TableV_DescuentosestadoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure MM_eliminar1Click(Sender: TObject);
    procedure PM_DescuentosPopup(Sender: TObject);
    procedure MM_Modificar1Click(Sender: TObject);
    procedure BBT_2Click(Sender: TObject);
    procedure M_1KeyPress(Sender: TObject; var Key: Char);
    procedure HK_1HotKey(Sender: TObject);
    procedure ECal_DescuentoKeyPress(Sender: TObject; var Key: Char);
    procedure HK_2HotKey(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    function ValidaCompos:Boolean;
    { Private declarations }
  public
    procedure InsertaDescuento(IdEmpleado, Estado:Integer; Descripcion:string; MontoDescuento:Double; Fecha:TDateTime; SMensaje:Integer);
    procedure LlenarCampos(IdEmpleado:Integer);
    procedure ModificaDescuento(Id_Descuento, Estado:Integer; Descripcion:string; MontoDescuento:Double; SMensaje:Integer);
    procedure LlenarCamposTV;
    procedure BuscaDescuento(Id_empleadoDes:Integer);
    procedure EliminaDescuento(Id_Descuento, SMensaje:Integer);
    { Public declarations }
  end;

var
  FDescuento: TFDescuento;
  DescuentoTemp, AplicarActivo:Boolean;
  IdEmpleadoDes:Integer; //id del empleado al que se le aplicara el descuento raltime
  DescuentoActivo:Boolean;//dertermina si el descuento se le asignara a un empleado nuevo o existente
implementation

uses UPrincipal, UEmpleados, UBuscaEmpleado;

{$R *.dfm}

procedure TFDescuento.BBT_SalirClick(Sender: TObject);
begin
  Self.Close;
end;


procedure TFDescuento.InsertaDescuento(IdEmpleado, Estado: Integer;
  Descripcion: string; MontoDescuento: Double; Fecha: TDateTime; SMensaje:Integer);
var
  Qr_InsertaDesc:TADOQuery;
begin
  try
    Qr_InsertaDesc:=TADOQuery.Create(Self);
    with Qr_InsertaDesc do
      begin
        Connection:=ControlCuentasBancarias.Coneccion_1;
        Close;
        SQL.Clear;
        SQL.Add('insert into Descuentos(id_empleado, montoDescuento, concepto, estado, fecha)');
        SQL.Add('values(:idemp, :mdesc, :conc, :estado, :fecha)');
        Parameters[0].Value:=IdEmpleado;
        Parameters[1].Value:=MontoDescuento;
        Parameters[2].Value:=Descripcion;
        Parameters[3].Value:=Estado;
        Parameters[4].Value:=Fecha;
        ExecSQL;
        Free;
        if(SMensaje = 1)then
        MessageDlg('Datos guardados con �xito.', mtInformation, [mbOK],0);
      end;
  except
    MessageDlg('Se produjo un error al guardar el descuento', mtInformation, [mbOK], 0);
  end;
end;

procedure TFDescuento.LlenarCampos(IdEmpleado:Integer);
var
Qr_BuscaDesc:TADOQuery;
begin
  Qr_BuscaDesc:=TADOQuery.Create(Self);
  with Qr_BuscaDesc do
    begin
      Connection:=ControlCuentasBancarias.Coneccion_1;
      Close;
      SQL.Clear;
      SQL.Add('select id_empleado, montoDescuento, concepto, estado, fecha from descuentos');
      SQL.Add('where id_empleado = :idemp');
      Parameters[0].Value:=IdEmpleado;
      Open;
    end;
  ECal_Descuento.Value:=Qr_BuscaDesc.FieldByName('montoDescuento').Value;
  M_1.Text:=Qr_BuscaDesc.FieldByName('concepto').Value;
  if(Qr_BuscaDesc.FieldByName('estado').Value = 0)then
    begin
      RB_Activo.Checked:=True;
    end
  else
  if(Qr_BuscaDesc.FieldByName('estado').Value = 1)then
    begin
      RB_Inactivo.Checked:=True;
    end;
end;

procedure TFDescuento.ModificaDescuento(Id_Descuento, Estado: Integer;
  Descripcion: string; MontoDescuento: Double; SMensaje:Integer);
var
  Qr_ModificaDescuento:TADOQuery;
begin
  try
    Qr_ModificaDescuento:=TADOQuery.Create(Self);
    with Qr_ModificaDescuento do
      begin
        Connection:=ControlCuentasBancarias.Coneccion_1;
        Close;
        SQL.Clear;
        SQL.Add('update descuentos set montoDescuento = :mdes, concepto = :conc, estado = :est');
        SQL.Add('where id_descuento = :idDes');
        Parameters[0].Value:=MontoDescuento;
        Parameters[1].Value:=Descripcion;
        Parameters[2].Value:=Estado;
        Parameters[3].Value:=Id_Descuento;
        ExecSQL;
        Free;
        if(SMensaje = 1)then
        MessageDlg('Datos modificados con �xito.',mtInformation,[mbOK],0);
      end;
  except
    MessageDlg('Se ha producido un error al intentar modificar los datos.',mtInformation,[mbOK],0);
  end;
end;

function TFDescuento.ValidaCompos: Boolean;
begin
  if(Trim(ECal_Descuento.Text) = '')then
    begin
      Result:=False;
      JvBalloonHint1.ActivateHint(ECal_Descuento,'Ingrese un monto para registrar el descuento.',ikError,'Error',5000);
      //MessageDlg('Ingrese un monto para registrar el descuento.', mtInformation, [mbOK],0);
      ECal_Descuento.SetFocus;
    end
  else
  if((RB_Activo.Checked = False) and (RB_Inactivo.Checked = False))then
    begin
      Result:=False;
      JvBalloonHint1.ActivateHint(GB_2,'Aun no se ha definido el estado del descuento.'+#13+#13+'Activo = habilita el descuento para ser deducido del salario del empleado.'+
      #13+'Inactivo = Deshabilita el descuento para no ser deducido del salario del empleado.',ikError,'Error',5000);
      //MessageDlg('Aun no se ha definido el estado del descuento.'+#13+#13+'Activo = habilita el descuento para ser deducido del salario del empleado.'+
      //#13+'Inactivo = Deshabilita el descuento para no ser deducido del salario del empleado.', mtInformation, [mbOK],0);
    end
  else
  if(Trim(M_1.Text) = '')then
    begin
      Result:=False;
      MessageDlg('Ingrese una descripci�n para el descuento a realizar.', mtInformation, [mbOK],0);
    end
  else
    begin
      Result:=True;
    end;
end;

procedure TFDescuento.BBT_AplicarClick(Sender: TObject);
var
  Estado:Integer;
begin
  if(DescuentoActivo = True)then
    begin
     if(ValidaCompos = True)then
      begin
        if(RB_Activo.Checked = True)then
          begin
            Estado:=1;
          end
        else
          begin
            Estado:=0;
          end;
        if(BBT_Aplicar.Tag = 0)then
          begin
            with TableV_Descuentos do
              begin
                Append;
                TableV_DescuentosmontoDescuento.Value:=ECal_Descuento.Value;
                TableV_Descuentosdescripcion.AsString:=M_1.Text;
                TableV_Descuentosestado.AsInteger:=Estado;
                TableV_DescuentosEsNuevo.Value:=1;
                Post;
              end;
          end
        else
        if(BBT_Aplicar.Tag = 1)then
          begin
            with TableV_Descuentos do
              begin
                Edit;
                TableV_DescuentosmontoDescuento.Value:=ECal_Descuento.Value;
                TableV_Descuentosdescripcion.AsString:=M_1.Text;
                TableV_Descuentosestado.AsInteger:=Estado;
                TableV_DescuentosEsNuevo.Value:=-1;
                Post;
                BBT_Aplicar.Tag:=0;
              end;
          end;
        if(DescuentoTemp = False)then
          begin
            if(TableV_DescuentosEsNuevo.Value = 1)then
              begin
                InsertaDescuento(IdEmpleadoDes,1,TableV_Descuentosdescripcion.AsString,TableV_DescuentosmontoDescuento.Value,
                                 DateOf(Now),1);
              end
            else
            if(TableV_DescuentosEsNuevo.Value = -1)then
              begin
                ModificaDescuento(TableV_DescuentosId_Descuento.Value,TableV_Descuentosestado.Value,TableV_Descuentosdescripcion.Value,
                                  TableV_DescuentosmontoDescuento.Value,1);
              end;
          end;
        ECal_Descuento.Text:='';
        M_1.Lines.Clear;
        //Caption:='Descuentos.';
        RB_Activo.Checked:=True;
        ECal_Descuento.SetFocus;
        IdEmpleadoDes:=0;
      end;
    end
  else
    begin
      if(BBT_2.Visible = True)then
      JvBalloonHint1.ActivateHint(BBT_2,'Selecciona un empleado para asignarle el descuento.',ikError,'Error',5000);
    end;
end;

procedure TFDescuento.LlenarCamposTV;
begin
  ECal_Descuento.Value:=TableV_DescuentosmontoDescuento.Value;
  M_1.Text:=TableV_Descuentosdescripcion.AsString;
  if(TableV_Descuentosestado.Value = 0)then
    begin
      RB_Activo.Checked:=True;
    end
  else
  if(TableV_Descuentosestado.Value = 1)then
    begin
      RB_Inactivo.Checked:=True;
    end;
end;

procedure TFDescuento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if(DescuentoTemp = True)then
    begin
      if(TableV_Descuentos.RecordCount > 0)then
        begin
          with _FEmpleados do
            begin
              TableV_DescuentoTemp.Clear;
              TableV_Descuentos.First;
              while not TableV_Descuentos.Eof do
                begin 
                  TableV_DescuentoTemp.Append;
                  TableV_DescuentoTempId_Descuento.Value:=TableV_DescuentosId_Descuento.Value;
                  TableV_DescuentoTempMontoDescuento.Value:=TableV_DescuentosmontoDescuento.Value;
                  TableV_DescuentoTempDescripcion.Value:=TableV_Descuentosdescripcion.AsString;
                  TableV_DescuentoTempEstado.Value:=TableV_Descuentosestado.Value;
                  TableV_DescuentoTempEsNuevo.Value:=TableV_DescuentosEsNuevo.Value;
                  TableV_DescuentoTemp.Post;
                  TableV_Descuentos.Next;
                end;
                ECal_Descuentos.Value:=ObtnerMontoDescuento;
                ECal_SueldoNeto.Text:=CalculaSalarioNeto(ECal_SuleldoBruto.Text,ECal_Descuentos.Text,ECal_1.Value);
            end;
        end;
    end;
  
end;

procedure TFDescuento.BuscaDescuento(Id_empleadoDes: Integer);
begin
  Qr_BuscaDescuento.Close;
  Qr_BuscaDescuento.Parameters[0].Value:=Id_empleadoDes;
  Qr_BuscaDescuento.Open;
end;

procedure TFDescuento.DBGRID_1DblClick(Sender: TObject);
begin
  if(TableV_Descuentos.RecordCount > 0)then
    begin
      ECal_Descuento.Value:=TableV_DescuentosmontoDescuento.Value;
      M_1.Text:=TableV_Descuentosdescripcion.AsString;
      //Caption:='Descuentos (Modificar).';
      if(TableV_Descuentosestado.Value = 1)then
        begin
          RB_Activo.Checked:=True;
        end
      else
      if(TableV_Descuentosestado.Value = 0)then
        begin
          RB_Inactivo.Checked:=True;
        end;
      BBT_Aplicar.Tag:=1;
    end;
end;

procedure TFDescuento.TableV_DescuentosestadoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if(TableV_Descuentos.RecordCount > 0)then
  if(TableV_Descuentosestado.Value = 1)then
    begin
      Text:='Activo';
    end
  else
  if(TableV_Descuentosestado.Value = 0)then
    begin
      Text:='Inactivo';
    end;
end;

procedure TFDescuento.MM_eliminar1Click(Sender: TObject);
begin
  if(TableV_Descuentos.RecordCount > 0)then
  if(MessageDlg('Confirme elimiar el descuento seleccionado pulsando el boton Si.', mtConfirmation, [mbYes,mbNo],0) = IDYES)then
    begin
      BuscaDescuento(TableV_DescuentosId_Empleado.Value);
      if(Qr_BuscaDescuento.RecordCount > 0)then
        begin
          EliminaDescuento(TableV_DescuentosId_Descuento.Value,1);
        end;
      TableV_Descuentos.Delete;
    end;
end;

procedure TFDescuento.EliminaDescuento(Id_Descuento, SMensaje: Integer);
var
  Qr_EliminaDes:TADOQuery;
begin
  try
    Qr_EliminaDes:=TADOQuery.Create(Self);
    with Qr_EliminaDes do
      begin
        Connection:=ControlCuentasBancarias.Coneccion_1;
        Close;
        SQL.Clear;
        SQL.Add('delete from descuentos where id_descuento = :iddes');
        Parameters[0].Value:=Id_Descuento;
        ExecSQL;
        Free;
        if(SMensaje = 1)then
          begin
            MessageDlg('Descuento eliminado.',mtInformation,[mbOK],0);
          end;
      end;
  except
    MessageDlg('Se produjo un error al intentar eliminar el descuento, comuniquese con el administrador y reporte este error.',mtInformation,[mbOK],0);
  end
end;

procedure TFDescuento.PM_DescuentosPopup(Sender: TObject);
begin
  if(TableV_Descuentos.RecordCount = 0)then
    begin
      MM_Modificar1.Enabled:=False;
      MM_eliminar1.Enabled:=False;
    end
  else
  if(TableV_Descuentos.RecordCount > 0)then
    begin
      MM_Modificar1.Enabled:=True;
      MM_eliminar1.Enabled:=True;
    end;
end;

procedure TFDescuento.MM_Modificar1Click(Sender: TObject);
begin
  DBGRID_1DblClick(Self);
end;

procedure TFDescuento.BBT_2Click(Sender: TObject);
begin
  try
    HK_1.Active:=False;
    _FBuscaEmpleado:=TFBuscaEmpleado.Create(Self);
    EnviarA:='descuento';
    _FBuscaEmpleado.BBT_CrearNEmpleado.Enabled:=False;
    _FBuscaEmpleado.DBGrid_1.PopupMenu:=nil;
    _FBuscaEmpleado.ShowModal;
  finally
    _FBuscaEmpleado.Free;
    HK_1.Active:=True;
  end;
end;

procedure TFDescuento.M_1KeyPress(Sender: TObject; var Key: Char);
begin
  if(Key in['a'..'z'])then
    Key:=UpCase(Key);
end;

procedure TFDescuento.HK_1HotKey(Sender: TObject);
begin
  Self.Close;
end;

procedure TFDescuento.ECal_DescuentoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if(Key = #13)then
    begin
      M_1.SetFocus;
    end;
end;

procedure TFDescuento.HK_2HotKey(Sender: TObject);
begin
  Self.Close;
end;

procedure TFDescuento.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if(Key = #27)then
    Self.Close;
end;

end.
