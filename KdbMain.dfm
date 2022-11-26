object FormMain: TFormMain
  Left = 0
  Top = 0
  Caption = 'Web Links'
  ClientHeight = 834
  ClientWidth = 1082
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = 11579568
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  PixelsPerInch = 96
  DesignSize = (
    1082
    834)
  TextHeight = 15
  object PanelEdgeBrowser: TPanel
    Left = 24
    Top = 256
    Width = 1033
    Height = 546
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelKind = bkSoft
    ParentBackground = False
    TabOrder = 12
    object EdgeBrowser: TEdgeBrowser
      Left = 1
      Top = 1
      Width = 1027
      Height = 540
      Align = alClient
      TabOrder = 0
      OnExecuteScript = EdgeBrowserExecuteScript
      OnNavigationCompleted = EdgeBrowserNavigationCompleted
      ExplicitWidth = 1011
      ExplicitHeight = 523
    end
  end
  object LabeledEditURL: TLabeledEdit
    Left = 24
    Top = 32
    Width = 857
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
    TabOrder = 0
    Text = ''
  end
  object LabeledEditTitle: TLabeledEdit
    Left = 24
    Top = 88
    Width = 633
    Height = 23
    Color = 3158064
    EditLabel.Width = 22
    EditLabel.Height = 15
    EditLabel.Caption = 'Title'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clSilver
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Text = ''
  end
  object LabeledEditAuthor: TLabeledEdit
    Left = 24
    Top = 143
    Width = 633
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
    Left = 912
    Top = 31
    Width = 145
    Height = 25
    Caption = 'Parse URL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = ButtonParseURLClick
  end
  object LabeledEditTags: TLabeledEdit
    Left = 24
    Top = 200
    Width = 633
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
  object MemoHTML: TMemo
    Left = 912
    Top = 200
    Width = 145
    Height = 23
    Color = 3158064
    Lines.Strings = (
      '')
    TabOrder = 11
  end
  object ButtonAddToKdb: TButton
    Left = 912
    Top = 87
    Width = 145
    Height = 25
    Caption = 'Add to KDB'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = ButtonAddToKdbClick
  end
  object ButtonUpdateKdb: TButton
    Left = 912
    Top = 143
    Width = 145
    Height = 25
    Caption = 'Update KDB'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    OnClick = ButtonUpdateKdbClick
  end
  object LabeledEditHost: TLabeledEdit
    Left = 688
    Top = 88
    Width = 193
    Height = 23
    Color = 3158064
    EditLabel.Width = 25
    EditLabel.Height = 15
    EditLabel.Caption = 'Host'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clSilver
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Text = ''
  end
  object LabeledEditDomain: TLabeledEdit
    Left = 688
    Top = 143
    Width = 193
    Height = 23
    Color = 3158064
    EditLabel.Width = 42
    EditLabel.Height = 15
    EditLabel.Caption = 'Domain'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clSilver
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    Text = ''
  end
  object LabeledEditEstimate: TLabeledEdit
    Left = 688
    Top = 200
    Width = 81
    Height = 23
    Color = 3158064
    EditLabel.Width = 45
    EditLabel.Height = 15
    EditLabel.Caption = 'Estimate'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clSilver
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    Text = ''
  end
  object LabeledEditRating: TLabeledEdit
    Left = 800
    Top = 200
    Width = 81
    Height = 23
    Color = 3158064
    EditLabel.Width = 34
    EditLabel.Height = 15
    EditLabel.Caption = 'Rating'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clSilver
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    Text = ''
  end
end
