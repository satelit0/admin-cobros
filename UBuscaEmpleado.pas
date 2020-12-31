unit UBuscaEmpleado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvExStdCtrls, JvScrollBar, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, DBCtrls, JvDBControls, ExtCtrls, DB, JvDataSource,
  Mask, Buttons, Menus, JvMenus, ADODB, IniFiles, JvComponentBase,
  JvAppHotKey;

type
  TFBuscaEmpleado = class(TForm)
    pnl1: TPanel;
    DBNV_1: TJvDBNavigator;
    DBGrid_1: TJvDBGrid;
    DS_Empleados: TJvDataSource;
    BBT_Buscar: TBitBtn;
    EM_Buscar: TMaskEdit;
    BBT_1: TBitBtn;
    PM_1: TJvPopupMenu;
    MM_Modificar1: TMenuItem;
    MM_N1: TMenuItem;
    MM_Seleccionar1: TMenuItem;
    SBT_Retornar: TSpeedButton;
    BBT_CrearNEmpleado: TBitBtn;
    Qr_BuscaEmpleado: TADOQuery;
    CKB_1: TCheckBox;
    Qr_BuscaEmpleado_nombre: TWideStringField;
    Qr_BuscaEmpleadoId_Empleado: TAutoIncField;
    Qr_BuscaEmpleadocedula: TWideStringField;
    Qr_BuscaEmpleadoapellidos: TWideStringField;
    Qr_BuscaEmpleadonombres: TWideStringField;
    Qr_BuscaEmpleadoapodo: TWideStringField;
    Qr_BuscaEmpleadodireccion: TWideStringField;
    Qr_BuscaEmpleadotelefono: TWideStringField;
    Qr_BuscaEmpleadotelefonoMovil: TWideStringField;
    Qr_BuscaEmpleadofechaNacimiento: TDateTimeField;
    Qr_BuscaEmpleadosexo: TWideStringField;
    Qr_BuscaEmpleadofechaIngreso: TDateTimeField;
    Qr_BuscaEmpleadosalarioBruto: TFloatField;
    Qr_BuscaEmpleadotipoEmpleado: TSmallintField;
    Qr_BuscaEmpleadointervaloPago: TWideStringField;
    Qr_BuscaEmpleadofechaCreado: TDateTimeField;
    Qr_BuscaEmpleadoeEstado: TSmallintField;
    Qr_BuscaEmpleadoId_Banca: TAutoIncField;
    Qr_BuscaEmpleadoNumero_Banca: TIntegerField;
    Qr_BuscaEmpleadoCantidadTurnos: TIntegerField;
    Qr_BuscaEmpleadoId_Empleado_Banca: TIntegerField;
    Qr_BuscaEmpleadoDireccion_Banca: TWideStringField;
    Qr_BuscaEmpleadoNombre_Propietario: TWideStringField;
    Qr_BuscaEmpleadoMonto_Alquiler: TFloatField;
    Qr_BuscaEmpleadoDia_Pago_Alquiler: TIntegerField;
    Qr_BuscaEmpleadoFecha_Incio_Operacion: TDateTimeField;
    Qr_BuscaEmpleadoFecha: TDateTimeField;
    Qr_BuscaEmpleadobEstado: TSmallintField;
    HK_BEmpleado: TJvApplicationHotKey;
    Qr_BuscaEmpleadoMontoIncentivo: TFloatField;
    Qr_BuscaEmpleadoDescripcionIncentivo: TWideStringField;
    procedure FormShow(Sender: TObject);
    procedure BBT_BuscarClick(Sender: TObject);
    procedure EM_BuscarKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_1DblClick(Sender: TObject);
    procedure BBT_1Click(Sender: TObject);
    procedure MM_Seleccionar1Click(Sender: TObject);
    procedure MM_Modificar1Click(Sender: TObject);
    procedure SBT_RetornarClick(Sender: TObject);
    procedure BBT_CrearNEmpleadoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Qr_BuscaEmpleadoeEstadoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure CKB_1Click(Sender: TObject);
    procedure HK_BEmpleadoHotKey(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure BuscaEmpleado(ValorBusqueda:string; Estado, Estado1:Integer);
    procedure LlenarCampos;
    procedure CargarDescuentos;
  end;

var
  FBuscaEmpleado: TFBuscaEmpleado;
  EstadoInact_Act:Integer;
implementation

uses UPrincipal, UEmpleados, UCuentasBancarias, UOpciones, UBuscaReporte,
  UDescuentos;

{$R *.dfm}

//escribe valor string en archivo INI
procedure esCadINI (clave, cadena : string; valor : String);
begin
  with tinifile.create (changefileext(paramstr(0),'.INI')) do
  try
    WriteString (clave, cadena, valor);
  finally
    free;
  end;
end;

//lee un valor string del INI
function leCadINI (clave, cadena : string; defecto : String) : String;
begin
  with tinifile.create (changefileext(paramstr(0),'.INI')) do
  try
    result := ReadString (clave, cadena, defecto);
  finally
    free;
  end;
end;
{ TFBuscaEmpleado }

procedure TFBuscaEmpleado.BuscaEmpleado(ValorBusqueda: string; Estado, Estado1:Integer);
//var
  //Qr_BuscaEmpleado:TADOQuery;
begin
  //Qr_BuscaEmpleado:=TADOQuery.Create(Self);
   with Qr_BuscaEmpleado do
    begin
      Close;
      Parameters.ParamByName('ap').Value:='%'+ValorBusqueda+'%';
      Parameters.ParamByName('mon').Value:='%'+ValorBusqueda+'%';
      Parameters.ParamByName('apod').Value:='%'+ValorBusqueda+'%';
      Parameters.ParamByName('est').Value:=Estado;
      Parameters.ParamByName('est1').Value:=Estado1;
      Open;
    end;
   if(Qr_BuscaEmpleado.RecordCount > 0)then
    begin
      BBT_1.Enabled:=True;
      MM_Modificar1.Enabled:=True;
      MM_Seleccionar1.Enabled:=True;
    end
   else
    begin
      BBT_1.Enabled:=False;
      MM_Modificar1.Enabled:=False;
      MM_Seleccionar1.Enabled:=False;
    end;
end;

procedure TFBuscaEmpleado.FormShow(Sender: TObject);
var
  MostrarInactivos:string;
begin
  MostrarInactivos:=leCadINI('ConfigBEmpleado','inactivoEmp','');
  if(MostrarInactivos = '1')then
    begin
      CKB_1.Checked:=True;
      EstadoInact_Act:=0
    end
  else
    begin
      CKB_1.Checked:=False;
      EstadoInact_Act:=1;
    end;
  BuscaEmpleado(EM_Buscar.Text,1,EstadoInact_Act);
  EM_Buscar.SetFocus;
end;

procedure TFBuscaEmpleado.BBT_BuscarClick(Sender: TObject);
begin
  BuscaEmpleado(EM_Buscar.Text,1,EstadoInact_Act);
end;

procedure TFBuscaEmpleado.EM_BuscarKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    begin
      BBT_BuscarClick(Self);
    end;
end;

procedure TFBuscaEmpleado.LlenarCampos;
begin
  Id_Empleado:=Qr_BuscaEmpleadoId_Empleado.Value;
  Opcion:=1;
  _FEmpleados.EL_Apellidos.Text:=Qr_BuscaEmpleadoapellidos.AsString;
  _FEmpleados.EL_Nombre.Text:=Qr_BuscaEmpleadonombres.AsString;
  _FEmpleados.EM_Cedula.Text:=Qr_BuscaEmpleadocedula.AsString;
  _FEmpleados.EL_Apodo.Text:=Qr_BuscaEmpleadoapodo.AsString;
  _FEmpleados.EL_Direccion.Text:=Qr_BuscaEmpleadodireccion.AsString;
  _FEmpleados.EM_Telefono.Text:=Qr_BuscaEmpleadotelefonoMovil.AsString;
  _FEmpleados.EM_Flota.Text:=Qr_BuscaEmpleadotelefono.AsString;
  _FEmpleados.DTP_Fecha_Nac.DateTime:=Qr_BuscaEmpleadofechaNacimiento.AsDateTime;
  _FEmpleados.ECal_1.Value:=Qr_BuscaEmpleadoMontoIncentivo.Value;
  _FEmpleados.EL_1.Text:=Qr_BuscaEmpleadoDescripcionIncentivo.AsString;
  _FEmpleados.EL_Edad.Text:=_FEmpleados.CalculaEdad(Qr_BuscaEmpleadofechaNacimiento.AsDateTime, 0);
  if Qr_BuscaEmpleadosexo.AsString = 'Masculino' then
    begin
      _FEmpleados.RB_Masc.Checked := True;
    end;
  if Qr_BuscaEmpleadosexo.AsString = 'Femenino' then
    begin
      _FEmpleados.RB_Femen.Checked := True;
    end;
  _FEmpleados.DTP_Fecha_Ing.DateTime:=Qr_BuscaEmpleadofechaIngreso.AsDateTime;
  _FEmpleados.EL_TiempoServicio.Text:=_FEmpleados.CalculaEdad(Qr_BuscaEmpleadofechaIngreso.AsDateTime,0);
  _FEmpleados.ECal_SuleldoBruto.Value:=Qr_BuscaEmpleadosalarioBruto.Value;
 // _FEmpleados.ECal_Descuentos.Value:=Qr_BuscaEmpleadodescuento.Value;
  _FEmpleados.ECal_SueldoNeto.Text:=_FEmpleados.CalculaSalarioNeto(Qr_BuscaEmpleadosalarioBruto.AsString,_FEmpleados.ECal_Descuentos.Text,_FEmpleados.ECal_1.Value);
  if Qr_BuscaEmpleadointervaloPago.AsString = '15 de cada mes' then
    begin
      _FEmpleados.CBB_IntervaloPago.ItemIndex:=0;
    end
  else
  if Qr_BuscaEmpleadointervaloPago.AsString = '30 de cada mes' then
    begin
      _FEmpleados.CBB_IntervaloPago.ItemIndex:=1;
    end;
  if(Qr_BuscaEmpleadoeEstado.Value = 1)then
    begin
      _FEmpleados.CKB_Estado.Checked:=True;
    end
  else
    begin
      _FEmpleados.CKB_Estado.Checked:=False;
    end;
  _FEmpleados.CBB_TipoEmpleado.ItemIndex:=Qr_BuscaEmpleadotipoEmpleado.Value;

end;

procedure TFBuscaEmpleado.DBGrid_1DblClick(Sender: TObject);
begin
  if Qr_BuscaEmpleado.RecordCount > 0 then
    begin
      if EnviarA = 'empleados' then
        begin
          if BBT_1.Tag = 0 then
            begin
              _FEmpleados.GB_1.Enabled:=False;
              _FEmpleados.GB_2.Enabled:=False;
              _FEmpleados.BBT_Guardar.Enabled:=False;
              _FEmpleados.BBT_Limpiar.Enabled:=False;
              _FEmpleados.BBT_Eliminar.Enabled:=False;
              _FEmpleados.Caption:='Empleados(Datos Generales)';
            end
          else
          if BBT_1.Tag = 1 then
            begin
              _FEmpleados.GB_1.Enabled:=True;
              _FEmpleados.GB_2.Enabled:=True;
              _FEmpleados.BBT_Guardar.Enabled:=True;
              _FEmpleados.BBT_Limpiar.Enabled:=True;
              _FEmpleados.BBT_Eliminar.Enabled:=True;
              _FEmpleados.Caption:='Empleados(Modificar o Eliminar)';
              if(Qr_BuscaEmpleadoId_Empleado_Banca.Value > -1)then
              begin
                NBancaMod:=Qr_BuscaEmpleadoNumero_Banca.Value;
                IdEmpBanca:=Qr_BuscaEmpleadoId_Empleado_Banca.Value;
              end;
              BBT_1.Tag:=0;
            end;
            CargarDescuentos;
            _FEmpleados.ECal_Descuentos.Value:=_FEmpleados.ObtnerMontoDescuento;
            DescuentoActivo:=True;
            LlenarCampos;
        end
      else
      if EnviarA = 'bancas' then
        begin
          Id_empleadoBanca:=Qr_BuscaEmpleadoId_Empleado.AsInteger;
          _FOpciones.E_EmpleadoResponsable.Text:=Qr_BuscaEmpleadonombres.AsString+' '+Qr_BuscaEmpleadoapellidos.AsString;
          nombreEmp:=Qr_BuscaEmpleadonombres.AsString;
          apellidosEmp:=Qr_BuscaEmpleadoapellidos.AsString;
        end
      else
      if(EnviarA = 'CXC')then
        begin
          Id_empleadoBanca:=Qr_BuscaEmpleadoId_Empleado.AsInteger;
          _FAbonosCXC.LB_1.Caption:='Nombre Empleado: '+Qr_BuscaEmpleadonombres.AsString+' '+Qr_BuscaEmpleadoapellidos.AsString;
          _FAbonosCXC.MostrarDetallesCXC;
        end
      else
      if(EnviarA = 'reporte')then
        begin
          //_FBuscaReporte.EL_NombreEmpleado.Text:=Qr_BuscaEmpleadonombres.AsString+' '+Qr_BuscaEmpleadoapellidos.AsString;
          RIdEmpleado:=Qr_BuscaEmpleadoId_Empleado.AsInteger;  
        end
      else
      if(EnviarA = 'descuento')then
        begin
          try
           // _FDescuento:=TFDescuento.Create(Self);
            with _FDescuento do
              begin
                BuscaDescuento(Qr_BuscaEmpleadoId_Empleado.Value);
                Qr_BuscaDescuento.First;
                TableV_Descuentos.Clear;
                while not Qr_BuscaDescuento.Eof do
                  begin
                    TableV_Descuentos.Append;
                    TableV_DescuentosId_Descuento.Value:=Qr_BuscaDescuentoId_Descuento.Value;
                    TableV_DescuentosmontoDescuento.Value:=Qr_BuscaDescuentoMontoDescuento.Value;
                    TableV_Descuentosdescripcion.Value:=Qr_BuscaDescuentoConcepto.Value;
                    TableV_DescuentosId_Empleado.Value:=Qr_BuscaDescuentoId_empleado.Value;
                    TableV_Descuentosestado.Value:=Qr_BuscaDescuentoEstado.Value;
                    TableV_DescuentosEsNuevo.Value:=-1;
                    TableV_Descuentos.Post;
                    Qr_BuscaDescuento.Next;
                  end;
                DescuentoActivo:=True;
                Caption:='Descuentos - '+Qr_BuscaEmpleado_nombre.AsString;
              end;
          except

          end;
        end;
      Self.Close;
    end;
end;

procedure TFBuscaEmpleado.BBT_1Click(Sender: TObject);
begin
  DBGrid_1DblClick(Self);
end;

procedure TFBuscaEmpleado.MM_Seleccionar1Click(Sender: TObject);
begin
  DBGrid_1DblClick(Self);
end;

procedure TFBuscaEmpleado.MM_Modificar1Click(Sender: TObject);
begin
  BBT_1.Tag:=1;
  _FEmpleados.BBT_Guardar.Caption:='&Modificar';
  DBGrid_1DblClick(Self);
end;

procedure TFBuscaEmpleado.SBT_RetornarClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFBuscaEmpleado.BBT_CrearNEmpleadoClick(Sender: TObject);
begin
  try
    CerrarFEmpleado:=True;

    _FEmpleados:=TFEmpleados.Create(Self);
    _FEmpleados.BBT_Buscar.Enabled:=False;
    //Self.Hide;
    _FEmpleados.ShowModal;
  finally
    _FEmpleados.Free;
    //Self.Show;
  end;               
end;

procedure TFBuscaEmpleado.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if(CerrarFEmpleado = True)then
    begin
     // _FEmpleados.Free;
     // CerrarFEmpleado:=False;
     //Action:=caFree;
    end;
  if(CKB_1.Checked = True)then
    begin
      esCadINI('ConfigBEmpleado','inactivoEmp','1');
    end
  else
    begin
      esCadINI('ConfigBEmpleado','inactivoEmp','0');
    end;

end;

procedure TFBuscaEmpleado.Qr_BuscaEmpleadoeEstadoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
 if(Qr_BuscaEmpleadoeEstado.Value = 1)then
  begin
    Text:='Activo';
  end
 else
 if(Qr_BuscaEmpleadoeEstado.Value = 0)then
  begin
    Text:='Inactivo';
  end;
end;

procedure TFBuscaEmpleado.CKB_1Click(Sender: TObject);
begin
  if(CKB_1.Checked = True)then
    begin
      EstadoInact_Act:=0;
    end
  else
    begin
      EstadoInact_Act:=1;
    end;
  BuscaEmpleado(EM_Buscar.Text,1,EstadoInact_Act);
end;

procedure TFBuscaEmpleado.CargarDescuentos;
begin
  _FDescuento:=TFDescuento.Create(Self);
  _FDescuento.BuscaDescuento(Qr_BuscaEmpleadoId_Empleado.Value);
  _FEmpleados.TableV_DescuentoTemp.Clear;
  if(_FDescuento.Qr_BuscaDescuento.RecordCount > 0)then
    begin
      _FDescuento.Qr_BuscaDescuento.First;
      while not _FDescuento.Qr_BuscaDescuento.Eof do
        begin
          _FEmpleados.TableV_DescuentoTemp.Append;
          _FEmpleados.TableV_DescuentoTempId_Descuento.Value:=_FDescuento.Qr_BuscaDescuentoId_Descuento.Value;
          _FEmpleados.TableV_DescuentoTempId_Empleado.Value:=_FDescuento.Qr_BuscaDescuentoId_empleado.Value;
          _FEmpleados.TableV_DescuentoTempMontoDescuento.Value:=_FDescuento.Qr_BuscaDescuentoMontoDescuento.Value;
          _FEmpleados.TableV_DescuentoTempDescripcion.Value:=_FDescuento.Qr_BuscaDescuentoConcepto.AsString;
          _FEmpleados.TableV_DescuentoTempEstado.Value:=_FDescuento.Qr_BuscaDescuentoEstado.Value;
          _FEmpleados.TableV_DescuentoTempEsNuevo.Value:=-1;
          _FEmpleados.TableV_DescuentoTemp.Post;
          _FDescuento.Qr_BuscaDescuento.Next;
        end;
    end;
  _FDescuento.Free;
end;

procedure TFBuscaEmpleado.HK_BEmpleadoHotKey(Sender: TObject);
begin
  Self.Close;
end;

procedure TFBuscaEmpleado.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if(Key = #27)then
    Self.Close;
end;

end.
