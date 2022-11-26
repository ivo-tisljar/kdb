program Kdb;

uses
  Vcl.Forms,
  KdbMain in 'KdbMain.pas' {FormMain},
  _KdbDataModule in '_KdbDataModule.pas' {KdbDataModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TKdbDataModule, KdbDataModule);
  Application.Run;
end.
