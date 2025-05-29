program DigitsRecognitionGui;

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
  frmDigitsRecognition in 'frmDigitsRecognition.pas' {fDigitsRecon};



begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfDigitsRecon, fDigitsRecon);
  Application.Run;
end.
