unit UReportes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, DateUtils, QRPrntr, DB, ADODB;

type
  TFReportes = class(TForm)
    NB_Reportes: TNotebook;
    QRP_Gastos: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRL_1: TQRLabel;
    QRL_2: TQRLabel;
    QRL_3: TQRLabel;
    QRL_4: TQRLabel;
    QRSysData1: TQRSysData;
    QRL_5: TQRLabel;
    TitleBand1: TQRBand;
    QRL_6: TQRLabel;
    QRL_7: TQRLabel;
    QRL_8: TQRLabel;
    QRL_9: TQRLabel;
    DetailBand1: TQRBand;
    QRDBL_montoGasto: TQRDBText;
    QRDBL_detallesGasto: TQRDBText;
    QRDBL_fechaGasto: TQRDBText;
    PageFooterBand1: TQRBand;
    QRL_10: TQRLabel;
    QRL_11: TQRLabel;
    QRL_12: TQRLabel;
    QRL_13: TQRLabel;
    QRDBL_numeroComprobante: TQRDBText;
    QRSysData2: TQRSysData;
    QRL_14: TQRLabel;
    QRL_15: TQRLabel;
    QRSysData3: TQRSysData;
    QRP_ResumenVenfGastos: TQuickRep;
    TitleBand2: TQRBand;
    QRBand1: TQRBand;
    QRL_16: TQRLabel;
    QRL_17: TQRLabel;
    QRSysData4: TQRSysData;
    QRL_20: TQRLabel;
    QRSysData5: TQRSysData;
    QRL_23: TQRLabel;
    QRL_24: TQRLabel;
    QRSysData6: TQRSysData;
    QRL_18: TQRLabel;
    QRL_19: TQRLabel;
    QRL_21: TQRLabel;
    QRL_22: TQRLabel;
    QRL_26: TQRLabel;
    QRL_27: TQRLabel;
    QRL_28: TQRLabel;
    QRL_29: TQRLabel;
    QRShape1: TQRShape;
    QRL_30: TQRLabel;
    QRL_31: TQRLabel;
    QRL_32: TQRLabel;
    QRL_33: TQRLabel;
    QRL_25: TQRLabel;
    QRL_34: TQRLabel;
    QRL_35: TQRLabel;
    QRL_36: TQRLabel;
    QRL_37: TQRLabel;
    QRL_38: TQRLabel;
    DetailBand2: TQRBand;
    QRShape2: TQRShape;
    QRL_39: TQRLabel;
    QRL_40: TQRLabel;
    QRDBL_MontoGasto2: TQRDBText;
    QRDBL_MontoGasto1: TQRDBText;
    QRShape3: TQRShape;
    QRL_42: TQRLabel;
    QRDBL_FechaGasto1: TQRDBText;
    QRShape4: TQRShape;
    QRL_43: TQRLabel;
    QRL_44: TQRLabel;
    QRDBL_numero_banca1: TQRDBText;
    QRP_DetallesCuentaBanco: TQuickRep;
    PageHeaderBand2: TQRBand;
    ColumnHeaderBand1: TQRBand;
    DetailBand3: TQRBand;
    PageFooterBand2: TQRBand;
    QRL_45: TQRLabel;
    QRL_46: TQRLabel;
    QRDBL_Descripcion: TQRDBText;
    QRL_47: TQRLabel;
    QRL_48: TQRLabel;
    QRL_49: TQRLabel;
    QRShape5: TQRShape;
    QRL_50: TQRLabel;
    QRL_51: TQRLabel;
    QRL_52: TQRLabel;
    QRL_53: TQRLabel;
    QRDBL_FechaCreado: TQRDBText;
    QRDBL_Debito: TQRDBText;
    QRDBL_Credito: TQRDBText;
    QRL_55: TQRLabel;
    QRL_54: TQRLabel;
    QRL_56: TQRLabel;
    QRSysData7: TQRSysData;
    QRL_57: TQRLabel;
    QRSysData8: TQRSysData;
    QRL_58: TQRLabel;
    QRL_59: TQRLabel;
    QRSysData9: TQRSysData;
    QRP_Nomina: TQuickRep;
    PageHeaderBand3: TQRBand;
    DetailBand4: TQRBand;
    QRL_60: TQRLabel;
    QRL_61: TQRLabel;
    QRSysData11: TQRSysData;
    QRL_63: TQRLabel;
    QRL_64: TQRLabel;
    QRL_66: TQRLabel;
    QRL_62: TQRLabel;
    QRL_65: TQRLabel;
    QRL_68: TQRLabel;
    QRL_69: TQRLabel;
    QRL_70: TQRLabel;
    QRL_71: TQRLabel;
    QRL_75: TQRLabel;
    QRDBL_numero_Banca: TQRDBText;
    QRL_77: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRL_67: TQRLabel;
    PageFooterBand3: TQRBand;
    QRL_79: TQRLabel;
    QRL_72: TQRLabel;
    QRL_73: TQRLabel;
    QRDBL_cedula: TQRDBText;
    QRDBL_montoDescuento: TQRDBText;
    QRDBL_concepto: TQRDBText;
    QRDBL__nombre: TQRDBText;
    Qr_DetalleNominaGeneral: TADOQuery;
    Qr_DetalleNominaGeneralmontoDescuento: TFloatField;
    Qr_DetalleNominaGeneralconcepto: TWideStringField;
    Qr_DetalleNominaGeneralestado: TSmallintField;
    Qr_DetalleNominaGeneralTdescuentos: TFloatField;
    QRL_74: TQRLabel;
    QRL_76: TQRLabel;
    QRL_80: TQRLabel;
    QRRichText1: TQRRichText;
    Qr_Gasto: TADOQuery;
    QRExpr1: TQRExpr;
    Qr_Gastoid_gasto: TAutoIncField;
    Qr_Gastoid_banca: TIntegerField;
    Qr_GastomontoGasto: TFloatField;
    Qr_GastodetallesGasto: TWideStringField;
    Qr_GastodebitarA: TIntegerField;
    Qr_GastonumeroComprobante: TWideStringField;
    Qr_GastofechaGasto: TDateTimeField;
    Qr_Gastoorigen: TIntegerField;
    Qr_Gastonumero_Banca: TIntegerField;
    QRL_41: TQRLabel;
    QRL_78: TQRLabel;
    QRL_81: TQRLabel;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FReportes: TFReportes;

