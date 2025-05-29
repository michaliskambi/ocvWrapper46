program camshiftdemo;

{$MODE Delphi}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  {$IFDEF HASAMIGA}
  athreads,
  {$ENDIF}
  Forms, Interfaces,
  frmCamshiftdemo in 'frmCamshiftdemo.pas' {fCamShiftDemo},
  frmHistogram in 'frmHistogram.pas' {fHistogram};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfCamShiftDemo, fCamShiftDemo);
  Application.Run;
end.
