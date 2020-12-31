unit CCuentasB_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// PASTLWTR : 1.2
// File generated on 06/05/2011 10:32:51 AM from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Proyectos\Isidro\CCuentasB.tlb (1)
// LIBID: {B374E7EA-82BE-408C-B764-0542D0221805}
// LCID: 0
// Helpfile: 
// HelpString: CCuentasB Library
// DepndLst: 
//   (1) v1.0 Midas, (C:\Windows\system32\midas.dll)
//   (2) v2.0 stdole, (C:\Windows\system32\stdole2.tlb)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, Graphics, Midas, StdVCL, Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  CCuentasBMajorVersion = 1;
  CCuentasBMinorVersion = 0;

  LIBID_CCuentasB: TGUID = '{B374E7EA-82BE-408C-B764-0542D0221805}';

  IID_IServidorCuentasB: TGUID = '{F3D92A56-BF00-469C-9577-B0E607988BE6}';
  CLASS_ServidorCuentasB: TGUID = '{35A9A000-BB4E-44F4-B4E6-388A47124F65}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IServidorCuentasB = interface;
  IServidorCuentasBDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  ServidorCuentasB = IServidorCuentasB;


// *********************************************************************//
// Interface: IServidorCuentasB
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F3D92A56-BF00-469C-9577-B0E607988BE6}
// *********************************************************************//
  IServidorCuentasB = interface(IAppServer)
    ['{F3D92A56-BF00-469C-9577-B0E607988BE6}']
  end;

// *********************************************************************//
// DispIntf:  IServidorCuentasBDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F3D92A56-BF00-469C-9577-B0E607988BE6}
// *********************************************************************//
  IServidorCuentasBDisp = dispinterface
    ['{F3D92A56-BF00-469C-9577-B0E607988BE6}']
    function AS_ApplyUpdates(const ProviderName: WideString; Delta: OleVariant; MaxErrors: Integer; 
                             out ErrorCount: Integer; var OwnerData: OleVariant): OleVariant; dispid 20000000;
    function AS_GetRecords(const ProviderName: WideString; Count: Integer; out RecsOut: Integer; 
                           Options: Integer; const CommandText: WideString; var Params: OleVariant; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000001;
    function AS_DataRequest(const ProviderName: WideString; Data: OleVariant): OleVariant; dispid 20000002;
    function AS_GetProviderNames: OleVariant; dispid 20000003;
    function AS_GetParams(const ProviderName: WideString; var OwnerData: OleVariant): OleVariant; dispid 20000004;
    function AS_RowRequest(const ProviderName: WideString; Row: OleVariant; RequestType: Integer; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000005;
    procedure AS_Execute(const ProviderName: WideString; const CommandText: WideString; 
                         var Params: OleVariant; var OwnerData: OleVariant); dispid 20000006;
  end;

// *********************************************************************//
// The Class CoServidorCuentasB provides a Create and CreateRemote method to          
// create instances of the default interface IServidorCuentasB exposed by              
// the CoClass ServidorCuentasB. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoServidorCuentasB = class
    class function Create: IServidorCuentasB;
    class function CreateRemote(const MachineName: string): IServidorCuentasB;
  end;

implementation

uses ComObj;

class function CoServidorCuentasB.Create: IServidorCuentasB;
begin
  Result := CreateComObject(CLASS_ServidorCuentasB) as IServidorCuentasB;
end;

class function CoServidorCuentasB.CreateRemote(const MachineName: string): IServidorCuentasB;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ServidorCuentasB) as IServidorCuentasB;
end;

end.
