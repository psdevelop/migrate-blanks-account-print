object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1042#1099#1073#1086#1088' ('#1089#1086#1079#1076#1072#1085#1080#1077') '#1072#1076#1088#1077#1089#1072
  ClientHeight = 367
  ClientWidth = 644
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RadioGroup1: TRadioGroup
    Left = 0
    Top = 0
    Width = 644
    Height = 41
    Align = alTop
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      #1057#1086#1079#1076#1072#1085#1080#1077' '#1085#1086#1074#1086#1075#1086' '#1072#1076#1088#1077#1089#1072
      #1042#1099#1073#1086#1088' '#1080#1079' '#1080#1084#1077#1102#1097#1080#1093#1089#1103' '#1072#1076#1088#1077#1089#1086#1074)
    TabOrder = 0
    ExplicitWidth = 635
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 315
    Width = 644
    Height = 52
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 248
    ExplicitWidth = 635
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 41
    Width = 644
    Height = 274
    ActivePage = SelectExistDocTabSheet
    Align = alClient
    TabOrder = 2
    object AddNewAdresTabSheet: TTabSheet
      Caption = 'AddNewAdresTabSheet'
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
    object SelectExistAdresTabSheet: TTabSheet
      Caption = 'SelectExistAdresTabSheet'
      ImageIndex = 1
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
    object AddNewDocTabSheet: TTabSheet
      Caption = 'AddNewDocTabSheet'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
    object SelectExistDocTabSheet: TTabSheet
      Caption = 'SelectExistDocTabSheet'
      ImageIndex = 3
      ExplicitLeft = 8
      ExplicitTop = 22
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
  end
end
