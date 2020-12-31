(*
	UIAPP.PAS - Application (User Interface)
	(C) Konrad Twardowski

	This program is free software; you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation; either version 2 of the License, or
	(at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
*)

{$I SConfig.inc}

{** Application (User Interface) }
unit UIApp;

interface

uses
	{$IFDEF WIN32}
		Windows,
	{$ENDIF}{ WIN32 }
	Standard, STask, SVars,
	UIView, UIWindow;

type
	TAlarmInfo = object(TClass)
		ShowText: Bool;
		Hour, Minute: Byte;
		Command, Text: TStr;
		constructor Create;
		destructor Destroy; virtual;
		function IsActive: Bool;
		procedure GetInfo(var VInfo: TStr);
		procedure SetActive(const AYes: Bool);
	private
		_Active: Bool;
	end; { TAlarmInfo }

	TScreenSaverInfo = object(TClass)
		Timer: TTimer;
		constructor Create;
		destructor Destroy; virtual;
		function CanCall(const ACheckTimer: Bool): Bool;
		procedure RestartTimer;
		procedure SetRunning(const AYes: Bool);
	private
		_Running: Bool;
	end; { TScreenSaverInfo }

	PApp = ^TApp;
	TApp = object(TXView)
		ClockTask, IdleTask, ScreenSaverTask: Int;
		AlarmInfo: TAlarmInfo;
		DesktopSize: TRect;
		ScreenSaverInfo: TScreenSaverInfo;
		CurrentHelpTopic, LastPopupCmd: TStr;
		TaskScheduler: TTaskScheduler;
		constructor Create(const AGlobalTitle: PChar);
		destructor Destroy; virtual;
		function AbortOperation(var VCancel: Bool): Bool;
		function IsClockActive: Bool;
		procedure Close; virtual;
		procedure DrawDesktop(const AColor: Byte); virtual;
		procedure Event(const AEvent: TEvent; const ACommand: Word); virtual;
		procedure OnResize; virtual;
		procedure RedrawClock;
		procedure RestoreVideoBuf(const AVideoBuf: PVideoBuf); virtual;
		procedure SetClock(const AEnabled: Bool); virtual;
		procedure SetWindowTitle(const ATitle: TStr); virtual;
		procedure StoreVideoBuf; virtual;
	private
		LastIsBusy: Bool;
	end; { TApp }

function UI: PApp;

var
	{ Vars (Screen Saver) }
	V_SS_Active, V_SS_Autostart, V_SS_Matrix, V_SS_Text, V_SS_Time,
	{ Vars (User Interface) }
	V_UI_Clock, V_UI_Shadow: PVar;

implementation

uses
	{$IFDEF GL}
		GLApp,
	{$ENDIF}{ GL }
	SProg,
	TKSFX,UIConfig, UITheme;

{ PRIVATE: DOSApp }

{$IFDEF INITVAR}var{$ELSE}const{$ENDIF} UIAppPointer: PApp = nil;

procedure UIThreadClock;
var
	B: Byte;
	L: Long;
	DT: TDateTime;
	S, T: TStr;
begin
	if VAR_Bool(V_UI_Clock) then
	begin
		S.CreateNull;
		T.CreateNull;
		{ Shift state }
		if Keyboard.IsAlt then
		begin
			B:= CClock;
			S.Get(' ');
			{ Num Lock }
			if Keyboard.IsNumLock then S.Add('N') else S.Add('.');
			{ Caps Lock }
			if Keyboard.IsCapsLock then S.Add('C') else S.Add('.');
			{ Scroll Lock }
			if Keyboard.IsScrollLock then S.Add('S') else S.Add('.');
			S.Add(' Lock');
		end else
		{ Date }
		if Keyboard.IsCtrl then
		begin
			B:= CClock;
			GetDateTime(DT);
			S.Get(' ')^.AddStr(Locale.DateFormat);
			if DT.Second mod 2 = 0 then
			begin
				{ DD - Day }
				T.GetNum('0', DT.Day);
				S.Rep('DD', T.Str);
				{ MM - Month }
				T.GetNum('0', DT.Month);
				S.Rep('MM', T.Str);
				{ YY - Year }
				T.GetLong(DT.Year);
				T.Crop(2, 2);
				S.Rep('YY', T.Str);
			end;
		end else
		{ Available memory }
		if Keyboard.IsShift then
		begin
			L:= Prog.MemAvail;
			if L <= MIN_MEM then B:= CWarningText else B:= CClock;
			S.Get(' ');
			{$IFDEF BIT32}
			S.Add(FormatQWORD(L div B_MB))^.Add(' MB');
			{$ELSE}{ BIT32 }
			S.Add(FormatQWORD(L div B_KB))^.Add(' KB');
			{$ENDIF}{ BIT32 }
		end else
		{ Time }
		begin
			B:= CClock;
			if UI^.AlarmInfo.IsActive then S.Get('*') else S.Get(' ');
			S.Add(GetTimeStr);
		end;
		while S.Len < 9 do S.Ins(' ', 1);
		S.Add(' ');
		S.PrintAttr(PA_V_GRADIENT, B, Screen.X - 9, 1);
		T.Destroy;
		Screen.Draw;
		S.Destroy;
	end;
end; { UIThreadClock }

procedure UIThreadIdle;
begin
	VM.Idle(False);
end; { UIThreadIdle }

procedure UIThreadScreenSaver;
begin
	if UI^.ScreenSaverInfo.CanCall(True) and (not UI^.AlarmInfo.IsActive) then
	begin
		{ Run screen saver }
		Call(UIOnScreenSaver);
		UI^.ScreenSaverInfo.RestartTimer;
	end;
end; { UIThreadScreenSaver }

{ PUBLIC: TAlarmInfo }

constructor TAlarmInfo.Create;
begin
	inherited Create;
	ShowText:= True;
	Hour:= 0;
	Minute:= 0;
	Command.CreateNull;
	Text.CreateNull;
	_Active:= False;
end; { TAlarmInfo.Create }

destructor TAlarmInfo.Destroy;
begin
	inherited Destroy;
	Command.Destroy;
	Text.Destroy;
end; { TAlarmInfo.Destroy }

function TAlarmInfo.IsActive: Bool;
begin
	IsActive:= _Active;
end; { TAlarmInfo.IsActive }

procedure TAlarmInfo.GetInfo(var VInfo: TStr);
var S: TStr;
begin
	VInfo.GetNum('0', Hour)^.AddChar(Locale.TimeSep)^.AddNum('0', Minute);
	if ShowText then
	begin
		VInfo.Add(' <-> ');
		S.CreateStr(Text);
		S.DelStr('<');
		S.DelStr('>');
		VInfo.AddStr(S);
		S.Destroy;
	end;
	if not Command.IsNull then VInfo.Add(' <-> ')^.AddStr(Command);
end; { TAlarmInfo.GetInfo }

procedure TAlarmInfo.SetActive(const AYes: Bool);
begin
	_Active:= AYes;
end; { TAlarmInfo.SetActive }

{ PUBLIC: TScreenSaverInfo }

constructor TScreenSaverInfo.Create;
begin
	inherited Create;
	Timer.CreateSec(VAR_Int(V_SS_Time) * 60);
	_Running:= False;
end; { TScreenSaverInfo.Create }

destructor TScreenSaverInfo.Destroy;
begin
	inherited Destroy;
	Timer.Destroy;
end; { TScreenSaverInfo.Destroy }

function TScreenSaverInfo.CanCall(const ACheckTimer: Bool): Bool;
var B: Bool;
begin
	B:= not _Running and VAR_Bool(V_SS_Active);
	if ACheckTimer then CanCall:= B and Timer.Expired else CanCall:= B;
end; { TScreenSaverInfo.CanCall }

procedure TScreenSaverInfo.RestartTimer;
begin
	Timer.StartSec(VAR_Int(V_SS_Time) * 60);
end; { TScreenSaverInfo.RestartTimer }

procedure TScreenSaverInfo.SetRunning(const AYes: Bool);
begin
	_Running:= AYes;
end; { TScreenSaverInfo.SetRunning }

{ PUBLIC: TApp }

constructor TApp.Create(const AGlobalTitle: PChar);
begin
	UIAppPointer:= @Self;
	SetWindowTitle(VM.GlobalTitle.Get(AGlobalTitle)^);
	{ Globals }
	CreateStandard;
	{ Self }
	AlarmInfo.Create;
	DesktopSize.Clear;
	ScreenSaverInfo.Create;
	CurrentHelpTopic.CreateNull;
	LastPopupCmd.CreateNull;
	TaskScheduler.Create;
	IdleTask:= TaskScheduler.Add(TP_REAL, UIThreadIdle);
	ClockTask:= TaskScheduler.Add(TP_NORMAL, UIThreadClock);
	ScreenSaverTask:= TaskScheduler.Add(TP_NORMAL, UIThreadScreenSaver);
	LastIsBusy:= False;
	inherited Create;
	Screen.HideCursor;
	Prog.SetCtrlBreak(False);
end; { TApp.Create }

destructor TApp.Destroy;
begin
	SFXDestroy;
	inherited Destroy;
	DestroyStandard;
	UIAppPointer:= nil;
	{ Self }
	AlarmInfo.Destroy;
	ScreenSaverInfo.Destroy;
	CurrentHelpTopic.Destroy;
	LastPopupCmd.Destroy;
	TaskScheduler.Destroy;
	Prog.SetCtrlBreak(True);
	SetWindowTitle(NullStr);
end; { TApp.Destroy }

function TApp.AbortOperation(var VCancel: Bool): Bool;
begin
	if VM.IsGoingDown then
	begin
		VCancel:= True;
		AbortOperation:= VCancel;
	end else
	if VCancel then
	begin
		Keyboard.Flush(False);
		AbortOperation:= True;
	end else
	begin
		Keyboard.GetEvent;
		{ ANY KEY pressed }
		if Keyboard.Pressed then
		begin
			{ ESC pressed }
			if Keyboard.KeyCode = K_ESC then
			begin
				SFXSound('STOP');
				Keyboard.Flush(False);
				VCancel:= True;
			end;
		end;
		AbortOperation:= VCancel;
	end;
end; { TApp.AbortOperation }

function TApp.IsClockActive: Bool;
begin
	IsClockActive:= VAR_Bool(V_UI_Clock) and
		TaskScheduler.IsActive(TaskScheduler.FindID(ClockTask));
end; { TApp.IsClockActive }

procedure TApp.Close;
begin
	inherited Close;
	VM.SetGoingDown(True);
end; { TApp.Close }

procedure TApp.DrawDesktop(const AColor: Byte);
begin
	if IsToolBar then DesktopSize.A.Y:= 2 else DesktopSize.A.Y:= 1;
	if IsClicker then
		DesktopSize.B.Y:= Screen.Y - 1 else DesktopSize.B.Y:= Screen.Y;
	DesktopSize.SetLeft(1);
	DesktopSize.B.X:= Screen.X;
	DesktopSize.Draw(AColor);
end; { TApp.DrawDesktop }

procedure TApp.Event(const AEvent: TEvent; const ACommand: Word);
begin
	case AEvent of
		{ Resize }
		E_RESIZE:
		begin
			if (Screen.NewX <> Screen.X) or (Screen.NewY <> Screen.Y) then
			begin
				Screen.SetNewSize;
				OnResize;
				DrawView;
				Screen.Draw;
			end;
		end;
	else inherited Event(AEvent, ACommand);
	end;
end; { TApp.Event }

procedure TApp.OnResize;
begin
	{ Virtual }
end; { TApp.OnResize }

procedure TApp.RedrawClock;
begin
	TaskScheduler.RunID(ClockTask);
end; { TApp.RedrawClock }

procedure TApp.RestoreVideoBuf(const AVideoBuf: PVideoBuf);
begin
	Screen.Put(AVideoBuf);
	Screen.Draw;
end; { TApp.RestoreVideoBuf }

procedure TApp.SetClock(const AEnabled: Bool);
begin
	VAR_WriteBool(V_UI_Clock, AEnabled);
	TaskScheduler.SetSuspend(not AEnabled, ClockTask);
end; { TApp.SetClock }

procedure TApp.SetWindowTitle(const ATitle: TStr);
begin
	VM.SetTitle(ATitle);
end; { TApp.SetWindowTitle }

procedure TApp.StoreVideoBuf;
begin
	Screen.GetCon(GetVideoBuf);
end; { TApp.StoreVideoBuf }

{ PUBLIC: UIApp }

function UI: PApp;
begin
	Prog.CheckPointer(UIAppPointer, 'UI: UIAppPointer');
	UI:= UIAppPointer;
end; { UI }

begin
	Vars.RegisterVar(V_SS_Active, 'ss_active', '0');
	Vars.RegisterVar(V_SS_Autostart, 'ss_autostart', '0');
	Vars.RegisterVar(V_SS_Matrix, 'ss_matrix', '1');
	Vars.RegisterVar(V_SS_Text, 'ss_text', 'XC');
	Vars.RegisterVar(V_SS_Time, 'ss_time', '1');
	Vars.RegisterVar(V_UI_Clock, 'ui_clock', '1');
	Vars.RegisterVar(V_UI_Shadow, 'ui_shadow', '1');
end.
