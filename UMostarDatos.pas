unit UMostarDatos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, DateUtils, ComCtrls;

type
  TFMostrarDatos = class(TForm)
    DS_1: TDataSource;
    DBGRID_1: TDBGrid;
    Qr_BancasMostrar: TADOQuery;
    SPANEL_1: TStatusBar;
    Qr_BancasMostrarnumero_Banca: TIntegerField;
    Qr_BancasMostrardireccion_Banca: TWideStringField;
    Qr_BancasMostrarveneficiosVenta: TFloatField;
    Qr_BancasMostraringresoEfectivo: TFloatField;
    Qr_BancasMostrardiferencia: TFloatField;
    Qr_BancasMostrartBB: TFloatField;
    Qr_BancasMostrartIE: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ObtenerBancasRegistradas(Fecha:TDateTime);
  end;

var
  FMostrarDatos: TFMostrarDatos;

implementation

uses UPrincipal;

{$R *.dfm}

{ TFMostrarDatos }

procedure TFMostrarDatos.ObtenerBancasRegistradas(Fecha:TDateTime);
begin
  with Qr_BancasMostrar do
    begin
      Close;
      Parameters[0].Value:=Fecha;
      Parameters[1].Value:=Fecha;
      Parameters[2].Value:=Fecha;
      Open;
    end;
  SPANEL_1.Panels[0].Text:='Total Beneficios: '+FormatFloat(formatNumerico,Qr_BancasMostrartBB.Value);
  SPANEL_1.Panels[1].Text:='Total Depositos: '+FormatFloat(formatNumerico,Qr_BancasMostrartIE.Value);
end;

procedure TFMostrarDatos.FormShow(Sender: TObject);
begin
  ObtenerBancasRegistradas(DateOf(Now));
end;

procedure TFMostrarDatos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  MostrarCerrado:=False;
  Action:=caFree;
end;

end.
