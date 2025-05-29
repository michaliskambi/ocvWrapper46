program frameRecon;

{$MODE Delphi}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  {$IFDEF HASAMIGA}
  athreads,
  {$ENDIF}
  Forms, Interfaces,
  frmFrameRecon in 'frmFrameRecon.pas' {fFrameRecon};


begin
  Application.Initialize;
  Application.CreateForm(TfFrameRecon, fFrameRecon);
  Application.Run;
end.
