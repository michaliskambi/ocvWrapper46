program videoWrite;

{$MODE Delphi}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  {$IFDEF HASAMIGA}
  athreads,
  {$ENDIF}
  Interfaces,
  Forms,
  frmVideoWrite in 'frmVideoWrite.pas' {fVideoWrite};


begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfVideoWrite, fVideoWrite);
  Application.Run;
end.