implementation

uses UPrincipal, UGastos, UBuscaReporte;

{$R *.dfm}

procedure TFReportes.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if(Qr_Gastonumero_Banca.AsInteger > 0)then
    QRL_77.Caption:=Qr_Gastonumero_Banca.AsString
  else
    QRL_77.Caption:='Central';
end;

procedure TFReportes.DetailBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   with _FBuscaReporte do
    begin
      with Qr_DetalleNominaGeneral do
        begin
          Close;
          Parameters[0].Value:=Qr_MuestraNominaid_empleado.Value;
          Parameters[1].Value:=Qr_MuestraNominaid_empleado.Value;
          Open;
        end;
      if(RB_2.Checked  = True)then
        begin
          QRL_61.Caption:='Pago de nomina.';

          QRL_75.Caption:=FormatFloat(formatNumerico,Qr_MuestraNominasalarioBruto.Value);
          if(CKB_1.Checked = True)then
            begin
              QRL_73.Caption:=FormatFloat(formatNumerico,(Qr_MuestraNominasalarioBruto.Value - Qr_DetalleNominaGeneralTdescuentos.Value)+Qr_MuestraNominaMontoIncentivo.Value);
              QRL_72.Caption:=FormatFloat(formatNumerico,Qr_DetalleNominaGeneralTdescuentos.Value);
              QRSubDetail1.Enabled:=True;
            end
          else
            begin
              QRL_73.Caption:=FormatFloat(formatNumerico,Qr_MuestraNominasalarioBruto.Value+Qr_MuestraNominaMontoIncentivo.Value);
              QRL_72.Caption:=FormatFloat(formatNumerico,0);
              QRSubDetail1.Enabled:=False;
            end;
          QRL_81.Caption:=FormatFloat(formatNumerico,Qr_MuestraNominaMontoIncentivo.Value);
          QRRichText1.Lines.Text:=M_ConceptoPago.Text;
        end;
    end;
end;

end.
