program Kdb;

uses
  Vcl.Forms,
  KdbMain in 'KdbMain.pas' {FormMain};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
