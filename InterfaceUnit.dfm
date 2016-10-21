object InterfaceDM: TInterfaceDM
  OldCreateOrder = False
  Height = 374
  Width = 206
  object OpPersonPopupMenu: TPopupMenu
    OnPopup = OpPersonPopupMenuPopup
    Left = 72
    Top = 16
    object N1: TMenuItem
      Caption = #1057#1074#1103#1079#1072#1090#1100' '#1089' '#1085#1086#1074#1099#1084' '#1083#1080#1094#1086#1084'...'
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1072#1076#1088#1077#1089' '#1087#1086' '#1083#1080#1094#1091'...'
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090' '#1087#1086' '#1083#1080#1094#1091'...'
      OnClick = N3Click
    end
  end
  object PersonOperationsPopupMenu: TPopupMenu
    Left = 72
    Top = 72
    object N8: TMenuItem
      Caption = #1055#1077#1095#1072#1090#1100' '#1086#1090#1095#1077#1090#1086#1074' '#1089' '#1087#1088#1086#1089#1084#1086#1090#1088#1086#1084'...'
      ShortCut = 16464
      OnClick = N8Click
    end
    object N4: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1086#1087#1077#1088#1072#1094#1080#1102'...'
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1086#1087#1077#1088#1072#1094#1080#1102'...'
      ImageIndex = 5
      OnClick = N4Click
    end
  end
  object PersonsPopupMenu: TPopupMenu
    OnPopup = PersonsPopupMenuPopup
    Left = 72
    Top = 128
    object N5: TMenuItem
      Caption = #1059#1076#1072#1083#1077#1085#1080#1077' '#1079#1072#1087#1080#1089#1080' '#1083#1080#1094#1072'...'
      OnClick = N5Click
    end
    object N6: TMenuItem
      Caption = #1054#1090#1084#1077#1090#1080#1090#1100' '#1089#1086#1075#1083#1072#1089#1080#1077' '#1085#1072' '#1086#1073#1088#1072#1073#1086#1090#1082#1091' '#1083#1080#1095#1085#1099#1093' '#1076#1072#1085#1085#1099#1093
      OnClick = N6Click
    end
    object N7: TMenuItem
      Caption = #1055#1077#1095#1072#1090#1100' '#1088#1072#1089#1087#1080#1089#1082#1080' '#1086' '#1089#1086#1075#1083#1072#1089#1080#1080' '#1085#1072' '#1086#1073#1088#1072#1073#1086#1090#1082#1091'...'
      OnClick = N7Click
    end
  end
  object OpAdresesPopupMenu: TPopupMenu
    Left = 72
    Top = 184
    object N9: TMenuItem
      Caption = #1048#1085#1074#1077#1088#1090#1080#1088#1086#1074#1072#1090#1100' '#1089#1090#1072#1090#1091#1089' '#1075#1086#1088#1086#1076#1072'...'
      OnClick = N9Click
    end
  end
end
