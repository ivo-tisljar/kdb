unit KdbMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  System.Net.URLClient, System.Net.HttpClient, System.Net.HttpClientComponent,
  Winapi.WebView2, Winapi.ActiveX,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.Edge, Vcl.OleCtrls;


type
  TFormMain = class(TForm)
    PanelEdgeBrowser: TPanel;
    EdgeBrowser: TEdgeBrowser;
    LabeledEditURL: TLabeledEdit;
    LabeledEditTitle: TLabeledEdit;
    LabeledEditAuthor: TLabeledEdit;
    ButtonParseURL: TButton;
    LabeledEditTags: TLabeledEdit;
    MemoHTML: TMemo;
    ButtonAddToKdb: TButton;
    Button1: TButton;
    LabeledEditHost: TLabeledEdit;
    LabeledDomain: TLabeledEdit;
    procedure ButtonParseURLClick(Sender: TObject);
    procedure EdgeBrowserNavigationCompleted(Sender: TCustomEdgeBrowser; IsSuccess: Boolean; WebErrorStatus: TOleEnum);
    procedure ExtractBasicDataFromHtmlPage;
    procedure EdgeBrowserExecuteScript(Sender: TCustomEdgeBrowser; AResult: HRESULT; const AResultObjectAsJson: string);
    procedure FormCreate(Sender: TObject);
    procedure ButtonAddToKdbClick(Sender: TObject);
  private
    function GetAuthor(const HTMLcode: string): string;

    { Private declarations }
  public
    { Public declarations }
  end;


var
  FormMain: TFormMain;


implementation

{$R *.dfm}

uses
  System.NetEncoding, System.RegularExpressions,
  IdHTTP;


procedure TFormMain.ButtonAddToKdbClick(Sender: TObject);
begin
//
end;


procedure TFormMain.ButtonParseURLClick(Sender: TObject);
begin
  EdgeBrowser.Navigate(LabeledEditURL.Text);
//  EdgeBrowser.ExecuteScript('encodeURI(document.documentElement.outerHTML)');
//  ExtractBasicDataFromHtmlPage;
end;


procedure TFormMain.EdgeBrowserExecuteScript(Sender: TCustomEdgeBrowser; AResult: HRESULT; const AResultObjectAsJson: string);
begin
  if AResultObjectAsJson <> 'null' then
    memoHTML.Text := TNetEncoding.URL.Decode(AResultObjectAsJson).DeQuotedString('"');
  ExtractBasicDataFromHtmlPage;
end;


procedure TFormMain.EdgeBrowserNavigationCompleted(Sender: TCustomEdgeBrowser; IsSuccess: Boolean; WebErrorStatus: TOleEnum);
begin
  EdgeBrowser.ExecuteScript('encodeURI(document.documentElement.outerHTML)');
end;


procedure TFormMain.ExtractBasicDataFromHtmlPage;
var
  HTTP : TIdHTTP;
begin
  LabeledEditTitleHead.Text := EdgeBrowser.DocumentTitle;

  HTTP := TIdHTTP.Create;
//  MemoHTML.Text := HTTP.Get(LabeledEditURL.Text);
  FreeAndNil(HTTP);
  LabeledEditAuthor.Text := GetAuthor(MemoHTML.Text);
end;


procedure TFormMain.FormCreate(Sender: TObject);
begin
//
end;


function GetAuthorYouTube(const HTMLcode: string): string;
var
  Match : TMatch;
begin
//  Match := TRegEx.Match(HTMLCode, '<link itemprop="name" content="(.+?)"><\/span>', [roIgnoreCase, roMultiLine]);
//  Result := TRegEx.Match(HTMLCode, '<link itemprop="name" content="(.+?)"><\/span>').Groups.Item[0].Value;
  if Match.Success then
//    Result := Match.Value
//  else
    Result := 'nema';
end;

function TFormMain.GetAuthor(const HTMLcode: string): string;
begin
  Result := GetAuthorYoutube(HTMLcode);
end;


end.
