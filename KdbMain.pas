unit KdbMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Winapi.WebView2, Winapi.ActiveX, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.Edge, Vcl.OleCtrls, SHDocVw, System.Net.URLClient, System.Net.HttpClient, System.Net.HttpClientComponent;

type
  TFormMain = class(TForm)
    PanelEdgeBrowser: TPanel;
    EdgeBrowser: TEdgeBrowser;
    LabeledEditURL: TLabeledEdit;
    LabeledEditTitleHead: TLabeledEdit;
    LabeledEditAuthor: TLabeledEdit;
    ButtonParseURL: TButton;
    LabeledEditTags: TLabeledEdit;
    LabeledEditTitleH1: TLabeledEdit;
    NetHTTPRequest: TNetHTTPRequest;
    NetHTTPClient: TNetHTTPClient;
    procedure ButtonParseURLClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}

procedure TFormMain.ButtonParseURLClick(Sender: TObject);
begin
  EdgeBrowser.Navigate(LabeledEditURL.Text);
  Application.ProcessMessages;
  Sleep(3000);
  LabeledEditTitleHead.Text := EdgeBrowser.DocumentTitle;
//  LabeledEditTitleH1.Text := EdgeBrowser.t
//  NetHTTPRequest.Execute().
end;

end.
