unit WebLinksMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Winapi.WebView2, Winapi.ActiveX, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.Edge;

type
  TForm1 = class(TForm)
    PanelEdgeBrowser: TPanel;
    EdgeBrowser: TEdgeBrowser;
    LabeledEditSourceTable: TLabeledEdit;
    LabeledEditDestinationTable: TLabeledEdit;
    LabeledEdit1: TLabeledEdit;
    ButtonTeskTask: TButton;
    LabeledEdit2: TLabeledEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
