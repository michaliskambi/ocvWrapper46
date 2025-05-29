program Project1;

{$MODE Delphi}

uses
  { Needed for threads on Linux, otherwise "Start" will break with
      Failed to create OS basic event with name ""
    See https://forum.lazarus.freepascal.org/index.php?topic=36248.0 }
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  {$IFDEF HASAMIGA}
  athreads,
  {$ENDIF}
  Interfaces,
  Forms,
  Unit1 in 'Unit1.pas' {Form7};

{.$R *.res}

begin
  {$IFDEF DEBUG}
  ReportMemoryLeaksOnShutdown:=True;
  {$ENDIF}
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm7, Form7);
  Application.Run;
end.
