object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 601
  ClientWidth = 1064
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 96
  DesignSize = (
    1064
    601)
  TextHeight = 15
  object PanelEdgeBrowser: TPanel
    Left = 24
    Top = 136
    Width = 1017
    Height = 441
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelKind = bkSoft
    ParentBackground = False
    TabOrder = 0
    object EdgeBrowser: TEdgeBrowser
      Left = 1
      Top = 1
      Width = 1011
      Height = 435
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 904
      ExplicitHeight = 459
    end
  end
  object LabeledEditSourceTable: TLabeledEdit
    Left = 24
    Top = 32
    Width = 737
    Height = 23
    Color = 3158064
    EditLabel.Width = 66
    EditLabel.Height = 15
    EditLabel.Caption = 'Source Table'
    TabOrder = 1
    Text = 'TblAdresarFina7Plus'
    StyleElements = [seFont, seClient]
  end
  object LabeledEditDestinationTable: TLabeledEdit
    Left = 24
    Top = 88
    Width = 457
    Height = 23
    Color = 3158064
    EditLabel.Width = 90
    EditLabel.Height = 15
    EditLabel.Caption = 'Destination Table'
    TabOrder = 2
    Text = 'TempAdresarFina7'
  end
  object LabeledEdit1: TLabeledEdit
    Left = 784
    Top = 88
    Width = 254
    Height = 23
    Color = 3158064
    EditLabel.Width = 90
    EditLabel.Height = 15
    EditLabel.Caption = 'Destination Table'
    TabOrder = 3
    Text = 'TempAdresarFina7'
    StyleElements = [seFont, seClient]
  end
  object ButtonTeskTask: TButton
    Left = 784
    Top = 31
    Width = 254
    Height = 25
    Caption = 'Test Task'
    TabOrder = 4
  end
  object LabeledEdit2: TLabeledEdit
    Left = 504
    Top = 88
    Width = 257
    Height = 23
    Color = 3158064
    EditLabel.Width = 90
    EditLabel.Height = 15
    EditLabel.Caption = 'Destination Table'
    TabOrder = 5
    Text = 'TempAdresarFina7'
    StyleElements = [seFont, seClient]
  end
end
