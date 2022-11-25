object FormMain: TFormMain
  Left = 0
  Top = 0
  Caption = 'Web Links'
  ClientHeight = 761
  ClientWidth = 1064
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = 10526880
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 96
  DesignSize = (
    1064
    761)
  TextHeight = 15
  object PanelEdgeBrowser: TPanel
    Left = 24
    Top = 200
    Width = 1017
    Height = 529
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelKind = bkSoft
    ParentBackground = False
    TabOrder = 0
    object EdgeBrowser: TEdgeBrowser
      Left = 1
      Top = 1
      Width = 1011
      Height = 523
      Align = alClient
      TabOrder = 0
    end
  end
  object LabeledEditURL: TLabeledEdit
    Left = 24
    Top = 32
    Width = 737
    Height = 23
    Color = 3158064
    EditLabel.Width = 21
    EditLabel.Height = 15
    EditLabel.Caption = 'URL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clSilver
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Text = ''
  end
  object LabeledEditTitleHead: TLabeledEdit
    Left = 24
    Top = 88
    Width = 593
    Height = 23
    Color = 3158064
    EditLabel.Width = 61
    EditLabel.Height = 15
    EditLabel.Caption = 'Title (Head)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clSilver
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Text = ''
  end
  object LabeledEditAuthor: TLabeledEdit
    Left = 640
    Top = 88
    Width = 398
    Height = 23
    Color = 3158064
    EditLabel.Width = 37
    EditLabel.Height = 15
    EditLabel.Caption = 'Author'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clSilver
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Text = ''
  end
  object ButtonParseURL: TButton
    Left = 784
    Top = 31
    Width = 254
    Height = 25
    Caption = 'Parse URL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = ButtonParseURLClick
  end
  object LabeledEditTags: TLabeledEdit
    Left = 640
    Top = 144
    Width = 398
    Height = 23
    Color = 3158064
    EditLabel.Width = 23
    EditLabel.Height = 15
    EditLabel.Caption = 'Tags'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clSilver
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    Text = ''
  end
  object LabeledEditTitleH1: TLabeledEdit
    Left = 24
    Top = 144
    Width = 593
    Height = 23
    Color = 3158064
    EditLabel.Width = 48
    EditLabel.Height = 15
    EditLabel.Caption = 'Title (H1)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clSilver
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    Text = ''
  end
  object NetHTTPRequest: TNetHTTPRequest
    MethodString = 'GET'
    Client = NetHTTPClient
    Left = 888
    Top = 176
  end
  object NetHTTPClient: TNetHTTPClient
    UserAgent = 'Embarcadero URI Client/1.0'
    Left = 760
    Top = 176
  end
end
