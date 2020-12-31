unit ULogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, DB, Buttons, ADODB,
  Menus, JvComponentBase, JvAppHotKey;

type
  TFLoginUsuario = class(TForm)
    EL_1: TLabeledEdit;
    EL_2: TLabeledEdit;
    EL_3: TLabeledEdit;
    EL_4: TLabeledEdit;
    EL_5: TLabeledEdit;
    GB_1: TGroupBox;
    BBT_1: TBitBtn;
    BBT_2: TBitBtn;
    DS_Usuarios: TDataSource;
    DBGRID_1: TDBGrid;
    dbnvgr1: TDBNavigator;
    Qr_Usuarios: TADOQuery;
    BBT_3: TBitBtn;
    Qr_UsuariosId_Login: TAutoIncField;
    Qr_UsuariosNombreUsuario: TWideStringField;
    Qr_UsuariosClaveUsuario: TWideStringField;
    Qr_UsuariosNombre: TWideStringField;
    Qr_UsuariosAPellidos: TWideStringField;
    Qr_UsuariosFechaCreado: TDateTimeField;
    Qr_Usuarios_Nombre: TWideStringField;
    PM_1: TPopupMenu;
    MM_Modificar1: TMenuItem;
    MM_N1: TMenuItem;
    MM_Eliminar1: TMenuItem;
    HK_1: TJvApplicationHotKey;
    procedure BBT_1Click(Sender: TObject);
    procedure DBGRID_1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BBT_3Click(Sender: TObject);
    procedure BBT_2Click(Sender: TObject);
    procedure MM_Modificar1Click(Sender: TObject);
    procedure MM_Eliminar1Click(Sender: TObject);
    procedure EL_1KeyPress(Sender: TObject; var Key: Char);
    procedure EL_2KeyPress(Sender: TObject; var Key: Char);
    procedure EL_3KeyPress(Sender: TObject; var Key: Char);
    procedure EL_4KeyPress(Sender: TObject; var Key: Char);
    procedure EL_5KeyPress(Sender: TObject; var Key: Char);
    procedure EL_1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EL_2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EL_3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EL_4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EL_5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure HK_1HotKey(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    procedure InsertaUsuario(NUsuario, Clave, Nombre, Apellidos:string; Fecha:TDateTime; SMensaje:Integer);
    procedure ModificaUsuario(NUsuario, Clave, Nombre, Apellidos:string; IdUsuario, SMensaje:Integer; Fecha:TDateTime);
    procedure EliminaUsuario(IdUsuario, SMensaje:Integer);
    function ValidaCamposU:Boolean;
    function ValidaUsuarioExiste(NombreUsuario:String):Boolean;
    { Private declarations }
  public
    procedure LimpiarCamposU;
    { Public declarations }
  end;

var
  FLoginUsuario: TFLoginUsuario;
  IdUsuarioLogin:Integer;

implementation

uses UPrincipal;

{$R *.dfm}

{ TFLoginUsuario }

procedure TFLoginUsuario.EliminaUsuario(IdUsuario, SMensaje: Integer);
var
  Qr_EliminaU:TADOQuery;
begin
  try
    Qr_EliminaU:=TADOQuery.Create(Self);
    with Qr_EliminaU do
      begin
        Connection:=ControlCuentasBancarias.Coneccion_1;
        Close;
        SQL.Clear;
        SQL.Add('delete from Login where id_Login = :idL');
        Parameters[0].Value:=IdUsuario;
        ExecSQL;
        Free;
        if(SMensaje = 1)then
          begin
            MessageDlg('Usuario eliminado con éxito.',mtInformation,[mbOK],0);
          end;
      end;
  except
    Qr_EliminaU.Free;
    MessageDlg('Se produjo un error al intentar guardar los datos, comuniquese con el administrador.',mtInformation,[mbOK],0);
  end;
end;

procedure TFLoginUsuario.InsertaUsuario(NUsuario, Clave, Nombre,
  Apellidos: string; Fecha:TDateTime; SMensaje: Integer);
var
  Qr_InsertaU:TADOQuery;
begin
  try
    Qr_InsertaU:=TADOQuery.Create(Self);
    with Qr_InsertaU do
      begin
        Connection:=ControlCuentasBancarias.Coneccion_1;
        close;
        SQL.Add('insert into Login(nombreUsuario, claveUsuario, nombre, apellidos, fechaCreado)');
        SQL.Add('values(:p0, :p1, :p2, :p3, :p4)');
        Parameters[0].Value:=NUsuario;
        Parameters[1].Value:=Clave;
        Parameters[2].Value:=Nombre;
        Parameters[3].Value:=Apellidos;
        Parameters[4].Value:=Fecha;
        ExecSQL;
        Free;
        if(SMensaje = 1)then
          begin
            MessageDlg('Usuario creado correctamente.',mtInformation,[mbOK],0);
          end;
      end;
  except
    Qr_InsertaU.Free;
    MessageDlg('Se produjo un error al intentar guardar los datos, comuniquese con el administrador.',mtInformation,[mbOK],0);
  end;
end;

procedure TFLoginUsuario.ModificaUsuario(NUsuario, Clave, Nombre,
  Apellidos: string; IdUsuario, SMensaje: Integer; Fecha:TDateTime);
var
  Qr_ModificaU:TADOQuery;
begin
  try
    Qr_ModificaU:=TADOQuery.Create(Self);
    with Qr_ModificaU do
      begin
        Connection:=ControlCuentasBancarias.Coneccion_1;
        Close;
        SQL.Clear;
        SQL.Add('update Login set nombreUsuario = :nusu, claveUsuario = :cl, nombre = :nom, apellidos = :ape, fechaCreado = :fecha');
        SQL.Add('where id_Login = :idLo');
        Parameters[0].Value:=NUsuario;
        Parameters[1].Value:=Clave;
        Parameters[2].Value:=Nombre;
        Parameters[3].Value:=Apellidos;
        Parameters[4].Value:=Fecha;
        Parameters[5].Value:=IdUsuario;
        ExecSQL;
        Free;
        if(SMensaje = 1)then
          begin
            MessageDlg('Datos Modificados con éxito.',mtInformation,[mbOK],0);
          end;
      end;
  except
    Qr_ModificaU.Free;
    MessageDlg('Se produjo un error al intentar guardar los datos, comuniquese con el administrador.',mtInformation,[mbOK],0);
  end;

end;

function TFLoginUsuario.ValidaCamposU: Boolean;
begin
  EL_1.EditLabel.Font.Color:=0;
  EL_2.EditLabel.Font.Color:=0;
  EL_3.EditLabel.Font.Color:=0;
  EL_4.EditLabel.Font.Color:=0;
  EL_5.EditLabel.Font.Color:=0;
  if(Trim(EL_1.Text) = '')then
    begin
      Result:=False;
      EL_1.EditLabel.Font.Color:=255;
      EL_1.SetFocus;
      MessageDlg('Ingrese un nombre de usuario para continuar.',mtInformation, [mbOK],0);
    end
  else
  if(Trim(EL_2.Text) = '')then
    begin
      Result:=False;
      EL_2.EditLabel.Font.Color:=255;
      EL_2.SetFocus;
      MessageDlg('Ingrese una contraseña para continuar.',mtInformation, [mbOK],0);
    end
  else
  if(Trim(EL_3.Text) = '')then
    begin
      Result:=False;
      EL_3.EditLabel.Font.Color:=255;
      EL_3.SetFocus;
      MessageDlg('Re-ingrese la contraseña para continuar.',mtInformation, [mbOK],0);
    end
  else
  if(Trim(EL_4.Text) = '')then
    begin
      Result:=False;
      EL_4.EditLabel.Font.Color:=255;
      EL_4.SetFocus;
      MessageDlg('Ingrese un nombre para continuar.',mtInformation, [mbOK],0);
    end
  else
  if(Trim(EL_5.Text) = '')then
    begin
      Result:=False;
      EL_5.EditLabel.Font.Color:=255;
      EL_5.SetFocus;
      MessageDlg('Ingrese el/los apellidos para continuar.',mtInformation, [mbOK],0);
    end
  else
  if(Trim(EL_2.Text) <> Trim(EL_3.Text))then
    begin
      Result:=False;
      EL_2.EditLabel.Font.Color:=255;
      EL_3.EditLabel.Font.Color:=255;
      MessageDlg('La contraseña en el campo "Re-ingrese contraseña" no coincide con la contraseña.',mtInformation, [mbOK],0);
    end
  else
    begin
      Result:=True;
    end;     
end;

function TFLoginUsuario.ValidaUsuarioExiste(NombreUsuario: string): Boolean;
var
  Qr_UsuarioExiste:TADOQuery;
begin
  try
    Qr_UsuarioExiste:=TADOQuery.Create(Self);
    with Qr_UsuarioExiste do
      begin
        Connection:=ControlCuentasBancarias.Coneccion_1;
        Close;
        SQL.Clear;
        SQL.Add('select id_login from Login where nombreUsuario = :Nusu');
        Parameters[0].Value:=NombreUsuario;
        Open;
      end;
    if(Qr_UsuarioExiste.RecordCount > 0)then
      begin
        if(Qr_UsuarioExiste.FieldByName('id_login').Value = IdUsuarioLogin)then
          begin
            Result:=False;
          end
        else
          begin
            MessageDlg('Existe un usuario con este nombre. Intente con otro nombre de usuario.', mtInformation,[mbOK],0);
            Result:=True;
          end;          
      end
    else
      begin
        Result:=False;
      end;
  finally
    Qr_UsuarioExiste.Free;
  end;
end;

procedure TFLoginUsuario.BBT_1Click(Sender: TObject);
begin
  if(ValidaCamposU = True)then
    begin
      if(ValidaUsuarioExiste(EL_1.Text) = False)then
        begin
          if(BBT_1.Tag = 0)then
            begin
              InsertaUsuario(EL_1.Text,EL_2.Text,EL_4.Text,EL_5.Text,Now,1);
            end
          else
          if(BBT_1.Tag = 1)then
            begin
              ModificaUsuario(EL_1.Text,EL_2.Text,EL_4.Text,EL_5.Text,IdUsuarioLogin,1,Now);
              BBT_1.Caption:='&Guardar';
              BBT_1.Tag:=0;
            end;
          LimpiarCamposU;
          Qr_Usuarios.Close;
          Qr_Usuarios.Open;
          Caption:='Usuarios.';
        end;
    end;
end;

procedure TFLoginUsuario.DBGRID_1DblClick(Sender: TObject);
begin
  if(Qr_Usuarios.RecordCount > 0)then
    begin
      IdUsuarioLogin:=Qr_UsuariosId_Login.Value;
      EL_1.Text:=Qr_UsuariosNombreUsuario.Value;
      EL_2.Text:=Qr_UsuariosClaveUsuario.Value;
      EL_4.Text:=Qr_UsuariosNombre.Value;
      EL_5.Text:=Qr_UsuariosAPellidos.Value;
      BBT_1.Caption:='&Modificar';
      BBT_1.Tag:=1;
      Caption:='Usuarios (Modificar).';
    end;
end;

procedure TFLoginUsuario.LimpiarCamposU;
begin
  EL_1.Text:='';
  EL_2.Text:='';
  EL_3.Text:='';
  EL_4.Text:='';
  EL_5.Text:='';
end;

procedure TFLoginUsuario.FormShow(Sender: TObject);
begin
  Qr_Usuarios.Open;
  if(Qr_Usuarios.RecordCount > 0)then
    begin
      
    end;
end;

procedure TFLoginUsuario.BBT_3Click(Sender: TObject);
begin
  LimpiarCamposU;
end;

procedure TFLoginUsuario.BBT_2Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TFLoginUsuario.MM_Modificar1Click(Sender: TObject);
begin
  DBGRID_1DblClick(Self);
end;

procedure TFLoginUsuario.MM_Eliminar1Click(Sender: TObject);
begin
  if(Qr_Usuarios.RecordCount > 0)then
    begin
      if(IDUsuarioLogeado <> Qr_UsuariosId_Login.Value)then
        begin
          if(MessageDlg('Confirme que desea eliminar el usuario: '+Qr_Usuarios_Nombre.AsString+'.',mtConfirmation,[mbYes,mbNo,mbCancel],0) = IDYES)then
            begin
              EliminaUsuario(Qr_UsuariosId_Login.Value,1);
              if(EL_1.Text = Qr_UsuariosNombreUsuario.Value)then
                begin
                  LimpiarCamposU;
                  BBT_1.Caption:='&Guardar';
                  BBT_1.Tag:=0;
                end;
              
              Qr_Usuarios.Close;
              Qr_Usuarios.Open;
            end;
        end
      else
        begin
          MessageDlg('Imposible realizar esta acción. El usuario que inicio sesion no puede autoeliminarse.',mtInformation,[mbOK],0)
        end;
    end;
end;

procedure TFLoginUsuario.EL_1KeyPress(Sender: TObject; var Key: Char);
begin
  if(Key = #13)then
    EL_2.SetFocus;
end;

procedure TFLoginUsuario.EL_2KeyPress(Sender: TObject; var Key: Char);
begin
  if(Key = #13)then
    EL_3.SetFocus;
end;

procedure TFLoginUsuario.EL_3KeyPress(Sender: TObject; var Key: Char);
begin
  if(Key = #13)then
    EL_4.SetFocus;
end;

procedure TFLoginUsuario.EL_4KeyPress(Sender: TObject; var Key: Char);
begin
  if(Key = #13)then
    EL_5.SetFocus;
end;

procedure TFLoginUsuario.EL_5KeyPress(Sender: TObject; var Key: Char);
begin
  if(Key = #13)then
    BBT_1.SetFocus;
end;

procedure TFLoginUsuario.EL_1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if(Key = VK_UP)then
    begin
      BBT_1.SetFocus;
    end;
  if(Key = VK_DOWN)then
    begin
      EL_2.SetFocus;
    end;
end;

procedure TFLoginUsuario.EL_2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if(Key = VK_UP)then
    begin
      EL_1.SetFocus;
    end;
  if(Key = VK_DOWN)then
    begin
      EL_3.SetFocus;
    end;
end;

procedure TFLoginUsuario.EL_3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if(Key = VK_UP)then
    begin
      EL_2.SetFocus;
    end;
  if(Key = VK_DOWN)then
    begin
      EL_4.SetFocus;
    end;
end;

procedure TFLoginUsuario.EL_4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if(Key = VK_UP)then
    begin
      EL_3.SetFocus;
    end;
  if(Key = VK_DOWN)then
    begin
      EL_5.SetFocus;
    end;
end;

procedure TFLoginUsuario.EL_5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if(Key = VK_UP)then
    begin
      EL_4.SetFocus;
    end;
  if(Key = VK_DOWN)then
    begin
      BBT_1.SetFocus;
    end;
end;

procedure TFLoginUsuario.HK_1HotKey(Sender: TObject);
begin
  Self.Close;
end;

procedure TFLoginUsuario.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if(Key = #27)then
    Self.Close;
end;

end.
