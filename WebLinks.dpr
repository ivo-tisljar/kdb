program WebLinks;

uses
  Vcl.Forms,
  WebLinksMain in 'WebLinksMain.pas' {FormMain};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
