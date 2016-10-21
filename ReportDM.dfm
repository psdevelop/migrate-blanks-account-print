object ReportGenDM: TReportGenDM
  OldCreateOrder = False
  Height = 645
  Width = 565
  object ResidingRegStatWithTermfrxRepF6: TfrxReport
    Version = '4.12'
    DotMatrixReport = False
    EngineOptions.TempDir = 'C:\DEVELOP(1)\Sources\FMS\reports'
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Maximized = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41047.458519803200000000
    ReportOptions.LastChange = 41188.522989537040000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Button1OnClick(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'begin'
      '                                            '
      'end.')
    OnPreview = ResidingRegStatWithTermfrxRepF6Preview
    OnPrintReport = ResidingRegStatWithTermfrxRepF6PrintReport
    OnLoadTemplate = ResidingRegStatWithTermfrxRepF6LoadTemplate
    Left = 72
    Top = 80
    Datasets = <
      item
        DataSet = CurrOperationfrxDBDS
        DataSetName = 'CurrOperationfrxDBDS'
      end
      item
        DataSet = ResidingRegStatWithTermfrxRepF6.MoveFromAdrADOQ
        DataSetName = 'MoveFromAdrADOQ'
      end
      item
        DataSet = PersonsfrxDBDS
        DataSetName = 'PersonsfrxDBDS'
      end
      item
        DataSet = ResidingRegStatWithTermfrxRepF6.OwnerPersonADOQ
        DataSetName = 'OwnerPersonADOQ'
      end
      item
        DataSet = ResidingRegStatWithTermfrxRepF6.BaseDocADOQ
        DataSetName = 'BaseDocADOQ'
      end
      item
        DataSet = ResidingRegStatWithTermfrxRepF6.ResidingPlaceAdrADOQuery
        DataSetName = 'ResidingPlaceAdrADOQuery'
      end
      item
        DataSet = ResidingRegStatWithTermfrxRepF6.OwnerIdentityADOQ
        DataSetName = 'OwnerIdentityADOQ'
      end
      item
        DataSet = ResidingRegStatWithTermfrxRepF6.ConsoulAllNameADOQ
        DataSetName = 'ConsoulAllNameADOQ'
      end
      item
        DataSet = ResidingRegStatWithTermfrxRepF6.OwnerAllNameADOQ
        DataSetName = 'OwnerAllNameADOQ'
      end
      item
        DataSet = ResidingRegStatWithTermfrxRepF6.ConsoulPersonADOQ
        DataSetName = 'ConsoulPersonADOQ'
      end
      item
        DataSet = ResidingRegStatWithTermfrxRepF6.ConsoulIdentDocADOQ
        DataSetName = 'ConsoulIdentDocADOQ'
      end
      item
        DataSet = ResidingRegStatWithTermfrxRepF6.PersIdentADOQ
        DataSetName = 'PersIdentADOQ'
      end
      item
        DataSet = ResidingRegStatWithTermfrxRepF6.CorrespBrancheADOQ
        DataSetName = 'CorrespBrancheADOQ'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
      object MoveFromAdrADOQ: TfrxADOQuery
        UserName = 'MoveFromAdrADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        Master = CurrOperationfrxDBDS
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select * from OP_ADR_DATA where'
          
            'ELINK_CODE=3 AND ACT_REG_ID=:OP_ID                              ' +
            '                                          ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 80
        pTop = 24
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
      object OwnerPersonADOQ: TfrxADOQuery
        UserName = 'OwnerPersonADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        Master = CurrOperationfrxDBDS
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select * from OP_PERSONAL_DATA where'
          
            'ELINK_CODE=4 AND ACT_REG_ID=:OP_ID                              ' +
            '                                          ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 80
        pTop = 76
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
      object BaseDocADOQ: TfrxADOQuery
        UserName = 'BaseDocADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        Master = CurrOperationfrxDBDS
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select * from OP_DOC_DATA where'
          
            'ELINK_CODE=2 AND ACT_REG_ID=:OP_ID                              ' +
            '                                          ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 80
        pTop = 128
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
      object ResidingPlaceAdrADOQuery: TfrxADOQuery
        UserName = 'ResidingPlaceAdrADOQuery'
        CloseDataSource = True
        BCDToCurrency = False
        Master = CurrOperationfrxDBDS
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select * from OP_ADR_DATA where'
          
            'ELINK_CODE=129 AND ACT_REG_ID=:OP_ID                            ' +
            '                                            ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 80
        pTop = 180
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
      object OwnerIdentityADOQ: TfrxADOQuery
        UserName = 'OwnerIdentityADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        Master = CurrOperationfrxDBDS
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select * from OP_DOC_DATA where'
          
            'ELINK_CODE=7 AND ACT_REG_ID=:OP_ID                              ' +
            '                                          ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 80
        pTop = 232
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
      object ConsoulAllNameADOQ: TfrxADOQuery
        UserName = 'ConsoulAllNameADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select ael.AEL_AS_ID, ael.ACT_REG_ID,'
          ' ael.AEL_LINK_TYPE_ID, enl.ELINK_TYPE,'
          'ael.STATIC_DATA'
          'from AEL_ASSOC ael LEFT JOIN ENTLINKS enl '
          'ON (ael.AEL_LINK_TYPE_ID=enl.ELINK_ID) '
          'WHERE enl.ELINK_TYPE=7 AND ENL.ELINK_CODE=151      '
          'AND ael.ACT_REG_ID=:OP_ID                           ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 228
        pTop = 24
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
      object OwnerAllNameADOQ: TfrxADOQuery
        UserName = 'OwnerAllNameADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select ael.AEL_AS_ID, ael.ACT_REG_ID,'
          ' ael.AEL_LINK_TYPE_ID, enl.ELINK_TYPE,'
          'ael.STATIC_DATA'
          'from AEL_ASSOC ael LEFT JOIN ENTLINKS enl '
          'ON (ael.AEL_LINK_TYPE_ID=enl.ELINK_ID) '
          'WHERE enl.ELINK_TYPE=7 AND ENL.ELINK_CODE=152        '
          'AND ael.ACT_REG_ID=:OP_ID                           ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 228
        pTop = 76
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
      object ConsoulPersonADOQ: TfrxADOQuery
        UserName = 'ConsoulPersonADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        Master = CurrOperationfrxDBDS
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select * from OP_PERSONAL_DATA where'
          
            'ELINK_CODE=149 AND ACT_REG_ID=:OP_ID                            ' +
            '                                            ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 228
        pTop = 128
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
      object ConsoulIdentDocADOQ: TfrxADOQuery
        UserName = 'ConsoulIdentDocADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'DOC_ID'
            DataType = ftInteger
            Expression = '<ConsoulPersonADOQ."IDENTITY_DOC_ID">'
          end>
        SQL.Strings = (
          
            'SELECT * FROM DOCS_VIEW WHERE DOC_ID=:DOC_ID                    ' +
            '                                                         ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 228
        pTop = 180
        Parameters = <
          item
            Name = 'DOC_ID'
            DataType = ftInteger
            Expression = '<ConsoulPersonADOQ."IDENTITY_DOC_ID">'
          end>
      end
      object PersIdentADOQ: TfrxADOQuery
        UserName = 'PersIdentADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        Master = CurrOperationfrxDBDS
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select * from OP_DOC_DATA where'
          
            'ELINK_CODE=1 AND ACT_REG_ID=:OP_ID                              ' +
            '                                          ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 228
        pTop = 232
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
      object CorrespBrancheADOQ: TfrxADOQuery
        UserName = 'CorrespBrancheADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select ael.AEL_AS_ID, ael.ACT_REG_ID,'
          ' ael.AEL_LINK_TYPE_ID, enl.ELINK_TYPE,'
          'ael.STATIC_DATA'
          'from AEL_ASSOC ael LEFT JOIN ENTLINKS enl '
          'ON (ael.AEL_LINK_TYPE_ID=enl.ELINK_ID) '
          'WHERE enl.ELINK_TYPE=7 AND ENL.ELINK_CODE=160        '
          'AND ael.ACT_REG_ID=:OP_ID                           ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 368
        pTop = 24
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 20.000000000000000000
      RightMargin = 15.000000000000000000
      TopMargin = 15.000000000000000000
      BottomMargin = 10.000000000000000000
      object Memo1: TfrxMemoView
        Left = 109.606370000000000000
        Top = 15.118120000000000000
        Width = 427.086890000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          #1047#1040#1071#1042#1051#1045#1053#1048#1045' '#1054' '#1056#1045#1043#1048#1057#1058#1056#1040#1062#1048#1048' '#1055#1054' '#1052#1045#1057#1058#1059' '#1046#1048#1058#1045#1051#1068#1057#1058#1042#1040)
        ParentFont = False
      end
      object Memo2: TfrxMemoView
        Left = 597.165740000000000000
        Width = 60.472480000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1060#1086#1088#1084#1072' '#8470'6')
        ParentFont = False
      end
      object Memo3: TfrxMemoView
        Left = 37.795300000000000000
        Top = 37.795300000000000000
        Width = 170.078850000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1042' '#1086#1088#1075#1072#1085' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1086#1085#1085#1086#1075#1086' '#1091#1095#1077#1090#1072)
        ParentFont = False
      end
      object Line1: TfrxLineView
        Left = 211.653680000000000000
        Top = 52.913420000000000000
        Width = 449.764070000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line2: TfrxLineView
        Top = 71.811070000000000000
        Width = 661.417750000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo4: TfrxMemoView
        Top = 75.590600000000000000
        Width = 15.118120000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1086#1090)
        ParentFont = False
      end
      object Line3: TfrxLineView
        Left = 15.118120000000000000
        Top = 90.708720000000000000
        Width = 646.299630000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo5: TfrxMemoView
        Left = 257.008040000000000000
        Top = 86.929190000000000000
        Width = 207.874150000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '('#1092#1072#1084#1080#1083#1080#1103', '#1080#1084#1103', '#1086#1090#1095#1077#1089#1090#1074#1086', '#1076#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103')')
        ParentFont = False
      end
      object Memo6: TfrxMemoView
        Top = 102.047310000000000000
        Width = 71.811070000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1055#1088#1080#1073#1099#1083'('#1072') '#1080#1079)
        ParentFont = False
      end
      object Line4: TfrxLineView
        Left = 75.590600000000000000
        Top = 113.385900000000000000
        Width = 585.827150000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo7: TfrxMemoView
        Left = 219.212740000000000000
        Top = 109.606370000000000000
        Width = 306.141930000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          
            '('#1091#1082#1072#1079#1072#1090#1100' '#1090#1086#1095#1085#1099#1081' '#1072#1076#1088#1077#1089' '#1084#1077#1089#1090#1072' '#1078#1080#1090#1077#1083#1100#1089#1090#1074#1072' '#1087#1088#1080#1073#1099#1074#1096#1077#1075#1086'('#1077#1081') '#1075#1088#1072#1078#1076#1072#1085#1080#1085#1072 +
            '('#1082#1080'))')
        ParentFont = False
      end
      object Memo8: TfrxMemoView
        Top = 124.724490000000000000
        Width = 132.283550000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1047#1072#1082#1086#1085#1085#1099#1081' '#1087#1088#1077#1076#1089#1090#1072#1074#1080#1090#1077#1083#1100)
        ParentFont = False
      end
      object Line5: TfrxLineView
        Left = 136.063080000000000000
        Top = 139.842610000000000000
        Width = 525.354670000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo9: TfrxMemoView
        Left = 313.700990000000000000
        Top = 136.063080000000000000
        Width = 170.078850000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '('#1091#1082#1072#1079#1072#1090#1100': '#1086#1090#1077#1094', '#1084#1072#1090#1100', '#1086#1087#1077#1082#1091#1085', '#1087#1086#1087#1077#1095#1080#1090#1077#1083#1100',')
        ParentFont = False
      end
      object Line6: TfrxLineView
        Top = 162.519790000000000000
        Width = 661.417750000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo10: TfrxMemoView
        Left = 272.126160000000000000
        Top = 158.740260000000000000
        Width = 120.944960000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1060'.'#1048'.'#1054'., '#1087#1072#1089#1087#1086#1088#1090#1085#1099#1077' '#1076#1072#1085#1085#1099#1077')')
        ParentFont = False
      end
      object Memo11: TfrxMemoView
        Top = 173.858380000000000000
        Width = 181.417440000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1046#1080#1083#1086#1077' '#1087#1086#1084#1077#1097#1077#1085#1080#1077' '#1087#1088#1077#1076#1086#1089#1090#1072#1074#1083#1077#1085#1086)
        ParentFont = False
      end
      object Line7: TfrxLineView
        Left = 185.196970000000000000
        Top = 188.976500000000000000
        Width = 476.220780000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo12: TfrxMemoView
        Left = 268.346630000000000000
        Top = 185.196970000000000000
        Width = 317.480520000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          
            '('#1091#1082#1072#1079#1072#1090#1100' '#1060'.'#1048'.'#1054'. '#1083#1080#1094#1072', '#1087#1088#1077#1076#1086#1089#1090#1072#1074#1080#1074#1096#1077#1075#1086' '#1078#1080#1083#1086#1077' '#1087#1086#1084#1077#1097#1077#1085#1080#1077', '#1089#1090#1077#1087#1077#1085#1100' '#1088 +
            #1086#1076#1089#1090#1074#1072')')
        ParentFont = False
      end
      object Memo13: TfrxMemoView
        Top = 215.433210000000000000
        Width = 71.811070000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1085#1072' '#1086#1089#1085#1086#1074#1072#1085#1080#1080)
        ParentFont = False
      end
      object Line8: TfrxLineView
        Top = 211.653680000000000000
        Width = 661.417750000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line9: TfrxLineView
        Left = 75.590600000000000000
        Top = 230.551330000000000000
        Width = 585.827150000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo14: TfrxMemoView
        Left = 120.944960000000000000
        Top = 226.771800000000000000
        Width = 498.897960000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          
            '('#1076#1086#1082#1091#1084#1077#1085#1090', '#1103#1074#1083#1103#1102#1097#1080#1081#1089#1103' '#1074' '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1080' '#1089' '#1078#1080#1083#1080#1097#1085#1099#1084' '#1079#1072#1082#1086#1085#1086#1076#1072#1090#1077#1083#1100#1089#1090#1074#1086 +
            #1084' '#1056#1086#1089#1089#1080#1081#1089#1082#1086#1081' '#1060#1077#1076#1077#1088#1072#1094#1080#1080' '#1086#1089#1085#1086#1074#1072#1085#1080#1077#1084' '#1076#1083#1103' '#1074#1089#1077#1083#1077#1085#1080#1103')')
        ParentFont = False
      end
      object Line10: TfrxLineView
        Top = 253.228510000000000000
        Width = 661.417750000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo15: TfrxMemoView
        Left = 3.779530000000000000
        Top = 257.008040000000000000
        Width = 56.692950000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1087#1086' '#1072#1076#1088#1077#1089#1091':')
        ParentFont = False
      end
      object Line11: TfrxLineView
        Left = 60.472480000000000000
        Top = 272.126160000000000000
        Width = 321.260050000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo16: TfrxMemoView
        Left = 381.732530000000000000
        Top = 257.008040000000000000
        Width = 41.574830000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          ', '#1091#1083#1080#1094#1072)
        ParentFont = False
      end
      object Line12: TfrxLineView
        Left = 430.866420000000000000
        Top = 272.126160000000000000
        Width = 230.551330000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo17: TfrxMemoView
        Left = 147.401670000000000000
        Top = 268.346630000000000000
        Width = 181.417440000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '('#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1085#1072#1089#1077#1083#1077#1085#1085#1086#1075#1086' '#1087#1091#1085#1082#1090#1072')')
        ParentFont = False
      end
      object Memo18: TfrxMemoView
        Left = 3.779530000000000000
        Top = 279.685220000000000000
        Width = 26.456710000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1076#1086#1084)
        ParentFont = False
      end
      object Line13: TfrxLineView
        Left = 26.456710000000000000
        Top = 294.803340000000000000
        Width = 177.637910000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo19: TfrxMemoView
        Left = 204.094620000000000000
        Top = 279.685220000000000000
        Width = 37.795300000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          ', '#1082#1086#1088#1087'.')
        ParentFont = False
      end
      object Line14: TfrxLineView
        Left = 241.889920000000000000
        Top = 294.803340000000000000
        Width = 181.417440000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo20: TfrxMemoView
        Left = 427.086890000000000000
        Top = 279.685220000000000000
        Width = 56.692950000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          ', '#1082#1074#1072#1088#1090#1080#1088#1072)
        ParentFont = False
      end
      object Line15: TfrxLineView
        Left = 483.779840000000000000
        Top = 294.803340000000000000
        Width = 177.637910000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo21: TfrxMemoView
        Left = 3.779530000000000000
        Top = 298.582870000000000000
        Width = 222.992270000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1044#1086#1082#1091#1084#1077#1085#1090', '#1091#1076#1086#1089#1090#1086#1074#1077#1088#1103#1102#1097#1080#1081' '#1083#1080#1095#1085#1086#1089#1090#1100': '#1074#1080#1076)
        ParentFont = False
      end
      object Line16: TfrxLineView
        Left = 230.551330000000000000
        Top = 313.700990000000000000
        Width = 185.196970000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line17: TfrxLineView
        Left = 445.984540000000000000
        Top = 313.700990000000000000
        Width = 90.708720000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line18: TfrxLineView
        Left = 551.811380000000000000
        Top = 313.700990000000000000
        Width = 109.606370000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo22: TfrxMemoView
        Left = 411.968770000000000000
        Top = 298.582870000000000000
        Width = 34.015770000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1089#1077#1088#1080#1103)
        ParentFont = False
      end
      object Memo23: TfrxMemoView
        Left = 536.693260000000000000
        Top = 298.582870000000000000
        Width = 15.118120000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #8470)
        ParentFont = False
      end
      object Memo24: TfrxMemoView
        Left = 3.779530000000000000
        Top = 317.480520000000000000
        Width = 37.795300000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1074#1099#1076#1072#1085)
        ParentFont = False
      end
      object Line19: TfrxLineView
        Left = 37.795300000000000000
        Top = 332.598640000000000000
        Width = 487.559370000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo25: TfrxMemoView
        Left = 529.134200000000000000
        Top = 317.480520000000000000
        Width = 26.456710000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1050#1086#1076)
        ParentFont = False
      end
      object Line20: TfrxLineView
        Left = 555.590910000000000000
        Top = 332.598640000000000000
        Width = 105.826840000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo26: TfrxMemoView
        Left = 207.874150000000000000
        Top = 332.598640000000000000
        Width = 151.181200000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '('#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1088#1075#1072#1085#1072', '#1091#1095#1088#1077#1078#1076#1077#1085#1080#1103')')
        ParentFont = False
      end
      object Memo27: TfrxMemoView
        Left = 3.779530000000000000
        Top = 355.275820000000000000
        Width = 113.385900000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080' "          "')
        ParentFont = False
      end
      object Memo28: TfrxMemoView
        Left = 272.126160000000000000
        Top = 355.275820000000000000
        Width = 11.338590000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1075'.')
        ParentFont = False
      end
      object Line21: TfrxLineView
        Left = 79.370130000000000000
        Top = 370.393940000000000000
        Width = 30.236240000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line22: TfrxLineView
        Left = 120.944960000000000000
        Top = 370.393940000000000000
        Width = 98.267780000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line23: TfrxLineView
        Left = 226.771800000000000000
        Top = 370.393940000000000000
        Width = 41.574830000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo29: TfrxMemoView
        Top = 377.953000000000000000
        Width = 355.275820000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1055#1086#1076#1087#1080#1089#1100' '#1079#1072#1103#1074#1080#1090#1077#1083#1103', '#1079#1072#1082#1086#1085#1085#1086#1075#1086' '#1087#1088#1077#1076#1089#1090#1072#1074#1080#1090#1077#1083#1103' ('#1085#1077#1085#1091#1078#1085#1086#1077' '#1079#1072#1095#1077#1088#1082#1085#1091#1090#1100')')
        ParentFont = False
      end
      object Line24: TfrxLineView
        Left = 438.425480000000000000
        Top = 393.071120000000000000
        Width = 222.992270000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo30: TfrxMemoView
        Left = 415.748300000000000000
        Top = 400.630180000000000000
        Width = 71.811070000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1044#1072#1090#1072' "          "')
        ParentFont = False
      end
      object Line25: TfrxLineView
        Left = 449.764070000000000000
        Top = 415.748300000000000000
        Width = 30.236240000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line26: TfrxLineView
        Left = 491.338900000000000000
        Top = 415.748300000000000000
        Width = 98.267780000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line27: TfrxLineView
        Left = 600.945270000000000000
        Top = 415.748300000000000000
        Width = 41.574830000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo31: TfrxMemoView
        Top = 423.307360000000000000
        Width = 434.645950000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          
            #1042#1089#1077#1083#1077#1085#1080#1077' '#1087#1088#1086#1080#1079#1074#1077#1076#1077#1085#1086' '#1074' '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1080' '#1089' '#1079#1072#1082#1086#1085#1086#1076#1072#1090#1077#1083#1100#1089#1090#1074#1086#1084' '#1056#1086#1089#1089#1080#1081#1089#1082 +
            #1086#1081' '#1060#1077#1076#1077#1088#1072#1094#1080#1080'.')
        ParentFont = False
      end
      object Memo32: TfrxMemoView
        Top = 438.425480000000000000
        Width = 268.346630000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1055#1086#1076#1087#1080#1089#1100' '#1083#1080#1094#1072', '#1087#1088#1077#1076#1086#1089#1090#1072#1074#1080#1074#1096#1077#1075#1086' '#1078#1080#1083#1086#1077' '#1087#1086#1084#1077#1097#1077#1085#1080#1077)
        ParentFont = False
      end
      object Memo33: TfrxMemoView
        Top = 453.543600000000000000
        Width = 325.039580000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1055#1086#1076#1087#1080#1089#1100' '#1083#1080#1094#1072', '#1087#1088#1077#1076#1086#1089#1090#1072#1074#1080#1074#1096#1077#1075#1086' '#1078#1080#1083#1086#1077' '#1087#1086#1084#1077#1097#1077#1085#1080#1077', '#1079#1072#1074#1077#1088#1103#1102)
        ParentFont = False
      end
      object Line28: TfrxLineView
        Left = 268.346630000000000000
        Top = 453.543600000000000000
        Width = 393.071120000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo34: TfrxMemoView
        Left = 45.354360000000000000
        Top = 487.559370000000000000
        Width = 162.519790000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '('#1087#1086#1076#1087#1080#1089#1100' '#1080' '#1060'.'#1048'.'#1054'. '#1076#1086#1083#1078#1085#1086#1089#1090#1085#1086#1075#1086' '#1083#1080#1094#1072')')
        ParentFont = False
      end
      object Line29: TfrxLineView
        Left = 3.779530000000000000
        Top = 487.559370000000000000
        Width = 245.669450000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo35: TfrxMemoView
        Left = 321.260050000000000000
        Top = 487.559370000000000000
        Width = 22.677180000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1052'.'#1055'.')
        ParentFont = False
      end
      object Memo36: TfrxMemoView
        Left = 411.968770000000000000
        Top = 472.441250000000000000
        Width = 45.354360000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '"          "')
        ParentFont = False
      end
      object Line30: TfrxLineView
        Left = 415.748300000000000000
        Top = 487.559370000000000000
        Width = 34.015770000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line31: TfrxLineView
        Left = 468.661720000000000000
        Top = 487.559370000000000000
        Width = 102.047310000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line32: TfrxLineView
        Left = 582.047620000000000000
        Top = 487.559370000000000000
        Width = 34.015770000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo37: TfrxMemoView
        Left = 619.842920000000000000
        Top = 472.441250000000000000
        Width = 11.338590000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1075'.')
        ParentFont = False
      end
      object Memo38: TfrxMemoView
        Left = 642.520100000000000000
        Top = 400.630180000000000000
        Width = 11.338590000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1075'.')
        ParentFont = False
      end
      object Memo39: TfrxMemoView
        Left = 3.779530000000000000
        Top = 536.693260000000000000
        Width = 45.354360000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          ' "          "')
        ParentFont = False
      end
      object Line33: TfrxLineView
        Left = 11.338590000000000000
        Top = 551.811380000000000000
        Width = 30.236240000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line34: TfrxLineView
        Left = 60.472480000000000000
        Top = 551.811380000000000000
        Width = 90.708720000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line35: TfrxLineView
        Left = 158.740260000000000000
        Top = 551.811380000000000000
        Width = 30.236240000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo40: TfrxMemoView
        Left = 188.976500000000000000
        Top = 536.693260000000000000
        Width = 11.338590000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1075'.')
        ParentFont = False
      end
      object Line36: TfrxLineView
        Left = 245.669450000000000000
        Top = 551.811380000000000000
        Width = 415.748300000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo41: TfrxMemoView
        Left = 313.700990000000000000
        Top = 551.811380000000000000
        Width = 283.464750000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          
            '('#1060'.'#1048'.'#1054'., '#1087#1086#1076#1087#1080#1089#1100' '#1076#1086#1083#1078#1085#1086#1089#1090#1085#1086#1075#1086' '#1083#1080#1094#1072' '#1086#1088#1075#1072#1085#1072' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1086#1085#1085#1086#1075#1086' '#1091#1095#1077#1090#1072 +
            ')')
        ParentFont = False
      end
      object Memo42: TfrxMemoView
        Top = 498.897960000000000000
        Width = 102.047310000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1055#1088#1080#1085#1103#1090#1086#1077' '#1088#1077#1096#1077#1085#1080#1077)
        ParentFont = False
      end
      object Line37: TfrxLineView
        Left = 105.826840000000000000
        Top = 514.016080000000000000
        Width = 555.590910000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line38: TfrxLineView
        Top = 529.134200000000000000
        Width = 661.417750000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo43: TfrxMemoView
        Top = 570.709030000000000000
        Width = 608.504330000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          
            #1042#1099#1076#1072#1085#1086' '#1089#1074#1080#1076#1077#1090#1077#1083#1100#1089#1090#1074#1086' '#1086' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080' '#1087#1086' '#1084#1077#1089#1090#1091' '#1078#1080#1090#1077#1083#1100#1089#1090#1074#1072' ('#1076#1083#1103' '#1075#1088#1072#1078 +
            #1076#1072#1085', '#1085#1077' '#1076#1086#1089#1090#1080#1075#1096#1080#1093' 14-'#1083#1077#1090#1085#1077#1075#1086' '#1074#1086#1079#1088#1072#1089#1090#1072') '#8470)
        ParentFont = False
      end
      object Line39: TfrxLineView
        Left = 608.504330000000000000
        Top = 585.827150000000000000
        Width = 49.133890000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo44: TfrxMemoView
        Left = 287.244280000000000000
        Top = 593.386210000000000000
        Width = 71.811070000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1051#1080#1085#1080#1103' '#1086#1090#1088#1077#1079#1072)
        ParentFont = False
      end
      object Line40: TfrxLineView
        Left = 3.779530000000000000
        Top = 604.724800000000000000
        Width = 279.685220000000000000
        ShowHint = False
        Frame.Style = fsDot
        Frame.Typ = [ftTop]
      end
      object Line41: TfrxLineView
        Left = 359.055350000000000000
        Top = 604.724800000000000000
        Width = 283.464750000000000000
        ShowHint = False
        Frame.Style = fsDot
        Frame.Typ = [ftTop]
      end
      object Memo45: TfrxMemoView
        Left = 22.677180000000000000
        Top = 616.063390000000000000
        Width = 623.622450000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          #1047#1040#1071#1042#1051#1045#1053#1048#1045' '#1054' '#1057#1053#1071#1058#1048#1048' '#1057' '#1056#1045#1043#1048#1057#1058#1056#1040#1062#1048#1054#1053#1053#1054#1043#1054' '#1059#1063#1045#1058#1040' '#1055#1054' '#1052#1045#1057#1058#1059' '#1046#1048#1058#1045#1051#1068#1057#1058#1042#1040)
        ParentFont = False
      end
      object Memo46: TfrxMemoView
        Left = 37.795300000000000000
        Top = 638.740570000000000000
        Width = 173.858380000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1042' '#1086#1088#1075#1072#1085' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1086#1085#1085#1086#1075#1086' '#1091#1095#1077#1090#1072)
        ParentFont = False
      end
      object Line42: TfrxLineView
        Left = 211.653680000000000000
        Top = 653.858690000000000000
        Width = 449.764070000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo47: TfrxMemoView
        Top = 653.858690000000000000
        Width = 15.118120000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1086#1090)
        ParentFont = False
      end
      object Line43: TfrxLineView
        Left = 15.118120000000000000
        Top = 668.976810000000000000
        Width = 646.299630000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo48: TfrxMemoView
        Left = 257.008040000000000000
        Top = 665.197280000000000000
        Width = 170.078850000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '('#1092#1072#1084#1080#1083#1080#1103', '#1080#1084#1103', '#1086#1090#1095#1077#1089#1090#1074#1086', '#1076#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103')')
        ParentFont = False
      end
      object Memo49: TfrxMemoView
        Left = 3.779530000000000000
        Top = 687.874460000000000000
        Width = 222.992270000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1044#1086#1082#1091#1084#1077#1085#1090', '#1091#1076#1086#1089#1090#1086#1074#1077#1088#1103#1102#1097#1080#1081' '#1083#1080#1095#1085#1086#1089#1090#1100': '#1074#1080#1076)
        ParentFont = False
      end
      object Line44: TfrxLineView
        Left = 230.551330000000000000
        Top = 702.992580000000000000
        Width = 185.196970000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo50: TfrxMemoView
        Left = 415.748300000000000000
        Top = 687.874460000000000000
        Width = 34.015770000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1089#1077#1088#1080#1103)
        ParentFont = False
      end
      object Line45: TfrxLineView
        Left = 449.764070000000000000
        Top = 702.992580000000000000
        Width = 86.929190000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo51: TfrxMemoView
        Left = 536.693260000000000000
        Top = 687.874460000000000000
        Width = 15.118120000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #8470)
        ParentFont = False
      end
      object Line46: TfrxLineView
        Left = 551.811380000000000000
        Top = 702.992580000000000000
        Width = 109.606370000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo52: TfrxMemoView
        Left = 3.779530000000000000
        Top = 702.992580000000000000
        Width = 41.574830000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1074#1099#1076#1072#1085)
        ParentFont = False
      end
      object Line47: TfrxLineView
        Left = 41.574830000000000000
        Top = 718.110700000000000000
        Width = 480.000310000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo53: TfrxMemoView
        Left = 529.134200000000000000
        Top = 702.992580000000000000
        Width = 26.456710000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1050#1086#1076)
        ParentFont = False
      end
      object Line48: TfrxLineView
        Left = 555.590910000000000000
        Top = 718.110700000000000000
        Width = 105.826840000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo54: TfrxMemoView
        Left = 207.874150000000000000
        Top = 718.110700000000000000
        Width = 151.181200000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '('#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1088#1075#1072#1085#1072', '#1091#1095#1088#1077#1078#1076#1077#1085#1080#1103')')
        ParentFont = False
      end
      object Memo55: TfrxMemoView
        Left = 3.779530000000000000
        Top = 740.787880000000000000
        Width = 113.385900000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080' "          "')
        ParentFont = False
      end
      object Memo56: TfrxMemoView
        Left = 272.126160000000000000
        Top = 740.787880000000000000
        Width = 11.338590000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1075'.')
        ParentFont = False
      end
      object Line49: TfrxLineView
        Left = 79.370130000000000000
        Top = 755.906000000000000000
        Width = 30.236240000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line50: TfrxLineView
        Left = 124.724490000000000000
        Top = 755.906000000000000000
        Width = 98.267780000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line51: TfrxLineView
        Left = 230.551330000000000000
        Top = 755.906000000000000000
        Width = 41.574830000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo57: TfrxMemoView
        Top = 763.465060000000000000
        Width = 132.283550000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1047#1072#1082#1086#1085#1085#1099#1081' '#1087#1088#1077#1076#1089#1090#1072#1074#1080#1090#1077#1083#1100)
        ParentFont = False
      end
      object Line52: TfrxLineView
        Left = 132.283550000000000000
        Top = 778.583180000000000000
        Width = 529.134200000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo58: TfrxMemoView
        Left = 313.700990000000000000
        Top = 774.803650000000000000
        Width = 170.078850000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '('#1091#1082#1072#1079#1072#1090#1100': '#1086#1090#1077#1094', '#1084#1072#1090#1100', '#1086#1087#1077#1082#1091#1085', '#1087#1086#1087#1077#1095#1080#1090#1077#1083#1100',')
        ParentFont = False
      end
      object Memo59: TfrxMemoView
        Left = 268.346630000000000000
        Top = 797.480830000000000000
        Width = 124.724490000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1060'..'#1048'.'#1054'., '#1087#1072#1089#1087#1086#1088#1090#1085#1099#1077' '#1076#1072#1085#1085#1099#1077')')
        ParentFont = False
      end
      object Line53: TfrxLineView
        Top = 801.260360000000000000
        Width = 661.417750000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo60: TfrxMemoView
        Top = 820.158010000000000000
        Width = 328.819110000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1042' '#1089#1074#1103#1079#1080' '#1089' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1077#1081' '#1087#1086' '#1085#1086#1074#1086#1084#1091' '#1084#1077#1089#1090#1091' '#1078#1080#1090#1077#1083#1100#1089#1090#1074#1072' '#1087#1086' '#1072#1076#1088#1077#1089#1091':')
        ParentFont = False
      end
      object Line54: TfrxLineView
        Left = 328.819110000000000000
        Top = 835.276130000000000000
        Width = 332.598640000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo61: TfrxMemoView
        Left = 283.464750000000000000
        Top = 850.394250000000000000
        Width = 94.488250000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '('#1091#1082#1072#1079#1072#1090#1100' '#1090#1086#1095#1085#1099#1081' '#1072#1076#1088#1077#1089')')
        ParentFont = False
      end
      object Line55: TfrxLineView
        Top = 854.173780000000000000
        Width = 661.417750000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo62: TfrxMemoView
        Top = 865.512370000000000000
        Width = 166.299320000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1054#1088#1075#1072#1085' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1086#1085#1085#1086#1075#1086' '#1091#1095#1077#1090#1072)
        ParentFont = False
      end
      object Line56: TfrxLineView
        Left = 166.299320000000000000
        Top = 880.630490000000000000
        Width = 495.118430000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo63: TfrxMemoView
        Left = 366.614410000000000000
        Top = 876.850960000000000000
        Width = 105.826840000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '('#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1088#1075#1072#1085#1072')')
        ParentFont = False
      end
      object Memo64: TfrxMemoView
        Top = 888.189550000000000000
        Width = 449.764070000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          
            #1087#1088#1086#1096#1091' '#1089#1085#1103#1090#1100' '#1084#1077#1085#1103' '#1089' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1086#1085#1085#1086#1075#1086' '#1091#1095#1077#1090#1072' '#1087#1086' '#1087#1088#1077#1078#1085#1077#1084#1091' '#1084#1077#1089#1090#1091' '#1078#1080#1090#1077 +
            #1083#1100#1089#1090#1074#1072' '#1087#1086' '#1072#1076#1088#1077#1089#1091':')
        ParentFont = False
      end
      object Line57: TfrxLineView
        Left = 449.764070000000000000
        Top = 903.307670000000000000
        Width = 211.653680000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line58: TfrxLineView
        Top = 922.205320000000000000
        Width = 661.417750000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo65: TfrxMemoView
        Left = 468.661720000000000000
        Top = 925.984850000000000000
        Width = 45.354360000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          ' "          "')
        ParentFont = False
      end
      object Line59: TfrxLineView
        Left = 476.220780000000000000
        Top = 941.102970000000000000
        Width = 30.236240000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line60: TfrxLineView
        Left = 525.354670000000000000
        Top = 941.102970000000000000
        Width = 90.708720000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line61: TfrxLineView
        Left = 623.622450000000000000
        Top = 941.102970000000000000
        Width = 30.236240000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo66: TfrxMemoView
        Left = 653.858690000000000000
        Top = 925.984850000000000000
        Width = 11.338590000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1075'.')
        ParentFont = False
      end
      object Memo67: TfrxMemoView
        Left = 468.661720000000000000
        Top = 963.780150000000000000
        Width = 45.354360000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          ' "          "')
        ParentFont = False
      end
      object Line62: TfrxLineView
        Left = 476.220780000000000000
        Top = 978.898270000000000000
        Width = 30.236240000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line63: TfrxLineView
        Left = 525.354670000000000000
        Top = 978.898270000000000000
        Width = 90.708720000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line64: TfrxLineView
        Left = 623.622450000000000000
        Top = 978.898270000000000000
        Width = 30.236240000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo68: TfrxMemoView
        Left = 653.858690000000000000
        Top = 963.780150000000000000
        Width = 11.338590000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1075'.')
        ParentFont = False
      end
      object Memo69: TfrxMemoView
        Left = 3.779530000000000000
        Top = 925.984850000000000000
        Width = 362.834880000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1055#1086#1076#1087#1080#1089#1100' '#1079#1072#1103#1074#1080#1090#1077#1083#1103', '#1079#1072#1082#1086#1085#1085#1086#1075#1086' '#1087#1088#1077#1076#1089#1090#1072#1074#1080#1090#1077#1083#1103' ('#1085#1077#1085#1091#1078#1085#1086#1077' '#1079#1072#1095#1077#1088#1082#1085#1091#1090#1100')')
        ParentFont = False
      end
      object Memo70: TfrxMemoView
        Left = 3.779530000000000000
        Top = 948.662030000000000000
        Width = 68.031540000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1055#1086#1076#1087#1080#1089#1100' '#1075#1088'.')
        ParentFont = False
      end
      object Memo71: TfrxMemoView
        Left = 215.433210000000000000
        Top = 948.662030000000000000
        Width = 56.692950000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1079#1072#1074#1077#1088#1103#1102'.')
        ParentFont = False
      end
      object Memo72: TfrxMemoView
        Left = 3.779530000000000000
        Top = 963.780150000000000000
        Width = 56.692950000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1052'.'#1055'.')
        ParentFont = False
      end
      object Memo73: TfrxMemoView
        Left = 79.370130000000000000
        Top = 963.780150000000000000
        Width = 200.315090000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1055#1086#1076#1087#1080#1089#1100' '#1080' '#1060'.'#1048'.'#1054'. '#1076#1086#1083#1078#1085#1086#1089#1090#1085#1086#1075#1086' '#1083#1080#1094#1072)
        ParentFont = False
      end
      object Line65: TfrxLineView
        Left = 71.811070000000000000
        Top = 963.780150000000000000
        Width = 143.622140000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line66: TfrxLineView
        Left = 362.834880000000000000
        Top = 941.102970000000000000
        Width = 98.267780000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line67: TfrxLineView
        Left = 279.685220000000000000
        Top = 978.898270000000000000
        Width = 188.976500000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo75: TfrxMemoView
        Left = 79.370130000000000000
        Top = 94.488250000000000000
        Width = 582.047620000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[Uppercase(<MoveFromAdrADOQ."ADR_FULL_NAME">)]')
        ParentFont = False
      end
      object Memo76: TfrxMemoView
        Left = 18.897650000000000000
        Top = 71.811070000000000000
        Width = 642.520100000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          
            '[Uppercase(<PersonsfrxDBDS."LAST_NAME">)] [Uppercase(<Personsfrx' +
            'DBDS."FIRST_NAME">)] [Uppercase(<PersonsfrxDBDS."SURNAME">)], [U' +
            'ppercase(<PersonsfrxDBDS."BIRTHDATE">)] '#1043'.'#1056'.')
        ParentFont = False
      end
      object Memo77: TfrxMemoView
        Top = 170.078850000000000000
        Width = 665.197280000000000000
        Height = 41.574830000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        LineSpacing = 4.000000000000000000
        Memo.UTF8W = (
          
            '                                                [OwnerAllNameADO' +
            'Q."STATIC_DATA"] [Uppercase(<OwnerPersonADOQ."LAST_NAME">)] [Upp' +
            'ercase(<OwnerPersonADOQ."FIRST_NAME">)] [Uppercase(<OwnerPersonA' +
            'DOQ."SURNAME">)]')
        ParentFont = False
      end
      object Memo78: TfrxMemoView
        Top = 211.653680000000000000
        Width = 661.417750000000000000
        Height = 41.574830000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        LineSpacing = 4.000000000000000000
        Memo.UTF8W = (
          
            '                         [Uppercase(<BaseDocADOQ."DOC_FULL_NAME"' +
            '>)]')
        ParentFont = False
      end
      object Memo79: TfrxMemoView
        Left = 64.252010000000000000
        Top = 253.228510000000000000
        Width = 317.480520000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          
            '[Uppercase(<ResidingPlaceAdrADOQuery."SETTL_SHORT_FULL">)] [Uppe' +
            'rcase(<ResidingPlaceAdrADOQuery."SETTLEM_NAME">)]')
        ParentFont = False
      end
      object Memo80: TfrxMemoView
        Left = 430.866420000000000000
        Top = 253.228510000000000000
        Width = 230.551330000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[Uppercase(<ResidingPlaceAdrADOQuery."STREET_NAME">)]')
        ParentFont = False
      end
      object Memo81: TfrxMemoView
        Left = 30.236240000000000000
        Top = 275.905690000000000000
        Width = 173.858380000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          
            '[IIF(<ResidingPlaceAdrADOQuery."HOUSE_NUM">=0,'#39#39',Uppercase(<Resi' +
            'dingPlaceAdrADOQuery."HOUSE_NUM">))] [Uppercase(IIF(Length(<Resi' +
            'dingPlaceAdrADOQuery."LITER">)>0,('#39#1083#1080#1090#1077#1088' '#39'+<ResidingPlaceAdrADOQ' +
            'uery."LITER">),'#39#39'))]')
        ParentFont = False
      end
      object Memo82: TfrxMemoView
        Left = 241.889920000000000000
        Top = 275.905690000000000000
        Width = 181.417440000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        HideZeros = True
        Memo.UTF8W = (
          
            '[IIF(Length(<ResidingPlaceAdrADOQuery."CORPUS">)=0,'#39'-'#39',Uppercase' +
            '(<ResidingPlaceAdrADOQuery."CORPUS">))]')
        ParentFont = False
      end
      object Memo83: TfrxMemoView
        Left = 483.779840000000000000
        Top = 275.905690000000000000
        Width = 177.637910000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        HideZeros = True
        Memo.UTF8W = (
          
            '[IIF(<ResidingPlaceAdrADOQuery."APARTMENT_NUM">=0,'#39#39',Uppercase(<' +
            'ResidingPlaceAdrADOQuery."APARTMENT_NUM">))]')
        ParentFont = False
      end
      object Memo84: TfrxMemoView
        Left = 234.330860000000000000
        Top = 294.803340000000000000
        Width = 173.858380000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          '[Uppercase(<OwnerIdentityADOQ."DOC_TYPE_NAME">)]')
        ParentFont = False
      end
      object Memo85: TfrxMemoView
        Left = 445.984540000000000000
        Top = 294.803340000000000000
        Width = 83.149660000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[Uppercase(<OwnerIdentityADOQ."DOC_SERIE">)]')
        ParentFont = False
      end
      object Memo86: TfrxMemoView
        Left = 555.590910000000000000
        Top = 294.803340000000000000
        Width = 105.826840000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[Uppercase(<OwnerIdentityADOQ."DOC_NUM">)]')
        ParentFont = False
      end
      object Memo87: TfrxMemoView
        Left = 45.354360000000000000
        Top = 313.700990000000000000
        Width = 480.000310000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          '[Uppercase(<OwnerIdentityADOQ."DOC_BRANCH_NAME">)]')
        ParentFont = False
      end
      object Memo88: TfrxMemoView
        Left = 559.370440000000000000
        Top = 313.700990000000000000
        Width = 102.047310000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[Uppercase(<OwnerIdentityADOQ."DOC_BRANCHE_CODE">)]')
        ParentFont = False
      end
      object Memo89: TfrxMemoView
        Left = 75.590600000000000000
        Top = 351.496290000000000000
        Width = 34.015770000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[DayOf(<OwnerIdentityADOQ."DOC_CREATE_DATE">)]')
        ParentFont = False
      end
      object Memo90: TfrxMemoView
        Left = 117.165430000000000000
        Top = 351.496290000000000000
        Width = 102.047310000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          
            '[IIF(MonthOf(<OwnerIdentityADOQ."DOC_CREATE_DATE">)=1,'#39#1071#1053#1042#1040#1056#1071#39','#39 +
            #39')][IIF(MonthOf(<OwnerIdentityADOQ."DOC_CREATE_DATE">)=2,'#39#1060#1045#1042#1056#1040#1051 +
            #1071#39','#39#39')][IIF(MonthOf(<OwnerIdentityADOQ."DOC_CREATE_DATE">)=3,'#39#1052#1040 +
            #1056#1058#1040#39','#39#39')][IIF(MonthOf(<OwnerIdentityADOQ."DOC_CREATE_DATE">)=4,'#39 +
            #1040#1055#1056#1045#1051#1071#39','#39#39')][IIF(MonthOf(<OwnerIdentityADOQ."DOC_CREATE_DATE">)=' +
            '5,'#39#1052#1040#1071#39','#39#39')][IIF(MonthOf(<OwnerIdentityADOQ."DOC_CREATE_DATE">)=' +
            '6,'#39#1048#1070#1053#1071#39','#39#39')][IIF(MonthOf(<OwnerIdentityADOQ."DOC_CREATE_DATE">)' +
            '=7,'#39#1048#1070#1051#1071#39','#39#39')][IIF(MonthOf(<OwnerIdentityADOQ."DOC_CREATE_DATE">' +
            ')=8,'#39#1040#1042#1043#1059#1057#1058#1040#39','#39#39')][IIF(MonthOf(<OwnerIdentityADOQ."DOC_CREATE_DA' +
            'TE">)=9,'#39#1057#1045#1053#1058#1071#1041#1056#1071#39','#39#39')][IIF(MonthOf(<OwnerIdentityADOQ."DOC_CREA' +
            'TE_DATE">)=10,'#39#1054#1050#1058#1071#1041#1056#1071#39','#39#39')][IIF(MonthOf(<OwnerIdentityADOQ."DOC' +
            '_CREATE_DATE">)=11,'#39#1053#1054#1071#1041#1056#1071#39','#39#39')][IIF(MonthOf(<OwnerIdentityADOQ.' +
            '"DOC_CREATE_DATE">)=12,'#39#1044#1045#1050#1040#1041#1056#1071#39','#39#39')]')
        ParentFont = False
      end
      object Memo91: TfrxMemoView
        Left = 222.992270000000000000
        Top = 351.496290000000000000
        Width = 49.133890000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[YearOf(<OwnerIdentityADOQ."DOC_CREATE_DATE">)]')
        ParentFont = False
      end
      object Memo92: TfrxMemoView
        Left = 22.677180000000000000
        Top = 650.079160000000000000
        Width = 638.740570000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          
            '[Uppercase(<PersonsfrxDBDS."LAST_NAME">)] [Uppercase(<Personsfrx' +
            'DBDS."FIRST_NAME">)] [Uppercase(<PersonsfrxDBDS."SURNAME">)], [U' +
            'ppercase(<PersonsfrxDBDS."BIRTHDATE">)] '#1043'.'#1056'.')
        ParentFont = False
      end
      object Memo95: TfrxMemoView
        Top = 816.378480000000000000
        Width = 665.197280000000000000
        Height = 41.574830000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        LineSpacing = 1.000000000000000000
        Memo.UTF8W = (
          
            '                                                                ' +
            '                            [Uppercase(<ResidingPlaceAdrADOQuery' +
            '."ADR_FULL_NAME">)]')
        ParentFont = False
      end
      object Memo96: TfrxMemoView
        Top = 884.410020000000000000
        Width = 661.417750000000000000
        Height = 41.574830000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        LineSpacing = 1.500000000000000000
        Memo.UTF8W = (
          
            '                                                                ' +
            '                                                             [Up' +
            'percase(<MoveFromAdrADOQ."ADR_FULL_NAME">)]')
        ParentFont = False
      end
      object Memo74: TfrxMemoView
        Top = 34.015770000000000000
        Width = 661.417750000000000000
        Height = 37.795300000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        LineSpacing = 0.500000000000000000
        Memo.UTF8W = (
          
            '                                                      [<FMS_BRAN' +
            'CH_NAME_DEFAULT>]')
        ParentFont = False
      end
      object Memo93: TfrxMemoView
        Top = 120.944960000000000000
        Width = 665.197280000000000000
        Height = 41.574830000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        LineSpacing = 4.000000000000000000
        Memo.UTF8W = (
          
            '                                  [ConsoulAllNameADOQ."STATIC_DA' +
            'TA"] [Uppercase(<ConsoulPersonADOQ."LAST_NAME">)] [Uppercase(<Co' +
            'nsoulPersonADOQ."FIRST_NAME">)] [Uppercase(<ConsoulPersonADOQ."S' +
            'URNAME">)] [ConsoulPersonADOQ."BIRTHDATE"], [ConsoulIdentDocADOQ' +
            '."DOC_SERIE"] '#8470'[ConsoulIdentDocADOQ."DOC_NUM"], [ConsoulIdentDoc' +
            'ADOQ."DOC_BRANCHE_CODE"], [ConsoulIdentDocADOQ."DOC_BRANCH_NAME"' +
            '], [ConsoulIdentDocADOQ."DOC_CREATE_DATE"]')
        ParentFont = False
      end
      object Memo97: TfrxMemoView
        Left = 230.551330000000000000
        Top = 684.094930000000000000
        Width = 181.417440000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          '[Uppercase(<PersIdentADOQ."DOC_TYPE_NAME">)]')
        ParentFont = False
      end
      object Memo98: TfrxMemoView
        Left = 449.764070000000000000
        Top = 684.094930000000000000
        Width = 83.149660000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[Uppercase(<PersIdentADOQ."DOC_SERIE">)]')
        ParentFont = False
      end
      object Memo99: TfrxMemoView
        Left = 559.370440000000000000
        Top = 684.094930000000000000
        Width = 102.047310000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[Uppercase(<PersIdentADOQ."DOC_NUM">)]')
        ParentFont = False
      end
      object Memo100: TfrxMemoView
        Left = 41.574830000000000000
        Top = 699.213050000000000000
        Width = 483.779840000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          '[Uppercase(<PersIdentADOQ."DOC_BRANCH_NAME">)]')
        ParentFont = False
      end
      object Memo101: TfrxMemoView
        Left = 555.590910000000000000
        Top = 699.213050000000000000
        Width = 105.826840000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[Uppercase(<PersIdentADOQ."DOC_BRANCHE_CODE">)]')
        ParentFont = False
      end
      object Memo102: TfrxMemoView
        Left = 75.590600000000000000
        Top = 737.008350000000000000
        Width = 34.015770000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[DayOf(<PersIdentADOQ."DOC_CREATE_DATE">)]')
        ParentFont = False
      end
      object Memo103: TfrxMemoView
        Left = 120.944960000000000000
        Top = 737.008350000000000000
        Width = 98.267780000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          
            '[IIF(MonthOf(<PersIdentADOQ."DOC_CREATE_DATE">)=1,'#39#1071#1053#1042#1040#1056#1071#39','#39#39')][' +
            'IIF(MonthOf(<PersIdentADOQ."DOC_CREATE_DATE">)=2,'#39#1060#1045#1042#1056#1040#1051#1071#39','#39#39')][' +
            'IIF(MonthOf(<PersIdentADOQ."DOC_CREATE_DATE">)=3,'#39#1052#1040#1056#1058#1040#39','#39#39')][II' +
            'F(MonthOf(<PersIdentADOQ."DOC_CREATE_DATE">)=4,'#39#1040#1055#1056#1045#1051#1071#39','#39#39')][IIF' +
            '(MonthOf(<PersIdentADOQ."DOC_CREATE_DATE">)=5,'#39#1052#1040#1071#39','#39#39')][IIF(Mon' +
            'thOf(<PersIdentADOQ."DOC_CREATE_DATE">)=6,'#39#1048#1070#1053#1071#39','#39#39')][IIF(MonthO' +
            'f(<PersIdentADOQ."DOC_CREATE_DATE">)=7,'#39#1048#1070#1051#1071#39','#39#39')][IIF(MonthOf(<' +
            'PersIdentADOQ."DOC_CREATE_DATE">)=8,'#39#1040#1042#1043#1059#1057#1058#1040#39','#39#39')][IIF(MonthOf(<' +
            'PersIdentADOQ."DOC_CREATE_DATE">)=9,'#39#1057#1045#1053#1058#1071#1041#1056#1071#39','#39#39')][IIF(MonthOf(' +
            '<PersIdentADOQ."DOC_CREATE_DATE">)=10,'#39#1054#1050#1058#1071#1041#1056#1071#39','#39#39')][IIF(MonthOf' +
            '(<PersIdentADOQ."DOC_CREATE_DATE">)=11,'#39#1053#1054#1071#1041#1056#1071#39','#39#39')][IIF(MonthOf' +
            '(<PersIdentADOQ."DOC_CREATE_DATE">)=12,'#39#1044#1045#1050#1040#1041#1056#1071#39','#39#39')]')
        ParentFont = False
      end
      object Memo104: TfrxMemoView
        Left = 226.771800000000000000
        Top = 737.008350000000000000
        Width = 45.354360000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[YearOf(<PersIdentADOQ."DOC_CREATE_DATE">)]')
        ParentFont = False
      end
      object Memo94: TfrxMemoView
        Left = 215.433210000000000000
        Top = 634.961040000000000000
        Width = 445.984540000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          '[CorrespBrancheADOQ."STATIC_DATA"]')
        ParentFont = False
      end
      object Memo105: TfrxMemoView
        Left = 173.858380000000000000
        Top = 861.732840000000000000
        Width = 483.779840000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        LineSpacing = 0.500000000000000000
        Memo.UTF8W = (
          '[<FMS_BRANCH_NAME_DEFAULT>]')
        ParentFont = False
      end
    end
  end
  object PersonDataConsentfrxRep: TfrxReport
    Version = '4.12'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Maximized = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41053.687087673600000000
    ReportOptions.LastChange = 41111.143230312500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 72
    Top = 136
    Datasets = <
      item
        DataSet = PersonsfrxDBDS
        DataSetName = 'PersonsfrxDBDS'
      end
      item
        DataSet = PersonDataConsentfrxRep.PersonViewDetailADOT
        DataSetName = 'PersonViewDetailADOT'
      end
      item
        DataSet = PersonDataConsentfrxRep.PersRegIdentDocADOQ
        DataSetName = 'RegIdentDocADOQ'
      end
      item
        DataSet = PersonDataConsentfrxRep.PersResidingPlaceAdrADOQ
        DataSetName = 'ResidingPlaceAdrADOQ'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
      object PersRegIdentDocADOQ: TfrxADOQuery
        UserName = 'RegIdentDocADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        Master = CurrOperationfrxDBDS
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select * from OP_DOC_DATA where'
          
            'ELINK_CODE=1 AND ACT_REG_ID=:OP_ID                              ' +
            '                                          ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 192
        pTop = 92
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
      object PersResidingPlaceAdrADOQ: TfrxADOQuery
        UserName = 'ResidingPlaceAdrADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        Master = CurrOperationfrxDBDS
        IgnoreDupParams = False
        Params = <>
        SQL.Strings = (
          
            'select * from ADRESES_VIEW_DETAIL                               ' +
            '                                         ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 192
        pTop = 28
        Parameters = <>
      end
      object PersonViewDetailADOT: TfrxADOQuery
        UserName = 'PersonViewDetailADOT'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'PERSON_ID'
            DataType = ftInteger
            Expression = '<PersonsfrxDBDS."PERSON_ID">'
          end>
        SQL.Strings = (
          
            'SELECT * FROM PERSON_VIEW_DETAIL WHERE PERSON_ID=:PERSON_ID     ' +
            '                                                                ' +
            '                              ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 52
        pTop = 28
        Parameters = <
          item
            Name = 'PERSON_ID'
            DataType = ftInteger
            Expression = '<PersonsfrxDBDS."PERSON_ID">'
          end>
      end
    end
    object Page1: TfrxReportPage
      PaperWidth = 148.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 61
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Rich1: TfrxRichView
        Width = 483.779840000000000000
        Height = 257.008040000000000000
        ShowHint = False
        GapX = 2.000000000000000000
        GapY = 1.000000000000000000
        RichEdit = {
          7B5C727466315C616E73695C616E7369637067313235315C64656666305C6465
          666C616E67313034397B5C666F6E7474626C7B5C66305C66726F6D616E5C6670
          7271325C66636861727365743230347B5C2A5C666E616D652054696D6573204E
          657720526F6D616E3B7D54696D6573204E657720526F6D616E204359523B7D7B
          5C66315C666E696C5C6663686172736574323034205461686F6D613B7D7D0D0A
          7B5C2A5C67656E657261746F72204D7366746564697420352E34312E32312E32
          3530393B7D5C766965776B696E64345C7563315C706172645C71635C625C6630
          5C667332305C2766305C2765305C2766315C2765665C2765385C2766315C2765
          615C2765305C7061720D0A5C74726F77645C7472676170683130385C74727061
          64646C3130385C747270616464723130385C747270616464666C335C74727061
          64646672330D0A5C63656C6C783534305C636C62726472625C62726472773130
          5C6272647273205C63656C6C78363438305C706172645C696E74626C5C6C692D
          3130385C62305C667331385C2764662C5C63656C6C2020205C63656C6C5C726F
          775C74726F77645C7472676170683130385C7472706164646C3130385C747270
          616464723130385C747270616464666C335C7472706164646672330D0A5C6365
          6C6C78323334305C63656C6C78363438305C706172645C696E74626C5C6C692D
          3130385C72692D3130385C2763665C2766305C2765655C2765365C2765385C27
          65325C2765305C2766655C2766395C2765385C276539285C2765305C27666629
          205C2765665C276565205C2765305C2765345C2766305C2765355C2766315C27
          66333A5C63656C6C5C706172645C696E74626C5C6C692D3130385C71635C6673
          3136202020205C63656C6C5C726F775C74726F77645C7472676170683130385C
          7472706164646C3130385C747270616464723130385C747270616464666C335C
          7472706164646672330D0A5C636C62726472625C627264727731305C62726472
          73205C63656C6C78363438305C706172645C696E74626C5C6C692D3130385C71
          632020202020205C63656C6C5C726F775C74726F77645C747267617068313038
          5C7472706164646C3130385C747270616464723130385C747270616464666C33
          5C7472706164646672330D0A5C636C62726472745C627264727731305C627264
          7273205C63656C6C78313938305C636C62726472745C627264727731305C6272
          647273205C63656C6C78363438305C706172645C696E74626C5C6C692D313038
          5C72692D3130385C667331385C2765665C2765305C2766315C2765665C276565
          5C2766305C2766325C2765645C2766625C276535205C2765345C2765305C2765
          645C2765645C2766625C2765353A5C63656C6C5C706172645C696E74626C5C6C
          692D3130385C71635C667331362020205C27623920205C63656C6C5C726F775C
          74726F77645C7472676170683130385C7472706164646C3130385C7472706164
          64723130385C747270616464666C335C7472706164646672330D0A5C636C6272
          6472625C627264727731305C6272647273205C63656C6C78363438305C706172
          645C696E74626C5C6C692D3130385C71635C2765325C2766625C2765345C2765
          305C276564202020202020205C63656C6C5C726F775C74726F77645C74726761
          70683130385C7472706164646C3130385C747270616464723130385C74727061
          6464666C335C7472706164646672330D0A5C636C62726472745C627264727731
          305C6272647273205C63656C6C78363438305C706172645C696E74626C5C6C69
          2D3130385C736C2D3136305C736C6D756C74305C716A5C667331385C2765645C
          276530205C2765655C2766315C2765645C2765655C2765325C2765305C276564
          5C2765385C276538205C2764345C2765355C2765345C2765355C2766305C2765
          305C2765625C2766635C2765645C2765655C2765335C276565205C2765375C27
          65305C2765615C2765655C2765645C276530205C2765655C2766322032372F30
          372F32303036205C2765335C2765655C2765345C276530205C27623920313532
          2D5C2764345C276337205C2761625C276365205C2765665C2765355C2766305C
          2766315C2765655C2765645C2765305C2765625C2766635C2765645C2766625C
          276635205C2765345C2765305C2765645C2765645C2766625C2766355C276262
          2C205C2765345C2765305C276665205C2766315C2765655C2765335C2765625C
          2765305C2766315C2765385C276535205C2765645C276530205C2765655C2765
          315C2766305C2765305C2765315C2765655C2766325C2765615C276633205C27
          65635C2765655C2765385C276635205C2765665C2765355C2766305C2766315C
          2765655C2765645C2765305C2765625C2766635C2765645C2766625C27663520
          5C2765345C2765305C2765645C2765645C2766625C27663520205C7061720D0A
          5C2763385C276366205C2763665C2765355C2766325C2766305C2765655C2765
          325C2765655C276539205C2763352E5C2763642E2C205C276631205C2766365C
          2765355C2765625C2766635C276665205C2765375C2765305C2765665C276565
          5C2765625C2765645C2765355C2765645C2765385C276666205C2765315C2765
          625C2765305C2765645C2765615C2765655C276532205C2765345C2765625C27
          6666205C2765655C2766325C2765345C2765355C2765625C2765655C27653220
          5C2764335C2764345C2763635C2764312E5C63656C6C5C726F775C74726F7764
          5C7472676170683130385C7472706164646C3130385C74727061646472313038
          5C747270616464666C335C7472706164646672330D0A5C63656C6C7836343830
          5C706172645C696E74626C5C6C692D3130385C716A202020205C2763665C2765
          355C2766305C2765355C2766375C2765355C2765645C276663205C2765665C27
          65355C2766305C2766315C2765655C2765645C2765305C2765625C2766635C27
          65645C2766625C276635205C2765345C2765305C2765645C2765645C2766625C
          2766352C205C2765645C276530205C2765655C2765315C2766305C2765305C27
          65315C2765655C2766325C2765615C276633205C2765615C2765655C2766325C
          2765655C2766305C2766625C276635205C2765345C2765305C276665205C2766
          315C2765655C2765335C2765625C2765305C2766315C2765385C2765353A5C63
          656C6C5C726F775C74726F77645C7472676170683130385C7472706164646C31
          30385C747270616464723130385C747270616464666C335C7472706164646672
          330D0A5C63656C6C78363438305C706172645C696E74626C5C6C692D3130385C
          716A20312E205C2764345C2765305C2765635C2765385C2765625C2765385C27
          66662C205C2765385C2765635C2766662C205C2765655C2766325C2766375C27
          65355C2766315C2766325C2765325C2765655C63656C6C5C726F775C74726F77
          645C7472676170683130385C7472706164646C3130385C747270616464723130
          385C747270616464666C335C7472706164646672330D0A5C63656C6C78363438
          305C706172645C696E74626C5C6C692D3130385C716A20322E205C2763345C27
          65305C2766325C276530205C276538205C2765635C2765355C2766315C276632
          5C276565205C2766305C2765655C2765365C2765345C2765355C2765645C2765
          385C2766665C63656C6C5C726F775C74726F77645C7472676170683130385C74
          72706164646C3130385C747270616464723130385C747270616464666C335C74
          72706164646672330D0A5C63656C6C78363438305C706172645C696E74626C5C
          6C692D3130385C716A20332E205C2763665C2765305C2766315C2765665C2765
          655C2766305C2766325C2765645C2766625C276535205C2765345C2765305C27
          65645C2765645C2766625C2765355C63656C6C5C726F775C74726F77645C7472
          676170683130385C7472706164646C3130385C747270616464723130385C7472
          70616464666C335C7472706164646672330D0A5C63656C6C78363438305C7061
          72645C696E74626C5C6C692D3130385C716A20342E205C2763635C2765355C27
          66315C2766325C276565205C2766305C2765355C2765335C2765385C2766315C
          2766325C2766305C2765305C2766365C2765385C276538205C276538205C2766
          345C2765305C2765615C2766325C2765385C2766375C2765355C2766315C2765
          615C2765655C2765335C276565205C2765665C2766305C2765655C2765365C27
          65385C2765325C2765305C2765645C2765385C2766665C63656C6C5C726F775C
          74726F77645C7472676170683130385C747272682D35375C7472706164646C31
          30385C747270616464723130385C747270616464666C335C7472706164646672
          330D0A5C63656C6C78363438305C706172645C696E74626C5C6C692D3130385C
          736C2D3138305C736C6D756C74305C716A5C63656C6C5C726F775C74726F7764
          5C7472676170683130385C7472706164646C3130385C74727061646472313038
          5C747270616464666C335C7472706164646672330D0A5C63656C6C7836343830
          5C706172645C696E74626C5C6C692D3130385C736C2D3136305C736C6D756C74
          305C716A5C625C63656C6C5C726F775C74726F77645C7472676170683130385C
          747272683239355C7472706164646C3130385C747270616464723130385C7472
          70616464666C335C7472706164646672330D0A5C636C76657274616C635C6365
          6C6C78363438305C706172645C696E74626C5C6C692D3130385C736C2D313830
          5C736C6D756C74305C667332345C276431205C2765635C2765655C2765385C27
          6635205C2765345C2765655C2765615C2766335C2765635C2765355C2765645C
          2766325C2765655C276532205C2765315C2765625C2765305C2765645C276561
          5C276538205C2765375C2765305C2765665C2765655C2765625C2765645C2765
          355C2765645C276662205C2765325C2765355C2766305C2765645C2765655C63
          656C6C5C726F775C74726F77645C7472676170683130385C747272682D35375C
          7472706164646C3130385C747270616464723130385C747270616464666C335C
          7472706164646672330D0A5C63656C6C78363438305C706172645C696E74626C
          5C6C692D3130385C736C2D3138305C736C6D756C74305C716A5C6673345C6365
          6C6C5C726F775C74726F77645C7472676170683130385C7472706164646C3130
          385C747270616464723130385C747270616464666C335C747270616464667233
          0D0A5C63656C6C78363438305C706172645C696E74626C5C6C692D3130385C71
          6A5C62305C667331382020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020205F5F5F5F5F5F5F
          5F5F5F5F5F5F5F285C756C202020205C756C6E6F6E6520295C63656C6C5C726F
          775C74726F77645C7472676170683130385C7472706164646C3130385C747270
          616464723130385C747270616464666C335C7472706164646672330D0A5C6365
          6C6C78363438305C706172645C696E74626C5C6C692D3130385C716A5C667331
          3620202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020205C2765665C2765655C2765345C2765665C2765385C2766315C276663
          5C63656C6C5C726F775C706172645C66315C7061720D0A7D0D0A00}
      end
      object Line1: TfrxLineView
        Left = 113.385900000000000000
        Top = 68.031540000000000000
        Width = 158.740260000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Line2: TfrxLineView
        Left = 294.803340000000000000
        Top = 68.031540000000000000
        Width = 136.063080000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Line3: TfrxLineView
        Left = 18.897650000000000000
        Top = 29.480314960629900000
        Width = 139.842610000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Line4: TfrxLineView
        Left = 151.181200000000000000
        Top = 42.708661417322800000
        Width = 279.685220000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Memo35: TfrxMemoView
        Left = 15.118120000000000000
        Top = 11.338590000000000000
        Width = 423.307360000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          
            '[Uppercase(<PersonsfrxDBDS."LAST_NAME">)] [Uppercase(<Personsfrx' +
            'DBDS."FIRST_NAME">)] [Uppercase(<PersonsfrxDBDS."SURNAME">)]')
        ParentFont = False
      end
    end
  end
  object LocationRegStatementfrxRepF1: TfrxReport
    Version = '4.12'
    DotMatrixReport = False
    EngineOptions.TempDir = 'C:\DEVELOP(1)\Sources\FMS\reports'
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Maximized = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41047.458519803200000000
    ReportOptions.LastChange = 41112.297158298610000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnPreview = LocationRegStatementfrxRepF1Preview
    OnPrintReport = LocationRegStatementfrxRepF1PrintReport
    Left = 72
    Top = 24
    Datasets = <
      item
        DataSet = CurrOpIncomeOwnerIdentDocfrxDBDS
        DataSetName = 'CurrOpIncomeOwnerIdentDocfrxDBDS'
      end
      item
        DataSet = CurrOpIncomeRegGroundfrxDBDS
        DataSetName = 'CurrOpIncomeRegGroundfrxDBDS'
      end
      item
        DataSet = CurrOpIncomeRegIdentDocfrxDBDS
        DataSetName = 'CurrOpIncomeRegIdentDocfrxDBDS'
      end
      item
        DataSet = CurrOpIncomeRegOwnerPersfrxDBDS
        DataSetName = 'CurrOpIncomeRegOwnerPersfrxDBDS'
      end
      item
        DataSet = CurrOpLocationRegAdrfrxDBDS
        DataSetName = 'CurrOpLocationRegAdrfrxDBDS'
      end
      item
        DataSet = PersonsfrxDBDS
        DataSetName = 'PersonsfrxDBDS'
      end>
    Variables = <
      item
        Name = ' SYSTEM_DEFAULTS'
        Value = Null
      end
      item
        Name = 'FMS_BRANCH_NAME_DEFAULT'
        Value = Null
      end
      item
        Name = ' INNERS'
        Value = Null
      end
      item
        Name = 'FMS_BRANCH_NAME_DEFAULT_PART1'
        Value = 
          'Copy(<FMS_BRANCH_NAME_DEFAULT>,1,40)+Copy(<FMS_BRANCH_NAME_DEFAU' +
          'LT>, 41, Pos('#39' '#39',Copy(<FMS_BRANCH_NAME_DEFAULT>,40,80))-1 );'
      end
      item
        Name = 'FMS_BRANCH_NAME_DEFAULT_PART2'
        Value = 
          'Copy(<FMS_BRANCH_NAME_DEFAULT>, Pos('#39' '#39',Copy(<FMS_BRANCH_NAME_DE' +
          'FAULT>,40,80))+40 ,135)'
      end
      item
        Name = 'FMS_BRANCH_NAME_DEFAULT_P12V'
        Value = Null
      end
      item
        Name = ' CUSTOM_PARAMS'
        Value = Null
      end
      item
        Name = 'PREV_RESIDE_ADR_FULL_PART1'
        Value = Null
      end
      item
        Name = 'PREV_RESIDE_ADR_FULL_PART2'
        Value = Null
      end
      item
        Name = 'PREV_RESIDE_ADR_FULL_NAME'
        Value = Null
      end
      item
        Name = 'INCOME_REG_DOC_FULL_NAME'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 20.000000000000000000
      RightMargin = 15.000000000000000000
      TopMargin = 15.000000000000000000
      BottomMargin = 10.000000000000000000
      object Line1: TfrxLineView
        Left = 257.008040000000000000
        Top = 98.267780000000000000
        Width = 404.409710000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line2: TfrxLineView
        Top = 117.165430000000000000
        Width = 661.417750000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line3: TfrxLineView
        Left = 102.047310000000000000
        Top = 166.299320000000000000
        Width = 566.929500000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line4: TfrxLineView
        Left = 166.299320000000000000
        Top = 196.535560000000000000
        Width = 495.118430000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line5: TfrxLineView
        Left = 26.456710000000000000
        Top = 136.063080000000000000
        Width = 634.961040000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line6: TfrxLineView
        Left = 3.779530000000000000
        Top = 226.771800000000000000
        Width = 657.638220000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line7: TfrxLineView
        Left = 34.015770000000000000
        Top = 283.464750000000000000
        Width = 41.574830000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line8: TfrxLineView
        Left = 86.929190000000000000
        Top = 283.464750000000000000
        Width = 102.047310000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line9: TfrxLineView
        Left = 328.819110000000000000
        Top = 264.567100000000000000
        Width = 30.236240000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line10: TfrxLineView
        Left = 377.953000000000000000
        Top = 264.567100000000000000
        Width = 102.047310000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line11: TfrxLineView
        Left = 207.874150000000000000
        Top = 283.464750000000000000
        Width = 37.795300000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line12: TfrxLineView
        Left = 495.118430000000000000
        Top = 264.567100000000000000
        Width = 37.795300000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line13: TfrxLineView
        Left = 222.992270000000000000
        Top = 313.700990000000000000
        Width = 438.425480000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line14: TfrxLineView
        Left = 79.370130000000000000
        Top = 343.937230000000000000
        Width = 582.047620000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line15: TfrxLineView
        Top = 377.953000000000000000
        Width = 661.417750000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line16: TfrxLineView
        Left = 340.157700000000000000
        Top = 400.630180000000000000
        Width = 317.480520000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line17: TfrxLineView
        Left = 30.236240000000000000
        Top = 419.527830000000000000
        Width = 317.480520000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line18: TfrxLineView
        Left = 381.732530000000000000
        Top = 419.527830000000000000
        Width = 60.472480000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line19: TfrxLineView
        Left = 491.338900000000000000
        Top = 419.527830000000000000
        Width = 56.692950000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line20: TfrxLineView
        Left = 612.283860000000000000
        Top = 419.527830000000000000
        Width = 49.133890000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line21: TfrxLineView
        Left = 279.685220000000000000
        Top = 453.543600000000000000
        Width = 154.960730000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line22: TfrxLineView
        Left = 476.220780000000000000
        Top = 453.543600000000000000
        Width = 52.913420000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line23: TfrxLineView
        Left = 551.811380000000000000
        Top = 453.543600000000000000
        Width = 109.606370000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line24: TfrxLineView
        Left = 98.267780000000000000
        Top = 510.236550000000000000
        Width = 41.574830000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line25: TfrxLineView
        Left = 154.960730000000000000
        Top = 510.236550000000000000
        Width = 102.047310000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line26: TfrxLineView
        Left = 275.905690000000000000
        Top = 510.236550000000000000
        Width = 37.795300000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line27: TfrxLineView
        Left = 442.205010000000000000
        Top = 529.134200000000000000
        Width = 219.212740000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line28: TfrxLineView
        Left = 434.645950000000000000
        Top = 555.590910000000000000
        Width = 37.795300000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line29: TfrxLineView
        Left = 487.559370000000000000
        Top = 555.590910000000000000
        Width = 102.047310000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line30: TfrxLineView
        Left = 604.724800000000000000
        Top = 555.590910000000000000
        Width = 37.795300000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line31: TfrxLineView
        Left = 419.527830000000000000
        Top = 589.606680000000000000
        Width = 241.889920000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line32: TfrxLineView
        Left = 302.362400000000000000
        Top = 623.622450000000000000
        Width = 136.063080000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line33: TfrxLineView
        Left = 476.220780000000000000
        Top = 623.622450000000000000
        Width = 52.913420000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line34: TfrxLineView
        Left = 49.133890000000000000
        Top = 642.520100000000000000
        Width = 480.000310000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line35: TfrxLineView
        Left = 563.149970000000000000
        Top = 642.520100000000000000
        Width = 98.267780000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line36: TfrxLineView
        Left = 98.267780000000000000
        Top = 676.535870000000000000
        Width = 41.574830000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line37: TfrxLineView
        Left = 154.960730000000000000
        Top = 676.535870000000000000
        Width = 102.047310000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line38: TfrxLineView
        Left = 275.905690000000000000
        Top = 676.535870000000000000
        Width = 37.795300000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line39: TfrxLineView
        Left = 15.118120000000000000
        Top = 812.598950000000000000
        Width = 41.574830000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line40: TfrxLineView
        Left = 71.811070000000000000
        Top = 812.598950000000000000
        Width = 128.504020000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line41: TfrxLineView
        Left = 219.212740000000000000
        Top = 812.598950000000000000
        Width = 37.795300000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line42: TfrxLineView
        Left = 294.803340000000000000
        Top = 812.598950000000000000
        Width = 366.614410000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line43: TfrxLineView
        Left = 438.425480000000000000
        Top = 857.953310000000000000
        Width = 222.992270000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo2: TfrxMemoView
        Left = 30.236240000000000000
        Top = 117.165430000000000000
        Width = 627.401980000000000000
        Height = 18.897650000000000000
        ShowHint = False
        DataSet = PersonsfrxDBDS
        DataSetName = 'PersonsfrxDBDS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          
            '[Uppercase(<PersonsfrxDBDS."LAST_NAME">)] [Uppercase(<Personsfrx' +
            'DBDS."FIRST_NAME">)] [Uppercase(<PersonsfrxDBDS."SURNAME">)], [U' +
            'ppercase(<PersonsfrxDBDS."BIRTHDATE">)] '#1043'.'#1056'.')
        ParentFont = False
      end
      object Memo1: TfrxMemoView
        Left = 260.787570000000000000
        Top = 79.370130000000000000
        Width = 396.850650000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        HAlign = haCenter
        ParentFont = False
      end
      object Memo3: TfrxMemoView
        Left = 3.779530000000000000
        Top = 98.267780000000000000
        Width = 653.858690000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        HAlign = haCenter
        ParentFont = False
      end
      object Memo4: TfrxMemoView
        Left = 41.574830000000000000
        Top = 83.149660000000000000
        Width = 215.433210000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1042' '#1086#1088#1075#1072#1085' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1086#1085#1085#1086#1075#1086' '#1091#1095#1077#1090#1072)
        ParentFont = False
      end
      object Memo5: TfrxMemoView
        Left = 3.779530000000000000
        Top = 120.944960000000000000
        Width = 22.677180000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1086#1090)
        ParentFont = False
      end
      object Memo6: TfrxMemoView
        Left = 238.110390000000000000
        Top = 136.063080000000000000
        Width = 230.551330000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '('#1092#1072#1084#1080#1083#1080#1103', '#1080#1084#1103', '#1086#1090#1095#1077#1089#1090#1074#1086', '#1076#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103')')
        ParentFont = False
      end
      object Memo7: TfrxMemoView
        Left = 3.779530000000000000
        Top = 151.181200000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1055#1088#1080#1073#1099#1083'('#1072') '#1080#1079)
        ParentFont = False
      end
      object Memo8: TfrxMemoView
        Left = 185.196970000000000000
        Top = 166.299320000000000000
        Width = 389.291590000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          
            '('#1091#1082#1072#1079#1072#1090#1100' '#1090#1086#1095#1085#1099#1081' '#1072#1076#1088#1077#1089' '#1084#1077#1089#1090#1072' '#1078#1080#1090#1077#1083#1100#1089#1090#1074#1072' '#1087#1088#1080#1073#1099#1074#1096#1077#1075#1086'('#1077#1081') '#1075#1088#1072#1078#1076#1072#1085#1080#1085#1072 +
            '('#1082#1080'))')
        ParentFont = False
      end
      object Memo9: TfrxMemoView
        Left = 3.779530000000000000
        Top = 177.637910000000000000
        Width = 162.519790000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1047#1072#1082#1086#1085#1085#1099#1081' '#1087#1088#1077#1076#1089#1090#1072#1074#1080#1090#1077#1083#1100)
        ParentFont = False
      end
      object Memo10: TfrxMemoView
        Left = 306.141930000000000000
        Top = 196.535560000000000000
        Width = 230.551330000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '('#1091#1082#1072#1079#1072#1090#1100': '#1086#1090#1077#1094', '#1084#1072#1090#1100', '#1086#1087#1077#1082#1091#1085', '#1087#1086#1087#1077#1095#1080#1090#1077#1083#1100',')
        ParentFont = False
      end
      object Memo11: TfrxMemoView
        Left = 257.008040000000000000
        Top = 226.771800000000000000
        Width = 151.181200000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1060'.'#1048'.'#1054'., '#1087#1072#1089#1087#1086#1088#1090#1085#1099#1077' '#1076#1072#1085#1085#1099#1077')')
        ParentFont = False
      end
      object Memo12: TfrxMemoView
        Left = 7.559060000000000000
        Top = 245.669450000000000000
        Width = 362.834880000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1055#1088#1086#1096#1091' '#1079#1072#1088#1077#1075#1080#1089#1090#1088#1080#1088#1086#1074#1072#1090#1100' '#1087#1086' '#1084#1077#1089#1090#1091' '#1087#1088#1077#1073#1099#1074#1072#1085#1080#1103' '#1089'  "         "')
        ParentFont = False
      end
      object Memo13: TfrxMemoView
        Left = 7.559060000000000000
        Top = 264.567100000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1087#1086'  "        "')
        ParentFont = False
      end
      object Memo14: TfrxMemoView
        Left = 536.693260000000000000
        Top = 245.669450000000000000
        Width = 18.897650000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1075'.')
        ParentFont = False
      end
      object Memo15: TfrxMemoView
        Left = 249.448980000000000000
        Top = 264.567100000000000000
        Width = 18.897650000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1075'.')
        ParentFont = False
      end
      object Memo16: TfrxMemoView
        Left = 3.779530000000000000
        Top = 298.582870000000000000
        Width = 219.212740000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1046#1080#1083#1086#1077' '#1087#1086#1084#1077#1097#1077#1085#1080#1077' '#1087#1088#1077#1076#1086#1089#1090#1072#1074#1083#1077#1085#1086)
        ParentFont = False
      end
      object Memo17: TfrxMemoView
        Left = 3.779530000000000000
        Top = 328.819110000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1054#1089#1085#1086#1074#1072#1085#1080#1077)
        ParentFont = False
      end
      object Memo18: TfrxMemoView
        Left = 325.039580000000000000
        Top = 313.700990000000000000
        Width = 234.330860000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '('#1060'.'#1048'.'#1054'. '#1083#1080#1094#1072', '#1087#1088#1077#1076#1086#1089#1090#1072#1074#1080#1074#1096#1077#1075#1086' '#1087#1086#1084#1077#1097#1077#1085#1080#1077')')
        ParentFont = False
      end
      object Memo19: TfrxMemoView
        Left = 200.315090000000000000
        Top = 343.937230000000000000
        Width = 343.937230000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '('#1076#1086#1082#1091#1084#1077#1085#1090', '#1103#1074#1083#1103#1102#1097#1077#1081#1089#1103' '#1086#1089#1085#1086#1074#1072#1085#1080#1077#1084' '#1076#1083#1103' '#1074#1088#1077#1084#1077#1085#1085#1086#1075#1086' '#1087#1088#1086#1078#1080#1074#1072#1085#1080#1103')')
        ParentFont = False
      end
      object Memo20: TfrxMemoView
        Left = 3.779530000000000000
        Top = 385.512060000000000000
        Width = 332.598640000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1040#1076#1088#1077#1089' '#1084#1077#1089#1090#1072' '#1087#1088#1077#1073#1099#1074#1072#1085#1080#1103': '#1075#1086#1088#1086#1076', '#1087#1086#1089#1077#1083#1086#1082', '#1089#1077#1083#1086' '#1080' '#1090'.'#1076'.')
        ParentFont = False
      end
      object Memo21: TfrxMemoView
        Left = 3.779530000000000000
        Top = 404.409710000000000000
        Width = 18.897650000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1091#1083'.')
        ParentFont = False
      end
      object Memo22: TfrxMemoView
        Left = 351.496290000000000000
        Top = 404.409710000000000000
        Width = 30.236240000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1076#1086#1084)
        ParentFont = False
      end
      object Memo23: TfrxMemoView
        Left = 442.205010000000000000
        Top = 404.409710000000000000
        Width = 49.133890000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1082#1086#1088#1087#1091#1089)
        ParentFont = False
      end
      object Memo24: TfrxMemoView
        Left = 551.811380000000000000
        Top = 404.409710000000000000
        Width = 60.472480000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1082#1074#1072#1088#1090#1080#1088#1072)
        ParentFont = False
      end
      object Memo25: TfrxMemoView
        Left = 7.559060000000000000
        Top = 438.425480000000000000
        Width = 272.126160000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1044#1086#1082#1091#1084#1077#1085#1090', '#1091#1076#1086#1089#1090#1086#1074#1077#1088#1103#1102#1097#1080#1081' '#1083#1080#1095#1085#1086#1089#1090#1100': '#1074#1080#1076)
        ParentFont = False
      end
      object Memo26: TfrxMemoView
        Left = 438.425480000000000000
        Top = 438.425480000000000000
        Width = 37.795300000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1089#1077#1088#1080#1103)
        ParentFont = False
      end
      object Memo27: TfrxMemoView
        Left = 532.913730000000000000
        Top = 438.425480000000000000
        Width = 18.897650000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #8470)
        ParentFont = False
      end
      object Memo28: TfrxMemoView
        Left = 3.779530000000000000
        Top = 457.323130000000000000
        Width = 49.133890000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1074#1099#1076#1072#1085)
        ParentFont = False
      end
      object Memo29: TfrxMemoView
        Left = 532.913730000000000000
        Top = 457.323130000000000000
        Width = 30.236240000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1050#1086#1076)
        ParentFont = False
      end
      object Memo30: TfrxMemoView
        Left = 196.535560000000000000
        Top = 472.441250000000000000
        Width = 192.756030000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '('#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1088#1075#1072#1085#1072', '#1091#1095#1088#1077#1078#1076#1077#1085#1080#1103')')
        ParentFont = False
      end
      object Memo31: TfrxMemoView
        Left = 3.779530000000000000
        Top = 495.118430000000000000
        Width = 147.401670000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080'  "          "')
        ParentFont = False
      end
      object Memo32: TfrxMemoView
        Left = 313.700990000000000000
        Top = 495.118430000000000000
        Width = 18.897650000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1075'.')
        ParentFont = False
      end
      object Memo33: TfrxMemoView
        Left = 3.779530000000000000
        Top = 510.236550000000000000
        Width = 438.425480000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1055#1086#1076#1087#1080#1089#1100' '#1079#1072#1103#1074#1080#1090#1077#1083#1103', '#1079#1072#1082#1086#1085#1085#1086#1075#1086' '#1087#1088#1077#1076#1089#1090#1072#1074#1080#1090#1077#1083#1103' ('#1085#1077#1085#1091#1078#1085#1086#1077' '#1079#1072#1095#1077#1088#1082#1085#1091#1090#1100')')
        ParentFont = False
      end
      object Memo34: TfrxMemoView
        Left = 393.071120000000000000
        Top = 536.693260000000000000
        Width = 86.929190000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1044#1072#1090#1072'  "        "')
        ParentFont = False
      end
      object Memo35: TfrxMemoView
        Left = 3.779530000000000000
        Top = 555.590910000000000000
        Width = 532.913730000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          
            #1042#1089#1077#1083#1077#1085#1080#1077' '#1087#1088#1086#1080#1079#1074#1077#1076#1077#1085#1086' '#1074' '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1080' '#1089' '#1079#1072#1082#1086#1085#1086#1076#1072#1090#1077#1083#1100#1089#1090#1074#1086#1084' '#1056#1086#1089#1089#1080#1081#1089#1082 +
            #1086#1081' '#1060#1077#1076#1077#1088#1072#1094#1080#1080'.')
        ParentFont = False
      end
      object Memo36: TfrxMemoView
        Left = 3.779530000000000000
        Top = 570.709030000000000000
        Width = 336.378170000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1055#1086#1076#1087#1080#1089#1100' '#1083#1080#1094#1072', '#1087#1088#1077#1076#1086#1089#1090#1072#1074#1080#1074#1096#1077#1075#1086' '#1078#1080#1083#1086#1077' '#1087#1086#1084#1077#1097#1077#1085#1080#1077)
        ParentFont = False
      end
      object Memo37: TfrxMemoView
        Left = 3.779530000000000000
        Top = 604.724800000000000000
        Width = 298.582870000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1044#1086#1082#1091#1084#1077#1085#1090', '#1091#1076#1086#1089#1090#1086#1074#1077#1088#1103#1102#1097#1080#1081' '#1077#1075#1086' '#1083#1080#1095#1085#1086#1089#1090#1100': '#1074#1080#1076)
        ParentFont = False
      end
      object Memo38: TfrxMemoView
        Left = 438.425480000000000000
        Top = 604.724800000000000000
        Width = 37.795300000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1089#1077#1088#1080#1103)
        ParentFont = False
      end
      object Memo39: TfrxMemoView
        Left = 532.913730000000000000
        Top = 604.724800000000000000
        Width = 18.897650000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #8470)
        ParentFont = False
      end
      object Memo40: TfrxMemoView
        Left = 3.779530000000000000
        Top = 623.622450000000000000
        Width = 49.133890000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1074#1099#1076#1072#1085)
        ParentFont = False
      end
      object Memo41: TfrxMemoView
        Left = 532.913730000000000000
        Top = 623.622450000000000000
        Width = 30.236240000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1050#1086#1076)
        ParentFont = False
      end
      object Memo42: TfrxMemoView
        Left = 7.559060000000000000
        Top = 657.638220000000000000
        Width = 139.842610000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080'  "          "')
        ParentFont = False
      end
      object Memo43: TfrxMemoView
        Left = 313.700990000000000000
        Top = 657.638220000000000000
        Width = 18.897650000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1075'.')
        ParentFont = False
      end
      object Memo44: TfrxMemoView
        Left = 196.535560000000000000
        Top = 638.740570000000000000
        Width = 192.756030000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '('#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1088#1075#1072#1085#1072', '#1091#1095#1088#1077#1078#1076#1077#1085#1080#1103')')
        ParentFont = False
      end
      object Memo45: TfrxMemoView
        Left = 41.574830000000000000
        Top = 691.653990000000000000
        Width = 389.291590000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1055#1086#1076#1087#1080#1089#1100' '#1083#1080#1094#1072', '#1087#1088#1077#1076#1086#1089#1090#1072#1074#1080#1074#1096#1077#1075#1086' '#1078#1080#1083#1086#1077' '#1087#1086#1084#1077#1097#1077#1085#1080#1077', '#1079#1072#1074#1077#1088#1103#1102)
        ParentFont = False
      end
      object Memo46: TfrxMemoView
        Left = 49.133890000000000000
        Top = 725.669760000000000000
        Width = 215.433210000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '('#1087#1086#1076#1087#1080#1089#1100' '#1080' '#1060'.'#1048'.'#1054'. '#1076#1086#1083#1078#1085#1086#1089#1090#1085#1086#1075#1086' '#1083#1080#1094#1072')')
        ParentFont = False
      end
      object Memo47: TfrxMemoView
        Left = 359.055350000000000000
        Top = 725.669760000000000000
        Width = 86.929190000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1052'. '#1055'.')
        ParentFont = False
      end
      object Memo48: TfrxMemoView
        Left = 3.779530000000000000
        Top = 740.787880000000000000
        Width = 132.283550000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1055#1088#1080#1085#1103#1090#1086#1077' '#1088#1077#1096#1077#1085#1080#1077)
        ParentFont = False
      end
      object Memo49: TfrxMemoView
        Left = 302.362400000000000000
        Top = 812.598950000000000000
        Width = 362.834880000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          
            '('#1060'.'#1048'.'#1054'., '#1087#1086#1076#1087#1080#1089#1100' '#1076#1086#1083#1078#1085#1086#1089#1090#1085#1086#1075#1086' '#1083#1080#1094#1072' '#1086#1088#1075#1072#1085#1072' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1086#1085#1085#1086#1075#1086' '#1091#1095#1077#1090#1072 +
            ')')
        ParentFont = False
      end
      object Memo50: TfrxMemoView
        Left = 41.574830000000000000
        Top = 839.055660000000000000
        Width = 396.850650000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1042#1099#1076#1072#1085#1086' '#1089#1074#1080#1076#1077#1090#1077#1083#1100#1089#1090#1074#1086' '#1086' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080' '#1087#1086' '#1084#1077#1089#1090#1091' '#1087#1088#1077#1073#1099#1074#1072#1085#1080#1103' '#8470)
        ParentFont = False
      end
      object Memo51: TfrxMemoView
        Left = 642.520100000000000000
        Top = 536.693260000000000000
        Width = 18.897650000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1075'.')
        ParentFont = False
      end
      object Memo52: TfrxMemoView
        Left = 653.858690000000000000
        Top = 706.772110000000000000
        Width = 18.897650000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1075'.')
        ParentFont = False
      end
      object Memo53: TfrxMemoView
        Left = 257.008040000000000000
        Top = 793.701300000000000000
        Width = 18.897650000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1075'.')
        ParentFont = False
      end
      object Memo54: TfrxMemoView
        Left = 582.047620000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1060#1086#1088#1084#1072' '#8470' 1')
        ParentFont = False
      end
      object Memo55: TfrxMemoView
        Left = 94.488250000000000000
        Top = 41.574830000000000000
        Width = 506.457020000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          #1047#1040#1071#1042#1051#1045#1053#1048#1045' '#1054' '#1056#1045#1043#1048#1057#1058#1056#1040#1062#1048#1048' '#1055#1054' '#1052#1045#1057#1058#1059' '#1055#1056#1045#1041#1067#1042#1040#1053#1048#1071)
        ParentFont = False
      end
      object Line44: TfrxLineView
        Left = 49.133890000000000000
        Top = 472.441250000000000000
        Width = 480.000310000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line45: TfrxLineView
        Left = 566.929500000000000000
        Top = 472.441250000000000000
        Width = 94.488250000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line46: TfrxLineView
        Left = 3.779530000000000000
        Top = 725.669760000000000000
        Width = 294.803340000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line47: TfrxLineView
        Left = 438.425480000000000000
        Top = 725.669760000000000000
        Width = 41.574830000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line48: TfrxLineView
        Left = 616.063390000000000000
        Top = 725.669760000000000000
        Width = 37.795300000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line49: TfrxLineView
        Left = 498.897960000000000000
        Top = 725.669760000000000000
        Width = 102.047310000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line50: TfrxLineView
        Left = 3.779530000000000000
        Top = 778.583180000000000000
        Width = 657.638220000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo56: TfrxMemoView
        Left = 11.338590000000000000
        Top = 793.701300000000000000
        Width = 52.913420000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '"          "')
        ParentFont = False
      end
      object Memo57: TfrxMemoView
        Left = 434.645950000000000000
        Top = 706.772110000000000000
        Width = 52.913420000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '"          "')
        ParentFont = False
      end
      object Memo59: TfrxMemoView
        Left = 7.559060000000000000
        Top = 79.370130000000000000
        Width = 646.299630000000000000
        Height = 37.795300000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        LineSpacing = 1.500000000000000000
        Memo.UTF8W = (
          
            '                                                                ' +
            '[Uppercase(<FMS_BRANCH_NAME_DEFAULT>)]')
        ParentFont = False
      end
      object Memo60: TfrxMemoView
        Left = 102.047310000000000000
        Top = 147.401670000000000000
        Width = 559.370440000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[Uppercase(<PREV_RESIDE_ADR_FULL_NAME>)]')
        ParentFont = False
      end
      object Memo62: TfrxMemoView
        Top = 325.039580000000000000
        Width = 661.417750000000000000
        Height = 52.913420000000000000
        ShowHint = False
        DataSet = CurrOpIncomeRegGroundfrxDBDS
        DataSetName = 'CurrOpIncomeRegGroundfrxDBDS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        LineSpacing = 15.000000000000000000
        Memo.UTF8W = (
          
            '                          [Uppercase(<CurrOpIncomeRegGroundfrxDB' +
            'DS."DOC_FULL_NAME">)]')
        ParentFont = False
      end
      object Memo61: TfrxMemoView
        Left = 219.212740000000000000
        Top = 294.803340000000000000
        Width = 442.205010000000000000
        Height = 22.677180000000000000
        ShowHint = False
        DataSet = CurrOpIncomeRegOwnerPersfrxDBDS
        DataSetName = 'CurrOpIncomeRegOwnerPersfrxDBDS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[Uppercase(<CurrOpIncomeRegOwnerPersfrxDBDS."PERSON_NAME">)]')
        ParentFont = False
      end
      object Memo63: TfrxMemoView
        Left = 336.378170000000000000
        Top = 381.732530000000000000
        Width = 325.039580000000000000
        Height = 22.677180000000000000
        ShowHint = False
        DataSet = CurrOpLocationRegAdrfrxDBDS
        DataSetName = 'CurrOpLocationRegAdrfrxDBDS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          
            '[Uppercase(<CurrOpLocationRegAdrfrxDBDS."STATE_NAME">)] [Upperca' +
            'se(<CurrOpLocationRegAdrfrxDBDS."SETTLEM_NAME">)]')
        ParentFont = False
      end
      object Memo64: TfrxMemoView
        Left = 30.236240000000000000
        Top = 400.630180000000000000
        Width = 313.700990000000000000
        Height = 22.677180000000000000
        ShowHint = False
        DataSet = CurrOpLocationRegAdrfrxDBDS
        DataSetName = 'CurrOpLocationRegAdrfrxDBDS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[Uppercase(<CurrOpLocationRegAdrfrxDBDS."STREET_NAME">)]')
        ParentFont = False
      end
      object Memo65: TfrxMemoView
        Left = 381.732530000000000000
        Top = 400.630180000000000000
        Width = 60.472480000000000000
        Height = 22.677180000000000000
        ShowHint = False
        DataSet = CurrOpLocationRegAdrfrxDBDS
        DataSetName = 'CurrOpLocationRegAdrfrxDBDS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[Uppercase(<CurrOpLocationRegAdrfrxDBDS."HOUSE_NUM">)]')
        ParentFont = False
      end
      object Memo66: TfrxMemoView
        Left = 491.338900000000000000
        Top = 400.630180000000000000
        Width = 56.692950000000000000
        Height = 22.677180000000000000
        ShowHint = False
        DataSet = CurrOpLocationRegAdrfrxDBDS
        DataSetName = 'CurrOpLocationRegAdrfrxDBDS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[Uppercase(<CurrOpLocationRegAdrfrxDBDS."CORPUS">)]')
        ParentFont = False
      end
      object Memo67: TfrxMemoView
        Left = 612.283860000000000000
        Top = 400.630180000000000000
        Width = 49.133890000000000000
        Height = 22.677180000000000000
        ShowHint = False
        DataSet = CurrOpLocationRegAdrfrxDBDS
        DataSetName = 'CurrOpLocationRegAdrfrxDBDS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[Uppercase(<CurrOpLocationRegAdrfrxDBDS."APARTMENT_NUM">)]')
        ParentFont = False
      end
      object Memo68: TfrxMemoView
        Left = 275.905690000000000000
        Top = 434.645950000000000000
        Width = 158.740260000000000000
        Height = 22.677180000000000000
        ShowHint = False
        DataSet = CurrOpIncomeRegIdentDocfrxDBDS
        DataSetName = 'CurrOpIncomeRegIdentDocfrxDBDS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[Uppercase(<CurrOpIncomeRegIdentDocfrxDBDS."DOC_TYPE_NAME">)]')
        ParentFont = False
      end
      object Memo69: TfrxMemoView
        Left = 472.441250000000000000
        Top = 434.645950000000000000
        Width = 60.472480000000000000
        Height = 22.677180000000000000
        ShowHint = False
        DataSet = CurrOpIncomeRegIdentDocfrxDBDS
        DataSetName = 'CurrOpIncomeRegIdentDocfrxDBDS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[Uppercase(<CurrOpIncomeRegIdentDocfrxDBDS."DOC_SERIE">)]')
        ParentFont = False
      end
      object Memo70: TfrxMemoView
        Left = 551.811380000000000000
        Top = 434.645950000000000000
        Width = 109.606370000000000000
        Height = 22.677180000000000000
        ShowHint = False
        DataSet = CurrOpIncomeRegIdentDocfrxDBDS
        DataSetName = 'CurrOpIncomeRegIdentDocfrxDBDS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[Uppercase(<CurrOpIncomeRegIdentDocfrxDBDS."DOC_NUM">)]')
        ParentFont = False
      end
      object Memo71: TfrxMemoView
        Left = 49.133890000000000000
        Top = 453.543600000000000000
        Width = 480.000310000000000000
        Height = 22.677180000000000000
        ShowHint = False
        DataSet = CurrOpIncomeRegIdentDocfrxDBDS
        DataSetName = 'CurrOpIncomeRegIdentDocfrxDBDS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[Uppercase(<CurrOpIncomeRegIdentDocfrxDBDS."DOC_BRANCH_NAME">)]')
        ParentFont = False
      end
      object Memo72: TfrxMemoView
        Left = 94.488250000000000000
        Top = 491.338900000000000000
        Width = 41.574830000000000000
        Height = 22.677180000000000000
        ShowHint = False
        DataSet = CurrOpIncomeRegIdentDocfrxDBDS
        DataSetName = 'CurrOpIncomeRegIdentDocfrxDBDS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[DayOf(<CurrOpIncomeRegIdentDocfrxDBDS."DOC_CREATE_DATE">)]')
        ParentFont = False
      end
      object Memo73: TfrxMemoView
        Left = 294.803340000000000000
        Top = 604.724800000000000000
        Width = 143.622140000000000000
        Height = 22.677180000000000000
        ShowHint = False
        DataSet = CurrOpIncomeOwnerIdentDocfrxDBDS
        DataSetName = 'CurrOpIncomeOwnerIdentDocfrxDBDS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[Uppercase(<CurrOpIncomeOwnerIdentDocfrxDBDS."DOC_TYPE_NAME">)]')
        ParentFont = False
      end
      object Memo74: TfrxMemoView
        Left = 154.960730000000000000
        Top = 491.338900000000000000
        Width = 102.047310000000000000
        Height = 22.677180000000000000
        ShowHint = False
        DataSet = CurrOpIncomeRegIdentDocfrxDBDS
        DataSetName = 'CurrOpIncomeRegIdentDocfrxDBDS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[MonthOf(<CurrOpIncomeRegIdentDocfrxDBDS."DOC_CREATE_DATE">)]')
        ParentFont = False
      end
      object Memo75: TfrxMemoView
        Left = 268.346630000000000000
        Top = 491.338900000000000000
        Width = 41.574830000000000000
        Height = 22.677180000000000000
        ShowHint = False
        DataSet = CurrOpIncomeRegIdentDocfrxDBDS
        DataSetName = 'CurrOpIncomeRegIdentDocfrxDBDS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[YearOf(<CurrOpIncomeRegIdentDocfrxDBDS."DOC_CREATE_DATE">)]')
        ParentFont = False
      end
      object Memo76: TfrxMemoView
        Left = 476.220780000000000000
        Top = 604.724800000000000000
        Width = 52.913420000000000000
        Height = 22.677180000000000000
        ShowHint = False
        DataSet = CurrOpIncomeOwnerIdentDocfrxDBDS
        DataSetName = 'CurrOpIncomeOwnerIdentDocfrxDBDS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[Uppercase(<CurrOpIncomeOwnerIdentDocfrxDBDS."DOC_SERIE">)]')
        ParentFont = False
      end
      object Line51: TfrxLineView
        Left = 551.811380000000000000
        Top = 623.622450000000000000
        Width = 109.606370000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo77: TfrxMemoView
        Left = 551.811380000000000000
        Top = 604.724800000000000000
        Width = 109.606370000000000000
        Height = 22.677180000000000000
        ShowHint = False
        DataSet = CurrOpIncomeOwnerIdentDocfrxDBDS
        DataSetName = 'CurrOpIncomeOwnerIdentDocfrxDBDS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[Uppercase(<CurrOpIncomeOwnerIdentDocfrxDBDS."DOC_NUM">)]')
        ParentFont = False
      end
      object Memo78: TfrxMemoView
        Left = 49.133890000000000000
        Top = 623.622450000000000000
        Width = 480.000310000000000000
        Height = 22.677180000000000000
        ShowHint = False
        DataSet = CurrOpIncomeOwnerIdentDocfrxDBDS
        DataSetName = 'CurrOpIncomeOwnerIdentDocfrxDBDS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          
            '[Uppercase(<CurrOpIncomeOwnerIdentDocfrxDBDS."DOC_BRANCH_NAME">)' +
            ']')
        ParentFont = False
      end
      object Memo79: TfrxMemoView
        Left = 102.047310000000000000
        Top = 657.638220000000000000
        Width = 37.795300000000000000
        Height = 22.677180000000000000
        ShowHint = False
        DataSet = CurrOpIncomeOwnerIdentDocfrxDBDS
        DataSetName = 'CurrOpIncomeOwnerIdentDocfrxDBDS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[DayOf(<CurrOpIncomeOwnerIdentDocfrxDBDS."DOC_CREATE_DATE">)]')
        ParentFont = False
      end
      object Memo80: TfrxMemoView
        Left = 154.960730000000000000
        Top = 657.638220000000000000
        Width = 102.047310000000000000
        Height = 22.677180000000000000
        ShowHint = False
        DataSet = CurrOpIncomeOwnerIdentDocfrxDBDS
        DataSetName = 'CurrOpIncomeOwnerIdentDocfrxDBDS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[MonthOf(<CurrOpIncomeOwnerIdentDocfrxDBDS."DOC_CREATE_DATE">)]')
        ParentFont = False
      end
      object Memo81: TfrxMemoView
        Left = 268.346630000000000000
        Top = 657.638220000000000000
        Width = 41.574830000000000000
        Height = 22.677180000000000000
        ShowHint = False
        DataSet = CurrOpIncomeOwnerIdentDocfrxDBDS
        DataSetName = 'CurrOpIncomeOwnerIdentDocfrxDBDS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[YearOf(<CurrOpIncomeOwnerIdentDocfrxDBDS."DOC_CREATE_DATE">)]')
        ParentFont = False
      end
      object Memo58: TfrxMemoView
        Left = 563.149970000000000000
        Top = 453.543600000000000000
        Width = 98.267780000000000000
        Height = 22.677180000000000000
        ShowHint = False
        DataSet = CurrOpIncomeRegIdentDocfrxDBDS
        DataSetName = 'CurrOpIncomeRegIdentDocfrxDBDS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[Uppercase(<CurrOpIncomeRegIdentDocfrxDBDS."DOC_BRANCHE_CODE">)]')
        ParentFont = False
      end
      object Memo82: TfrxMemoView
        Left = 559.370440000000000000
        Top = 623.622450000000000000
        Width = 98.267780000000000000
        Height = 22.677180000000000000
        ShowHint = False
        DataSet = CurrOpIncomeRegIdentDocfrxDBDS
        DataSetName = 'CurrOpIncomeRegIdentDocfrxDBDS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          
            '[Uppercase(<CurrOpIncomeOwnerIdentDocfrxDBDS."DOC_BRANCHE_CODE">' +
            ')]')
        ParentFont = False
      end
    end
  end
  object PersonsfrxDBDS: TfrxDBDataset
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    UserName = 'PersonsfrxDBDS'
    CloseDataSource = False
    DataSet = DataConnection.PersonsADODS
    BCDToCurrency = False
    Left = 384
    Top = 136
  end
  object RFResidingRegDatafrxRepRFL1: TfrxReport
    Version = '4.12'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Maximized = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41054.501170208300000000
    ReportOptions.LastChange = 41128.067076655090000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnPreview = RFResidingRegDatafrxRepRFL1Preview
    OnPrintReport = RFResidingRegDatafrxRepRFL1PrintReport
    Left = 72
    Top = 192
    Datasets = <
      item
        DataSet = CurrOperationfrxDBDS
        DataSetName = 'CurrOperationfrxDBDS'
      end
      item
        DataSet = PersonsfrxDBDS
        DataSetName = 'PersonsfrxDBDS'
      end
      item
        DataSet = RFResidingRegDatafrxRepRFL1.OwnerPersonADOQ
        DataSetName = 'OwnerPersonADOQ'
      end
      item
        DataSet = RFResidingRegDatafrxRepRFL1.RegIdentDocADOQ
        DataSetName = 'RegIdentDocADOQ'
      end
      item
        DataSet = RFResidingRegDatafrxRepRFL1.ResidingPlaceAdrADOQuery
        DataSetName = 'ResidingPlaceAdrADOQuery'
      end
      item
        DataSet = RFResidingRegDatafrxRepRFL1.PrevResidingADOQuery
        DataSetName = 'PrevResidingADOQuery'
      end
      item
        DataSet = RFResidingRegDatafrxRepRFL1.PersonViewDetailADOT
        DataSetName = 'PersonViewDetailADOT'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
      object OwnerPersonADOQ: TfrxADOQuery
        UserName = 'OwnerPersonADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        Master = CurrOperationfrxDBDS
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select * from OP_PERSONAL_DATA where'
          
            'ELINK_CODE=1 AND ACT_REG_ID=:OP_ID                              ' +
            '                                          ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 60
        pTop = 68
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
      object RegIdentDocADOQ: TfrxADOQuery
        UserName = 'RegIdentDocADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        Master = CurrOperationfrxDBDS
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select * from OP_DOC_DATA where'
          
            'ELINK_CODE=1 AND ACT_REG_ID=:OP_ID                              ' +
            '                                          ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 280
        pTop = 124
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
      object ResidingPlaceAdrADOQuery: TfrxADOQuery
        UserName = 'ResidingPlaceAdrADOQuery'
        CloseDataSource = True
        BCDToCurrency = False
        Master = CurrOperationfrxDBDS
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select * from OP_ADR_DATA where'
          
            'ELINK_CODE=129 AND ACT_REG_ID=:OP_ID                            ' +
            '                                            ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 280
        pTop = 12
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
      object PrevResidingADOQuery: TfrxADOQuery
        UserName = 'PrevResidingADOQuery'
        CloseDataSource = True
        BCDToCurrency = False
        Master = CurrOperationfrxDBDS
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select * from OP_ADR_DATA where'
          
            'ELINK_CODE=130 AND ACT_REG_ID=:OP_ID                            ' +
            '                                            ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 280
        pTop = 68
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
      object PersonViewDetailADOT: TfrxADOQuery
        UserName = 'PersonViewDetailADOT'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'PERSON_ID'
            DataType = ftInteger
            Expression = '<PersonsfrxDBDS."PERSON_ID">'
          end>
        SQL.Strings = (
          'SELECT * FROM PERSON_VIEW_DETAIL '
          'WHERE PERSON_ID=:PERSON_ID                          ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 60
        pTop = 12
        Parameters = <
          item
            Name = 'PERSON_ID'
            DataType = ftInteger
            Expression = '<PersonsfrxDBDS."PERSON_ID">'
          end>
      end
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 20.000000000000000000
      RightMargin = 15.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Rich1: TfrxRichView
        Width = 661.417750000000000000
        Height = 1046.929810000000000000
        ShowHint = False
        GapX = 2.000000000000000000
        GapY = 1.000000000000000000
        RichEdit = {
          7B5C727466315C616E73695C616E7369637067313235315C64656666305C6465
          666C616E67313034395C6465666C616E676665313034397B5C666F6E7474626C
          7B5C66305C66726F6D616E5C66707271325C66636861727365743230347B5C2A
          5C666E616D652054696D6573204E657720526F6D616E3B7D54696D6573204E65
          7720526F6D616E204359523B7D7B5C66315C66726F6D616E5C66707271325C66
          63686172736574302054696D6573204E657720526F6D616E3B7D7D0D0A7B5C2A
          5C67656E657261746F72204D7366746564697420352E34312E32312E32353039
          3B7D5C766965776B696E64345C7563315C706172645C6C69373337315C66305C
          667331385C2763665C2766305C2765385C2765625C2765655C2765365C276535
          5C2765645C2765385C276535205C27623920355C6C696E655C276561205C2763
          665C2766305C2765385C2765615C2765305C2765375C276633205C2764345C27
          63645C276431205C2764305C2765655C2766315C2766315C2765385C27653820
          5C6C696E655C2765655C2766322031372E30392E323030375C6C616E67313033
          335C663120205C6C616E67313034395C66305C2762395C2763635C2763632D33
          2D30392F353336405C7061720D0A5C706172645C6C69373337315C736236305C
          6673313620285C276532205C2766305C2765355C2765342E205C2763665C2766
          305C2765385C2765615C2765305C2765375C276530205C2764345C2763645C27
          6431205C2764305C2764345C6C696E655C2765655C2766322033312E30332E32
          303039205C276239205C2763635C2763632D372D362F31343940295C7061720D
          0A5C706172645C6C69373337315C736236305C736136305C71725C625C667332
          325C2764345C2765655C2766305C2765635C276530205C2764305C2764345C27
          6362315C7061720D0A5C74726F77645C74726761706832385C7472726832355C
          7472706164646C32385C7472706164647232385C747270616464666C335C7472
          706164646672330D0A5C636C62726472625C627264727731305C627264727320
          5C63656C6C78343832305C636C766D67665C63656C6C78353130345C63656C6C
          78373034345C636C62726472625C627264727731305C6272647273205C63656C
          6C78393932345C706172645C696E74626C5C71635C62305C63656C6C5C706172
          645C696E74626C5C63656C6C5C276332205C2765645C2765305C2765625C2765
          655C2765335C2765655C2765325C2766625C276539205C2765655C2766305C27
          65335C2765305C2765645C63656C6C5C706172645C696E74626C5C71635C6365
          6C6C5C726F775C74726F77645C74726761706832385C7472726832335C747270
          6164646C32385C7472706164647232385C747270616464666C335C7472706164
          646672330D0A5C63656C6C78343832305C636C766D72675C63656C6C78353130
          345C63656C6C78373034345C63656C6C78393932345C706172645C696E74626C
          5C71635C6673313620285C2765665C2765655C2765625C2765645C2765655C27
          6535205C2765645C2765305C2765385C2765635C2765355C2765645C2765655C
          2765325C2765305C2765645C2765385C276535205C2765655C2766305C276533
          5C2765305C2765645C2765302C205C2765655C2766315C2766335C2766395C27
          65355C2766315C2766325C2765325C2765385C2765325C2766385C2765355C27
          65335C276565205C63656C6C5C706172645C696E74626C5C63656C6C5C706172
          645C696E74626C5C71635C63656C6C20285C2765645C2765305C2765385C2765
          635C2765355C2765645C2765655C2765325C2765305C2765645C2765385C2765
          35205C2765645C2765305C2765625C2765655C2765335C2765655C2765325C27
          65655C2765335C276565205C2765655C2766305C2765335C2765305C2765645C
          276530295C63656C6C5C726F775C74726F77645C74726761706832385C747272
          6832335C7472706164646C32385C7472706164647232385C747270616464666C
          335C7472706164646672330D0A5C636C62726472625C627264727731305C6272
          647273205C63656C6C78343832305C636C766D72675C63656C6C78353130345C
          63656C6C78393932345C706172645C696E74626C5C71635C667332325C63656C
          6C5C706172645C696E74626C5C63656C6C5C706172645C696E74626C5C71635C
          63656C6C5C726F775C74726F77645C74726761706832385C7472726832335C74
          72706164646C32385C7472706164647232385C747270616464666C335C747270
          6164646672330D0A5C63656C6C78343832305C636C766D72675C63656C6C7835
          3130345C636C62726472745C627264727731305C62726472735C636C62726472
          625C627264727731305C6272647273205C63656C6C78393932345C706172645C
          696E74626C5C71635C667331365C2766305C2765355C2765335C2765385C2766
          315C2766325C2766305C2765305C2766365C2765385C276665205C2766345C27
          65385C2765375C2765385C2766375C2765355C2766315C2765615C2765655C27
          65335C276565205C2765625C2765385C2766365C276530205C2765665C276565
          205C2765635C2765355C2766315C2766325C276633205C2765365C2765385C27
          66325C2765355C2765625C2766635C2766315C2766325C2765325C276530295C
          63656C6C5C706172645C696E74626C5C667331385C63656C6C5C706172645C69
          6E74626C5C71635C667332325C63656C6C5C726F775C74726F77645C74726761
          706832385C7472706164646C32385C7472706164647232385C74727061646466
          6C335C7472706164646672330D0A5C63656C6C78343832305C636C766D72675C
          63656C6C78353130345C63656C6C78393932345C706172645C696E74626C5C71
          635C63656C6C5C706172645C696E74626C5C63656C6C5C706172645C696E7462
          6C5C71635C6673313620285C2765665C2765655C2766375C2766325C2765655C
          2765325C2766625C276539205C2765385C2765645C2765345C2765355C276561
          5C2766312C205C2765305C2765345C2766305C2765355C276631295C63656C6C
          5C726F775C74726F77645C74726761706832385C7472706164646C32385C7472
          706164647232385C747270616464666C335C7472706164646672330D0A5C636C
          76657274616C625C636C62726472625C627264727731305C6272647273205C63
          656C6C78343832305C63656C6C78353130345C63656C6C78393932345C706172
          645C696E74626C5C71635C667332325C7061720D0A5C7061720D0A5C66733138
          5C7061720D0A5C667332325C7061720D0A5C63656C6C5C706172645C696E7462
          6C5C63656C6C5C63656C6C5C726F775C74726F77645C74726761706832385C74
          72726832335C7472706164646C32385C7472706164647232385C747270616464
          666C335C7472706164646672330D0A5C63656C6C78343832305C63656C6C7835
          3130345C63656C6C78393932345C706172645C696E74626C5C71635C66733136
          20285C2765305C2765345C2766305C2765355C2766312C205C2766325C276535
          5C2765625C2765355C2766345C2765655C276564295C63656C6C5C706172645C
          696E74626C5C63656C6C5C63656C6C5C726F775C706172645C73623132305C73
          613132305C71635C625C667332345C2764315C2763325C2763355C2763345C27
          63355C2763645C2763385C276466205C276365205C2764305C2763355C276333
          5C2763385C2764315C2764325C2764305C2763305C2764365C2763385C276338
          205C2763335C2764305C2763305C2763365C2763345C2763305C2763645C2763
          385C2763645C276330205C2764305C2763655C2764315C2764315C2763385C27
          63395C2764315C2763615C2763655C276339205C2764345C2763355C2763345C
          2763355C2764305C2763305C2764365C2763385C2763385C6C696E655C276366
          5C276365205C2763635C2763355C2764315C2764325C276433205C2763365C27
          63385C2764325C2763355C2763625C2764635C2764315C2764325C2763325C27
          63305C7061720D0A5C706172645C71635C6673323220312E5C7E5C2764315C27
          65325C2765355C2765345C2765355C2765645C2765385C276666205C27656520
          5C2765625C2765385C2766365C2765352C205C2765665C2765655C2766315C27
          66325C2765305C2765325C2765625C2765355C2765645C2765645C2765655C27
          6563205C2765645C276530205C2766305C2765355C2765335C2765385C276631
          5C2766325C2766305C2765305C2766365C2765385C2765655C2765645C276564
          5C2766625C276539205C2766335C2766375C2765355C276632205C2765665C27
          6565205C2765635C2765355C2766315C2766325C276633205C2765365C276538
          5C2766325C2765355C2765625C2766635C2766315C2766325C2765325C276530
          5C7061720D0A5C706172645C623020312E312E5C7E5C2764345C2765305C2765
          635C2765385C2765625C2765385C27666620205C7061720D0A5C706172645C62
          726472745C62726472735C627264727731305C627273703230205C6C69313430
          305C6673325C7061720D0A5C706172645C6673323220312E322E5C7E5C276338
          5C2765635C27666620205C7061720D0A5C706172645C62726472745C62726472
          735C627264727731305C627273703230205C6C693936345C6673325C7061720D
          0A5C706172645C6673323220312E332E5C7E5C2763655C2766325C2766375C27
          65355C2766315C2766325C2765325C27656520285C2765665C2766305C276538
          205C2765645C2765305C2765625C2765385C2766375C2765385C276538292020
          5C7061720D0A5C706172645C62726472745C62726472735C627264727731305C
          627273703230205C6C69323739355C6673325C7061720D0A5C74726F77645C74
          726761706832385C74726C6566742D32385C7472726832335C74726272647274
          5C62726472735C627264727731305C627273703230205C7472706164646C3238
          5C7472706164647232385C747270616464666C335C7472706164646672330D0A
          5C636C76657274616C625C63656C6C783937395C636C76657274616C625C636C
          627264726C5C627264727731305C62726472735C636C62726472745C62726472
          7731305C62726472735C636C62726472725C627264727731305C627264727320
          5C63656C6C78313238345C636C76657274616C625C63656C6C78313938375C63
          6C76657274616C625C636C627264726C5C627264727731305C62726472735C63
          6C62726472745C627264727731305C62726472735C636C62726472725C627264
          727731305C6272647273205C63656C6C78323239325C636C76657274616C625C
          63656C6C78333132315C636C76657274616C625C63656C6C78353339315C7061
          72645C696E74626C5C6673323220312E342E5C7E5C2763665C2765655C276562
          3A5C63656C6C5C706172645C696E74626C5C71635C63656C6C5C706172645C69
          6E74626C5C66693130365C2765635C2766335C2765362E5C63656C6C5C706172
          645C696E74626C5C71635C63656C6C5C706172645C696E74626C5C666939325C
          2765365C2765355C2765642E5C63656C6C5C706172645C696E74626C5C667331
          3620285C2765645C2766335C2765365C2765645C2765655C276535205C276565
          5C2766325C2765635C2765355C2766325C2765385C2766325C276663205C2765
          375C2765645C2765305C2765615C2765655C276563205C6C64626C71756F7465
          20565C7264626C71756F746520295C63656C6C5C726F775C74726F77645C7472
          6761706832385C74726C6566742D32385C7472706164646C32385C7472706164
          647232385C747270616464666C335C7472706164646672330D0A5C63656C6C78
          3937395C636C627264726C5C627264727731305C62726472735C636C62726472
          725C627264727731305C62726472735C636C62726472625C627264727731305C
          6272647273205C63656C6C78313238345C63656C6C78313938375C636C627264
          726C5C627264727731305C62726472735C636C62726472725C62726472773130
          5C62726472735C636C62726472625C627264727731305C6272647273205C6365
          6C6C78323239325C63656C6C78353339315C706172645C696E74626C5C667334
          5C63656C6C5C63656C6C5C63656C6C5C63656C6C5C63656C6C5C726F775C7061
          72645C6673325C7061720D0A5C6673323220312E352E205C2763345C2765305C
          2766325C276530205C2766305C2765655C2765365C2765345C2765355C276564
          5C2765385C27666620205C7061720D0A5C706172645C62726472745C62726472
          735C627264727731305C627273703230205C6C69313932385C7269343936315C
          71635C6673313820285C2766375C2765385C2766315C2765625C2765652C205C
          2765635C2765355C2766315C2766665C2766362C205C2765335C2765655C2765
          34295C7061720D0A5C706172645C6673323220312E362E5C7E5C2763635C2765
          355C2766315C2766325C276565205C2766305C2765655C2765365C2765345C27
          65355C2765645C2765385C27666620205C7061720D0A5C706172645C62726472
          745C62726472735C627264727731305C627273703230205C6C69323131355C71
          635C6673313620285C2766335C2765615C2765305C2765375C2766625C276532
          5C2765305C2765355C2766325C2766315C276666205C276532205C2766325C27
          65655C2766375C2765645C2765655C276563205C2766315C2765655C2765655C
          2766325C2765325C2765355C2766325C2766315C2766325C2765325C2765385C
          276538205C276631205C2765375C2765305C2765665C2765385C2766315C2766
          635C276665205C276532205C2765345C2765655C2765615C2766335C2765635C
          2765355C2765645C2766325C2765352C205C2766335C2765345C2765655C2766
          315C2766325C2765655C2765325C2765355C2766305C2766665C2766655C2766
          395C2765355C276563205C2765625C2765385C2766375C2765645C2765655C27
          66315C2766325C276663295C7061720D0A5C706172645C6673323220312E372E
          5C7E5C2764315C2765325C2765355C2765345C2765355C2765645C2765385C27
          6666205C276565205C2765345C2765655C2765615C2766335C2765635C276535
          5C2765645C2766325C2765352C205C2766335C2765345C2765655C2766315C27
          66325C2765655C2765325C2765355C2766305C2766665C2766655C2766395C27
          65355C276563205C2765625C2765385C2766375C2765645C2765655C2766315C
          2766325C2766635C7061720D0A5C706172645C6C693536375C72693138343220
          312E372E312E5C7E5C2763325C2765385C276534205C2765345C2765655C2765
          615C2766335C2765635C2765355C2765645C2766325C27653020205C7061720D
          0A5C706172645C62726472745C62726472735C627264727731305C6272737032
          30205C6C69323731365C7269313834325C6673325C7061720D0A5C74726F7764
          5C74726761706832385C74726C6566743533395C7472726832335C7472627264
          72745C62726472735C627264727731305C627273703230205C7472706164646C
          32385C7472706164647232385C747270616464666C335C747270616464667233
          0D0A5C636C76657274616C625C63656C6C78313933305C636C76657274616C62
          5C636C62726472625C627264727731305C6272647273205C63656C6C78333936
          395C636C76657274616C625C63656C6C78353338365C636C76657274616C625C
          636C62726472625C627264727731305C6272647273205C63656C6C7838303830
          5C706172645C696E74626C5C6673323220312E372E322E5C7E5C2764315C2765
          355C2766305C2765385C2766665C63656C6C5C706172645C696E74626C5C7163
          5C63656C6C20312E372E332E5C7E5C2763645C2765655C2765635C2765355C27
          66305C63656C6C5C63656C6C5C726F775C706172645C6C6935363720312E372E
          342E5C7E5C2763645C2765305C2765385C2765635C2765355C2765645C276565
          5C2765325C2765305C2765645C2765385C276535205C2765655C2766305C2765
          335C2765305C2765645C276530205C276538205C2765615C2765655C27653420
          5C2765665C2765655C2765345C2766305C2765305C2765375C2765345C276535
          5C2765625C2765355C2765645C2765385C2766662C205C2765325C2766625C27
          65345C2765305C2765325C2766385C2765355C2765335C276565205C2765345C
          2765655C2765615C2766335C2765635C2765355C2765645C27663220205C7061
          720D0A5C706172645C62726472745C62726472735C627264727731305C627273
          703230205C6C69373433395C726932385C6673325C7061720D0A5C74726F7764
          5C74726761706832385C74726C6566743533395C7472726832335C7472627264
          72745C62726472735C627264727731305C627273703230205C7472706164646C
          32385C7472706164647232385C747270616464666C335C747270616464667233
          0D0A5C636C76657274616C625C636C62726472625C627264727731305C627264
          7273205C63656C6C78363036385C636C76657274616C625C63656C6C78383035
          325C636C76657274616C625C636C62726472625C627264727731305C62726472
          73205C63656C6C78393932335C706172645C696E74626C5C667332325C63656C
          6C5C706172645C696E74626C5C6C692D32385C716320312E372E352E5C7E5C27
          63345C2765305C2766325C276530205C2765325C2766625C2765345C2765305C
          2766375C2765385C63656C6C5C706172645C696E74626C5C71635C63656C6C5C
          726F775C706172645C73623132305C71635C6220322E5C7E5C2764315C276532
          5C2765355C2765345C2765355C2765645C2765385C276666205C276565205C27
          65665C2765655C2766315C2766325C2765305C2765645C2765655C2765325C27
          65615C276535205C2765645C276530205C2766305C2765355C2765335C276538
          5C2766315C2766325C2766305C2765305C2766365C2765385C2765655C276564
          5C2765645C2766625C276539205C2766335C2766375C2765355C276632205C27
          65665C276565205C2765635C2765355C2766315C2766325C276633205C276536
          5C2765385C2766325C2765355C2765625C2766635C2766315C2766325C276532
          5C2765305C7061720D0A5C706172645C623020322E312E5C7E5C2763305C2765
          345C2766305C2765355C276631205C2765635C2765355C2766315C2766325C27
          6530205C2765365C2765385C2766325C2765355C2765625C2766635C2766315C
          2766325C2765325C2765303A5C7061720D0A5C706172645C6C693432365C2765
          3029205C2766305C2765355C2766315C2765665C2766335C2765315C2765625C
          2765385C2765615C27653020285C2765615C2766305C2765305C2765392C205C
          2765655C2765315C2765625C2765305C2766315C2766325C2766632C205C2765
          655C2765615C2766305C2766335C2765332920205C7061720D0A5C706172645C
          62726472745C62726472735C627264727731305C627273703230205C6C693339
          35385C6673325C7061720D0A5C706172645C6C693432365C667332325C276531
          29205C2766305C2765305C2765395C2765655C27656420205C7061720D0A5C70
          6172645C62726472745C62726472735C627264727731305C627273703230205C
          6C69313333385C726932385C6673325C7061720D0A5C706172645C6C69343236
          5C667332325C27653229205C2765335C2765655C2766305C2765655C27653420
          205C7061720D0A5C706172645C62726472745C62726472735C62726472773130
          205C6C69313332375C6673325C7061720D0A5C706172645C6C693432365C6673
          32325C27653329205C2765645C2765305C2766315C2765355C2765625C276535
          5C2765645C2765645C2766625C276539205C2765665C2766335C2765645C2765
          615C27663220205C7061720D0A5C706172645C62726472745C62726472735C62
          7264727731305C627273703230205C6C69323439355C726932385C71635C6673
          313620285C2766315C2765355C2765625C2765652C205C2765665C2765655C27
          66315C2765355C2765625C2765655C276561205C276538205C2766322E5C2765
          662E295C7061720D0A5C706172645C6C693432365C667332325C27653429205C
          2765665C2766305C2765655C2766315C2765665C2765355C2765615C2766322C
          205C2766335C2765625C2765385C2766365C2765302C205C2765665C2765355C
          2766305C2765355C2766335C2765625C2765655C27656120205C7061720D0A5C
          706172645C62726472745C62726472735C627264727731305C62727370323020
          5C6C69333236365C726932385C6673325C7061720D0A5C74726F77645C747267
          61706832385C74726C6566743337385C7472726832335C747262726472745C62
          726472735C627264727731305C627273703230205C7472706164646C32385C74
          72706164647232385C747270616464666C335C7472706164646672330D0A5C63
          6C76657274616C625C63656C6C78313230335C636C76657274616C625C636C62
          726472625C627264727731305C6272647273205C63656C6C78323833355C636C
          76657274616C625C63656C6C78353130335C636C76657274616C625C636C6272
          6472625C627264727731305C6272647273205C63656C6C78363830345C636C76
          657274616C625C63656C6C78383232315C636C76657274616C625C636C627264
          72625C627264727731305C6272647273205C63656C6C78393932335C70617264
          5C696E74626C5C667332325C27653529205C2765345C2765655C2765635C6365
          6C6C5C706172645C696E74626C5C71635C63656C6C5C27653629205C2765615C
          2765655C2766305C2765665C2766335C27663120285C2766315C2766325C2766
          305C2765655C2765355C2765645C2765385C276535295C63656C6C5C63656C6C
          5C27653729205C2765615C2765325C2765305C2766305C2766325C2765385C27
          66305C2765305C63656C6C5C63656C6C5C726F775C706172645C736236302032
          2E312E312E5C7E5C2763345C2765305C2766325C276530205C2765665C276565
          5C2766315C2766325C2765305C2765645C2765655C2765325C2765615C276538
          205C2765645C276530205C2766305C2765355C2765335C2765385C2766315C27
          66325C2766305C2765305C2766365C2765385C2765655C2765645C2765645C27
          66625C276539205C2766335C2766375C2765355C276632205C2765665C276565
          205C2766335C2765615C2765305C2765375C2765305C2765645C2765645C2765
          655C2765635C276633205C2765635C2765355C2766315C2766325C276633205C
          2765365C2765385C2766325C2765355C2765625C2766635C2766315C2766325C
          2765325C27653020205C7061720D0A5C706172645C62726472745C6272647273
          5C627264727731305C627273703230205C6C69373931305C71635C6673313620
          285C2766375C2765385C2766315C2765625C2765652C205C2765635C2765355C
          2766315C2766665C2766362C205C2765335C2765655C276534295C7061720D0A
          5C706172645C6673323220322E322E5C7E5C2763305C2765345C2766305C2765
          355C276631205C2765665C2766305C2765355C2765345C2766625C2765345C27
          66335C2766395C2765355C2765335C276565205C2765635C2765355C2766315C
          2766325C276530205C2765365C2765385C2766325C2765355C2765625C276663
          5C2766315C2766325C2765325C2765303A5C7061720D0A5C706172645C6C6934
          32365C27653029205C2766305C2765355C2766315C2765665C2766335C276531
          5C2765625C2765385C2765615C27653020285C2765615C2766305C2765305C27
          65392C205C2765655C2765315C2765625C2765305C2766315C2766325C276663
          2C205C2765655C2765615C2766305C2766335C2765332920205C7061720D0A5C
          706172645C62726472745C62726472735C627264727731305C62727370323020
          5C6C69333935385C6673325C7061720D0A5C706172645C6C693432365C667332
          325C27653129205C2766305C2765305C2765395C2765655C27656420205C7061
          720D0A5C706172645C62726472745C62726472735C627264727731305C627273
          703230205C6C69313333385C726932385C6673325C7061720D0A5C706172645C
          6C693432365C667332325C27653229205C2765335C2765655C2766305C276565
          5C27653420205C7061720D0A5C706172645C62726472745C62726472735C6272
          64727731305C627273703230205C6C69313332375C6673325C7061720D0A5C70
          6172645C6C693432365C667332325C27653329205C2765645C2765305C276631
          5C2765355C2765625C2765355C2765645C2765645C2766625C276539205C2765
          665C2766335C2765645C2765615C27663220205C7061720D0A5C706172645C62
          726472745C62726472735C627264727731305C627273703230205C6C69323439
          355C726932385C71635C6673313620285C2766315C2765355C2765625C276565
          2C205C2765665C2765655C2766315C2765355C2765625C2765655C276561205C
          276538205C2766322E5C2765662E295C7061720D0A5C706172645C6C69343235
          5C667332325C27653429205C2765665C2766305C2765655C2766315C2765665C
          2765355C2765615C2766322C205C2766335C2765625C2765385C2766365C2765
          302C205C2765665C2765355C2766305C2765355C2766335C2765625C2765655C
          27656120205C7061720D0A5C706172645C62726472745C62726472735C627264
          727731305C627273703230205C6C69333236365C726932385C6673325C706172
          0D0A5C74726F77645C74726761706832385C74726C6566743337385C74727268
          32335C747262726472745C62726472735C627264727731305C62727370323020
          5C7472706164646C32385C7472706164647232385C747270616464666C335C74
          72706164646672330D0A5C636C76657274616C625C63656C6C78313230335C63
          6C76657274616C625C636C62726472625C627264727731305C6272647273205C
          63656C6C78323833355C636C76657274616C625C63656C6C78353130335C636C
          76657274616C625C636C62726472625C627264727731305C6272647273205C63
          656C6C78363830345C636C76657274616C625C63656C6C78383232315C636C76
          657274616C625C636C62726472625C627264727731305C6272647273205C6365
          6C6C78393932335C706172645C696E74626C5C667332325C27653529205C2765
          345C2765655C2765635C63656C6C5C706172645C696E74626C5C71635C63656C
          6C5C27653629205C2765615C2765655C2766305C2765665C2766335C27663120
          285C2766315C2766325C2766305C2765655C2765355C2765645C2765385C2765
          35295C63656C6C5C63656C6C5C27653729205C2765615C2765325C2765305C27
          66305C2766325C2765385C2766305C2765305C63656C6C5C63656C6C5C726F77
          5C706172645C7362363020322E322E312E5C7E5C2763345C2765305C2766325C
          276530205C2766315C2765645C2766665C2766325C2765385C276666205C2766
          31205C2766305C2765355C2765335C2765385C2766315C2766325C2766305C27
          65305C2766365C2765385C2765655C2765645C2765645C2765655C2765335C27
          6565205C2766335C2766375C2765355C2766325C276530205C2765665C276565
          205C2765635C2765355C2766315C2766325C276633205C2765365C2765385C27
          66325C2765355C2765625C2766635C2766315C2766325C2765325C2765302020
          5C7061720D0A5C706172645C62726472745C62726472735C627264727731305C
          627273703230205C6C69363335305C73613132305C71635C6673313620285C27
          66375C2765385C2766315C2765625C2765652C205C2765635C2765355C276631
          5C2766665C2766362C205C2765335C2765655C276534295C7061720D0A5C7472
          6F77645C74726761706832385C7472726832335C747262726472745C62726472
          735C627264727731305C627273703230205C7472706164646C32385C74727061
          64647232385C747270616464666C335C7472706164646672330D0A5C636C7665
          7274616C625C636C62726472625C627264727731305C6272647273205C63656C
          6C78333030355C636C76657274616C625C63656C6C78333238395C636C766572
          74616C625C636C62726472625C627264727731305C6272647273205C63656C6C
          78363233375C636C76657274616C625C63656C6C78363532315C636C76657274
          616C625C636C62726472625C627264727731305C6272647273205C63656C6C78
          373933395C636C76657274616C625C63656C6C78383232335C636C7665727461
          6C625C636C62726472625C627264727731305C6272647273205C63656C6C7839
          3932345C706172645C696E74626C5C71635C667332325C63656C6C5C63656C6C
          5C63656C6C5C63656C6C5C63656C6C5C63656C6C5C63656C6C5C726F775C7472
          6F77645C74726761706832385C7472726832335C7472706164646C32385C7472
          706164647232385C747270616464666C335C7472706164646672330D0A5C6365
          6C6C78333030355C63656C6C78333238395C63656C6C78363233375C63656C6C
          78363532315C63656C6C78373933395C63656C6C78383232335C63656C6C7839
          3932345C706172645C696E74626C5C71635C6673313620285C2765345C276565
          5C2765625C2765365C2765645C2765655C2766315C2766325C2765645C276565
          5C276535205C2765625C2765385C2766365C276565295C63656C6C5C70617264
          5C696E74626C5C63656C6C5C706172645C696E74626C5C66692D32375C716320
          285C2764342E5C2763382E5C2763652E205C2765345C2765655C2765625C2765
          365C2765645C2765655C2766315C2766325C2765645C2765655C2765335C2765
          65205C2765625C2765385C2766365C276530205C2765655C2766305C2765335C
          2765305C2765645C276530205C2766305C2765355C2765335C2765385C276631
          5C2766325C2766305C2765305C2766365C2765385C2765655C2765645C276564
          5C2765655C2765335C276565205C2766335C2766375C2765355C2766325C2765
          30295C63656C6C5C706172645C696E74626C5C71635C63656C6C20285C276566
          5C2765655C2765345C2765665C2765385C2766315C276663295C63656C6C5C63
          656C6C20285C2765345C2765305C2766325C276530295C63656C6C5C726F775C
          706172645C6C69353338375C73623132305C667332325C2763632E5C2763662E
          5C7061720D0A7D0D0A00}
      end
      object Shape1: TfrxShapeView
        Left = 102.047310000000000000
        Top = 68.031540000000000000
        Width = 94.488250000000000000
        Height = 15.118120000000000000
        ShowHint = False
      end
      object Line8: TfrxLineView
        Left = 136.063080000000000000
        Top = 412.724409448818900000
        Width = 20.787401570000000000
        ShowHint = False
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Line9: TfrxLineView
        Left = 68.787401570000000000
        Top = 412.724409450000000000
        Width = 20.787401570000000000
        ShowHint = False
        Frame.Typ = [ftTop]
        Frame.Width = 0.500000000000000000
      end
      object Line11: TfrxLineView
        Left = 86.929190000000000000
        Top = 351.496290000000000000
        Width = 574.488560000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line12: TfrxLineView
        Left = 60.472480000000000000
        Top = 366.614410000000000000
        Width = 600.945270000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line13: TfrxLineView
        Left = 181.417440000000000000
        Top = 385.512060000000000000
        Width = 480.000310000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line14: TfrxLineView
        Left = 128.504020000000000000
        Top = 427.086890000000000000
        Width = 230.551330000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line15: TfrxLineView
        Left = 136.063080000000000000
        Top = 457.323130000000000000
        Width = 525.354670000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line16: TfrxLineView
        Left = 173.858380000000000000
        Top = 502.677490000000000000
        Width = 362.834880000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line17: TfrxLineView
        Left = 117.165430000000000000
        Top = 521.575140000000000000
        Width = 154.960730000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line18: TfrxLineView
        Left = 355.275820000000000000
        Top = 521.575140000000000000
        Width = 181.417440000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line19: TfrxLineView
        Left = 491.338900000000000000
        Top = 540.472790000000000000
        Width = 170.078850000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line20: TfrxLineView
        Left = 260.787570000000000000
        Top = 616.063390000000000000
        Width = 400.630180000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line21: TfrxLineView
        Left = 83.149660000000000000
        Top = 634.961040000000000000
        Width = 578.268090000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line22: TfrxLineView
        Left = 83.149660000000000000
        Top = 653.858690000000000000
        Width = 578.268090000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line23: TfrxLineView
        Left = 162.519790000000000000
        Top = 672.000000000000000000
        Width = 498.897960000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line24: TfrxLineView
        Left = 215.433210000000000000
        Top = 699.213050000000000000
        Width = 445.984540000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line25: TfrxLineView
        Left = 71.811070000000000000
        Top = 718.110700000000000000
        Width = 124.724490000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line26: TfrxLineView
        Left = 332.598640000000000000
        Top = 718.110700000000000000
        Width = 132.283550000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line27: TfrxLineView
        Left = 540.472790000000000000
        Top = 718.110700000000000000
        Width = 120.944960000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line28: TfrxLineView
        Left = 521.575140000000000000
        Top = 740.787880000000000000
        Width = 139.842610000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line29: TfrxLineView
        Left = 260.787570000000000000
        Top = 782.362710000000000000
        Width = 400.630180000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line30: TfrxLineView
        Left = 86.929190000000000000
        Top = 801.260360000000000000
        Width = 574.488560000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line31: TfrxLineView
        Left = 86.929190000000000000
        Top = 820.158010000000000000
        Width = 574.488560000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line32: TfrxLineView
        Left = 166.299320000000000000
        Top = 839.055660000000000000
        Width = 495.118430000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line33: TfrxLineView
        Left = 215.433210000000000000
        Top = 865.512370000000000000
        Width = 445.984540000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line34: TfrxLineView
        Left = 71.811070000000000000
        Top = 888.189550000000000000
        Width = 128.504020000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line35: TfrxLineView
        Left = 332.598640000000000000
        Top = 888.189550000000000000
        Width = 132.283550000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line36: TfrxLineView
        Left = 540.472790000000000000
        Top = 888.189550000000000000
        Width = 120.944960000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line37: TfrxLineView
        Left = 423.307360000000000000
        Top = 907.087200000000000000
        Width = 238.110390000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo1: TfrxMemoView
        Left = 68.031540000000000000
        Top = 393.071120000000000000
        Width = 18.897650000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          
            '[IIF(Pos('#39#1084#1091#1078#39',Lowercase(<PersonViewDetailADOT."SEX_NAME">))>0,'#39 +
            'V'#39','#39#39')]')
        ParentFont = False
      end
      object Memo2: TfrxMemoView
        Left = 90.708720000000000000
        Top = 332.598640000000000000
        Width = 566.929500000000000000
        Height = 26.456710000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HideZeros = True
        Memo.UTF8W = (
          '[Uppercase(<PersonsfrxDBDS."LAST_NAME">)]')
        ParentFont = False
      end
      object Memo3: TfrxMemoView
        Left = 64.252010000000000000
        Top = 347.716760000000000000
        Width = 593.386210000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HideZeros = True
        Memo.UTF8W = (
          '[Uppercase(<PersonsfrxDBDS."FIRST_NAME">)]')
        ParentFont = False
      end
      object Memo4: TfrxMemoView
        Left = 185.196970000000000000
        Top = 366.614410000000000000
        Width = 472.441250000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HideZeros = True
        Memo.UTF8W = (
          '[Uppercase(<PersonsfrxDBDS."SURNAME">)]')
        ParentFont = False
      end
      object Memo5: TfrxMemoView
        Left = 136.063080000000000000
        Top = 393.071120000000000000
        Width = 18.897650000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          
            '[IIF(Pos('#39#1078#1077#1085#39',Lowercase(<PersonViewDetailADOT."SEX_NAME">))>0,'#39 +
            'V'#39','#39#39')]')
        ParentFont = False
      end
      object Memo6: TfrxMemoView
        Left = 166.299320000000000000
        Top = 408.189240000000000000
        Width = 185.196970000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        HideZeros = True
        Memo.UTF8W = (
          
            '[DayOf(<PersonsfrxDBDS."BIRTHDATE">)] [IIF(MonthOf(<PersonsfrxDB' +
            'DS."BIRTHDATE">)=1,'#39#1071#1053#1042#1040#1056#1071#39','#39#39')][IIF(MonthOf(<PersonsfrxDBDS."BI' +
            'RTHDATE">)=2,'#39#1060#1045#1042#1056#1040#1051#1071#39','#39#39')][IIF(MonthOf(<PersonsfrxDBDS."BIRTHDA' +
            'TE">)=3,'#39#1052#1040#1056#1058#1040#39','#39#39')][IIF(MonthOf(<PersonsfrxDBDS."BIRTHDATE">)=4' +
            ','#39#1040#1055#1056#1045#1051#1071#39','#39#39')][IIF(MonthOf(<PersonsfrxDBDS."BIRTHDATE">)=5,'#39#1052#1040#1071#39 +
            ','#39#39')][IIF(MonthOf(<PersonsfrxDBDS."BIRTHDATE">)=6,'#39#1048#1070#1053#1071#39','#39#39')][II' +
            'F(MonthOf(<PersonsfrxDBDS."BIRTHDATE">)=7,'#39#1048#1070#1051#1071#39','#39#39')][IIF(MonthO' +
            'f(<PersonsfrxDBDS."BIRTHDATE">)=8,'#39#1040#1042#1043#1059#1057#1058#1040#39','#39#39')][IIF(MonthOf(<Pe' +
            'rsonsfrxDBDS."BIRTHDATE">)=9,'#39#1057#1045#1053#1058#1071#1041#1056#1071#39','#39#39')][IIF(MonthOf(<Person' +
            'sfrxDBDS."BIRTHDATE">)=10,'#39#1054#1050#1058#1071#1041#1056#1071#39','#39#39')][IIF(MonthOf(<Personsfrx' +
            'DBDS."BIRTHDATE">)=11,'#39#1053#1054#1071#1041#1056#1071#39','#39#39')][IIF(MonthOf(<PersonsfrxDBDS.' +
            '"BIRTHDATE">)=12,'#39#1044#1045#1050#1040#1041#1056#1071#39','#39#39')] [YearOf(<PersonsfrxDBDS."BIRTHDA' +
            'TE">)] '#1043'.')
        ParentFont = False
      end
      object Memo7: TfrxMemoView
        Left = 139.842610000000000000
        Top = 438.425480000000000000
        Width = 521.575140000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HideZeros = True
        Memo.UTF8W = (
          '[Uppercase(<PersonsfrxDBDS."BIRTHPLACE">)]')
        ParentFont = False
      end
      object Memo8: TfrxMemoView
        Left = 177.637910000000000000
        Top = 483.779840000000000000
        Width = 359.055350000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HideZeros = True
        Memo.UTF8W = (
          '[Uppercase(<RegIdentDocADOQ."DOC_TYPE_NAME">)]')
        ParentFont = False
      end
      object Memo9: TfrxMemoView
        Left = 120.944960000000000000
        Top = 502.677490000000000000
        Width = 151.181200000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        HideZeros = True
        Memo.UTF8W = (
          '[Uppercase(<RegIdentDocADOQ."DOC_SERIE">)]')
        ParentFont = False
      end
      object Memo10: TfrxMemoView
        Left = 355.275820000000000000
        Top = 502.677490000000000000
        Width = 181.417440000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        HideZeros = True
        Memo.UTF8W = (
          '[Uppercase(<RegIdentDocADOQ."DOC_NUM">)]')
        ParentFont = False
      end
      object Memo11: TfrxMemoView
        Left = 495.118430000000000000
        Top = 521.196850390000000000
        Width = 162.519790000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        HideZeros = True
        Memo.UTF8W = (
          '[Uppercase(<RegIdentDocADOQ."DOC_BRANCHE_CODE">)]')
        ParentFont = False
      end
      object Memo12: TfrxMemoView
        Left = 41.574830000000000000
        Top = 540.850393700000000000
        Width = 366.614410000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HideZeros = True
        Memo.UTF8W = (
          '[Uppercase(<RegIdentDocADOQ."DOC_BRANCH_NAME">)]')
        ParentFont = False
      end
      object Memo13: TfrxMemoView
        Left = 536.693260000000000000
        Top = 540.472790000000000000
        Width = 124.724490000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        HideZeros = True
        Memo.UTF8W = (
          '[Uppercase(<RegIdentDocADOQ."DOC_CREATE_DATE">)]')
        ParentFont = False
      end
      object Memo14: TfrxMemoView
        Left = 264.567100000000000000
        Top = 597.165740000000000000
        Width = 396.850650000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HideZeros = True
        Memo.UTF8W = (
          
            '[Uppercase(<ResidingPlaceAdrADOQuery."COUNTRY_NAME">)], [IIF(Pos' +
            '('#39#1056#1045#1057#1055#39',Uppercase(<ResidingPlaceAdrADOQuery."STATE_SHORT_FULL">)' +
            ')>0, Uppercase(<ResidingPlaceAdrADOQuery."STATE_SHORT_FULL">),'#39#39 +
            ')] [Uppercase(<ResidingPlaceAdrADOQuery."STATE_NAME">)] [IIF(Pos' +
            '('#39#1056#1045#1057#1055#39',Uppercase(<ResidingPlaceAdrADOQuery."STATE_SHORT_FULL">)' +
            ')>0,'#39#39',Uppercase(<ResidingPlaceAdrADOQuery."STATE_SHORT_FULL">))' +
            ']')
        ParentFont = False
      end
      object Memo15: TfrxMemoView
        Left = 86.929190000000000000
        Top = 616.063390000000000000
        Width = 574.488560000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HideZeros = True
        Memo.UTF8W = (
          '[Uppercase(<ResidingPlaceAdrADOQuery."DISTRICT_NAME">)]')
        ParentFont = False
      end
      object Memo16: TfrxMemoView
        Left = 86.929190000000000000
        Top = 634.961040000000000000
        Width = 574.488560000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HideZeros = True
        Memo.UTF8W = (
          
            '[IIF(<ResidingPlaceAdrADOQuery."ITS_CITY">=1,Uppercase(<Residing' +
            'PlaceAdrADOQuery."SETTLEM_NAME">),'#39#39')]')
        ParentFont = False
      end
      object Memo17: TfrxMemoView
        Left = 166.299320000000000000
        Top = 653.858690000000000000
        Width = 495.118430000000000000
        Height = 26.456710000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HideZeros = True
        Memo.UTF8W = (
          
            '[IIF(<ResidingPlaceAdrADOQuery."ITS_CITY">=1,'#39#39',Uppercase(<Resid' +
            'ingPlaceAdrADOQuery."SETTLEM_NAME">))]')
        ParentFont = False
      end
      object Memo18: TfrxMemoView
        Left = 219.212740000000000000
        Top = 680.315400000000000000
        Width = 442.205010000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HideZeros = True
        Memo.UTF8W = (
          '[Uppercase(<ResidingPlaceAdrADOQuery."STREET_NAME">)]')
        ParentFont = False
      end
      object Memo19: TfrxMemoView
        Left = 71.811070000000000000
        Top = 699.213050000000000000
        Width = 124.724490000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        HideZeros = True
        Memo.UTF8W = (
          
            '[IIF(<ResidingPlaceAdrADOQuery."HOUSE_NUM">=0,'#39#39',Uppercase(<Resi' +
            'dingPlaceAdrADOQuery."HOUSE_NUM">))][Uppercase(<ResidingPlaceAdr' +
            'ADOQuery."LITER">)]')
        ParentFont = False
      end
      object Memo20: TfrxMemoView
        Left = 336.378170000000000000
        Top = 699.213050000000000000
        Width = 124.724490000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        HideZeros = True
        Memo.UTF8W = (
          
            '[IIF(Length(<ResidingPlaceAdrADOQuery."CORPUS">)=0,'#39'-'#39',Uppercase' +
            '(<ResidingPlaceAdrADOQuery."CORPUS">))]')
        ParentFont = False
      end
      object Memo21: TfrxMemoView
        Left = 544.252320000000000000
        Top = 699.213050000000000000
        Width = 113.385900000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        HideZeros = True
        Memo.UTF8W = (
          
            '[IIF(<ResidingPlaceAdrADOQuery."APARTMENT_NUM">=0,'#39#39',Uppercase(<' +
            'ResidingPlaceAdrADOQuery."APARTMENT_NUM">))]')
        ParentFont = False
      end
      object Memo22: TfrxMemoView
        Left = 264.567100000000000000
        Top = 763.465060000000000000
        Width = 396.850650000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HideZeros = True
        Memo.UTF8W = (
          
            '[Uppercase(<PrevResidingADOQuery."COUNTRY_NAME">)], [IIF(Pos('#39#1056#1045 +
            #1057#1055#39',Uppercase(<PrevResidingADOQuery."STATE_SHORT_FULL">))>0, Upp' +
            'ercase(<PrevResidingADOQuery."STATE_SHORT_FULL">),'#39#39')] [Uppercas' +
            'e(<PrevResidingADOQuery."STATE_NAME">)] [IIF(Pos('#39#1056#1045#1057#1055#39',Uppercas' +
            'e(<PrevResidingADOQuery."STATE_SHORT_FULL">))>0,'#39#39',Uppercase(<Pr' +
            'evResidingADOQuery."STATE_SHORT_FULL">))]')
        ParentFont = False
      end
      object Memo23: TfrxMemoView
        Left = 90.708720000000000000
        Top = 782.362710000000000000
        Width = 570.709030000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HideZeros = True
        Memo.UTF8W = (
          '[Uppercase(<PrevResidingADOQuery."DISTRICT_NAME">)]')
        ParentFont = False
      end
      object Memo24: TfrxMemoView
        Left = 90.708720000000000000
        Top = 801.260360000000000000
        Width = 570.709030000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HideZeros = True
        Memo.UTF8W = (
          
            '[IIF(<PrevResidingADOQuery."ITS_CITY">=1,Uppercase(<PrevResiding' +
            'ADOQuery."SETTLEM_NAME">),'#39#39')]')
        ParentFont = False
      end
      object Memo25: TfrxMemoView
        Left = 170.078850000000000000
        Top = 820.158010000000000000
        Width = 574.488560000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HideZeros = True
        Memo.UTF8W = (
          
            '[IIF(<PrevResidingADOQuery."ITS_CITY">=1,'#39#39',Uppercase(<PrevResid' +
            'ingADOQuery."SETTLEM_NAME">))]')
        ParentFont = False
      end
      object Memo26: TfrxMemoView
        Left = 219.212740000000000000
        Top = 846.614720000000000000
        Width = 442.205010000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HideZeros = True
        Memo.UTF8W = (
          '[Uppercase(<PrevResidingADOQuery."STREET_NAME">)]')
        ParentFont = False
      end
      object Memo27: TfrxMemoView
        Left = 75.590600000000000000
        Top = 869.291900000000000000
        Width = 120.944960000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        HideZeros = True
        Memo.UTF8W = (
          
            '[IIF(<PrevResidingADOQuery."HOUSE_NUM">=0,'#39#39',Uppercase(<PrevResi' +
            'dingADOQuery."HOUSE_NUM">))][Uppercase(<PrevResidingADOQuery."LI' +
            'TER">)]')
        ParentFont = False
      end
      object Memo28: TfrxMemoView
        Left = 340.157700000000000000
        Top = 869.291900000000000000
        Width = 117.165430000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        HideZeros = True
        Memo.UTF8W = (
          
            '[IIF(Length(<PrevResidingADOQuery."CORPUS">)=0,'#39'-'#39',Uppercase(<Pr' +
            'evResidingADOQuery."CORPUS">))]')
        ParentFont = False
      end
      object Memo29: TfrxMemoView
        Left = 544.252320000000000000
        Top = 869.291900000000000000
        Width = 117.165430000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        HideZeros = True
        Memo.UTF8W = (
          
            '[IIF(<PrevResidingADOQuery."APARTMENT_NUM">=0,'#39#39',Uppercase(<Prev' +
            'ResidingADOQuery."APARTMENT_NUM">))]')
        ParentFont = False
      end
      object Memo59: TfrxMemoView
        Top = 92.220472440000000000
        Width = 321.260050000000000000
        Height = 52.913420000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        HideZeros = True
        LineSpacing = 13.000000000000000000
        Memo.UTF8W = (
          '[Uppercase(<FMS_BRANCH_NAME_DEFAULT>)]')
        ParentFont = False
      end
      object Shape14: TfrxShapeView
        Left = 60.472480000000000000
        Top = 173.858380000000000000
        Width = 19.653543310000000000
        Height = 17.007874020000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
      end
      object Shape10: TfrxShapeView
        Left = 80.125984250000000000
        Top = 173.858380000000000000
        Width = 19.653543310000000000
        Height = 17.007874020000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
      end
      object Shape3: TfrxShapeView
        Left = 99.779527560000000000
        Top = 173.858380000000000000
        Width = 19.653543310000000000
        Height = 17.007874020000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
      end
      object Shape15: TfrxShapeView
        Left = 119.433070870000000000
        Top = 173.858380000000000000
        Width = 19.653543310000000000
        Height = 17.007874020000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
      end
      object Shape4: TfrxShapeView
        Left = 139.086614170000000000
        Top = 173.858380000000000000
        Width = 19.653543310000000000
        Height = 17.007874020000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
      end
      object Shape16: TfrxShapeView
        Left = 158.740157480000000000
        Top = 173.858380000000000000
        Width = 19.653543310000000000
        Height = 17.007874020000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
      end
      object Shape17: TfrxShapeView
        Left = 178.393700790000000000
        Top = 173.858380000000000000
        Width = 19.653543310000000000
        Height = 17.007874020000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
      end
      object Shape18: TfrxShapeView
        Left = 198.047244090000000000
        Top = 173.858380000000000000
        Width = 19.653543310000000000
        Height = 17.007874020000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
      end
      object Shape19: TfrxShapeView
        Left = 217.700787400000000000
        Top = 173.858380000000000000
        Width = 19.653543310000000000
        Height = 17.007874020000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
      end
      object Shape20: TfrxShapeView
        Left = 237.354330710000000000
        Top = 173.858380000000000000
        Width = 19.653543310000000000
        Height = 17.007874020000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
      end
      object Shape2: TfrxShapeView
        Left = 257.007874020000000000
        Top = 173.858380000000000000
        Width = 19.653543310000000000
        Height = 17.007874020000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
      end
      object Shape21: TfrxShapeView
        Left = 276.661417320000000000
        Top = 173.858380000000000000
        Width = 19.653543310000000000
        Height = 17.007874020000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
      end
      object Shape22: TfrxShapeView
        Left = 296.314960630000000000
        Top = 173.858380000000000000
        Width = 19.653543310000000000
        Height = 17.007874020000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
      end
      object Shape23: TfrxShapeView
        Left = 60.472480000000000000
        Top = 196.535560000000000000
        Width = 19.653543310000000000
        Height = 17.007874020000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
      end
      object Shape11: TfrxShapeView
        Left = 80.125984250000000000
        Top = 196.535560000000000000
        Width = 19.653543310000000000
        Height = 17.007874020000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
      end
      object Shape24: TfrxShapeView
        Left = 99.779527560000000000
        Top = 196.535560000000000000
        Width = 19.653543310000000000
        Height = 17.007874020000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
      end
      object Shape6: TfrxShapeView
        Left = 119.433070870000000000
        Top = 196.535560000000000000
        Width = 19.653543310000000000
        Height = 17.007874020000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
      end
      object Shape25: TfrxShapeView
        Left = 139.086614170000000000
        Top = 196.535560000000000000
        Width = 19.653543310000000000
        Height = 17.007874020000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
      end
      object Shape26: TfrxShapeView
        Left = 158.740260000000000000
        Top = 196.535560000000000000
        Width = 19.653543310000000000
        Height = 17.007874020000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
      end
      object Shape5: TfrxShapeView
        Left = 178.393700790000000000
        Top = 196.535560000000000000
        Width = 19.653543310000000000
        Height = 17.007874020000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
      end
      object Shape9: TfrxShapeView
        Left = 198.047244090000000000
        Top = 196.535560000000000000
        Width = 19.653543310000000000
        Height = 17.007874020000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
      end
      object Shape27: TfrxShapeView
        Left = 217.700787400000000000
        Top = 196.535560000000000000
        Width = 19.653543310000000000
        Height = 17.007874020000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
      end
      object Shape28: TfrxShapeView
        Left = 237.354330710000000000
        Top = 196.535560000000000000
        Width = 19.653543310000000000
        Height = 17.007874020000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
      end
      object Shape7: TfrxShapeView
        Left = 60.472480000000000000
        Top = 219.212740000000000000
        Width = 19.653543310000000000
        Height = 17.007874020000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
      end
      object Shape8: TfrxShapeView
        Left = 80.125984250000000000
        Top = 219.212740000000000000
        Width = 19.653543310000000000
        Height = 17.007874020000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
      end
      object Shape12: TfrxShapeView
        Left = 99.779527560000000000
        Top = 219.212740000000000000
        Width = 19.653543310000000000
        Height = 17.007874020000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
      end
      object Shape29: TfrxShapeView
        Left = 119.433070870000000000
        Top = 219.212740000000000000
        Width = 19.653543310000000000
        Height = 17.007874020000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
      end
      object Shape30: TfrxShapeView
        Left = 139.086614170000000000
        Top = 219.212740000000000000
        Width = 19.653543310000000000
        Height = 17.007874020000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
      end
      object Shape31: TfrxShapeView
        Left = 158.740260000000000000
        Top = 219.212740000000000000
        Width = 19.653543310000000000
        Height = 17.007874020000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
      end
      object Shape32: TfrxShapeView
        Left = 178.393700790000000000
        Top = 219.212740000000000000
        Width = 19.653543310000000000
        Height = 17.007874020000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
      end
      object Shape33: TfrxShapeView
        Left = 198.047244090000000000
        Top = 219.212740000000000000
        Width = 19.653543310000000000
        Height = 17.007874020000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
      end
      object Shape34: TfrxShapeView
        Left = 217.700787400000000000
        Top = 219.212740000000000000
        Width = 19.653543310000000000
        Height = 17.007874020000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
      end
      object Shape13: TfrxShapeView
        Left = 521.575140000000000000
        Top = 173.858380000000000000
        Width = 19.653543310000000000
        Height = 17.007874020000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
      end
      object Shape35: TfrxShapeView
        Left = 541.228683310000000000
        Top = 173.858380000000000000
        Width = 19.653543310000000000
        Height = 17.007874020000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
      end
      object Shape36: TfrxShapeView
        Left = 560.882226610000000000
        Top = 173.858380000000000000
        Width = 19.653543310000000000
        Height = 17.007874020000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
      end
      object Shape37: TfrxShapeView
        Left = 580.535769920000000000
        Top = 173.858380000000000000
        Width = 19.653543310000000000
        Height = 17.007874020000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
      end
      object Memo30: TfrxMemoView
        Left = 15.118120000000000000
        Top = 173.858380000000000000
        Width = 41.574830000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1054#1043#1056#1053)
        ParentFont = False
      end
      object Memo31: TfrxMemoView
        Left = 15.118120000000000000
        Top = 196.535560000000000000
        Width = 41.574830000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1048#1053#1053)
        ParentFont = False
      end
      object Memo32: TfrxMemoView
        Left = 15.118120000000000000
        Top = 219.212740000000000000
        Width = 41.574830000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1050#1055#1055)
        ParentFont = False
      end
      object Memo33: TfrxMemoView
        Left = 381.732530000000000000
        Top = 173.858380000000000000
        Width = 136.063080000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1050#1086#1076' '#1085#1072#1083#1086#1075#1086#1074#1086#1075#1086' '#1086#1088#1075#1072#1085#1072)
        ParentFont = False
      end
    end
  end
  object PassportComeStatementfrxRepF1: TfrxReport
    Version = '4.12'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Maximized = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41054.502009456000000000
    ReportOptions.LastChange = 41190.507634652780000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnPreview = PassportComeStatementfrxRepF1Preview
    OnPrintReport = PassportComeStatementfrxRepF1PrintReport
    Left = 72
    Top = 248
    Datasets = <
      item
        DataSet = CurrOperationfrxDBDS
        DataSetName = 'CurrOperationfrxDBDS'
      end
      item
        DataSet = PassportComeStatementfrxRepF1.FatherPersonADOQ
        DataSetName = 'FatherPersonADOQ'
      end
      item
        DataSet = PassportComeStatementfrxRepF1.PassComeBaseDocADOQ
        DataSetName = 'PassComeBaseDocADOQ'
      end
      item
        DataSet = PersonsfrxDBDS
        DataSetName = 'PersonsfrxDBDS'
      end
      item
        DataSet = PassportComeStatementfrxRepF1.PrevRegIdentDocADOQ
        DataSetName = 'PrevRegIdentDocADOQ'
      end
      item
        DataSet = PassportComeStatementfrxRepF1.ResidingPlaceAdrADOQuery
        DataSetName = 'ResidingPlaceAdrADOQuery'
      end
      item
        DataSet = PassportComeStatementfrxRepF1.MotherPersonADOQ
        DataSetName = 'MotherPersonADOQ'
      end
      item
        DataSet = PassportComeStatementfrxRepF1.LastPesrMaryADOQ
        DataSetName = 'LastPesrMaryADOQ'
      end
      item
        DataSet = PassportComeStatementfrxRepF1.ManMaryPersonADOQ
        DataSetName = 'ManMaryPersonADOQ'
      end
      item
        DataSet = PassportComeStatementfrxRepF1.ZagsBrancheNameDataADOQ
        DataSetName = 'ZagsBrancheNameDataADOQ'
      end
      item
        DataSet = PassportComeStatementfrxRepF1.WomanMaryADOQ
        DataSetName = 'WomanMaryADOQ'
      end
      item
        DataSet = PassportComeStatementfrxRepF1.ZagsRecordDateADOQ
        DataSetName = 'ZagsRecordDateADOQ'
      end
      item
        DataSet = PassportComeStatementfrxRepF1.ZagsRecordNumADOQ
        DataSetName = 'ZagsRecordNumADOQ'
      end
      item
        DataSet = PassportComeStatementfrxRepF1.PersonViewDetailADOT
        DataSetName = 'PersonViewDetailADOT'
      end
      item
        DataSet = PassportComeStatementfrxRepF1.PassTakeReasonADOQ
        DataSetName = 'PassTakeReasonADOQ'
      end
      item
        DataSet = PassportComeStatementfrxRepF1.LastPersDivorceADOQ
        DataSetName = 'LastPersDivorceADOQ'
      end
      item
        DataSet = PassportComeStatementfrxRepF1.ManDivorcePersonADOQ
        DataSetName = 'ManDivorcePersonADOQ'
      end
      item
        DataSet = PassportComeStatementfrxRepF1.WomanDivorceADOQ
        DataSetName = 'WomanDivorceADOQ'
      end
      item
        DataSet = PassportComeStatementfrxRepF1.CurrOpServiceADOQ
        DataSetName = 'CurrOpServiceADOQ'
      end
      item
        DataSet = PassportComeStatementfrxRepF1.ZagsDivBrancheNameDataADOQ
        DataSetName = 'ZagsDivBrancheNameDataADOQ'
      end
      item
        DataSet = PassportComeStatementfrxRepF1.ZagsDivRecordDateADOQ
        DataSetName = 'ZagsDivRecordDateADOQ'
      end
      item
        DataSet = PassportComeStatementfrxRepF1.ZagsDivRecordNumADOQ
        DataSetName = 'ZagsDivRecordNumADOQ'
      end
      item
        DataSet = PassportComeStatementfrxRepF1.ManMaryDivPersADOQ
        DataSetName = 'ManMaryDivPersADOQ'
      end
      item
        DataSet = PassportComeStatementfrxRepF1.WomanMaryDivPersADOQ
        DataSetName = 'WomanMaryDivPersADOQ'
      end
      item
        DataSet = PassportComeStatementfrxRepF1.LastPersMaryDivADOQ
        DataSetName = 'LastPersMaryDivADOQ'
      end
      item
        DataSet = PassportComeStatementfrxRepF1.ZagsMarDivBrNameDataADOQ
        DataSetName = 'ZagsMarDivBrNameDataADOQ'
      end
      item
        DataSet = PassportComeStatementfrxRepF1.ZagsMarDivRecordDateADOQ
        DataSetName = 'ZagsMarDivRecordDateADOQ'
      end
      item
        DataSet = PassportComeStatementfrxRepF1.ZagsMarDivRecordNumADOQ
        DataSetName = 'ZagsMarDivRecordNumADOQ'
      end
      item
        DataSet = PassportComeStatementfrxRepF1.PersBirthSettlADOQ
        DataSetName = 'PersBirthSettlADOQ'
      end
      item
        DataSet = PassportComeStatementfrxRepF1.MaryManualADOQ
        DataSetName = 'MaryManualADOQ'
      end
      item
        DataSet = PassportComeStatementfrxRepF1.OwnerServiceCodeADOQ
        DataSetName = 'OwnerServiceCodeADOQ'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
      object PrevRegIdentDocADOQ: TfrxADOQuery
        UserName = 'PrevRegIdentDocADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        Master = CurrOperationfrxDBDS
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select * from OP_DOC_DATA where'
          
            'ELINK_CODE=139 AND ACT_REG_ID=:OP_ID                            ' +
            '                                            ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 204
        pTop = 136
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
      object ResidingPlaceAdrADOQuery: TfrxADOQuery
        UserName = 'ResidingPlaceAdrADOQuery'
        CloseDataSource = True
        BCDToCurrency = False
        Master = CurrOperationfrxDBDS
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select * from OP_ADR_DATA where'
          
            'ELINK_CODE=138 AND ACT_REG_ID=:OP_ID                            ' +
            '                                            ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 204
        pTop = 16
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
      object PassComeBaseDocADOQ: TfrxADOQuery
        UserName = 'PassComeBaseDocADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        Master = CurrOperationfrxDBDS
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select * from OP_DOC_DATA where'
          
            'ELINK_CODE=137 AND ACT_REG_ID=:OP_ID                            ' +
            '                                            ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 204
        pTop = 76
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
      object FatherPersonADOQ: TfrxADOQuery
        UserName = 'FatherPersonADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'PERSON_ID'
            DataType = ftInteger
            Expression = '<PersonsfrxDBDS."PERSON_ID">'
          end>
        SQL.Strings = (
          'SELECT * FROM PERS_ALLIAN_VIEW'
          'WHERE ELINK_CODE=8 AND PERSON_ID=:PERSON_ID            ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 60
        pTop = 76
        Parameters = <
          item
            Name = 'PERSON_ID'
            DataType = ftInteger
            Expression = '<PersonsfrxDBDS."PERSON_ID">'
          end>
      end
      object MotherPersonADOQ: TfrxADOQuery
        UserName = 'MotherPersonADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'PERSON_ID'
            DataType = ftInteger
            Expression = '<PersonsfrxDBDS."PERSON_ID">'
          end>
        SQL.Strings = (
          'SELECT * FROM PERS_ALLIAN_VIEW'
          'WHERE ELINK_CODE=9 AND PERSON_ID=:PERSON_ID            ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 60
        pTop = 136
        Parameters = <
          item
            Name = 'PERSON_ID'
            DataType = ftInteger
            Expression = '<PersonsfrxDBDS."PERSON_ID">'
          end>
      end
      object LastPesrMaryADOQ: TfrxADOQuery
        UserName = 'LastPesrMaryADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        Master = PersonsfrxDBDS
        IgnoreDupParams = False
        Params = <
          item
            Name = 'PERSON_ID'
            DataType = ftInteger
            Expression = '<PersonsfrxDBDS."PERSON_ID">'
          end>
        SQL.Strings = (
          'select FIRST 1 arg.*  '
          'from ACTIONS_REG arg LEFT JOIN ACTION_TYPES atp'
          'ON (arg.ATYPE_ID=atp.ACTION_TYPE_ID)'
          'LEFT JOIN SERVICES srv       '
          'ON (srv.SERVICE_ID=arg.SERVICE_ID)          '
          'WHERE ((atp.ACTION_TYPE_INT_CODE=6) OR '
          '(atp.ACTION_TYPE_INT_CODE=3)) AND'
          'arg.PERSON_ID=:PERSON_ID AND '
          'srv.SERVICE_CODE=115      '
          
            'ORDER BY arg.A_TSTAMP DESC                                      ' +
            '  ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 60
        pTop = 200
        Parameters = <
          item
            Name = 'PERSON_ID'
            DataType = ftInteger
            Expression = '<PersonsfrxDBDS."PERSON_ID">'
          end>
      end
      object ManMaryPersonADOQ: TfrxADOQuery
        UserName = 'ManMaryPersonADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        Master = PassportComeStatementfrxRepF1.LastPesrMaryADOQ
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<LastPesrMaryADOQ."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select * from OP_PERSONAL_DATA where       '
          'ELINK_CODE=140 AND ACT_REG_ID=:OP_ID'
          
            'AND NOT(ELINK_ID IS NULL)                                       ' +
            '        ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 60
        pTop = 260
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<LastPesrMaryADOQ."ACTIONS_ID">'
          end>
      end
      object ZagsBrancheNameDataADOQ: TfrxADOQuery
        UserName = 'ZagsBrancheNameDataADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        Master = PassportComeStatementfrxRepF1.LastPesrMaryADOQ
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<LastPesrMaryADOQ."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select ael.AEL_AS_ID, ael.ACT_REG_ID,'
          ' ael.AEL_LINK_TYPE_ID, enl.ELINK_TYPE,'
          'ael.STATIC_DATA'
          'from AEL_ASSOC ael LEFT JOIN ENTLINKS enl '
          'ON (ael.AEL_LINK_TYPE_ID=enl.ELINK_ID) '
          'WHERE enl.ELINK_TYPE=7 AND ENL.ELINK_CODE=12'
          'AND ael.ACT_REG_ID=:OP_ID                           ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 204
        pTop = 200
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<LastPesrMaryADOQ."ACTIONS_ID">'
          end>
      end
      object WomanMaryADOQ: TfrxADOQuery
        UserName = 'WomanMaryADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        Master = PassportComeStatementfrxRepF1.LastPesrMaryADOQ
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<LastPesrMaryADOQ."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select * from OP_PERSONAL_DATA where'
          'ELINK_CODE=141 AND ACT_REG_ID=:OP_ID'
          'AND NOT(ELINK_ID IS NULL)    ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 60
        pTop = 320
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<LastPesrMaryADOQ."ACTIONS_ID">'
          end>
      end
      object ZagsRecordDateADOQ: TfrxADOQuery
        UserName = 'ZagsRecordDateADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        Master = PassportComeStatementfrxRepF1.LastPesrMaryADOQ
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<LastPesrMaryADOQ."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select ael.AEL_AS_ID, ael.ACT_REG_ID,'
          ' ael.AEL_LINK_TYPE_ID, enl.ELINK_TYPE,'
          'ael.STATIC_DATA'
          'from AEL_ASSOC ael LEFT JOIN ENTLINKS enl '
          'ON (ael.AEL_LINK_TYPE_ID=enl.ELINK_ID) '
          'WHERE enl.ELINK_TYPE=7 AND ENL.ELINK_CODE=13'
          'AND ael.ACT_REG_ID=:OP_ID                           ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 204
        pTop = 256
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<LastPesrMaryADOQ."ACTIONS_ID">'
          end>
      end
      object ZagsRecordNumADOQ: TfrxADOQuery
        UserName = 'ZagsRecordNumADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        Master = PassportComeStatementfrxRepF1.LastPesrMaryADOQ
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<LastPesrMaryADOQ."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select ael.AEL_AS_ID, ael.ACT_REG_ID,'
          ' ael.AEL_LINK_TYPE_ID, enl.ELINK_TYPE,'
          'ael.STATIC_DATA'
          'from AEL_ASSOC ael LEFT JOIN ENTLINKS enl '
          'ON (ael.AEL_LINK_TYPE_ID=enl.ELINK_ID) '
          'WHERE enl.ELINK_TYPE=7 AND ENL.ELINK_CODE=14'
          'AND ael.ACT_REG_ID=:OP_ID                           ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 204
        pTop = 320
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<LastPesrMaryADOQ."ACTIONS_ID">'
          end>
      end
      object PersonViewDetailADOT: TfrxADOQuery
        UserName = 'PersonViewDetailADOT'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'PERSON_ID'
            DataType = ftInteger
            Expression = '<PersonsfrxDBDS."PERSON_ID">'
          end>
        SQL.Strings = (
          
            'SELECT * FROM PERSON_VIEW_DETAIL WHERE PERSON_ID=:PERSON_ID     ' +
            '                                                                ' +
            '                              ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 60
        pTop = 16
        Parameters = <
          item
            Name = 'PERSON_ID'
            DataType = ftInteger
            Expression = '<PersonsfrxDBDS."PERSON_ID">'
          end>
      end
      object PassTakeReasonADOQ: TfrxADOQuery
        UserName = 'PassTakeReasonADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        Master = PassportComeStatementfrxRepF1.LastPesrMaryADOQ
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select ael.AEL_AS_ID, ael.ACT_REG_ID,'
          ' ael.AEL_LINK_TYPE_ID, enl.ELINK_TYPE,'
          'ael.STATIC_DATA'
          'from AEL_ASSOC ael LEFT JOIN ENTLINKS enl '
          'ON (ael.AEL_LINK_TYPE_ID=enl.ELINK_ID) '
          'WHERE enl.ELINK_TYPE=7 AND ENL.ELINK_CODE=150    '
          'AND ael.ACT_REG_ID=:OP_ID                           ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 360
        pTop = 16
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
      object LastPersDivorceADOQ: TfrxADOQuery
        UserName = 'LastPersDivorceADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        Master = PersonsfrxDBDS
        IgnoreDupParams = False
        Params = <
          item
            Name = 'PERSON_ID'
            DataType = ftInteger
            Expression = '<PersonsfrxDBDS."PERSON_ID">'
          end>
        SQL.Strings = (
          'select FIRST 1 arg.*  '
          'from ACTIONS_REG arg LEFT JOIN ACTION_TYPES atp'
          'ON (arg.ATYPE_ID=atp.ACTION_TYPE_ID)'
          'LEFT JOIN SERVICES srv       '
          'ON (srv.SERVICE_ID=arg.SERVICE_ID)          '
          'WHERE ((atp.ACTION_TYPE_INT_CODE=6) OR '
          '(atp.ACTION_TYPE_INT_CODE=3)) AND'
          'arg.PERSON_ID=:PERSON_ID AND '
          'srv.SERVICE_CODE=114        '
          
            'ORDER BY arg.A_TSTAMP DESC                                      ' +
            '  ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 60
        pTop = 380
        Parameters = <
          item
            Name = 'PERSON_ID'
            DataType = ftInteger
            Expression = '<PersonsfrxDBDS."PERSON_ID">'
          end>
      end
      object ManDivorcePersonADOQ: TfrxADOQuery
        UserName = 'ManDivorcePersonADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        Master = PassportComeStatementfrxRepF1.LastPesrMaryADOQ
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<LastPersDivorceADOQ."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select * from OP_PERSONAL_DATA where       '
          'ELINK_CODE=157 AND ACT_REG_ID=:OP_ID'
          
            'AND NOT(ELINK_ID IS NULL)                                       ' +
            '        ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 60
        pTop = 436
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<LastPersDivorceADOQ."ACTIONS_ID">'
          end>
      end
      object WomanDivorceADOQ: TfrxADOQuery
        UserName = 'WomanDivorceADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        Master = PassportComeStatementfrxRepF1.LastPesrMaryADOQ
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<LastPersDivorceADOQ."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select * from OP_PERSONAL_DATA where'
          'ELINK_CODE=158 AND ACT_REG_ID=:OP_ID'
          'AND NOT(ELINK_ID IS NULL)    ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 60
        pTop = 496
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<LastPersDivorceADOQ."ACTIONS_ID">'
          end>
      end
      object CurrOpServiceADOQ: TfrxADOQuery
        UserName = 'CurrOpServiceADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'ACT_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTION_GROUP_ID">'
          end>
        SQL.Strings = (
          'SELECT srv.* FROM ACTIONS_REG arg, SERVICES srv '
          'WHERE srv.SERVICE_ID=arg.SERVICE_ID AND'
          
            'arg.ACTIONS_ID=:ACT_ID                                          ' +
            '    ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 360
        pTop = 76
        Parameters = <
          item
            Name = 'ACT_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTION_GROUP_ID">'
          end>
      end
      object ZagsDivBrancheNameDataADOQ: TfrxADOQuery
        UserName = 'ZagsDivBrancheNameDataADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        Master = PassportComeStatementfrxRepF1.LastPesrMaryADOQ
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<LastPersDivorceADOQ."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select ael.AEL_AS_ID, ael.ACT_REG_ID,'
          ' ael.AEL_LINK_TYPE_ID, enl.ELINK_TYPE,'
          'ael.STATIC_DATA'
          'from AEL_ASSOC ael LEFT JOIN ENTLINKS enl '
          'ON (ael.AEL_LINK_TYPE_ID=enl.ELINK_ID) '
          'WHERE enl.ELINK_TYPE=7 AND ENL.ELINK_CODE=12'
          'AND ael.ACT_REG_ID=:OP_ID                           ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 360
        pTop = 200
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<LastPersDivorceADOQ."ACTIONS_ID">'
          end>
      end
      object ZagsDivRecordDateADOQ: TfrxADOQuery
        UserName = 'ZagsDivRecordDateADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        Master = PassportComeStatementfrxRepF1.LastPesrMaryADOQ
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<LastPersDivorceADOQ."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select ael.AEL_AS_ID, ael.ACT_REG_ID,'
          ' ael.AEL_LINK_TYPE_ID, enl.ELINK_TYPE,'
          'ael.STATIC_DATA'
          'from AEL_ASSOC ael LEFT JOIN ENTLINKS enl '
          'ON (ael.AEL_LINK_TYPE_ID=enl.ELINK_ID) '
          'WHERE enl.ELINK_TYPE=7 AND ENL.ELINK_CODE=13'
          'AND ael.ACT_REG_ID=:OP_ID                           ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 360
        pTop = 256
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<LastPersDivorceADOQ."ACTIONS_ID">'
          end>
      end
      object ZagsDivRecordNumADOQ: TfrxADOQuery
        UserName = 'ZagsDivRecordNumADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        Master = PassportComeStatementfrxRepF1.LastPesrMaryADOQ
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<LastPersDivorceADOQ."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select ael.AEL_AS_ID, ael.ACT_REG_ID,'
          ' ael.AEL_LINK_TYPE_ID, enl.ELINK_TYPE,'
          'ael.STATIC_DATA'
          'from AEL_ASSOC ael LEFT JOIN ENTLINKS enl '
          'ON (ael.AEL_LINK_TYPE_ID=enl.ELINK_ID) '
          'WHERE enl.ELINK_TYPE=7 AND ENL.ELINK_CODE=14'
          'AND ael.ACT_REG_ID=:OP_ID                           ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 360
        pTop = 320
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<LastPersDivorceADOQ."ACTIONS_ID">'
          end>
      end
      object ManMaryDivPersADOQ: TfrxADOQuery
        UserName = 'ManMaryDivPersADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        Master = PassportComeStatementfrxRepF1.LastPesrMaryADOQ
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<LastPersMaryDivADOQ."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select * from OP_PERSONAL_DATA where       '
          '((ELINK_CODE=140) OR (ELINK_CODE=157)) '
          'AND ACT_REG_ID=:OP_ID'
          
            'AND NOT(ELINK_ID IS NULL)                                       ' +
            '        ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 204
        pTop = 436
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<LastPersMaryDivADOQ."ACTIONS_ID">'
          end>
      end
      object WomanMaryDivPersADOQ: TfrxADOQuery
        UserName = 'WomanMaryDivPersADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        Master = PassportComeStatementfrxRepF1.LastPesrMaryADOQ
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<LastPersMaryDivADOQ."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select * from OP_PERSONAL_DATA where'
          '((ELINK_CODE=141) OR (ELINK_CODE=158)) '
          'AND ACT_REG_ID=:OP_ID'
          'AND NOT(ELINK_ID IS NULL)    ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 204
        pTop = 496
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<LastPersMaryDivADOQ."ACTIONS_ID">'
          end>
      end
      object LastPersMaryDivADOQ: TfrxADOQuery
        UserName = 'LastPersMaryDivADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        Master = PersonsfrxDBDS
        IgnoreDupParams = False
        Params = <
          item
            Name = 'PERSON_ID'
            DataType = ftInteger
            Expression = '<PersonsfrxDBDS."PERSON_ID">'
          end
          item
            Name = 'OP_TSTAMP'
            DataType = ftDateTime
            Expression = '<CurrOperationfrxDBDS."A_TSTAMP">'
          end>
        SQL.Strings = (
          'select FIRST 1 arg.*, srv.SERVICE_CODE         '
          'from ACTIONS_REG arg LEFT JOIN ACTION_TYPES atp'
          'ON (arg.ATYPE_ID=atp.ACTION_TYPE_ID)'
          'LEFT JOIN SERVICES srv       '
          'ON (srv.SERVICE_ID=arg.SERVICE_ID)          '
          'WHERE ((atp.ACTION_TYPE_INT_CODE=6) OR '
          '(atp.ACTION_TYPE_INT_CODE=3)) AND'
          'arg.PERSON_ID=:PERSON_ID AND '
          '((srv.SERVICE_CODE=114) OR '
          '(srv.SERVICE_CODE=115)) AND'
          '(arg.A_TSTAMP<:OP_TSTAMP)      '
          
            'ORDER BY arg.A_TSTAMP DESC                                      ' +
            '  ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 204
        pTop = 380
        Parameters = <
          item
            Name = 'PERSON_ID'
            DataType = ftInteger
            Expression = '<PersonsfrxDBDS."PERSON_ID">'
          end
          item
            Name = 'OP_TSTAMP'
            DataType = ftDateTime
            Expression = '<CurrOperationfrxDBDS."A_TSTAMP">'
          end>
      end
      object ZagsMarDivBrNameDataADOQ: TfrxADOQuery
        UserName = 'ZagsMarDivBrNameDataADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        Master = PassportComeStatementfrxRepF1.LastPesrMaryADOQ
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<LastPersMaryDivADOQ."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select ael.AEL_AS_ID, ael.ACT_REG_ID,'
          ' ael.AEL_LINK_TYPE_ID, enl.ELINK_TYPE,'
          'ael.STATIC_DATA'
          'from AEL_ASSOC ael LEFT JOIN ENTLINKS enl '
          'ON (ael.AEL_LINK_TYPE_ID=enl.ELINK_ID) '
          'WHERE enl.ELINK_TYPE=7 AND ENL.ELINK_CODE=12'
          'AND ael.ACT_REG_ID=:OP_ID                           ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 360
        pTop = 380
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<LastPersMaryDivADOQ."ACTIONS_ID">'
          end>
      end
      object ZagsMarDivRecordDateADOQ: TfrxADOQuery
        UserName = 'ZagsMarDivRecordDateADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        Master = PassportComeStatementfrxRepF1.LastPesrMaryADOQ
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<LastPersMaryDivADOQ."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select ael.AEL_AS_ID, ael.ACT_REG_ID,'
          ' ael.AEL_LINK_TYPE_ID, enl.ELINK_TYPE,'
          'ael.STATIC_DATA'
          'from AEL_ASSOC ael LEFT JOIN ENTLINKS enl '
          'ON (ael.AEL_LINK_TYPE_ID=enl.ELINK_ID) '
          'WHERE enl.ELINK_TYPE=7 AND ENL.ELINK_CODE=13'
          'AND ael.ACT_REG_ID=:OP_ID                           ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 360
        pTop = 436
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<LastPersMaryDivADOQ."ACTIONS_ID">'
          end>
      end
      object ZagsMarDivRecordNumADOQ: TfrxADOQuery
        UserName = 'ZagsMarDivRecordNumADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        Master = PassportComeStatementfrxRepF1.LastPesrMaryADOQ
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<LastPersMaryDivADOQ."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select ael.AEL_AS_ID, ael.ACT_REG_ID,'
          ' ael.AEL_LINK_TYPE_ID, enl.ELINK_TYPE,'
          'ael.STATIC_DATA'
          'from AEL_ASSOC ael LEFT JOIN ENTLINKS enl '
          'ON (ael.AEL_LINK_TYPE_ID=enl.ELINK_ID) '
          'WHERE enl.ELINK_TYPE=7 AND ENL.ELINK_CODE=14'
          'AND ael.ACT_REG_ID=:OP_ID                           ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 360
        pTop = 500
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<LastPersMaryDivADOQ."ACTIONS_ID">'
          end>
      end
      object PersBirthSettlADOQ: TfrxADOQuery
        UserName = 'PersBirthSettlADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'BIRTH_SETTL_ID'
            DataType = ftInteger
            Expression = '<PersonsfrxDBDS."BIRTH_SETTLEM_ID">'
          end>
        SQL.Strings = (
          'SELECT * FROM SETTLEMENT_VIEW_EXT '
          
            'WHERE SETTLEMENT_ID=:BIRTH_SETTL_ID                             ' +
            '   ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 360
        pTop = 136
        Parameters = <
          item
            Name = 'BIRTH_SETTL_ID'
            DataType = ftInteger
            Expression = '<PersonsfrxDBDS."BIRTH_SETTLEM_ID">'
          end>
      end
      object MaryManualADOQ: TfrxADOQuery
        UserName = 'MaryManualADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        Master = PassportComeStatementfrxRepF1.LastPesrMaryADOQ
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select ael.AEL_AS_ID, ael.ACT_REG_ID,'
          ' ael.AEL_LINK_TYPE_ID, enl.ELINK_TYPE,'
          'ael.STATIC_DATA'
          'from AEL_ASSOC ael LEFT JOIN ENTLINKS enl '
          'ON (ael.AEL_LINK_TYPE_ID=enl.ELINK_ID) '
          'WHERE enl.ELINK_TYPE=7 AND ENL.ELINK_CODE=159      '
          'AND ael.ACT_REG_ID=:OP_ID                           ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 512
        pTop = 16
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
      object OwnerServiceCodeADOQ: TfrxADOQuery
        UserName = 'OwnerServiceCodeADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OWN_ACT_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTION_GROUP_ID">'
          end>
        SQL.Strings = (
          'select srv.SERVICE_CODE '
          'from ACTIONS_REG arg, SERVICES srv'
          'where arg.ACTIONS_ID=:OWN_ACT_ID AND'
          'arg.SERVICE_ID=srv.SERVICE_ID                        ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 512
        pTop = 76
        Parameters = <
          item
            Name = 'OWN_ACT_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTION_GROUP_ID">'
          end>
      end
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 210.000000000000000000
      PaperHeight = 150.000000000000000000
      PaperSize = 256
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object Shape2: TfrxShapeView
        Left = 3.779530000000000000
        Top = 26.456710000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        GroupIndex = 1
        ShowHint = False
      end
      object Shape1: TfrxShapeView
        Left = 24.566912050000000000
        Top = 26.456710000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        GroupIndex = 1
        ShowHint = False
      end
      object Shape3: TfrxShapeView
        Left = 45.354360000000000000
        Top = 26.456710000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        GroupIndex = 1
        ShowHint = False
      end
      object Shape4: TfrxShapeView
        Left = 66.141715200000000000
        Top = 26.456710000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        GroupIndex = 1
        ShowHint = False
      end
      object Shape5: TfrxShapeView
        Left = 86.929190000000000000
        Top = 26.456710000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        GroupIndex = 1
        ShowHint = False
      end
      object Shape6: TfrxShapeView
        Left = 107.716518350000000000
        Top = 26.456710000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        GroupIndex = 1
        ShowHint = False
      end
      object Shape7: TfrxShapeView
        Left = 147.401670000000000000
        Top = 26.456710000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        GroupIndex = 1
        ShowHint = False
      end
      object Shape8: TfrxShapeView
        Left = 168.188959290000000000
        Top = 26.456710000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        GroupIndex = 1
        ShowHint = False
      end
      object Shape9: TfrxShapeView
        Left = 188.976500000000000000
        Top = 26.456710000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        GroupIndex = 1
        ShowHint = False
      end
      object Shape10: TfrxShapeView
        Left = 209.763762440000000000
        Top = 26.456710000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        GroupIndex = 1
        ShowHint = False
      end
      object Shape11: TfrxShapeView
        Left = 249.448980000000000000
        Top = 26.456710000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        GroupIndex = 1
        ShowHint = False
      end
      object Shape12: TfrxShapeView
        Left = 270.236362050000000000
        Top = 26.456710000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        GroupIndex = 1
        ShowHint = False
      end
      object Shape13: TfrxShapeView
        Left = 291.023810000000000000
        Top = 26.456710000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        GroupIndex = 1
        ShowHint = False
      end
      object Shape14: TfrxShapeView
        Left = 311.811165200000000000
        Top = 26.456710000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        GroupIndex = 1
        ShowHint = False
      end
      object Shape15: TfrxShapeView
        Left = 332.598640000000000000
        Top = 26.456710000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        GroupIndex = 1
        ShowHint = False
      end
      object Shape16: TfrxShapeView
        Left = 353.385968350000000000
        Top = 26.456710000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        GroupIndex = 1
        ShowHint = False
      end
      object Shape17: TfrxShapeView
        Left = 393.071120000000000000
        Top = 26.456710000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        GroupIndex = 1
        ShowHint = False
      end
      object Shape18: TfrxShapeView
        Left = 413.858409290000000000
        Top = 26.456710000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        GroupIndex = 1
        ShowHint = False
      end
      object Shape19: TfrxShapeView
        Left = 453.543600000000000000
        Top = 26.456710000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape20: TfrxShapeView
        Left = 474.330889290000000000
        Top = 26.456710000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        GroupIndex = 1
        ShowHint = False
      end
      object Shape21: TfrxShapeView
        Left = 514.016080000000000000
        Top = 26.456710000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        GroupIndex = 1
        ShowHint = False
      end
      object Shape22: TfrxShapeView
        Left = 534.803369290000000000
        Top = 26.456710000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        GroupIndex = 1
        ShowHint = False
      end
      object Shape23: TfrxShapeView
        Left = 555.590910000000000000
        Top = 26.456710000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        GroupIndex = 1
        ShowHint = False
      end
      object Shape24: TfrxShapeView
        Left = 576.378172440000000000
        Top = 26.456710000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        GroupIndex = 1
        ShowHint = False
      end
      object Memo1: TfrxMemoView
        Left = 139.842610000000000000
        Width = 638.740570000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          
            #1055#1088#1080#1083#1086#1078#1077#1085#1080#1077' N 1 '#1082' '#1040#1076#1084#1080#1085#1080#1089#1090#1088#1072#1090#1080#1074#1085#1086#1084#1091' '#1088#1077#1075#1083#1072#1084#1077#1085#1090#1091' '#1060#1052#1057' '#1056#1086#1089#1089#1080#1080' '#1087#1086' '#1074#1099#1076#1072 +
            #1095#1077', '#1079#1072#1084#1077#1085#1077' '#1080' '#1091#1095#1077#1090#1091' '#1087#1072#1089#1087#1086#1088#1090#1086#1074' '#1075#1088#1072#1078#1076#1072#1085#1080#1085#1072' '#1056#1060#9#9'                    ' +
            '            '#1060#1086#1088#1084#1072' 1'#1055)
        ParentFont = False
      end
      object Memo2: TfrxMemoView
        Left = 3.779530000000000000
        Top = 11.338590000000000000
        Width = 593.386210000000000000
        Height = 18.897650000000000000
        GroupIndex = 1
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          
            #1050#1086#1076' '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1103' '#1060#1052#1057'           '#1055#1072#1089#1087#1086#1088#1090'       '#1089#1077#1088#1080#1103'       '#1085#1086#1084#1077#1088' ' +
            '                                        '#1076#1072#1090#1072'               '#1084#1077#1089#1103#1094 +
            '             '#1075#1086#1076
          ' ')
        ParentFont = False
      end
      object Memo3: TfrxMemoView
        Left = 37.795300000000000000
        Top = 52.913420000000000000
        Width = 578.268090000000000000
        Height = 26.456710000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          
            '[Uppercase(<PersonsfrxDBDS."LAST_NAME">+'#39' '#39'+ <PersonsfrxDBDS."FI' +
            'RST_NAME">+'#39' '#39'+<PersonsfrxDBDS."SURNAME">)]')
        ParentFont = False
      end
      object Shape25: TfrxShapeView
        Left = 222.992270000000000000
        Top = 79.370130000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape26: TfrxShapeView
        Left = 268.346630000000000000
        Top = 79.370130000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Memo4: TfrxMemoView
        Left = 136.063080000000000000
        Top = 417.637795280000000000
        Width = 608.504330000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          
            '[IIF(<OwnerServiceCodeADOQ."SERVICE_CODE">=1018,'#39#39',Uppercase(<Pa' +
            'ssComeBaseDocADOQ."DOC_FULL_NAME">))]')
        ParentFont = False
      end
      object Line1: TfrxLineView
        Left = 37.795300000000000000
        Top = 229.039370080000000000
        Width = 578.268090000000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Line2: TfrxLineView
        Left = 37.795300000000000000
        Top = 258.897637800000000000
        Width = 566.929500000000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Line3: TfrxLineView
        Left = 188.976500000000000000
        Top = 277.795275590000000000
        Width = 559.370440000000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Line5: TfrxLineView
        Left = 211.653680000000000000
        Top = 370.393940000000000000
        Width = 309.921460000000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Line6: TfrxLineView
        Left = 525.354670000000000000
        Top = 400.630180000000000000
        Width = 90.708720000000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Line7: TfrxLineView
        Left = 623.622450000000000000
        Top = 370.393940000000000000
        Width = 124.724490000000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Line8: TfrxLineView
        Left = 41.574830000000000000
        Top = 105.826840000000000000
        Width = 132.283550000000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Memo5: TfrxMemoView
        Left = 37.795300000000000000
        Top = 86.929190000000000000
        Width = 154.960730000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          
            '[DayOf(<PersonsfrxDBDS."BIRTHDATE">)] [IIF(MonthOf(<PersonsfrxDB' +
            'DS."BIRTHDATE">)=1,'#39#1071#1053#1042#1040#1056#1071#39','#39#39')][IIF(MonthOf(<PersonsfrxDBDS."BI' +
            'RTHDATE">)=2,'#39#1060#1045#1042#1056#1040#1051#1071#39','#39#39')][IIF(MonthOf(<PersonsfrxDBDS."BIRTHDA' +
            'TE">)=3,'#39#1052#1040#1056#1058#1040#39','#39#39')][IIF(MonthOf(<PersonsfrxDBDS."BIRTHDATE">)=4' +
            ','#39#1040#1055#1056#1045#1051#1071#39','#39#39')][IIF(MonthOf(<PersonsfrxDBDS."BIRTHDATE">)=5,'#39#1052#1040#1071#39 +
            ','#39#39')][IIF(MonthOf(<PersonsfrxDBDS."BIRTHDATE">)=6,'#39#1048#1070#1053#1071#39','#39#39')][II' +
            'F(MonthOf(<PersonsfrxDBDS."BIRTHDATE">)=7,'#39#1048#1070#1051#1071#39','#39#39')][IIF(MonthO' +
            'f(<PersonsfrxDBDS."BIRTHDATE">)=8,'#39#1040#1042#1043#1059#1057#1058#1040#39','#39#39')][IIF(MonthOf(<Pe' +
            'rsonsfrxDBDS."BIRTHDATE">)=9,'#39#1057#1045#1053#1058#1071#1041#1056#1071#39','#39#39')][IIF(MonthOf(<Person' +
            'sfrxDBDS."BIRTHDATE">)=10,'#39#1054#1050#1058#1071#1041#1056#1071#39','#39#39')][IIF(MonthOf(<Personsfrx' +
            'DBDS."BIRTHDATE">)=11,'#39#1053#1054#1071#1041#1056#1071#39','#39#39')][IIF(MonthOf(<PersonsfrxDBDS.' +
            '"BIRTHDATE">)=12,'#39#1044#1045#1050#1040#1041#1056#1071#39','#39#39')] [YearOf(<PersonsfrxDBDS."BIRTHDA' +
            'TE">)] '#1043'.')
        ParentFont = False
      end
      object Shape27: TfrxShapeView
        Left = 623.622450000000000000
        Top = 64.252010000000000000
        Width = 132.283464570000000000
        Height = 179.527559060000000000
        ShowHint = False
      end
      object Line9: TfrxLineView
        Left = 37.795300000000000000
        Top = 77.480314960000000000
        Width = 574.488560000000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Memo6: TfrxMemoView
        Left = 71.811070000000000000
        Top = 215.433210000000000000
        Width = 540.472790000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          
            '[Uppercase(<FatherPersonADOQ."LAST_NAME">)] [Uppercase(<FatherPe' +
            'rsonADOQ."FIRST_NAME">)] [Uppercase(<FatherPersonADOQ."SURNAME">' +
            ')]')
        ParentFont = False
      end
      object Memo7: TfrxMemoView
        Left = 71.811070000000000000
        Top = 245.669450000000000000
        Width = 551.811380000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          
            '[Uppercase(<MotherPersonADOQ."LAST_NAME">)] [Uppercase(<MotherPe' +
            'rsonADOQ."FIRST_NAME">)] [Uppercase(<MotherPersonADOQ."SURNAME">' +
            ')]')
        ParentFont = False
      end
      object Memo8: TfrxMemoView
        Left = 41.574830000000000000
        Top = 215.433210000000000000
        Width = 30.236240000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1054#1090#1077#1094)
        ParentFont = False
      end
      object Memo9: TfrxMemoView
        Left = 41.574830000000000000
        Top = 245.669450000000000000
        Width = 30.236240000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1052#1072#1090#1100)
        ParentFont = False
      end
      object Memo10: TfrxMemoView
        Left = 37.795300000000000000
        Top = 154.960730000000000000
        Width = 578.268090000000000000
        Height = 49.133890000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        LineSpacing = 18.000000000000000000
        Memo.UTF8W = (
          
            '[  IIF(Length(<MaryManualADOQ."STATIC_DATA">)>0, <MaryManualADOQ' +
            '."STATIC_DATA">, IIF(<CurrOpServiceADOQ."SERVICE_CODE">=1013,IIF' +
            '(<LastPesrMaryADOQ."ACTIONS_ID">=0,'#39#1053#1045' '#1054#1041#1053#1040#1056#1059#1046#1045#1053#1054' '#1047#1040#1055#1048#1057#1048' '#1054' '#1041#1056#1040#1050#1045 +
            '!!!'#39', '#39#1041#1056#1040#1050' '#1047#1040#1056#1045#1043#1048#1057#1058#1056#1048#1056#1054#1042#1040#1053' - '#39'+IIF(<ManMaryPersonADOQ."ELINK_ID' +
            '">=0,IIF(<WomanMaryADOQ."ELINK_ID">=0,'#39' '#1053#1045#1058' '#1044#1040#1053#1053#1067#1061' '#1055#1054' '#1057#1059#1055#1056#1059#1043#1059' '#39',' +
            #39#1078#1077#1085#1072' '#39'+<WomanMaryADOQ."LAST_NAME">+'#39' '#39'+<WomanMaryADOQ."FIRST_NA' +
            'ME">+'#39' '#39'+<WomanMaryADOQ."SURNAME">),'#39#1084#1091#1078' '#39'+<ManMaryPersonADOQ."L' +
            'AST_NAME">+'#39' '#39'+<ManMaryPersonADOQ."FIRST_NAME">+'#39' '#39'+<ManMaryPers' +
            'onADOQ."SURNAME">)+'#39', '#39'+<ZagsBrancheNameDataADOQ."STATIC_DATA">+' +
            #39', '#39'+<ZagsRecordDateADOQ."STATIC_DATA">+'#39', '#8470' '#1079#1072#1087'. '#39'+<ZagsRecordN' +
            'umADOQ."STATIC_DATA">),'
          
            'IIF(<CurrOpServiceADOQ."SERVICE_CODE">=1015,IIF(<LastPersDivorce' +
            'ADOQ."ACTIONS_ID">=0,'#39#1053#1045' '#1054#1041#1053#1040#1056#1059#1046#1045#1053#1054' '#1047#1040#1055#1048#1057#1048' '#1054' '#1056#1040#1047#1042#1054#1044#1045'!!!'#39', '#39#1041#1056#1040#1050' ' +
            #1056#1040#1057#1058#1054#1056#1043#1053#1059#1058'- '#39'+IIF(<ManDivorcePersonADOQ."ELINK_ID">=0,IIF(<Woman' +
            'DivorceADOQ."ELINK_ID">=0,'#39' '#1053#1045#1058' '#1044#1040#1053#1053#1067#1061' '#1055#1054' '#1057#1059#1055#1056#1059#1043#1059' '#39','#39#1073#1099#1074#1096#1072#1103' '#1078#1077#1085#1072 +
            ' '#39'+<WomanDivorceADOQ."LAST_NAME">+'#39' '#39'+<WomanDivorceADOQ."FIRST_N' +
            'AME">+'#39' '#39'+<WomanDivorceADOQ."SURNAME">),'#39#1073#1099#1074#1096#1080#1081' '#1084#1091#1078' '#39'+<ManDivorc' +
            'ePersonADOQ."LAST_NAME">+'#39' '#39'+<ManDivorcePersonADOQ."FIRST_NAME">' +
            '+'#39' '#39'+<ManDivorcePersonADOQ."SURNAME">)+'#39', '#39'+<ZagsDivBrancheNameD' +
            'ataADOQ."STATIC_DATA">+'#39', '#39'+<ZagsDivRecordDateADOQ."STATIC_DATA"' +
            '>+'#39', '#8470' '#1079#1072#1087'. '#39'+<ZagsDivRecordNumADOQ."STATIC_DATA">),IIF(<LastPer' +
            'sMaryDivADOQ."SERVICE_CODE">=0,IIF(Pos('#39#1084#1091#1078#39',<PersonViewDetailAD' +
            'OT."SEX_NAME">)>0,'#39#1061#1054#1051#1054#1057#1058#39','#39#1053#1045' '#1047#1040#1052#1059#1046#1045#1052#39'),  IIF(<LastPersMaryDivA' +
            'DOQ."SERVICE_CODE">=114,'#39#1042' '#1056#1040#1047#1042#1054#1044#1045' - '#39
          
            '+IIF(<ManMaryDivPersADOQ."ELINK_ID">=0,IIF(<WomanMaryDivPersADOQ' +
            '."ELINK_ID">=0,'#39' '#1053#1045#1058' '#1044#1040#1053#1053#1067#1061' '#1055#1054' '#1057#1059#1055#1056#1059#1043#1059' '#39','#39#1073#1099#1074#1096#1072#1103' '#1078#1077#1085#1072' '#39'+<WomanMa' +
            'ryDivPersADOQ."LAST_NAME">+'#39' '#39'+<WomanMaryDivPersADOQ."FIRST_NAME' +
            '">+'#39' '#39'+<WomanMaryDivPersADOQ."SURNAME">),'#39#1073#1099#1074#1096#1080#1081' '#1084#1091#1078' '#39'+<ManMaryD' +
            'ivPersADOQ."LAST_NAME">+'#39' '#39'+<ManMaryDivPersADOQ."FIRST_NAME">+'#39' ' +
            #39'+<ManMaryDivPersADOQ."SURNAME">)+'#39', '#39'+<ZagsMarDivBrNameDataADOQ' +
            '."STATIC_DATA">+'#39', '#39'+<ZagsMarDivRecordDateADOQ."STATIC_DATA">+'#39',' +
            ' '#8470' '#1079#1072#1087'. '#39'+<ZagsMarDivRecordNumADOQ."STATIC_DATA">,'
          'IIF(<LastPersMaryDivADOQ."SERVICE_CODE">=115,'#39#1042' '#1041#1056#1040#1050#1045' - '#39
          
            '+IIF(<ManMaryDivPersADOQ."ELINK_ID">=0,IIF(<WomanMaryDivPersADOQ' +
            '."ELINK_ID">=0,'#39' '#1053#1045#1058' '#1044#1040#1053#1053#1067#1061' '#1055#1054' '#1057#1059#1055#1056#1059#1043#1059' '#39','#39#1078#1077#1085#1072' '#39'+<WomanMaryDivPe' +
            'rsADOQ."LAST_NAME">+'#39' '#39'+<WomanMaryDivPersADOQ."FIRST_NAME">+'#39' '#39'+' +
            '<WomanMaryDivPersADOQ."SURNAME">),'#39#1084#1091#1078' '#39'+<ManMaryDivPersADOQ."LA' +
            'ST_NAME">+'#39' '#39'+<ManMaryDivPersADOQ."FIRST_NAME">+'#39' '#39'+<ManMaryDivP' +
            'ersADOQ."SURNAME">)+'#39', '#39'+<ZagsMarDivBrNameDataADOQ."STATIC_DATA"' +
            '>+'#39', '#39'+<ZagsMarDivRecordDateADOQ."STATIC_DATA">+'#39', '#8470' '#1079#1072#1087'. '#39'+<Zag' +
            'sMarDivRecordNumADOQ."STATIC_DATA">'
          ','#39#1053#1045#1055#1056#1045#1044#1059#1057#1052#1054#1058#1056#1045#1053#1053#1067#1049' '#1058#1048#1055' '#1047#1040#1055#1048#1057#1048' '#1047#1040#1043#1057#39'))  ) ) )        )] ')
        ParentFont = False
      end
      object Memo11: TfrxMemoView
        Left = 328.819110000000000000
        Top = 90.708720000000000000
        Width = 287.244280000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        HAlign = haCenter
        LineSpacing = 20.000000000000000000
        Memo.UTF8W = (
          
            '[Uppercase(<PersBirthSettlADOQ."SHORT_TEXT">+'#39' '#39'+<PersBirthSettl' +
            'ADOQ."SETTLEM_NAME">)]')
        ParentFont = False
      end
      object Memo13: TfrxMemoView
        Left = 222.992270000000000000
        Top = 83.149660000000000000
        Width = 26.456710000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '[IIF(Pos('#39#1084#1091#1078#39',<PersonViewDetailADOT."SEX_NAME">)>0,'#39'V'#39','#39' '#39')]')
        ParentFont = False
      end
      object Memo14: TfrxMemoView
        Left = 268.346630000000000000
        Top = 83.149660000000000000
        Width = 26.456710000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '[IIF(Pos('#39#1078#1077#1085#39',<PersonViewDetailADOT."SEX_NAME">)>0,'#39'V'#39','#39' '#39')]')
        ParentFont = False
      end
      object Line10: TfrxLineView
        Left = 188.976500000000000000
        Top = 308.031496060000000000
        Width = 559.370440000000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Line11: TfrxLineView
        Left = 332.598640000000000000
        Top = 105.826840000000000000
        Width = 283.464750000000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Line12: TfrxLineView
        Left = 37.795300000000000000
        Top = 137.952755905512000000
        Width = 578.268090000000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Line13: TfrxLineView
        Left = 37.795300000000000000
        Top = 168.566929130000000000
        Width = 578.268090000000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Line14: TfrxLineView
        Left = 37.795300000000000000
        Top = 198.425196850394000000
        Width = 578.268090000000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Line15: TfrxLineView
        Left = 37.795300000000000000
        Top = 105.826840000000000000
        Width = 154.960730000000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Memo15: TfrxMemoView
        Left = 41.574830000000000000
        Top = 75.590600000000000000
        Width = 117.165430000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1060#1072#1084#1080#1083#1080#1103', '#1080#1084#1103', '#1086#1090#1095#1077#1089#1090#1074#1086)
        ParentFont = False
      end
      object Line16: TfrxLineView
        Left = 37.795300000000000000
        Top = 137.952755910000000000
        Width = 578.268090000000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Memo16: TfrxMemoView
        Left = 41.574830000000000000
        Top = 105.826840000000000000
        Width = 132.283550000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1063#1080#1089#1083#1086', '#1084#1077#1089#1103#1094', '#1075#1086#1076' '#1088#1086#1078#1076#1077#1085#1080#1103)
        ParentFont = False
      end
      object Memo17: TfrxMemoView
        Left = 332.598640000000000000
        Top = 105.826840000000000000
        Width = 234.330860000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1052#1077#1089#1090#1086' '#1088#1086#1078#1076#1077#1085#1080#1103', '#1089#1077#1083#1086', '#1087#1086#1089#1077#1083#1086#1082', '#1075#1086#1088#1086#1076', '#1088#1072#1081#1086#1085)
        ParentFont = False
      end
      object Memo18: TfrxMemoView
        Left = 41.574830000000000000
        Top = 136.063080000000000000
        Width = 570.709030000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          
            #1086#1073#1083#1072#1089#1090#1100', '#1082#1088#1072#1081', '#1088#1077#1089#1087#1091#1073#1083#1080#1082#1072' ('#1087#1086' '#1089#1091#1097#1077#1089#1090#1074#1086#1074#1072#1074#1096#1077#1084#1091' '#1072#1076#1084#1080#1085#1080#1089#1090#1088#1072#1090#1080#1074#1085#1086'-'#1090#1077 +
            #1088#1088#1080#1090#1086#1088#1080#1072#1083#1100#1085#1086#1084#1091' '#1076#1077#1083#1077#1085#1080#1102')')
        ParentFont = False
      end
      object Memo19: TfrxMemoView
        Left = 45.354360000000000000
        Top = 166.299320000000000000
        Width = 570.709030000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          
            #1057#1077#1084#1077#1081#1085#1086#1077' '#1087#1086#1083#1086#1078#1077#1085#1080#1077' ('#1077#1089#1083#1080' '#1089#1086#1089#1090#1086#1080#1090' '#1074' '#1073#1088#1072#1082#1077', '#1091#1082#1072#1079#1072#1090#1100' '#1092#1072#1084#1080#1083#1080#1102', '#1080#1084#1103', ' +
            #1086#1090#1095#1077#1089#1090#1074#1086' '#1078#1077#1085#1099'/'#1084#1091#1078#1072')')
        ParentFont = False
      end
      object Line17: TfrxLineView
        Left = 37.795300000000000000
        Top = 198.425196850394000000
        Width = 578.268090000000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Memo20: TfrxMemoView
        Left = 41.574830000000000000
        Top = 196.535560000000000000
        Width = 570.709030000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1082#1072#1082#1080#1084' '#1086#1088#1075#1072#1085#1086#1084' '#1047#1040#1043#1057#1072' '#1080' '#1082#1086#1075#1076#1072' '#1079#1072#1088#1077#1075#1080#1089#1090#1088#1080#1088#1086#1074#1072#1085' '#1073#1088#1072#1082)
        ParentFont = False
      end
      object Memo21: TfrxMemoView
        Left = 41.574830000000000000
        Top = 226.771800000000000000
        Width = 570.709030000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1060#1072#1084#1080#1083#1080#1103', '#1080#1084#1103', '#1086#1090#1095#1077#1089#1090#1074#1086' '#1086#1090#1094#1072' '#1080' '#1084#1072#1090#1077#1088#1080)
        ParentFont = False
      end
      object Memo22: TfrxMemoView
        Left = 45.354360000000000000
        Top = 260.787570000000000000
        Width = 37.795300000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1052#1077#1089#1090#1086)
        ParentFont = False
      end
      object Shape28: TfrxShapeView
        Left = 105.826840000000000000
        Top = 264.567100000000000000
        Width = 7.559060000000000000
        Height = 7.559060000000000000
        ShowHint = False
        Shape = skEllipse
      end
      object Shape29: TfrxShapeView
        Left = 105.826840000000000000
        Top = 283.464750000000000000
        Width = 7.559060000000000000
        Height = 7.559060000000000000
        ShowHint = False
        Shape = skEllipse
      end
      object Shape30: TfrxShapeView
        Left = 105.826840000000000000
        Top = 302.362400000000000000
        Width = 7.559060000000000000
        Height = 7.559060000000000000
        ShowHint = False
        Shape = skEllipse
      end
      object Memo23: TfrxMemoView
        Left = 117.165430000000000000
        Top = 260.787570000000000000
        Width = 68.031540000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1078#1080#1090#1077#1083#1100#1089#1090#1074#1072)
        ParentFont = False
      end
      object Memo24: TfrxMemoView
        Left = 117.165430000000000000
        Top = 279.685220000000000000
        Width = 68.031540000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1087#1088#1077#1073#1099#1074#1072#1085#1080#1103)
        ParentFont = False
      end
      object Memo25: TfrxMemoView
        Left = 117.165430000000000000
        Top = 298.582870000000000000
        Width = 68.031540000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1086#1073#1088#1072#1097#1077#1085#1080#1103)
        ParentFont = False
      end
      object Memo26: TfrxMemoView
        Left = 192.756030000000000000
        Top = 275.905690000000000000
        Width = 551.811380000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1073#1083#1072#1089#1090#1080', '#1075#1086#1088#1086#1076#1072', '#1087#1086#1089#1077#1083#1082#1072', '#1089#1077#1083#1072',')
        ParentFont = False
      end
      object Memo27: TfrxMemoView
        Left = 192.756030000000000000
        Top = 306.141930000000000000
        Width = 551.811380000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1085#1072#1079#1074#1072#1085#1080#1077' '#1091#1083#1080#1094#1099', '#1076#1086#1084', '#1082#1086#1088#1087#1091#1089', '#1082#1074#1072#1088#1090#1080#1088#1072)
        ParentFont = False
      end
      object Memo28: TfrxMemoView
        Left = 22.677180000000000000
        Top = 56.692950000000000000
        Width = 15.118120000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '1.')
        ParentFont = False
      end
      object Memo29: TfrxMemoView
        Left = 22.677180000000000000
        Top = 90.708720000000000000
        Width = 15.118120000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '2.')
        ParentFont = False
      end
      object Memo30: TfrxMemoView
        Left = 22.677180000000000000
        Top = 151.181200000000000000
        Width = 15.118120000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '5.')
        ParentFont = False
      end
      object Memo31: TfrxMemoView
        Left = 192.756030000000000000
        Top = 90.708720000000000000
        Width = 15.118120000000000000
        Height = 15.118120000000000000
        Visible = False
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '3.')
        ParentFont = False
      end
      object Memo32: TfrxMemoView
        Left = 309.921460000000000000
        Top = 90.708720000000000000
        Width = 15.118120000000000000
        Height = 15.118120000000000000
        Visible = False
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '4.')
        ParentFont = False
      end
      object Memo33: TfrxMemoView
        Left = 200.315090000000000000
        Top = 90.708720000000000000
        Width = 26.456710000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1055#1086#1083)
        ParentFont = False
      end
      object Memo34: TfrxMemoView
        Left = 242.645669291339000000
        Top = 90.708720000000000000
        Width = 26.456710000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1084#1091#1078'.')
        ParentFont = False
      end
      object Memo35: TfrxMemoView
        Left = 288.377952755906000000
        Top = 90.708720000000000000
        Width = 26.456710000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1078#1077#1085'.')
        ParentFont = False
      end
      object Memo36: TfrxMemoView
        Left = 22.677180000000000000
        Top = 211.653680000000000000
        Width = 15.118120000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '6.')
        ParentFont = False
      end
      object Memo37: TfrxMemoView
        Left = 22.677180000000000000
        Top = 260.787570000000000000
        Width = 15.118120000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '7.')
        ParentFont = False
      end
      object Line18: TfrxLineView
        Left = 37.795300000000000000
        Top = 338.267716540000000000
        Width = 710.551640000000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Memo38: TfrxMemoView
        Left = 128.504020000000000000
        Top = 336.378170000000000000
        Width = 551.811380000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          
            ' '#1057#1086#1089#1090#1086#1103#1083' '#1083#1080' '#1088#1072#1085#1077#1077' '#1074' '#1080#1085#1086#1089#1090#1088#1072#1085#1085#1086#1084' '#1075#1088#1072#1078#1076#1072#1085#1089#1090#1074#1077' '#1080' '#1082#1086#1075#1076#1072' '#1087#1088#1080#1085#1103#1090' '#1074' '#1088#1086#1089 +
            #1089#1080#1081#1089#1082#1086#1077' '#1075#1088#1072#1078#1076#1072#1085#1089#1090#1074#1086)
        ParentFont = False
      end
      object Memo39: TfrxMemoView
        Left = 22.677180000000000000
        Top = 321.260050000000000000
        Width = 15.118120000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '8.')
        ParentFont = False
      end
      object Memo40: TfrxMemoView
        Left = 22.677180000000000000
        Top = 355.275820000000000000
        Width = 15.118120000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '9.')
        ParentFont = False
      end
      object Memo41: TfrxMemoView
        Left = 18.897650000000000000
        Top = 385.512060000000000000
        Width = 18.897650000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '10.')
        ParentFont = False
      end
      object Memo42: TfrxMemoView
        Left = 41.574830000000000000
        Top = 355.275820000000000000
        Width = 181.417440000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1055#1088#1086#1096#1091' '#1074#1099#1076#1072#1090#1100' ('#1079#1072#1084#1077#1085#1080#1090#1100') '#1087#1072#1089#1087#1086#1088#1090' ')
        ParentFont = False
      end
      object Memo43: TfrxMemoView
        Left = 234.330860000000000000
        Top = 370.393940000000000000
        Width = 200.315090000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1091#1082#1072#1079#1072#1090#1100' '#1087#1088#1080#1095#1080#1085#1091' '#1074#1099#1076#1072#1095#1080'/'#1079#1072#1084#1077#1085#1099' '#1087#1072#1089#1087#1086#1088#1090#1072)
        ParentFont = False
      end
      object Memo44: TfrxMemoView
        Left = 41.574830000000000000
        Top = 385.512060000000000000
        Width = 68.031540000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1055#1086#1076#1087#1080#1089#1100' '#1075#1088'.')
        ParentFont = False
      end
      object Line19: TfrxLineView
        Left = 113.385900000000000000
        Top = 400.630180000000000000
        Width = 362.834880000000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Memo45: TfrxMemoView
        Left = 661.417750000000000000
        Top = 370.393940000000000000
        Width = 60.472480000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1087#1086#1076#1087#1080#1089#1100)
        ParentFont = False
      end
      object Line20: TfrxLineView
        Left = 532.913730000000000000
        Top = 370.393940000000000000
        Width = 83.149660000000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Memo46: TfrxMemoView
        Left = 566.929500000000000000
        Top = 370.393940000000000000
        Width = 60.472480000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1076#1072#1090#1072)
        ParentFont = False
      end
      object Memo47: TfrxMemoView
        Left = 18.897650000000000000
        Top = 415.748300000000000000
        Width = 18.897650000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '11.')
        ParentFont = False
      end
      object Memo48: TfrxMemoView
        Left = 45.354360000000000000
        Top = 411.968770000000000000
        Width = 86.929190000000000000
        Height = 30.236240000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1055#1072#1089#1087#1086#1088#1090' '#1074#1099#1076#1072#1090#1100' '#1085#1072' '#1086#1089#1085#1086#1074#1072#1085#1080#1080)
        ParentFont = False
      end
      object Memo49: TfrxMemoView
        Left = 26.456710000000000000
        Top = 445.984540000000000000
        Width = 154.960730000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1056#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1100' '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1103)
        ParentFont = False
      end
      object Memo50: TfrxMemoView
        Left = 22.677180000000000000
        Top = 476.220780000000000000
        Width = 102.047310000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1055#1072#1089#1087#1086#1088#1090' '#1087#1086#1083#1091#1095#1080#1083)
        ParentFont = False
      end
      object Memo51: TfrxMemoView
        Left = 480.000310000000000000
        Top = 385.512060000000000000
        Width = 49.133890000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1079#1072#1074#1077#1088#1103#1102)
        ParentFont = False
      end
      object Memo52: TfrxMemoView
        Left = 548.031850000000000000
        Top = 400.630180000000000000
        Width = 60.472480000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1087#1086#1076#1087#1080#1089#1100)
        ParentFont = False
      end
      object Line21: TfrxLineView
        Left = 623.622450000000000000
        Top = 400.630180000000000000
        Width = 124.724490000000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Memo53: TfrxMemoView
        Left = 627.401980000000000000
        Top = 400.630180000000000000
        Width = 117.165430000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1088#1072#1089#1096#1080#1092#1088#1086#1074#1082#1072' '#1087#1086#1076#1087#1080#1089#1080)
        ParentFont = False
      end
      object Line22: TfrxLineView
        Left = 136.063080000000000000
        Top = 430.866420000000000000
        Width = 612.283860000000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Memo54: TfrxMemoView
        Left = 181.417440000000000000
        Top = 430.866420000000000000
        Width = 347.716760000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1072', '#1089#1077#1088#1080#1103', '#1085#1086#1084#1077#1088', '#1082#1086#1075#1076#1072' '#1080' '#1082#1077#1084' '#1074#1099#1076#1072#1085)
        ParentFont = False
      end
      object Memo55: TfrxMemoView
        Left = 396.850650000000000000
        Top = 445.984540000000000000
        Width = 102.047310000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1055#1072#1089#1087#1086#1088#1090' '#1086#1092#1086#1088#1084#1080#1083)
        ParentFont = False
      end
      object Memo56: TfrxMemoView
        Left = 241.889920000000000000
        Top = 461.102660000000000000
        Width = 60.472480000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1087#1086#1076#1087#1080#1089#1100)
        ParentFont = False
      end
      object Memo57: TfrxMemoView
        Left = 604.724800000000000000
        Top = 461.102660000000000000
        Width = 60.472480000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1087#1086#1076#1087#1080#1089#1100)
        ParentFont = False
      end
      object Memo58: TfrxMemoView
        Left = 234.330860000000000000
        Top = 491.338900000000000000
        Width = 154.960730000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1060#1072#1084#1080#1083#1080#1103', '#1080#1084#1103', '#1086#1090#1095#1077#1089#1090#1074#1086)
        ParentFont = False
      end
      object Memo59: TfrxMemoView
        Left = 566.929500000000000000
        Top = 491.338900000000000000
        Width = 60.472480000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1076#1072#1090#1072)
        ParentFont = False
      end
      object Memo60: TfrxMemoView
        Left = 661.417750000000000000
        Top = 491.338900000000000000
        Width = 60.472480000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1087#1086#1076#1087#1080#1089#1100)
        ParentFont = False
      end
      object Memo61: TfrxMemoView
        Left = 188.976500000000000000
        Top = 264.567100000000000000
        Width = 555.590910000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          
            '[IIF(Pos(Uppercase(<ResidingPlaceAdrADOQuery."STATE_SHORT">),'#39#1056#1045 +
            #1057#1055#39')>0,Uppercase(<ResidingPlaceAdrADOQuery."STATE_SHORT">),'#39#39')] ' +
            '[Uppercase(<ResidingPlaceAdrADOQuery."STATE_NAME">)] [IIF(Pos(Up' +
            'percase(<ResidingPlaceAdrADOQuery."STATE_SHORT">),'#39#1056#1045#1057#1055#39')=0,Uppe' +
            'rcase(<ResidingPlaceAdrADOQuery."STATE_SHORT">),'#39#39')] [Uppercase(' +
            '<ResidingPlaceAdrADOQuery."DISTRICT_NAME">+'#39' '#39'+<ResidingPlaceAdr' +
            'ADOQuery."DISTRICT_SHORT">)] [Uppercase(<ResidingPlaceAdrADOQuer' +
            'y."SETTLEM_SHORT">+'#39' '#39'+<ResidingPlaceAdrADOQuery."SETTLEM_NAME">' +
            ')]')
        ParentFont = False
      end
      object Memo62: TfrxMemoView
        Left = 188.976500000000000000
        Top = 294.803340000000000000
        Width = 555.590910000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          
            '[ResidingPlaceAdrADOQuery."STREET_SHORT"] [Uppercase(<ResidingPl' +
            'aceAdrADOQuery."STREET_NAME">)][IIF(<ResidingPlaceAdrADOQuery."H' +
            'OUSE_NUM">=0,'#39' '#39','#39' '#1044'.'#39'+Uppercase(IntToStr(<ResidingPlaceAdrADOQu' +
            'ery."HOUSE_NUM">)))][IIF(<ResidingPlaceAdrADOQuery."APARTMENT_NU' +
            'M">=0,'#39' '#39','#39' '#1050#1042'.'#39'+Uppercase(IntToStr(<ResidingPlaceAdrADOQuery."A' +
            'PARTMENT_NUM">)))]')
        ParentFont = False
      end
      object Line4: TfrxLineView
        Left = 185.196970000000000000
        Top = 461.102660000000000000
        Width = 211.653680000000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Line23: TfrxLineView
        Left = 495.118430000000000000
        Top = 461.102660000000000000
        Width = 253.228510000000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Line24: TfrxLineView
        Left = 623.622450000000000000
        Top = 491.338900000000000000
        Width = 124.724490000000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Line25: TfrxLineView
        Left = 532.913730000000000000
        Top = 491.338900000000000000
        Width = 83.149660000000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Line26: TfrxLineView
        Left = 117.165430000000000000
        Top = 491.338900000000000000
        Width = 404.409710000000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
        Diagonal = True
      end
      object Memo12: TfrxMemoView
        Left = 105.070866140000000000
        Top = 250.204724410000000000
        Width = 26.456710000000000000
        Height = 30.236240000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[IIF(<ResidingPlaceAdrADOQuery."ELREG_ELINK_CODE">=17,'#39'.'#39','#39#39')]')
        ParentFont = False
      end
      object Memo111: TfrxMemoView
        Left = 105.070866140000000000
        Top = 268.724409450000000000
        Width = 26.456710000000000000
        Height = 30.236240000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[IIF(<ResidingPlaceAdrADOQuery."ELREG_ELINK_CODE">=18,'#39'.'#39','#39#39')]')
        ParentFont = False
      end
      object Memo112: TfrxMemoView
        Left = 105.070866141732000000
        Top = 288.000000000000000000
        Width = 26.456710000000000000
        Height = 26.456710000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[IIF(<ResidingPlaceAdrADOQuery."ELREG_ELINK_CODE">=19,'#39'.'#39','#39#39')]')
        ParentFont = False
      end
      object Memo113: TfrxMemoView
        Left = 222.992270000000000000
        Top = 355.275820000000000000
        Width = 298.582870000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '[Uppercase(<PassTakeReasonADOQ."STATIC_DATA">)]')
        ParentFont = False
      end
      object Memo114: TfrxMemoView
        Left = 109.606370000000000000
        Top = 385.512060000000000000
        Width = 366.614410000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          
            '[Uppercase(<PersonsfrxDBDS."LAST_NAME">+'#39' '#39'+ Copy(<PersonsfrxDBD' +
            'S."FIRST_NAME">,0,1)+'#39'.'#39'+Copy(<PersonsfrxDBDS."SURNAME">,0,1)+'#39'.' +
            #39')]')
        ParentFont = False
      end
      object Memo115: TfrxMemoView
        Left = 37.795300000000000000
        Top = 122.834645670000000000
        Width = 578.268090000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        HAlign = haCenter
        LineSpacing = 20.000000000000000000
        Memo.UTF8W = (
          '[Uppercase(<PersBirthSettlADOQ."DISTRICT_FULL_NAME">)]')
        ParentFont = False
      end
    end
    object Page2: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 210.000000000000000000
      PaperHeight = 148.000000000000000000
      PaperSize = 11
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object Memo63: TfrxMemoView
        Left = 45.354360000000000000
        Top = 56.692950000000000000
        Width = 257.008040000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1055#1077#1088#1077#1084#1077#1085#1080#1083'('#1072') '#1060#1048#1054' '#1080' '#1076#1088#1091#1075#1080#1077' '#1072#1085#1082#1077#1090#1085#1099#1077' '#1076#1072#1085#1085#1099#1077' '#1089)
        ParentFont = False
      end
      object Memo64: TfrxMemoView
        Left = 18.897650000000000000
        Top = 56.692950000000000000
        Width = 18.897650000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '12.')
        ParentFont = False
      end
      object Memo65: TfrxMemoView
        Left = 18.897650000000000000
        Top = 90.708720000000000000
        Width = 18.897650000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '13.')
        ParentFont = False
      end
      object Memo66: TfrxMemoView
        Left = 18.897650000000000000
        Top = 151.181200000000000000
        Width = 18.897650000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '14.')
        ParentFont = False
      end
      object Memo67: TfrxMemoView
        Left = 45.354360000000000000
        Top = 90.708720000000000000
        Width = 321.260050000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1056#1072#1085#1077#1077' '#1080#1084#1077#1083' '#1087#1072#1089#1087#1086#1088#1090' '#1075#1088#1072#1078#1076#1072#1085#1080#1085#1072' '#1056#1086#1089#1089#1080#1081#1089#1082#1086#1081' '#1060#1077#1076#1077#1088#1072#1094#1080#1080)
        ParentFont = False
      end
      object Shape31: TfrxShapeView
        Top = 124.724490000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape32: TfrxShapeView
        Left = 20.787382050000000000
        Top = 124.724490000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape33: TfrxShapeView
        Left = 41.574830000000000000
        Top = 124.724490000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape34: TfrxShapeView
        Left = 62.362185200000000000
        Top = 124.724490000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape35: TfrxShapeView
        Left = 83.149660000000000000
        Top = 124.724490000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape36: TfrxShapeView
        Left = 103.936988350000000000
        Top = 124.724490000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape37: TfrxShapeView
        Left = 143.622140000000000000
        Top = 124.724490000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape38: TfrxShapeView
        Left = 164.409429290000000000
        Top = 124.724490000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape39: TfrxShapeView
        Left = 185.196970000000000000
        Top = 124.724490000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape40: TfrxShapeView
        Left = 205.984232440000000000
        Top = 124.724490000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape41: TfrxShapeView
        Left = 245.669450000000000000
        Top = 124.724490000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape42: TfrxShapeView
        Left = 266.456832050000000000
        Top = 124.724490000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape43: TfrxShapeView
        Left = 287.244280000000000000
        Top = 124.724490000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape44: TfrxShapeView
        Left = 308.031635200000000000
        Top = 124.724490000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape45: TfrxShapeView
        Left = 328.819110000000000000
        Top = 124.724490000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape46: TfrxShapeView
        Left = 349.606438350000000000
        Top = 124.724490000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape47: TfrxShapeView
        Left = 389.291590000000000000
        Top = 124.724490000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape48: TfrxShapeView
        Left = 410.078879290000000000
        Top = 124.724490000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape49: TfrxShapeView
        Left = 470.551359290000000000
        Top = 124.724490000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape50: TfrxShapeView
        Left = 510.236550000000000000
        Top = 124.724490000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape51: TfrxShapeView
        Left = 531.023839290000000000
        Top = 124.724490000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape52: TfrxShapeView
        Left = 551.811380000000000000
        Top = 124.724490000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape53: TfrxShapeView
        Left = 572.598642440000000000
        Top = 124.724490000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Memo68: TfrxMemoView
        Top = 109.606370000000000000
        Width = 593.386210000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          
            #1050#1086#1076' '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1103' '#1060#1052#1057'           '#1055#1072#1089#1087#1086#1088#1090'       '#1089#1077#1088#1080#1103'       '#1085#1086#1084#1077#1088' ' +
            '                                        '#1076#1072#1090#1072'               '#1084#1077#1089#1103#1094 +
            '             '#1075#1086#1076
          ' ')
        ParentFont = False
      end
      object Shape54: TfrxShapeView
        Top = 185.196970000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape55: TfrxShapeView
        Left = 20.787382050000000000
        Top = 185.196970000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape56: TfrxShapeView
        Left = 41.574830000000000000
        Top = 185.196970000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape57: TfrxShapeView
        Left = 62.362185200000000000
        Top = 185.196970000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape58: TfrxShapeView
        Left = 83.149660000000000000
        Top = 185.196970000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape59: TfrxShapeView
        Left = 103.936988350000000000
        Top = 185.196970000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape60: TfrxShapeView
        Left = 143.622140000000000000
        Top = 185.196970000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape61: TfrxShapeView
        Left = 164.409429290000000000
        Top = 185.196970000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape62: TfrxShapeView
        Left = 185.196970000000000000
        Top = 185.196970000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape63: TfrxShapeView
        Left = 205.984232440000000000
        Top = 185.196970000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape64: TfrxShapeView
        Left = 245.669450000000000000
        Top = 185.196970000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape65: TfrxShapeView
        Left = 266.456832050000000000
        Top = 185.196970000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape66: TfrxShapeView
        Left = 287.244280000000000000
        Top = 185.196970000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape67: TfrxShapeView
        Left = 308.031635200000000000
        Top = 185.196970000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape68: TfrxShapeView
        Left = 328.819110000000000000
        Top = 185.196970000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape69: TfrxShapeView
        Left = 349.606438350000000000
        Top = 185.196970000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape70: TfrxShapeView
        Left = 389.291590000000000000
        Top = 185.196970000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape71: TfrxShapeView
        Left = 410.078879290000000000
        Top = 185.196970000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape72: TfrxShapeView
        Left = 470.551359290000000000
        Top = 185.196970000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape73: TfrxShapeView
        Left = 510.236550000000000000
        Top = 185.196970000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape74: TfrxShapeView
        Left = 531.023839290000000000
        Top = 185.196970000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape75: TfrxShapeView
        Left = 551.811380000000000000
        Top = 185.196970000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape76: TfrxShapeView
        Left = 572.598642440000000000
        Top = 185.196970000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Memo69: TfrxMemoView
        Top = 170.078850000000000000
        Width = 593.386210000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          
            #1050#1086#1076' '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1103' '#1060#1052#1057'           '#1055#1072#1089#1087#1086#1088#1090'       '#1089#1077#1088#1080#1103'       '#1085#1086#1084#1077#1088' ' +
            '                                        '#1076#1072#1090#1072'               '#1084#1077#1089#1103#1094 +
            '             '#1075#1086#1076
          ' ')
        ParentFont = False
      end
      object Memo70: TfrxMemoView
        Left = 158.740260000000000000
        Top = 11.338590000000000000
        Width = 638.740570000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          
            #1055#1088#1080#1083#1086#1078#1077#1085#1080#1077' N 1 '#1082' '#1040#1076#1084#1080#1085#1080#1089#1090#1088#1072#1090#1080#1074#1085#1086#1084#1091' '#1088#1077#1075#1083#1072#1084#1077#1085#1090#1091' '#1060#1052#1057' '#1056#1086#1089#1089#1080#1080' '#1087#1086' '#1074#1099#1076#1072 +
            #1095#1077', '#1079#1072#1084#1077#1085#1077' '#1080' '#1091#1095#1077#1090#1091' '#1087#1072#1089#1087#1086#1088#1090#1086#1074' '#1075#1088#1072#1078#1076#1072#1085#1080#1085#1072' '#1056#1060#9#9'                    ' +
            '         ')
        ParentFont = False
      end
      object Memo71: TfrxMemoView
        Left = 158.740260000000000000
        Top = 26.456710000000000000
        Width = 445.984540000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          
            #1047#1072#1103#1074#1083#1077#1085#1080#1077' '#1086' '#1074#1099#1076#1072#1095#1077' ('#1079#1072#1084#1077#1085#1077') '#1087#1072#1089#1087#1086#1088#1090#1072'. '#1060#1086#1088#1084#1072' N 1'#1055' ('#1086#1073#1086#1088#1086#1090#1085#1072#1103' '#1089#1090#1086#1088 +
            #1086#1085#1072')')
        ParentFont = False
      end
      object Memo72: TfrxMemoView
        Left = 37.795300000000000000
        Top = 151.181200000000000000
        Width = 555.590910000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          
            #1042#1099#1076#1072#1085' '#1086#1089#1085#1086#1074#1085#1086#1081' '#1076#1086#1082#1091#1084#1077#1085#1090', '#1091#1076#1086#1089#1090#1086#1074#1077#1088#1103#1102#1097#1080#1081' '#1083#1080#1095#1085#1086#1089#1090#1100' '#1075#1088#1072#1078#1076#1072#1085#1080#1085#1072' '#1079#1072' '#1087 +
            #1088#1077#1076#1077#1083#1072#1084#1080' '#1056#1086#1089#1089#1080#1081#1089#1082#1086#1081' '#1060#1077#1076#1077#1088#1072#1094#1080#1080)
        ParentFont = False
      end
      object Memo73: TfrxMemoView
        Left = 18.897650000000000000
        Top = 215.433210000000000000
        Width = 18.897650000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '15.')
        ParentFont = False
      end
      object Memo74: TfrxMemoView
        Left = 18.897650000000000000
        Top = 275.905690000000000000
        Width = 18.897650000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '16.')
        ParentFont = False
      end
      object Memo75: TfrxMemoView
        Left = 18.897650000000000000
        Top = 336.378170000000000000
        Width = 18.897650000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '17.')
        ParentFont = False
      end
      object Memo76: TfrxMemoView
        Left = 18.897650000000000000
        Top = 423.307360000000000000
        Width = 18.897650000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '18.')
        ParentFont = False
      end
      object Memo77: TfrxMemoView
        Left = 321.260050000000000000
        Top = 234.330860000000000000
        Width = 177.637910000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1103)
        ParentFont = False
      end
      object Memo78: TfrxMemoView
        Left = 321.260050000000000000
        Top = 260.787570000000000000
        Width = 177.637910000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1091#1082#1072#1079#1072#1090#1100' '#1087#1088#1080#1095#1080#1085#1091)
        ParentFont = False
      end
      object Memo79: TfrxMemoView
        Left = 321.260050000000000000
        Top = 291.023810000000000000
        Width = 177.637910000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1088#1075#1072#1085#1072' '#1060#1052#1057' '#1056#1086#1089#1089#1080#1080)
        ParentFont = False
      end
      object Memo80: TfrxMemoView
        Left = 321.260050000000000000
        Top = 321.260050000000000000
        Width = 177.637910000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1091#1082#1072#1079#1072#1090#1100' '#1087#1088#1080#1095#1080#1085#1091)
        ParentFont = False
      end
      object Memo81: TfrxMemoView
        Left = 234.330860000000000000
        Top = 355.275820000000000000
        Width = 275.905690000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1103', '#1091#1085#1080#1095#1090#1086#1078#1080#1074#1096#1077#1075#1086' '#1087#1072#1089#1087#1086#1088#1090)
        ParentFont = False
      end
      object Memo82: TfrxMemoView
        Left = 41.574830000000000000
        Top = 215.433210000000000000
        Width = 192.756030000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1055#1086#1089#1090#1091#1087#1080#1083' '#1079#1072#1087#1088#1086#1089' '#1087#1086' '#1092#1086#1088#1084#1077' N 25'#1055' '#1080#1079)
        ParentFont = False
      end
      object Memo83: TfrxMemoView
        Left = 41.574830000000000000
        Top = 245.669450000000000000
        Width = 52.913420000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1074' '#1089#1074#1103#1079#1080' '#1089)
        ParentFont = False
      end
      object Memo84: TfrxMemoView
        Left = 41.574830000000000000
        Top = 275.905690000000000000
        Width = 136.063080000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1055#1086#1089#1090#1091#1087#1080#1083#1086' '#1089#1086#1086#1073#1097#1077#1085#1080#1077' '#1080#1079)
        ParentFont = False
      end
      object Memo85: TfrxMemoView
        Left = 41.574830000000000000
        Top = 306.141930000000000000
        Width = 136.063080000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1086#1073' '#1091#1085#1080#1095#1090#1086#1078#1077#1085#1080#1080' '#1074' '#1089#1074#1103#1079#1080' '#1089)
        ParentFont = False
      end
      object Memo86: TfrxMemoView
        Left = 41.574830000000000000
        Top = 336.378170000000000000
        Width = 151.181200000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1055#1072#1089#1087#1086#1088#1090' '#1091#1085#1080#1095#1090#1086#1078#1077#1085' '#1087#1086' '#1072#1082#1090#1091)
        ParentFont = False
      end
      object Shape77: TfrxShapeView
        Left = 627.401980000000000000
        Top = 68.031540000000000000
        Width = 120.944960000000000000
        Height = 56.692950000000000000
        GroupIndex = 1
        ShowHint = False
      end
      object Memo87: TfrxMemoView
        Left = 18.897650000000000000
        Top = 423.307360000000000000
        Width = 585.827150000000000000
        Height = 34.015770000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          
            '        '#1044#1088#1091#1075#1080#1077' '#1089#1074#1077#1076#1077#1085#1080#1103' '#1085#1072' '#1086#1089#1085#1086#1074#1072#1085#1080#1080' '#1087#1091#1085#1082#1090#1072'                     ' +
            '     '#1095#1072#1089#1090#1080'                        '#1089#1090#1072#1090#1100#1080'                       '#1060 +
            #1077#1076#1077#1088#1072#1083#1100#1085#1086#1075#1086' '#1079#1072#1082#1086#1085#1072' "'#1054' '#1075#1088#1072#1078#1076#1072#1085#1089#1082#1086#1081' '#1056#1086#1089#1089#1080#1081#1089#1082#1086#1081' '#1060#1077#1076#1077#1088#1072#1094#1080#1080'" '#1086#1090' 31.05' +
            '.2002 '#1075#1086#1076#1072' '#8470'62-'#1060'3')
        ParentFont = False
      end
      object Line27: TfrxLineView
        Left = 302.362400000000000000
        Top = 71.811070000000000000
        Width = 317.480520000000000000
        ShowHint = False
        Diagonal = True
      end
      object Line28: TfrxLineView
        Left = 15.118120000000000000
        Top = 90.708720000000000000
        Width = 604.724800000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line29: TfrxLineView
        Left = 234.330860000000000000
        Top = 230.551330000000000000
        Width = 514.016080000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line30: TfrxLineView
        Left = 94.488250000000000000
        Top = 260.787570000000000000
        Width = 653.858690000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line31: TfrxLineView
        Left = 177.637910000000000000
        Top = 291.023810000000000000
        Width = 570.709030000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line32: TfrxLineView
        Left = 177.637910000000000000
        Top = 321.260050000000000000
        Width = 442.205010000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line33: TfrxLineView
        Left = 192.756030000000000000
        Top = 355.275820000000000000
        Width = 427.086890000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Shape78: TfrxShapeView
        Top = 389.291590000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape79: TfrxShapeView
        Left = 20.787382050000000000
        Top = 389.291590000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape80: TfrxShapeView
        Left = 41.574830000000000000
        Top = 389.291590000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape81: TfrxShapeView
        Left = 62.362185200000000000
        Top = 389.291590000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape82: TfrxShapeView
        Left = 83.149660000000000000
        Top = 389.291590000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape83: TfrxShapeView
        Left = 103.936988350000000000
        Top = 389.291590000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape87: TfrxShapeView
        Left = 145.511752440000000000
        Top = 389.291590000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape88: TfrxShapeView
        Left = 166.299320000000000000
        Top = 389.291590000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape89: TfrxShapeView
        Left = 187.086702050000000000
        Top = 389.291590000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape90: TfrxShapeView
        Left = 207.874150000000000000
        Top = 389.291590000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape91: TfrxShapeView
        Left = 228.661505200000000000
        Top = 389.291590000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape92: TfrxShapeView
        Left = 249.448980000000000000
        Top = 389.291590000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape93: TfrxShapeView
        Left = 270.236308350000000000
        Top = 389.291590000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape94: TfrxShapeView
        Left = 309.921460000000000000
        Top = 389.291590000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape95: TfrxShapeView
        Left = 330.708749290000000000
        Top = 389.291590000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape96: TfrxShapeView
        Left = 391.181229290000000000
        Top = 389.291590000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape97: TfrxShapeView
        Left = 430.866420000000000000
        Top = 389.291590000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape98: TfrxShapeView
        Left = 451.653709290000000000
        Top = 389.291590000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape99: TfrxShapeView
        Left = 472.441250000000000000
        Top = 389.291590000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape100: TfrxShapeView
        Left = 493.228512440000000000
        Top = 389.291590000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Memo88: TfrxMemoView
        Top = 374.173470000000000000
        Width = 593.386210000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          
            #1050#1086#1076' '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1103' '#1060#1052#1057'           '#1040#1082#1090' '#1085#1086#1084#1077#1088'                       ' +
            '                    '#1076#1072#1090#1072'               '#1084#1077#1089#1103#1094'             '#1075#1086#1076
          ' ')
        ParentFont = False
      end
      object Memo89: TfrxMemoView
        Left = 631.181510000000000000
        Top = 68.031540000000000000
        Width = 177.637910000000000000
        Height = 15.118120000000000000
        GroupIndex = 1
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1044#1072#1090#1072':')
        ParentFont = False
      end
      object Memo90: TfrxMemoView
        Left = 631.181510000000000000
        Top = 79.370130000000000000
        Width = 177.637910000000000000
        Height = 15.118120000000000000
        GroupIndex = 1
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1053#1086#1084#1077#1088':')
        ParentFont = False
      end
      object Memo91: TfrxMemoView
        Left = 631.181510000000000000
        Top = 105.826840000000000000
        Width = 177.637910000000000000
        Height = 15.118120000000000000
        GroupIndex = 1
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1055#1086#1076#1087#1080#1089#1100':')
        ParentFont = False
      end
      object Memo92: TfrxMemoView
        Left = 631.181510000000000000
        Top = 52.913420000000000000
        Width = 98.267780000000000000
        Height = 15.118120000000000000
        GroupIndex = 1
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1042#1074#1077#1076#1077#1085#1086' '#1074' '#1040#1057)
        ParentFont = False
      end
      object Shape101: TfrxShapeView
        Left = 627.401980000000000000
        Top = 162.519790000000000000
        Width = 120.944960000000000000
        Height = 56.692950000000000000
        ShowHint = False
      end
      object Memo93: TfrxMemoView
        Left = 631.181510000000000000
        Top = 162.519790000000000000
        Width = 177.637910000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1044#1072#1090#1072':')
        ParentFont = False
      end
      object Memo94: TfrxMemoView
        Left = 631.181510000000000000
        Top = 173.858380000000000000
        Width = 177.637910000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1053#1086#1084#1077#1088':')
        ParentFont = False
      end
      object Memo95: TfrxMemoView
        Left = 631.181510000000000000
        Top = 200.315090000000000000
        Width = 177.637910000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1055#1086#1076#1087#1080#1089#1100':')
        ParentFont = False
      end
      object Memo96: TfrxMemoView
        Left = 631.181510000000000000
        Top = 147.401670000000000000
        Width = 98.267780000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1042#1074#1077#1076#1077#1085#1086' '#1074' '#1040#1057)
        ParentFont = False
      end
      object Line34: TfrxLineView
        Left = 411.968770000000000000
        Top = 453.543600000000000000
        Width = 207.874150000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line35: TfrxLineView
        Left = 18.897650000000000000
        Top = 472.441250000000000000
        Width = 600.945270000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Shape102: TfrxShapeView
        Left = 627.401980000000000000
        Top = 325.039580000000000000
        Width = 120.944960000000000000
        Height = 56.692950000000000000
        ShowHint = False
      end
      object Memo97: TfrxMemoView
        Left = 631.181510000000000000
        Top = 325.039580000000000000
        Width = 177.637910000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1044#1072#1090#1072':')
        ParentFont = False
      end
      object Memo98: TfrxMemoView
        Left = 631.181510000000000000
        Top = 336.378170000000000000
        Width = 177.637910000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1053#1086#1084#1077#1088':')
        ParentFont = False
      end
      object Memo99: TfrxMemoView
        Left = 631.181510000000000000
        Top = 362.834880000000000000
        Width = 177.637910000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1055#1086#1076#1087#1080#1089#1100':')
        ParentFont = False
      end
      object Memo100: TfrxMemoView
        Left = 631.181510000000000000
        Top = 309.921460000000000000
        Width = 98.267780000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1042#1074#1077#1076#1077#1085#1086' '#1074' '#1040#1057)
        ParentFont = False
      end
      object Shape103: TfrxShapeView
        Left = 627.401980000000000000
        Top = 404.409710000000000000
        Width = 120.944960000000000000
        Height = 56.692950000000000000
        ShowHint = False
      end
      object Memo101: TfrxMemoView
        Left = 631.181510000000000000
        Top = 404.409710000000000000
        Width = 177.637910000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1044#1072#1090#1072':')
        ParentFont = False
      end
      object Memo102: TfrxMemoView
        Left = 631.181510000000000000
        Top = 415.748300000000000000
        Width = 177.637910000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1053#1086#1084#1077#1088':')
        ParentFont = False
      end
      object Memo103: TfrxMemoView
        Left = 631.181510000000000000
        Top = 442.205010000000000000
        Width = 177.637910000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1055#1086#1076#1087#1080#1089#1100':')
        ParentFont = False
      end
      object Memo104: TfrxMemoView
        Left = 631.181510000000000000
        Top = 389.291590000000000000
        Width = 98.267780000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1042#1074#1077#1076#1077#1085#1086' '#1074' '#1040#1057)
        ParentFont = False
      end
      object Shape84: TfrxShapeView
        Left = 449.764070000000000000
        Top = 124.724490000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape85: TfrxShapeView
        Left = 449.764070000000000000
        Top = 185.196970000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Shape86: TfrxShapeView
        Left = 370.393940000000000000
        Top = 389.291590000000000000
        Width = 20.787401570000000000
        Height = 26.456692910000000000
        ShowHint = False
      end
      object Memo105: TfrxMemoView
        Left = 3.779530000000000000
        Top = 124.724490000000000000
        Width = 132.283550000000000000
        Height = 18.897650000000000000
        ShowHint = False
        CharSpacing = 12.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          
            '[IIF(<OwnerServiceCodeADOQ."SERVICE_CODE">=1018,'#39#39', IIF(Pos('#39'-'#39',' +
            '<PrevRegIdentDocADOQ."DOC_BRANCHE_CODE">)>0,Copy(<PrevRegIdentDo' +
            'cADOQ."DOC_BRANCHE_CODE">,1,Pos('#39'-'#39',<PrevRegIdentDocADOQ."DOC_BR' +
            'ANCHE_CODE">)-1)+Copy(<PrevRegIdentDocADOQ."DOC_BRANCHE_CODE">,P' +
            'os('#39'-'#39',<PrevRegIdentDocADOQ."DOC_BRANCHE_CODE">)+1,Length(<PrevR' +
            'egIdentDocADOQ."DOC_BRANCHE_CODE">)-Pos('#39'-'#39',<PrevRegIdentDocADOQ' +
            '."DOC_BRANCHE_CODE">)+1),<PrevRegIdentDocADOQ."DOC_BRANCHE_CODE"' +
            '>))]')
        ParentFont = False
      end
      object Memo106: TfrxMemoView
        Left = 151.181200000000000000
        Top = 124.724490000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        ShowHint = False
        CharSpacing = 12.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          
            '[IIF(<OwnerServiceCodeADOQ."SERVICE_CODE">=1018,'#39#39',<PrevRegIdent' +
            'DocADOQ."DOC_SERIE">)]')
        ParentFont = False
      end
      object Memo107: TfrxMemoView
        Left = 249.448980000000000000
        Top = 124.724490000000000000
        Width = 132.283550000000000000
        Height = 18.897650000000000000
        ShowHint = False
        CharSpacing = 12.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          
            '[IIF(<OwnerServiceCodeADOQ."SERVICE_CODE">=1018,'#39#39',<PrevRegIdent' +
            'DocADOQ."DOC_NUM">)]')
        ParentFont = False
      end
      object Memo108: TfrxMemoView
        Left = 393.071120000000000000
        Top = 124.724490000000000000
        Width = 52.913420000000000000
        Height = 18.897650000000000000
        ShowHint = False
        CharSpacing = 12.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          
            '[IIF(<OwnerServiceCodeADOQ."SERVICE_CODE">=1018,'#39#39',IIF(YearOf(<P' +
            'revRegIdentDocADOQ."DOC_CREATE_DATE">)>1901,IIF(DayOf(<PrevRegId' +
            'entDocADOQ."DOC_CREATE_DATE">)<10,'#39'0'#39','#39#39')+IntToStr(DayOf(<PrevRe' +
            'gIdentDocADOQ."DOC_CREATE_DATE">)),'#39#39'))]')
        ParentFont = False
      end
      object Memo109: TfrxMemoView
        Left = 453.543600000000000000
        Top = 124.724490000000000000
        Width = 52.913420000000000000
        Height = 18.897650000000000000
        ShowHint = False
        CharSpacing = 12.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          
            '[IIF(<OwnerServiceCodeADOQ."SERVICE_CODE">=1018,'#39#39',IIF(YearOf(<P' +
            'revRegIdentDocADOQ."DOC_CREATE_DATE">)>1901,IIF(MonthOf(<PrevReg' +
            'IdentDocADOQ."DOC_CREATE_DATE">)<10,'#39'0'#39','#39#39')+IntToStr(MonthOf(<Pr' +
            'evRegIdentDocADOQ."DOC_CREATE_DATE">)),'#39#39'))]')
        ParentFont = False
      end
      object Memo110: TfrxMemoView
        Left = 514.016080000000000000
        Top = 124.724490000000000000
        Width = 98.267780000000000000
        Height = 18.897650000000000000
        ShowHint = False
        CharSpacing = 12.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          
            '[IIF(<OwnerServiceCodeADOQ."SERVICE_CODE">=1018,'#39#39',IIF(YearOf(<P' +
            'revRegIdentDocADOQ."DOC_CREATE_DATE">)>1901,YearOf(<PrevRegIdent' +
            'DocADOQ."DOC_CREATE_DATE">),'#39#39'))]')
        ParentFont = False
      end
    end
  end
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = RUSSIAN_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    OpenDir = 'C:\DEVELOP(1)\Sources\FMS\reports'
    SaveDir = 'C:\DEVELOP(1)\Sources\FMS\reports'
    TemplatesExt = 'fr3'
    TemplateDir = 'C:\DEVELOP(1)\Sources\FMS\reports'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 224
    Top = 136
  end
  object frxADOComponents: TfrxADOComponents
    DefaultDatabase = DataConnection.FMSStorageADOC
    Left = 224
    Top = 24
  end
  object frxDialogControls: TfrxDialogControls
    Left = 224
    Top = 192
  end
  object IncomeAdrPaperRepF2forF1P: TfrxReport
    Version = '4.12'
    DotMatrixReport = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Maximized = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41069.148392129600000000
    ReportOptions.LastChange = 41188.476681388890000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnPreview = IncomeAdrPaperRepF2forF1PPreview
    OnPrintReport = IncomeAdrPaperRepF2forF1PPrintReport
    Left = 72
    Top = 304
    Datasets = <
      item
        DataSet = IncomeAdrPaperRepF2forF1P.ChangePersonADOQ
        DataSetName = 'ChangePersonADOQ'
      end
      item
        DataSet = CurrOperationfrxDBDS
        DataSetName = 'CurrOperationfrxDBDS'
      end
      item
        DataSet = IncomeAdrPaperRepF2forF1P.IdentityDocADOQ
        DataSetName = 'IdentityDocADOQ'
      end
      item
        DataSet = IncomeAdrPaperRepF2forF1P.MoveFromAdrADOQuery
        DataSetName = 'MoveFromAdrADOQuery'
      end
      item
        DataSet = IncomeAdrPaperRepF2forF1P.MoveInSettlementADOQuery
        DataSetName = 'MoveInSettlementADOQuery'
      end
      item
        DataSet = PersonsfrxDBDS
        DataSetName = 'PersonsfrxDBDS'
      end
      item
        DataSet = IncomeAdrPaperRepF2forF1P.RegisterAdresADOQuery
        DataSetName = 'RegisterAdresADOQuery'
      end
      item
        DataSet = IncomeAdrPaperRepF2forF1P.PersonViewDetailADOT
        DataSetName = 'PersonViewDetailADOT'
      end
      item
        DataSet = IncomeAdrPaperRepF2forF1P.RegPlaceTypeDateADOQ
        DataSetName = 'RegPlaceTypeDateADOQ'
      end
      item
        DataSet = IncomeAdrPaperRepF2forF1P.PersDetailChangeADOQ
        DataSetName = 'PersDetailChangeADOQ'
      end
      item
        DataSet = IncomeAdrPaperRepF2forF1P.OthReasonADOQ
        DataSetName = 'OthReasonADOQ'
      end
      item
        DataSet = IncomeAdrPaperRepF2forF1P.BasePersADOQ
        DataSetName = 'BasePersADOQ'
      end
      item
        DataSet = IncomeAdrPaperRepF2forF1P.OwnerServiceCodeADOQ
        DataSetName = 'OwnerServiceCodeADOQ'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
      object ChangePersonADOQ: TfrxADOQuery
        UserName = 'ChangePersonADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        Master = CurrOperationfrxDBDS
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select * from OP_PERSONAL_DATA where'
          
            'ELINK_CODE=136 AND ACT_REG_ID=:OP_ID                            ' +
            '                                            ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 64
        pTop = 24
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
      object IdentityDocADOQ: TfrxADOQuery
        UserName = 'IdentityDocADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        Master = CurrOperationfrxDBDS
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select * from OP_DOC_DATA where'
          
            'ELINK_CODE=1 AND ACT_REG_ID=:OP_ID                              ' +
            '                                          ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 344
        pTop = 24
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
      object MoveFromAdrADOQuery: TfrxADOQuery
        UserName = 'MoveFromAdrADOQuery'
        CloseDataSource = True
        BCDToCurrency = False
        Master = CurrOperationfrxDBDS
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select * from OP_ADR_DATA where'
          
            'ELINK_CODE=3 AND ACT_REG_ID=:OP_ID                              ' +
            '                                          ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 208
        pTop = 84
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
      object RegisterAdresADOQuery: TfrxADOQuery
        UserName = 'RegisterAdresADOQuery'
        CloseDataSource = True
        BCDToCurrency = False
        Master = CurrOperationfrxDBDS
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select * from OP_ADR_DATA where'
          
            'ELINK_CODE=132 AND ACT_REG_ID=:OP_ID                            ' +
            '                                            ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 208
        pTop = 24
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
      object MoveInSettlementADOQuery: TfrxADOQuery
        UserName = 'MoveInSettlementADOQuery'
        CloseDataSource = True
        BCDToCurrency = False
        Master = CurrOperationfrxDBDS
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select * from OP_ADR_DATA where'
          
            'ELINK_CODE=135 AND ACT_REG_ID=:OP_ID                            ' +
            '                                            ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 208
        pTop = 136
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
      object PersonViewDetailADOT: TfrxADOQuery
        UserName = 'PersonViewDetailADOT'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'CURR_PERSON_ID'
            DataType = ftInteger
            Expression = '<PersonsfrxDBDS."PERSON_ID">'
          end>
        SQL.Strings = (
          'SELECT * FROM PERSON_VIEW_DETAIL'
          
            'WHERE PERSON_ID=:CURR_PERSON_ID                                 ' +
            '                                       ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 68
        pTop = 84
        Parameters = <
          item
            Name = 'CURR_PERSON_ID'
            DataType = ftInteger
            Expression = '<PersonsfrxDBDS."PERSON_ID">'
          end>
      end
      object RegPlaceTypeDateADOQ: TfrxADOQuery
        UserName = 'RegPlaceTypeDateADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select ael.AEL_AS_ID, ael.ACT_REG_ID,'
          ' ael.AEL_LINK_TYPE_ID, enl.ELINK_TYPE,'
          'ael.STATIC_DATA'
          'from AEL_ASSOC ael LEFT JOIN ENTLINKS enl '
          'ON (ael.AEL_LINK_TYPE_ID=enl.ELINK_ID) '
          'WHERE enl.ELINK_TYPE=7 AND ENL.ELINK_CODE=153      '
          'AND ael.ACT_REG_ID=:OP_ID                           ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 344
        pTop = 84
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
      object PersDetailChangeADOQ: TfrxADOQuery
        UserName = 'PersDetailChangeADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'CURR_PERSON_ID'
            DataType = ftInteger
            Expression = '<ChangePersonADOQ."ELINK_ID">'
          end>
        SQL.Strings = (
          'SELECT * FROM PERSON_VIEW_DETAIL'
          
            'WHERE PERSON_ID=:CURR_PERSON_ID                                 ' +
            '                                       ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 68
        pTop = 136
        Parameters = <
          item
            Name = 'CURR_PERSON_ID'
            DataType = ftInteger
            Expression = '<ChangePersonADOQ."ELINK_ID">'
          end>
      end
      object OthReasonADOQ: TfrxADOQuery
        UserName = 'OthReasonADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select ael.AEL_AS_ID, ael.ACT_REG_ID,'
          ' ael.AEL_LINK_TYPE_ID, enl.ELINK_TYPE,'
          'ael.STATIC_DATA'
          'from AEL_ASSOC ael LEFT JOIN ENTLINKS enl '
          'ON (ael.AEL_LINK_TYPE_ID=enl.ELINK_ID) '
          'WHERE enl.ELINK_TYPE=7 AND ENL.ELINK_CODE=154        '
          'AND ael.ACT_REG_ID=:OP_ID                           ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 344
        pTop = 136
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
      object BasePersADOQ: TfrxADOQuery
        UserName = 'BasePersADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        Master = CurrOperationfrxDBDS
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select * from OP_PERSONAL_DATA where'
          
            'ELINK_CODE=5 AND ACT_REG_ID=:OP_ID                              ' +
            '                                          ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 68
        pTop = 196
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
      object OwnerServiceCodeADOQ: TfrxADOQuery
        UserName = 'OwnerServiceCodeADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OWN_ACT_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTION_GROUP_ID">'
          end>
        SQL.Strings = (
          'select srv.SERVICE_CODE '
          'from ACTIONS_REG arg, SERVICES srv'
          'where arg.ACTIONS_ID=:OWN_ACT_ID AND'
          'arg.SERVICE_ID=srv.SERVICE_ID                        ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 208
        pTop = 196
        Parameters = <
          item
            Name = 'OWN_ACT_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTION_GROUP_ID">'
          end>
      end
    end
    object Page1: TfrxReportPage
      PaperWidth = 110.000000000000000000
      PaperHeight = 155.000000000000000000
      PaperSize = 256
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object Memo1: TfrxMemoView
        Left = 60.472480000000000000
        Top = 34.015770000000000000
        Width = 313.700990000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          '[Uppercase(<PersonsfrxDBDS."LAST_NAME">)]')
        ParentFont = False
      end
      object Memo2: TfrxMemoView
        Left = 37.795300000000000000
        Top = 49.133890000000000000
        Width = 336.378170000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          '[Uppercase(<PersonsfrxDBDS."FIRST_NAME">)]')
        ParentFont = False
      end
      object Memo3: TfrxMemoView
        Left = 60.472480000000000000
        Top = 64.252010000000000000
        Width = 309.921460000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          '[Uppercase(<PersonsfrxDBDS."SURNAME">)]')
        ParentFont = False
      end
      object Memo4: TfrxMemoView
        Left = 90.708720000000000000
        Top = 79.370130000000000000
        Width = 26.456710000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          
            '[IIF(DayOf(<PersonsfrxDBDS."BIRTHDATE">)<10,'#39'0'#39','#39#39')][DayOf(<Pers' +
            'onsfrxDBDS."BIRTHDATE">)]')
        ParentFont = False
      end
      object Memo5: TfrxMemoView
        Left = 128.504020000000000000
        Top = 79.370130000000000000
        Width = 68.031540000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          
            '[IIF(MonthOf(<PersonsfrxDBDS."BIRTHDATE">)=1,'#39#1071#1053#1042#1040#1056#1071#39','#39#39')][IIF(M' +
            'onthOf(<PersonsfrxDBDS."BIRTHDATE">)=2,'#39#1060#1045#1042#1056#1040#1051#1071#39','#39#39')][IIF(MonthO' +
            'f(<PersonsfrxDBDS."BIRTHDATE">)=3,'#39#1052#1040#1056#1058#1040#39','#39#39')][IIF(MonthOf(<Pers' +
            'onsfrxDBDS."BIRTHDATE">)=4,'#39#1040#1055#1056#1045#1051#1071#39','#39#39')][IIF(MonthOf(<Personsfrx' +
            'DBDS."BIRTHDATE">)=5,'#39#1052#1040#1071#39','#39#39')][IIF(MonthOf(<PersonsfrxDBDS."BIR' +
            'THDATE">)=6,'#39#1048#1070#1053#1071#39','#39#39')][IIF(MonthOf(<PersonsfrxDBDS."BIRTHDATE">' +
            ')=7,'#39#1048#1070#1051#1071#39','#39#39')][IIF(MonthOf(<PersonsfrxDBDS."BIRTHDATE">)=8,'#39#1040#1042#1043 +
            #1059#1057#1058#1040#39','#39#39')][IIF(MonthOf(<PersonsfrxDBDS."BIRTHDATE">)=9,'#39#1057#1045#1053#1058#1071#1041#1056#1071 +
            #39','#39#39')][IIF(MonthOf(<PersonsfrxDBDS."BIRTHDATE">)=10,'#39#1054#1050#1058#1071#1041#1056#1071#39','#39#39 +
            ')][IIF(MonthOf(<PersonsfrxDBDS."BIRTHDATE">)=11,'#39#1053#1054#1071#1041#1056#1071#39','#39#39')][II' +
            'F(MonthOf(<PersonsfrxDBDS."BIRTHDATE">)=12,'#39#1044#1045#1050#1040#1041#1056#1071#39','#39#39')]')
        ParentFont = False
      end
      object Memo6: TfrxMemoView
        Left = 196.535560000000000000
        Top = 79.370130000000000000
        Width = 37.795300000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[YearOf(<PersonsfrxDBDS."BIRTHDATE">)]')
        ParentFont = False
      end
      object Memo7: TfrxMemoView
        Left = 321.260050000000000000
        Top = 79.370130000000000000
        Width = 52.913420000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          
            '[IIF(Pos('#39#1084#1091#1078#39',Lowercase(<PersonViewDetailADOT."SEX_NAME">))>0,'#39 +
            #1052#1059#1046#39',IIF(Pos('#39#1078#1077#1085#39',Lowercase(<PersonViewDetailADOT."SEX_NAME">))' +
            '>0,'#39#1046#1045#1053#39','#39#39'))]')
        ParentFont = False
      end
      object Memo8: TfrxMemoView
        Left = 128.504020000000000000
        Top = 95.622047240000000000
        Width = 245.669450000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          '[Uppercase(<PersonViewDetailADOT."BIRTH_COUNT">)]')
        ParentFont = False
      end
      object Memo9: TfrxMemoView
        Left = 37.795300000000000000
        Top = 109.606370000000000000
        Width = 336.378170000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          '[Uppercase(<PersonViewDetailADOT."REGION_NAME">)]')
        ParentFont = False
      end
      object Memo10: TfrxMemoView
        Left = 34.015770000000000000
        Top = 123.590551181102000000
        Width = 343.937230000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          '[Uppercase(<PersonViewDetailADOT."DISTRICT_NAME">)]')
        ParentFont = False
      end
      object Memo11: TfrxMemoView
        Left = 30.236240000000000000
        Top = 137.574803150000000000
        Width = 343.937230000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          
            '[IIF(<PersonViewDetailADOT."ITS_CITY">=1,Uppercase(<PersonViewDe' +
            'tailADOT."SETTLEM_NAME">),'#39#39')]')
        ParentFont = False
      end
      object Memo12: TfrxMemoView
        Left = 86.929190000000000000
        Top = 151.937007870000000000
        Width = 287.244280000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          
            '[IIF(<PersonViewDetailADOT."ITS_CITY">=1,'#39#39',Uppercase(<PersonVie' +
            'wDetailADOT."SETTLEM_NAME">))]')
        ParentFont = False
      end
      object Memo13: TfrxMemoView
        Left = 52.913420000000000000
        Top = 200.315090000000000000
        Width = 321.260050000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          '[Uppercase(<RegisterAdresADOQuery."COUNTRY_NAME">)]')
        ParentFont = False
      end
      object Memo14: TfrxMemoView
        Left = 37.795300000000000000
        Top = 212.787401570000000000
        Width = 336.378170000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          
            '[IIF(Pos('#39#1056#1045#1057#1055#39',Uppercase(<RegisterAdresADOQuery."STATE_SHORT_FU' +
            'LL">))>0, Uppercase(<RegisterAdresADOQuery."STATE_SHORT_FULL">),' +
            #39#39')] [Uppercase(<RegisterAdresADOQuery."STATE_NAME">)] [IIF(Pos(' +
            #39#1056#1045#1057#1055#39',Uppercase(<RegisterAdresADOQuery."STATE_SHORT_FULL">))>0,' +
            #39#39',Uppercase(<RegisterAdresADOQuery."STATE_SHORT_FULL">))]')
        ParentFont = False
      end
      object Memo15: TfrxMemoView
        Left = 34.015770000000000000
        Top = 227.149606300000000000
        Width = 340.157700000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          '[Uppercase(<RegisterAdresADOQuery."DISTRICT_NAME">)]')
        ParentFont = False
      end
      object Memo16: TfrxMemoView
        Left = 34.015770000000000000
        Top = 240.755905510000000000
        Width = 340.157700000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          
            '[IIF(<RegisterAdresADOQuery."ITS_CITY">=1,Uppercase(<RegisterAdr' +
            'esADOQuery."SETTLEM_NAME">),'#39#39')]')
        ParentFont = False
      end
      object Memo17: TfrxMemoView
        Left = 90.708720000000000000
        Top = 253.984251970000000000
        Width = 283.464750000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          
            '[IIF(<RegisterAdresADOQuery."ITS_CITY">=1,'#39#39',Uppercase(<Register' +
            'AdresADOQuery."SETTL_SHORT_FULL">+'#39' '#39'+<RegisterAdresADOQuery."SE' +
            'TTLEM_NAME">))]')
        ParentFont = False
      end
      object Memo18: TfrxMemoView
        Left = 18.897650000000000000
        Top = 272.126160000000000000
        Width = 173.858380000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          '[Uppercase(<RegisterAdresADOQuery."STREET_NAME">)]')
        ParentFont = False
      end
      object Memo19: TfrxMemoView
        Left = 219.212740000000000000
        Top = 272.126160000000000000
        Width = 37.795300000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[Uppercase(<RegisterAdresADOQuery."HOUSE_NUM">)]')
        ParentFont = False
      end
      object Memo20: TfrxMemoView
        Left = 279.685220000000000000
        Top = 272.126160000000000000
        Width = 37.795300000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[Uppercase(<RegisterAdresADOQuery."CORPUS">)]')
        ParentFont = False
      end
      object Memo21: TfrxMemoView
        Left = 336.378170000000000000
        Top = 272.126160000000000000
        Width = 37.795300000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          
            '[IIF(<RegisterAdresADOQuery."APARTMENT_NUM">=0,'#39#39',Uppercase(<Reg' +
            'isterAdresADOQuery."APARTMENT_NUM">))]')
        ParentFont = False
      end
      object Memo22: TfrxMemoView
        Left = 147.401670000000000000
        Top = 317.480520000000000000
        Width = 226.771800000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          
            '[IIF(<OwnerServiceCodeADOQ."SERVICE_CODE">=1018,'#39#1055#1040#1057#1055#1054#1056#1058' '#1056#1060#39',IIF' +
            '(<OwnerServiceCodeADOQ."SERVICE_CODE">=1019,'#39#1055#1040#1057#1055#1054#1056#1058' '#1056#1060#39',Upperca' +
            'se(<IdentityDocADOQ."DOC_TYPE_NAME">) ))]')
        ParentFont = False
      end
      object Memo23: TfrxMemoView
        Left = 30.236240000000000000
        Top = 336.378170000000000000
        Width = 49.133890000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          
            '[IIF(<OwnerServiceCodeADOQ."SERVICE_CODE">=1018,'#39#39',IIF(<OwnerSer' +
            'viceCodeADOQ."SERVICE_CODE">=1019,'#39#39',Uppercase(<IdentityDocADOQ.' +
            '"DOC_SERIE">) ))]')
        ParentFont = False
      end
      object Memo24: TfrxMemoView
        Left = 109.606370000000000000
        Top = 336.378170000000000000
        Width = 68.031540000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          
            '[IIF(<OwnerServiceCodeADOQ."SERVICE_CODE">=1018,'#39#39',IIF(<OwnerSer' +
            'viceCodeADOQ."SERVICE_CODE">=1019,'#39#39',Uppercase(<IdentityDocADOQ.' +
            '"DOC_NUM">) ))]')
        ParentFont = False
      end
      object Memo25: TfrxMemoView
        Left = 219.212740000000000000
        Top = 336.378170000000000000
        Width = 22.677180000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          
            '[IIF(<OwnerServiceCodeADOQ."SERVICE_CODE">=1018,'#39#39',IIF(<OwnerSer' +
            'viceCodeADOQ."SERVICE_CODE">=1019,'#39#39',IIF(DayOf(<IdentityDocADOQ.' +
            '"DOC_CREATE_DATE">)<10,'#39'0'#39','#39#39')))][IIF(<OwnerServiceCodeADOQ."SER' +
            'VICE_CODE">=1018,'#39#39',IIF(<OwnerServiceCodeADOQ."SERVICE_CODE">=10' +
            '19,'#39#39',DayOf(<IdentityDocADOQ."DOC_CREATE_DATE">) ))]')
        ParentFont = False
      end
      object Memo26: TfrxMemoView
        Left = 249.448980000000000000
        Top = 336.378170000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          
            '[IIF(<OwnerServiceCodeADOQ."SERVICE_CODE">=1018,'#39#39',IIF(<OwnerSer' +
            'viceCodeADOQ."SERVICE_CODE">=1019,'#39#39', IIF(MonthOf(<IdentityDocAD' +
            'OQ."DOC_CREATE_DATE">)=1,'#39#1071#1053#1042#1040#1056#1071#39','#39#39') ))][IIF(<OwnerServiceCodeA' +
            'DOQ."SERVICE_CODE">=1018,'#39#39',IIF(<OwnerServiceCodeADOQ."SERVICE_C' +
            'ODE">=1019,'#39#39',IIF(MonthOf(<IdentityDocADOQ."DOC_CREATE_DATE">)=2' +
            ','#39#1060#1045#1042#1056#1040#1051#1071#39','#39#39')  ))][IIF(<OwnerServiceCodeADOQ."SERVICE_CODE">=10' +
            '18,'#39#39',IIF(<OwnerServiceCodeADOQ."SERVICE_CODE">=1019,'#39#39', IIF(Mon' +
            'thOf(<IdentityDocADOQ."DOC_CREATE_DATE">)=3,'#39#1052#1040#1056#1058#1040#39','#39#39')  ))][IIF' +
            '(<OwnerServiceCodeADOQ."SERVICE_CODE">=1018,'#39#39',IIF(<OwnerService' +
            'CodeADOQ."SERVICE_CODE">=1019,'#39#39', IIF(MonthOf(<IdentityDocADOQ."' +
            'DOC_CREATE_DATE">)=4,'#39#1040#1055#1056#1045#1051#1071#39','#39#39')  ))][IIF(<OwnerServiceCodeADOQ' +
            '."SERVICE_CODE">=1018,'#39#39',IIF(<OwnerServiceCodeADOQ."SERVICE_CODE' +
            '">=1019,'#39#39', IIF(MonthOf(<IdentityDocADOQ."DOC_CREATE_DATE">)=5,'#39 +
            #1052#1040#1071#39','#39#39')  ))][IIF(<OwnerServiceCodeADOQ."SERVICE_CODE">=1018,'#39#39',' +
            'IIF(<OwnerServiceCodeADOQ."SERVICE_CODE">=1019,'#39#39', IIF(MonthOf(<' +
            'IdentityDocADOQ."DOC_CREATE_DATE">)=6,'#39#1048#1070#1053#1071#39','#39#39')  ))][IIF(<Owner' +
            'ServiceCodeADOQ."SERVICE_CODE">=1018,'#39#39',IIF(<OwnerServiceCodeADO' +
            'Q."SERVICE_CODE">=1019,'#39#39',IIF(MonthOf(<IdentityDocADOQ."DOC_CREA' +
            'TE_DATE">)=7,'#39#1048#1070#1051#1071#39','#39#39')  ))][IIF(<OwnerServiceCodeADOQ."SERVICE_' +
            'CODE">=1018,'#39#39',IIF(<OwnerServiceCodeADOQ."SERVICE_CODE">=1019,'#39#39 +
            ', IIF(MonthOf(<IdentityDocADOQ."DOC_CREATE_DATE">)=8,'#39#1040#1042#1043#1059#1057#1058#1040#39','#39 +
            #39')  ))][IIF(<OwnerServiceCodeADOQ."SERVICE_CODE">=1018,'#39#39',IIF(<O' +
            'wnerServiceCodeADOQ."SERVICE_CODE">=1019,'#39#39', IIF(MonthOf(<Identi' +
            'tyDocADOQ."DOC_CREATE_DATE">)=9,'#39#1057#1045#1053#1058#1071#1041#1056#1071#39','#39#39')  ))][IIF(<OwnerSe' +
            'rviceCodeADOQ."SERVICE_CODE">=1018,'#39#39',IIF(<OwnerServiceCodeADOQ.' +
            '"SERVICE_CODE">=1019,'#39#39',IIF(MonthOf(<IdentityDocADOQ."DOC_CREATE' +
            '_DATE">)=10,'#39#1054#1050#1058#1071#1041#1056#1071#39','#39#39')  ))][IIF(<OwnerServiceCodeADOQ."SERVIC' +
            'E_CODE">=1018,'#39#39',IIF(<OwnerServiceCodeADOQ."SERVICE_CODE">=1019,' +
            #39#39', IIF(MonthOf(<IdentityDocADOQ."DOC_CREATE_DATE">)=11,'#39#1053#1054#1071#1041#1056#1071#39 +
            ','#39#39')  ))][IIF(<OwnerServiceCodeADOQ."SERVICE_CODE">=1018,'#39#39',IIF(' +
            '<OwnerServiceCodeADOQ."SERVICE_CODE">=1019,'#39#39', IIF(MonthOf(<Iden' +
            'tityDocADOQ."DOC_CREATE_DATE">)=12,'#39#1044#1045#1050#1040#1041#1056#1071#39','#39#39')  ))]')
        ParentFont = False
      end
      object Memo27: TfrxMemoView
        Left = 328.819110000000000000
        Top = 336.378170000000000000
        Width = 34.015770000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          
            '[IIF(<OwnerServiceCodeADOQ."SERVICE_CODE">=1018,'#39#39',IIF(<OwnerSer' +
            'viceCodeADOQ."SERVICE_CODE">=1019,'#39#39', YearOf(<IdentityDocADOQ."D' +
            'OC_CREATE_DATE">)  ))]')
        ParentFont = False
      end
      object Memo28: TfrxMemoView
        Top = 287.244280000000000000
        Width = 370.393940000000000000
        Height = 34.015770000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        LineSpacing = 5.000000000000000000
        Memo.UTF8W = (
          
            '                                                          [<FMS_' +
            'BRANCH_NAME_DEFAULT>]')
        ParentFont = False
      end
      object Memo30: TfrxMemoView
        Left = 128.504020000000000000
        Top = 381.732530000000000000
        Width = 245.669450000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          '[Uppercase(<MoveFromAdrADOQuery."COUNTRY_NAME">)]')
        ParentFont = False
      end
      object Memo31: TfrxMemoView
        Left = 37.795300000000000000
        Top = 396.850650000000000000
        Width = 336.378170000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          
            '[IIF(Pos('#39#1056#1045#1057#1055#39',Uppercase(<MoveFromAdrADOQuery."STATE_SHORT_FULL' +
            '">))>0, Uppercase(<MoveFromAdrADOQuery."STATE_SHORT_FULL">),'#39#39')]' +
            ' [Uppercase(<MoveFromAdrADOQuery."STATE_NAME">)] [IIF(Pos('#39#1056#1045#1057#1055#39 +
            ',Uppercase(<MoveFromAdrADOQuery."STATE_SHORT_FULL">))>0,'#39#39',Upper' +
            'case(<MoveFromAdrADOQuery."STATE_SHORT_FULL">))]')
        ParentFont = False
      end
      object Memo32: TfrxMemoView
        Left = 34.015770000000000000
        Top = 410.456692910000000000
        Width = 340.157700000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          '[Uppercase(<MoveFromAdrADOQuery."DISTRICT_NAME">)]')
        ParentFont = False
      end
      object Memo33: TfrxMemoView
        Left = 34.015770000000000000
        Top = 423.307360000000000000
        Width = 340.157700000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          
            '[IIF(<MoveFromAdrADOQuery."ITS_CITY">=1,Uppercase(<MoveFromAdrAD' +
            'OQuery."SETTLEM_NAME">),'#39#39')]')
        ParentFont = False
      end
      object Memo34: TfrxMemoView
        Left = 90.708720000000000000
        Top = 438.425480000000000000
        Width = 283.464750000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          
            '[IIF(<MoveFromAdrADOQuery."ITS_CITY">=1,'#39#39',Uppercase(<MoveFromAd' +
            'rADOQuery."SETTL_SHORT_FULL">+'#39' '#39'+<MoveFromAdrADOQuery."SETTLEM_' +
            'NAME">))]')
        ParentFont = False
      end
      object Memo35: TfrxMemoView
        Left = 18.897650000000000000
        Top = 453.543600000000000000
        Width = 173.858380000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          '[Uppercase(<MoveFromAdrADOQuery."STREET_NAME">)]')
        ParentFont = False
      end
      object Memo36: TfrxMemoView
        Left = 219.212740000000000000
        Top = 453.543600000000000000
        Width = 37.795300000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[MoveFromAdrADOQuery."HOUSE_NUM"]')
        ParentFont = False
      end
      object Memo37: TfrxMemoView
        Left = 279.685220000000000000
        Top = 453.543600000000000000
        Width = 37.795300000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[MoveFromAdrADOQuery."CORPUS"]')
        ParentFont = False
      end
      object Memo38: TfrxMemoView
        Left = 336.378170000000000000
        Top = 453.543600000000000000
        Width = 37.795300000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          
            '[IIF(<MoveFromAdrADOQuery."APARTMENT_NUM">=0,'#39#39',<MoveFromAdrADOQ' +
            'uery."APARTMENT_NUM">)]')
        ParentFont = False
      end
      object Memo29: TfrxMemoView
        Left = 3.779530000000000000
        Top = 351.496062990000000000
        Width = 374.173470000000000000
        Height = 34.015770000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        LineSpacing = 5.000000000000000000
        Memo.UTF8W = (
          
            '                                                [IdentityDocADOQ' +
            '."DOC_BRANCH_NAME"]')
        ParentFont = False
      end
      object Memo49: TfrxMemoView
        Left = 298.582870000000000000
        Top = 366.614410000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[Uppercase(<IdentityDocADOQ."DOC_BRANCHE_CODE">)]')
        ParentFont = False
      end
      object Memo50: TfrxMemoView
        Left = 139.842610000000000000
        Top = 181.417440000000000000
        Width = 238.110390000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          '[Uppercase(<RegPlaceTypeDateADOQ."STATIC_DATA">)]')
        ParentFont = False
      end
      object Memo51: TfrxMemoView
        Top = 37.795300000000000000
        Width = 60.472480000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '1. '#1060#1072#1084#1080#1083#1080#1103)
        ParentFont = False
      end
      object Memo52: TfrxMemoView
        Top = 52.913420000000000000
        Width = 37.795300000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '2. '#1048#1084#1103)
        ParentFont = False
      end
      object Memo53: TfrxMemoView
        Top = 68.031540000000000000
        Width = 60.472480000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '3. '#1054#1090#1095#1077#1089#1090#1074#1086)
        ParentFont = False
      end
      object Memo54: TfrxMemoView
        Top = 83.149660000000000000
        Width = 90.708720000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '4. '#1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103)
        ParentFont = False
      end
      object Memo55: TfrxMemoView
        Left = 287.244280000000000000
        Top = 83.149660000000000000
        Width = 34.015770000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '5. '#1055#1086#1083)
        ParentFont = False
      end
      object Memo56: TfrxMemoView
        Top = 98.267780000000000000
        Width = 128.504020000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '6. '#1052#1077#1089#1090#1086' '#1088#1086#1078#1076#1077#1085#1080#1103': '#1089#1090#1088#1072#1085#1072)
        ParentFont = False
      end
      object Memo57: TfrxMemoView
        Top = 113.385900000000000000
        Width = 37.795300000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1088#1077#1075#1080#1086#1085)
        ParentFont = False
      end
      object Memo58: TfrxMemoView
        Top = 126.614173230000000000
        Width = 34.015770000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1088#1072#1081#1086#1085)
        ParentFont = False
      end
      object Memo59: TfrxMemoView
        Top = 139.842610000000000000
        Width = 37.795300000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1075#1086#1088#1086#1076)
        ParentFont = False
      end
      object Memo60: TfrxMemoView
        Top = 154.960730000000000000
        Width = 86.929190000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1085#1072#1089#1077#1083#1077#1085#1085#1099#1081' '#1087#1091#1085#1082#1090)
        ParentFont = False
      end
      object Memo61: TfrxMemoView
        Top = 170.078850000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '7. '#1043#1088#1072#1078#1076#1072#1085#1089#1090#1074#1086)
        ParentFont = False
      end
      object Memo62: TfrxMemoView
        Top = 185.196970000000000000
        Width = 139.842610000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '8. '#1047#1072#1088#1077#1075#1080#1089#1090#1088#1080#1088#1086#1074#1072#1085' '#1087#1086' '#1084#1077#1089#1090#1091)
        ParentFont = False
      end
      object Memo63: TfrxMemoView
        Top = 215.433210000000000000
        Width = 37.795300000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1088#1077#1075#1080#1086#1085)
        ParentFont = False
      end
      object Memo64: TfrxMemoView
        Top = 230.551330000000000000
        Width = 34.015770000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1088#1072#1081#1086#1085)
        ParentFont = False
      end
      object Memo65: TfrxMemoView
        Top = 243.779527560000000000
        Width = 37.795300000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1075#1086#1088#1086#1076)
        ParentFont = False
      end
      object Memo66: TfrxMemoView
        Top = 257.008040000000000000
        Width = 86.929190000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1085#1072#1089#1077#1083#1077#1085#1085#1099#1081' '#1087#1091#1085#1082#1090)
        ParentFont = False
      end
      object Memo67: TfrxMemoView
        Top = 200.315090000000000000
        Width = 52.913420000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1087#1086' '#1072#1076#1088#1077#1089#1091':')
        ParentFont = False
      end
      object Memo68: TfrxMemoView
        Left = 3.779530000000000000
        Top = 274.015748030000000000
        Width = 22.677180000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1091#1083'.')
        ParentFont = False
      end
      object Memo69: TfrxMemoView
        Left = 196.535560000000000000
        Top = 274.015748030000000000
        Width = 26.456710000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1076#1086#1084)
        ParentFont = False
      end
      object Memo70: TfrxMemoView
        Left = 257.008040000000000000
        Top = 274.015748030000000000
        Width = 30.236240000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1082#1086#1088#1087'.')
        ParentFont = False
      end
      object Memo71: TfrxMemoView
        Left = 321.260050000000000000
        Top = 274.015748030000000000
        Width = 18.897650000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1082#1074'.')
        ParentFont = False
      end
      object Memo72: TfrxMemoView
        Top = 289.133858270000000000
        Width = 162.519790000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '9.'#1054#1088#1075#1072#1085' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1086#1085#1085#1086#1075#1086' '#1091#1095#1077#1090#1072)
        ParentFont = False
      end
      object Memo73: TfrxMemoView
        Top = 321.260050000000000000
        Width = 151.181200000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1044#1086#1082#1091#1084#1077#1085#1090', '#1091#1076#1086#1089#1090'. '#1083#1080#1095#1085#1086#1089#1090#1100': '#1074#1080#1076)
        ParentFont = False
      end
      object Memo74: TfrxMemoView
        Top = 338.267716540000000000
        Width = 34.015770000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1089#1077#1088#1080#1103)
        ParentFont = False
      end
      object Memo75: TfrxMemoView
        Left = 79.370130000000000000
        Top = 338.267716540000000000
        Width = 34.015770000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1085#1086#1084#1077#1088)
        ParentFont = False
      end
      object Memo76: TfrxMemoView
        Left = 181.417440000000000000
        Top = 338.267716540000000000
        Width = 34.015770000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1074#1099#1076#1072#1085)
        ParentFont = False
      end
      object Memo77: TfrxMemoView
        Top = 353.385826770000000000
        Width = 128.504020000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1086#1088#1075#1072#1085', '#1074#1099#1076#1072#1074#1096#1080#1081' '#1076#1086#1082#1091#1084#1077#1085#1090)
        ParentFont = False
      end
      object Memo78: TfrxMemoView
        Left = 279.685220000000000000
        Top = 306.141930000000000000
        Width = 22.677180000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1082#1086#1076)
        ParentFont = False
      end
      object Memo79: TfrxMemoView
        Top = 385.512060000000000000
        Width = 162.519790000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '11.'#1054#1090#1082#1091#1076#1072' '#1087#1088#1080#1073#1099#1083': '#1089#1090#1088#1072#1085#1072)
        ParentFont = False
      end
      object Memo80: TfrxMemoView
        Top = 398.740157480000000000
        Width = 41.574830000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1088#1077#1075#1080#1086#1085)
        ParentFont = False
      end
      object Memo81: TfrxMemoView
        Top = 411.968770000000000000
        Width = 34.015770000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1088#1072#1081#1086#1085)
        ParentFont = False
      end
      object Memo82: TfrxMemoView
        Top = 427.086890000000000000
        Width = 37.795300000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1075#1086#1088#1086#1076)
        ParentFont = False
      end
      object Memo83: TfrxMemoView
        Top = 440.314960629921000000
        Width = 86.929190000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1085#1072#1089#1077#1083#1077#1085#1085#1099#1081' '#1087#1091#1085#1082#1090)
        ParentFont = False
      end
      object Memo84: TfrxMemoView
        Top = 457.323130000000000000
        Width = 22.677180000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1091#1083'.')
        ParentFont = False
      end
      object Memo85: TfrxMemoView
        Left = 200.315090000000000000
        Top = 457.323130000000000000
        Width = 26.456710000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1076#1086#1084)
        ParentFont = False
      end
      object Memo86: TfrxMemoView
        Left = 257.008040000000000000
        Top = 457.323130000000000000
        Width = 30.236240000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1082#1086#1088#1087'.')
        ParentFont = False
      end
      object Memo87: TfrxMemoView
        Left = 321.260050000000000000
        Top = 457.323130000000000000
        Width = 18.897650000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1082#1074'.')
        ParentFont = False
      end
      object Memo88: TfrxMemoView
        Left = 279.685220000000000000
        Top = 370.393940000000000000
        Width = 22.677180000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1082#1086#1076)
        ParentFont = False
      end
      object Memo113: TfrxMemoView
        Left = 306.141930000000000000
        Top = 11.338590000000000000
        Width = 68.031540000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1060#1086#1088#1084#1072' '#8470'2')
        ParentFont = False
      end
      object Memo114: TfrxMemoView
        Left = 41.574830000000000000
        Top = 11.338590000000000000
        Width = 215.433210000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1040#1044#1056#1045#1057#1053#1067#1049' '#1051#1048#1057#1058#1054#1050' '#1055#1056#1048#1041#1067#1058#1048#1071)
        ParentFont = False
      end
      object Memo115: TfrxMemoView
        Top = 11.338590000000000000
        Width = 22.677180000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          #1055)
        ParentFont = False
      end
      object Memo116: TfrxMemoView
        Left = 362.834880000000000000
        Top = 338.267716535433000000
        Width = 11.338590000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1075'.')
        ParentFont = False
      end
      object Memo117: TfrxMemoView
        Left = 238.110390000000000000
        Top = 83.149660000000000000
        Width = 11.338590000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1075'.')
        ParentFont = False
      end
      object Memo119: TfrxMemoView
        Left = 302.362400000000000000
        Top = 302.362400000000000000
        Width = 71.811070000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        LineSpacing = 1.000000000000000000
        Memo.UTF8W = (
          '[Uppercase(<FMS_BRANCH_CODE_DEFAULT>)]')
        ParentFont = False
      end
      object Memo120: TfrxMemoView
        Left = 79.370130000000000000
        Top = 166.299320000000000000
        Width = 294.803340000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          '[Uppercase(<PersonViewDetailADOT."COUNTRY_NAME">)]')
        ParentFont = False
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 110.000000000000000000
      PaperHeight = 155.000000000000000000
      PaperSize = 256
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object Memo39: TfrxMemoView
        Left = 49.133890000000000000
        Top = 77.480314960629900000
        Width = 328.819110000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          '[Uppercase(<ChangePersonADOQ."LAST_NAME">)]')
        ParentFont = False
      end
      object Memo40: TfrxMemoView
        Left = 26.456710000000000000
        Top = 92.598425196850400000
        Width = 351.496290000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          '[Uppercase(<ChangePersonADOQ."FIRST_NAME">)]')
        ParentFont = False
      end
      object Memo41: TfrxMemoView
        Left = 45.354360000000000000
        Top = 109.228346456693000000
        Width = 332.598640000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          '[Uppercase(<ChangePersonADOQ."SURNAME">)]')
        ParentFont = False
      end
      object Memo42: TfrxMemoView
        Left = 79.370130000000000000
        Top = 124.724490000000000000
        Width = 26.456710000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          
            '[IIF(YearOf(<ChangePersonADOQ."BIRTHDATE">)>1900,IIF(DayOf(<Chan' +
            'gePersonADOQ."BIRTHDATE">)<10,'#39'0'#39','#39#39'),'#39#39')][IIF(YearOf(<ChangePer' +
            'sonADOQ."BIRTHDATE">)>1900,DayOf(<ChangePersonADOQ."BIRTHDATE">)' +
            ','#39#39')]')
        ParentFont = False
      end
      object Memo43: TfrxMemoView
        Left = 117.165430000000000000
        Top = 124.724490000000000000
        Width = 68.031540000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          
            '[IIF(YearOf(<ChangePersonADOQ."BIRTHDATE">)>1900,IIF(MonthOf(<Ch' +
            'angePersonADOQ."BIRTHDATE">)=1,'#39#1071#1053#1042#1040#1056#1071#39','#39#39'),'#39#39')][IIF(YearOf(<Cha' +
            'ngePersonADOQ."BIRTHDATE">)>1900,IIF(MonthOf(<ChangePersonADOQ."' +
            'BIRTHDATE">)=2,'#39#1060#1045#1042#1056#1040#1051#1071#39','#39#39'),'#39#39')][IIF(YearOf(<ChangePersonADOQ."' +
            'BIRTHDATE">)>1900,IIF(MonthOf(<ChangePersonADOQ."BIRTHDATE">)=3,' +
            #39#1052#1040#1056#1058#1040#39','#39#39'),'#39#39')][IIF(YearOf(<ChangePersonADOQ."BIRTHDATE">)>1900' +
            ',IIF(MonthOf(<ChangePersonADOQ."BIRTHDATE">)=4,'#39#1040#1055#1056#1045#1051#1071#39','#39#39'),'#39#39')]' +
            '[IIF(YearOf(<ChangePersonADOQ."BIRTHDATE">)>1900,IIF(MonthOf(<Ch' +
            'angePersonADOQ."BIRTHDATE">)=5,'#39#1052#1040#1071#39','#39#39'),'#39#39')][IIF(YearOf(<Change' +
            'PersonADOQ."BIRTHDATE">)>1900,IIF(MonthOf(<ChangePersonADOQ."BIR' +
            'THDATE">)=6,'#39#1048#1070#1053#1071#39','#39#39'),'#39#39')][IIF(YearOf(<ChangePersonADOQ."BIRTHD' +
            'ATE">)>1900,IIF(MonthOf(<ChangePersonADOQ."BIRTHDATE">)=7,'#39#1048#1070#1051#1071#39 +
            ','#39#39'),'#39#39')][IIF(YearOf(<ChangePersonADOQ."BIRTHDATE">)>1900,IIF(Mo' +
            'nthOf(<ChangePersonADOQ."BIRTHDATE">)=8,'#39#1040#1042#1043#1059#1057#1058#1040#39','#39#39'),'#39#39')][IIF(Y' +
            'earOf(<ChangePersonADOQ."BIRTHDATE">)>1900,IIF(MonthOf(<ChangePe' +
            'rsonADOQ."BIRTHDATE">)=9,'#39#1057#1045#1053#1058#1071#1041#1056#1071#39','#39#39'),'#39#39')][IIF(YearOf(<ChangeP' +
            'ersonADOQ."BIRTHDATE">)>1900,IIF(MonthOf(<ChangePersonADOQ."BIRT' +
            'HDATE">)=10,'#39#1054#1050#1058#1071#1041#1056#1071#39','#39#39'),'#39#39')][IIF(YearOf(<ChangePersonADOQ."BIR' +
            'THDATE">)>1900,IIF(MonthOf(<ChangePersonADOQ."BIRTHDATE">)=11,'#39#1053 +
            #1054#1071#1041#1056#1071#39','#39#39'),'#39#39')][IIF(YearOf(<ChangePersonADOQ."BIRTHDATE">)>1900,' +
            'IIF(MonthOf(<ChangePersonADOQ."BIRTHDATE">)=12,'#39#1044#1045#1050#1040#1041#1056#1071#39','#39#39'),'#39#39')' +
            ']')
        ParentFont = False
      end
      object Memo44: TfrxMemoView
        Left = 188.976500000000000000
        Top = 124.724490000000000000
        Width = 37.795300000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          
            '[IIF(YearOf(<ChangePersonADOQ."BIRTHDATE">)>1900,YearOf(<ChangeP' +
            'ersonADOQ."BIRTHDATE">),'#39#39')]')
        ParentFont = False
      end
      object Memo45: TfrxMemoView
        Left = 15.118120000000000000
        Top = 45.354360000000000000
        Width = 177.637910000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          '[Uppercase(<MoveInSettlementADOQuery."STREET_NAME">)]')
        ParentFont = False
      end
      object Memo46: TfrxMemoView
        Left = 219.212740000000000000
        Top = 45.354360000000000000
        Width = 37.795300000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[MoveInSettlementADOQuery."HOUSE_NUM"]')
        ParentFont = False
      end
      object Memo47: TfrxMemoView
        Left = 279.685220000000000000
        Top = 45.354360000000000000
        Width = 37.795300000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[MoveInSettlementADOQuery."CORPUS"]')
        ParentFont = False
      end
      object Memo48: TfrxMemoView
        Left = 336.378170000000000000
        Top = 45.354360000000000000
        Width = 37.795300000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          
            '[IIF(<MoveInSettlementADOQuery."APARTMENT_NUM">=0,'#39#39',<MoveInSett' +
            'lementADOQuery."APARTMENT_NUM">)]')
        ParentFont = False
      end
      object Memo89: TfrxMemoView
        Top = 34.015770000000000000
        Width = 215.433210000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '12. '#1055#1077#1088#1077#1077#1093#1072#1083' '#1074' '#1090#1086#1084' '#1078#1077' '#1085#1072#1089#1077#1083#1077#1085#1085#1086#1084' '#1087#1091#1085#1082#1090#1077' '#1089':')
        ParentFont = False
      end
      object Memo94: TfrxMemoView
        Left = 109.606370000000000000
        Top = -517.795610000000000000
        Width = 22.677180000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1091#1083'.')
        ParentFont = False
      end
      object Memo95: TfrxMemoView
        Left = 309.921460000000000000
        Top = -517.795610000000000000
        Width = 26.456710000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1076#1086#1084)
        ParentFont = False
      end
      object Memo96: TfrxMemoView
        Left = 366.614410000000000000
        Top = -517.795610000000000000
        Width = 30.236240000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1082#1086#1088#1087'.')
        ParentFont = False
      end
      object Memo97: TfrxMemoView
        Left = 430.866420000000000000
        Top = -517.795610000000000000
        Width = 18.897650000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1082#1074'.')
        ParentFont = False
      end
      object Memo98: TfrxMemoView
        Top = 49.133890000000000000
        Width = 22.677180000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1091#1083'.')
        ParentFont = False
      end
      object Memo99: TfrxMemoView
        Left = 200.315090000000000000
        Top = 49.133890000000000000
        Width = 26.456710000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1076#1086#1084)
        ParentFont = False
      end
      object Memo100: TfrxMemoView
        Left = 257.008040000000000000
        Top = 49.133890000000000000
        Width = 30.236240000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1082#1086#1088#1087'.')
        ParentFont = False
      end
      object Memo101: TfrxMemoView
        Left = 321.260050000000000000
        Top = 49.133890000000000000
        Width = 18.897650000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1082#1074'.')
        ParentFont = False
      end
      object Memo90: TfrxMemoView
        Top = 64.252010000000000000
        Width = 215.433210000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '13. '#1055#1077#1088#1077#1084#1077#1085#1080#1083'('#1072') '#1060'.'#1048'.'#1054'. '#1080' '#1087#1088#1086#1095#1080#1077' '#1089#1074#1077#1076#1077#1085#1080#1103' '#1089':')
        ParentFont = False
      end
      object Memo91: TfrxMemoView
        Top = 79.370130000000000000
        Width = 49.133890000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1092#1072#1084#1080#1083#1080#1103)
        ParentFont = False
      end
      object Memo92: TfrxMemoView
        Top = 94.488250000000000000
        Width = 49.133890000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1080#1084#1103)
        ParentFont = False
      end
      object Memo93: TfrxMemoView
        Top = 113.385900000000000000
        Width = 49.133890000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1086#1090#1095#1077#1089#1090#1074#1086)
        ParentFont = False
      end
      object Memo102: TfrxMemoView
        Top = 128.504020000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1076#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103)
        ParentFont = False
      end
      object Memo103: TfrxMemoView
        Top = 143.622140000000000000
        Width = 215.433210000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '14. '#1055#1088#1086#1095#1080#1077' '#1087#1088#1080#1095#1080#1085#1099':')
        ParentFont = False
      end
      object Memo104: TfrxMemoView
        Top = 158.740260000000000000
        Width = 151.181200000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '15. '#1044#1086#1082#1091#1084#1077#1085#1090' '#1089#1086#1089#1090#1072#1074#1080#1083'  "         "')
        ParentFont = False
      end
      object Memo105: TfrxMemoView
        Top = 177.637910000000000000
        Width = 151.181200000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '16. '#1047#1072#1088#1077#1075#1080#1089#1090#1088#1080#1088#1086#1074#1072#1083'      "         "')
        ParentFont = False
      end
      object Memo106: TfrxMemoView
        Left = 287.244280000000000000
        Top = 128.504020000000000000
        Width = 26.456710000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1087#1086#1083)
        ParentFont = False
      end
      object Memo107: TfrxMemoView
        Left = 264.567100000000000000
        Top = 158.740260000000000000
        Width = 60.472480000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1075'.  '#1055#1086#1076#1087#1080#1089#1100)
        ParentFont = False
      end
      object Memo108: TfrxMemoView
        Left = 264.567100000000000000
        Top = 177.637910000000000000
        Width = 60.472480000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1075'.  '#1055#1086#1076#1087#1080#1089#1100)
        ParentFont = False
      end
      object Memo109: TfrxMemoView
        Top = 283.464750000000000000
        Width = 151.181200000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1041#1083#1086#1082' '#1084#1072#1096#1080#1085#1086#1095#1080#1090#1072#1077#1084#1099#1093' '#1076#1072#1085#1085#1099#1093)
        ParentFont = False
      end
      object Memo110: TfrxMemoView
        Left = 166.299320000000000000
        Top = 487.559370000000000000
        Width = 45.354360000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1060'. '#1048'. '#1054'.')
        ParentFont = False
      end
      object Shape1: TfrxShapeView
        Left = 11.338590000000000000
        Top = 336.378170000000000000
        Width = 347.716760000000000000
        Height = 151.181200000000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
      end
      object Memo111: TfrxMemoView
        Left = 257.008040000000000000
        Top = 15.118120000000000000
        Width = 113.385900000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '('#1086#1073#1086#1088#1086#1090#1085#1072#1103' '#1089#1090#1086#1088#1086#1085#1072')')
        ParentFont = False
      end
      object Memo112: TfrxMemoView
        Left = 306.141930000000000000
        Width = 60.472480000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1060#1086#1088#1084#1072' '#8470'2')
        ParentFont = False
      end
      object Memo118: TfrxMemoView
        Left = 230.551330000000000000
        Top = 126.614173228346000000
        Width = 11.338590000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1075'.')
        ParentFont = False
      end
      object Memo121: TfrxMemoView
        Left = 113.385900000000000000
        Top = 154.960730000000000000
        Width = 26.456710000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[IIF(DayOf(Date)<10,'#39'0'#39','#39#39')][DayOf(Date)]')
        ParentFont = False
      end
      object Memo122: TfrxMemoView
        Left = 151.181200000000000000
        Top = 154.960730000000000000
        Width = 68.031540000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          
            '[IIF(MonthOf(Date)=1,'#39#1071#1053#1042#1040#1056#1071#39','#39#39')][IIF(MonthOf(Date)=2,'#39#1060#1045#1042#1056#1040#1051#1071#39 +
            ','#39#39')][IIF(MonthOf(Date)=3,'#39#1052#1040#1056#1058#1040#39','#39#39')][IIF(MonthOf(Date)=4,'#39#1040#1055#1056#1045 +
            #1051#1071#39','#39#39')][IIF(MonthOf(Date)=5,'#39#1052#1040#1071#39','#39#39')][IIF(MonthOf(Date)=6,'#39#1048#1070#1053 +
            #1071#39','#39#39')][IIF(MonthOf(Date)=7,'#39#1048#1070#1051#1071#39','#39#39')][IIF(MonthOf(Date)=8,'#39#1040#1042#1043 +
            #1059#1057#1058#1040#39','#39#39')][IIF(MonthOf(Date)=9,'#39#1057#1045#1053#1058#1071#1041#1056#1071#39','#39#39')][IIF(MonthOf(Date)' +
            '=10,'#39#1054#1050#1058#1071#1041#1056#1071#39','#39#39')][IIF(MonthOf(Date)=11,'#39#1053#1054#1071#1041#1056#1071#39','#39#39')][IIF(MonthO' +
            'f(Date)=12,'#39#1044#1045#1050#1040#1041#1056#1071#39','#39#39')]')
        ParentFont = False
      end
      object Memo123: TfrxMemoView
        Left = 222.992270000000000000
        Top = 154.960730000000000000
        Width = 37.795300000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[YearOf(Date)]')
        ParentFont = False
      end
      object Memo124: TfrxMemoView
        Left = 313.700990000000000000
        Top = 124.724490000000000000
        Width = 64.252010000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          
            '[IIF(Pos('#39#1084#1091#1078#39',Lowercase(<PersDetailChangeADOQ."SEX_NAME">))>0,'#39 +
            #1052#1059#1046#39',IIF(Pos('#39#1078#1077#1085#39',Lowercase(<PersDetailChangeADOQ."SEX_NAME">))' +
            '>0,'#39#1046#1045#1053#39','#39#39'))]')
        ParentFont = False
      end
      object Memo125: TfrxMemoView
        Left = 105.826840000000000000
        Top = 140.976377950000000000
        Width = 272.126160000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        HideZeros = True
        Memo.UTF8W = (
          '[Uppercase(<OthReasonADOQ."STATIC_DATA">)]')
        ParentFont = False
      end
    end
  end
  object OutcomeAdrPaperRepF7forF1P: TfrxReport
    Version = '4.12'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Maximized = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41069.148392129600000000
    ReportOptions.LastChange = 41147.594256481480000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnPreview = OutcomeAdrPaperRepF7forF1PPreview
    OnPrintReport = OutcomeAdrPaperRepF7forF1PPrintReport
    Left = 72
    Top = 360
    Datasets = <
      item
        DataSet = CurrOperationfrxDBDS
        DataSetName = 'CurrOperationfrxDBDS'
      end
      item
        DataSet = PersonsfrxDBDS
        DataSetName = 'PersonsfrxDBDS'
      end
      item
        DataSet = OutcomeAdrPaperRepF7forF1P.MoveToAdrADOQuery
        DataSetName = 'MoveToAdrADOQuery'
      end
      item
        DataSet = OutcomeAdrPaperRepF7forF1P.ChangePersonADOQ
        DataSetName = 'ChangePersonADOQ'
      end
      item
        DataSet = OutcomeAdrPaperRepF7forF1P.IdentityDocADOQ
        DataSetName = 'IdentityDocADOQ'
      end
      item
        DataSet = OutcomeAdrPaperRepF7forF1P.MoveFromAdrADOQuery
        DataSetName = 'MoveFromAdrADOQuery'
      end
      item
        DataSet = OutcomeAdrPaperRepF7forF1P.RegisterAdresADOQuery
        DataSetName = 'RegisterAdresADOQuery'
      end
      item
        DataSet = OutcomeAdrPaperRepF7forF1P.MoveInSettlementADOQuery
        DataSetName = 'MoveInSettlementADOQuery'
      end
      item
        DataSet = OutcomeAdrPaperRepF7forF1P.PersonViewDetailADOT
        DataSetName = 'PersonViewDetailADOT'
      end
      item
        DataSet = OutcomeAdrPaperRepF7forF1P.OthReasonADOQ
        DataSetName = 'OthReasonADOQ'
      end
      item
        DataSet = OutcomeAdrPaperRepF7forF1P.BasePersADOQ
        DataSetName = 'BasePersADOQ'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
      object MoveToAdrADOQuery: TfrxADOQuery
        UserName = 'MoveToAdrADOQuery'
        CloseDataSource = True
        BCDToCurrency = False
        Master = CurrOperationfrxDBDS
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select * from OP_ADR_DATA where'
          
            'ELINK_CODE=134 AND ACT_REG_ID=:OP_ID                            ' +
            '                                            ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 188
        pTop = 76
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
      object ChangePersonADOQ: TfrxADOQuery
        UserName = 'ChangePersonADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        Master = CurrOperationfrxDBDS
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select * from OP_PERSONAL_DATA where'
          
            'ELINK_CODE=136 AND ACT_REG_ID=:OP_ID                            ' +
            '                                            ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 44
        pTop = 20
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
      object IdentityDocADOQ: TfrxADOQuery
        UserName = 'IdentityDocADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        Master = CurrOperationfrxDBDS
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select * from OP_DOC_DATA where'
          
            'ELINK_CODE=1 AND ACT_REG_ID=:OP_ID                              ' +
            '                                          ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 324
        pTop = 20
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
      object MoveFromAdrADOQuery: TfrxADOQuery
        UserName = 'MoveFromAdrADOQuery'
        CloseDataSource = True
        BCDToCurrency = False
        Master = CurrOperationfrxDBDS
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select * from OP_ADR_DATA where'
          
            'ELINK_CODE=3 AND ACT_REG_ID=:OP_ID                              ' +
            '                                          ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 188
        pTop = 132
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
      object RegisterAdresADOQuery: TfrxADOQuery
        UserName = 'RegisterAdresADOQuery'
        CloseDataSource = True
        BCDToCurrency = False
        Master = CurrOperationfrxDBDS
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select * from OP_ADR_DATA where'
          
            'ELINK_CODE=133 AND ACT_REG_ID=:OP_ID                            ' +
            '                                            ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 188
        pTop = 20
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
      object MoveInSettlementADOQuery: TfrxADOQuery
        UserName = 'MoveInSettlementADOQuery'
        CloseDataSource = True
        BCDToCurrency = False
        Master = CurrOperationfrxDBDS
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select * from OP_ADR_DATA where'
          
            'ELINK_CODE=135 AND ACT_REG_ID=:OP_ID                            ' +
            '                                            ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 188
        pTop = 188
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
      object PersonViewDetailADOT: TfrxADOQuery
        UserName = 'PersonViewDetailADOT'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'CURR_PERSON_ID'
            DataType = ftInteger
            Expression = '<BasePersADOQ."PERSON_ID">'
          end>
        SQL.Strings = (
          'SELECT * FROM PERSON_VIEW_DETAIL'
          
            'WHERE PERSON_ID=:CURR_PERSON_ID                                 ' +
            '                                       ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 48
        pTop = 80
        Parameters = <
          item
            Name = 'CURR_PERSON_ID'
            DataType = ftInteger
            Expression = '<BasePersADOQ."PERSON_ID">'
          end>
      end
      object OthReasonADOQ: TfrxADOQuery
        UserName = 'OthReasonADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select ael.AEL_AS_ID, ael.ACT_REG_ID,'
          ' ael.AEL_LINK_TYPE_ID, enl.ELINK_TYPE,'
          'ael.STATIC_DATA'
          'from AEL_ASSOC ael LEFT JOIN ENTLINKS enl '
          'ON (ael.AEL_LINK_TYPE_ID=enl.ELINK_ID) '
          'WHERE enl.ELINK_TYPE=7 AND ENL.ELINK_CODE=154        '
          'AND ael.ACT_REG_ID=:OP_ID                           ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 324
        pTop = 76
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
      object BasePersADOQ: TfrxADOQuery
        UserName = 'BasePersADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        Master = CurrOperationfrxDBDS
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select * from OP_PERSONAL_DATA where'
          
            'ELINK_CODE=5 AND ACT_REG_ID=:OP_ID                              ' +
            '                                          ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 48
        pTop = 132
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
    end
    object Page1: TfrxReportPage
      PaperWidth = 110.000000000000000000
      PaperHeight = 155.000000000000000000
      PaperSize = 256
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object Memo1: TfrxMemoView
        Left = 60.472480000000000000
        Top = 26.456710000000000000
        Width = 313.700990000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          '[Uppercase(<PersonViewDetailADOT."LAST_NAME">)]')
        ParentFont = False
      end
      object Memo2: TfrxMemoView
        Left = 37.795300000000000000
        Top = 41.574830000000000000
        Width = 336.378170000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          '[Uppercase(<PersonViewDetailADOT."FIRST_NAME">)]')
        ParentFont = False
      end
      object Memo3: TfrxMemoView
        Left = 56.692950000000000000
        Top = 56.692950000000000000
        Width = 317.480520000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          '[Uppercase(<PersonViewDetailADOT."SURNAME">)]')
        ParentFont = False
      end
      object Memo4: TfrxMemoView
        Left = 90.708720000000000000
        Top = 71.811070000000000000
        Width = 26.456710000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[DayOf(<PersonViewDetailADOT."BIRTHDATE">)]')
        ParentFont = False
      end
      object Memo5: TfrxMemoView
        Left = 128.504020000000000000
        Top = 71.811070000000000000
        Width = 64.252010000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          
            '[IIF(MonthOf(<PersonViewDetailADOT."BIRTHDATE">)=1,'#39#1071#1053#1042#1040#1056#1071#39','#39#39')]' +
            '[IIF(MonthOf(<PersonViewDetailADOT."BIRTHDATE">)=2,'#39#1060#1045#1042#1056#1040#1051#1071#39','#39#39')' +
            '][IIF(MonthOf(<PersonViewDetailADOT."BIRTHDATE">)=3,'#39#1052#1040#1056#1058#1040#39','#39#39')]' +
            '[IIF(MonthOf(<PersonViewDetailADOT."BIRTHDATE">)=4,'#39#1040#1055#1056#1045#1051#1071#39','#39#39')]' +
            '[IIF(MonthOf(<PersonViewDetailADOT."BIRTHDATE">)=5,'#39#1052#1040#1071#39','#39#39')][II' +
            'F(MonthOf(<PersonViewDetailADOT."BIRTHDATE">)=6,'#39#1048#1070#1053#1071#39','#39#39')][IIF(' +
            'MonthOf(<PersonViewDetailADOT."BIRTHDATE">)=7,'#39#1048#1070#1051#1071#39','#39#39')][IIF(Mo' +
            'nthOf(<PersonViewDetailADOT."BIRTHDATE">)=8,'#39#1040#1042#1043#1059#1057#1058#1040#39','#39#39')][IIF(M' +
            'onthOf(<PersonViewDetailADOT."BIRTHDATE">)=9,'#39#1057#1045#1053#1058#1071#1041#1056#1071#39','#39#39')][IIF' +
            '(MonthOf(<PersonViewDetailADOT."BIRTHDATE">)=10,'#39#1054#1050#1058#1071#1041#1056#1071#39','#39#39')][I' +
            'IF(MonthOf(<PersonViewDetailADOT."BIRTHDATE">)=11,'#39#1053#1054#1071#1041#1056#1071#39','#39#39')][' +
            'IIF(MonthOf(<PersonViewDetailADOT."BIRTHDATE">)=12,'#39#1044#1045#1050#1040#1041#1056#1071#39','#39#39')' +
            ']')
        ParentFont = False
      end
      object Memo6: TfrxMemoView
        Left = 196.535560000000000000
        Top = 71.811070000000000000
        Width = 37.795300000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[YearOf(<PersonViewDetailADOT."BIRTHDATE">)]')
        ParentFont = False
      end
      object Memo7: TfrxMemoView
        Left = 321.260050000000000000
        Top = 71.811070000000000000
        Width = 52.913420000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          
            '[IIF(Pos('#39#1084#1091#1078#39',<PersonViewDetailADOT."SEX_NAME">)>0,'#39#1052#1059#1046#39',IIF(Po' +
            's('#39#1078#1077#1085#39',<PersonViewDetailADOT."SEX_NAME">)>0,'#39#1046#1045#1053#39','#39#39'))]')
        ParentFont = False
      end
      object Memo8: TfrxMemoView
        Left = 128.504020000000000000
        Top = 86.929190000000000000
        Width = 245.669450000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          '[PersonViewDetailADOT."BIRTH_COUNT"]')
        ParentFont = False
      end
      object Memo9: TfrxMemoView
        Left = 37.795300000000000000
        Top = 102.047310000000000000
        Width = 336.378170000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          '[Uppercase(<PersonViewDetailADOT."REGION_NAME">)]')
        ParentFont = False
      end
      object Memo10: TfrxMemoView
        Left = 34.015770000000000000
        Top = 116.031496062992000000
        Width = 340.157700000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          '[Uppercase(<PersonViewDetailADOT."DISTRICT_NAME">)]')
        ParentFont = False
      end
      object Memo11: TfrxMemoView
        Left = 34.015770000000000000
        Top = 130.015748030000000000
        Width = 340.157700000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          
            '[IIF(<PersonViewDetailADOT."ITS_CITY">=1,Uppercase(<PersonViewDe' +
            'tailADOT."SETTLEM_NAME">),'#39#39')]')
        ParentFont = False
      end
      object Memo12: TfrxMemoView
        Left = 90.708720000000000000
        Top = 143.622047240000000000
        Width = 283.464750000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          
            '[IIF(<PersonViewDetailADOT."ITS_CITY">=1,'#39#39',Uppercase(<PersonVie' +
            'wDetailADOT."SETTLEM_NAME">))]')
        ParentFont = False
      end
      object Memo13: TfrxMemoView
        Left = 41.574830000000000000
        Top = 188.976500000000000000
        Width = 336.378170000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          
            '[Uppercase(<RegisterAdresADOQuery."COUNTRY_NAME">)] [IIF(Pos('#39#1056#1045 +
            #1057#1055#39',Uppercase(<RegisterAdresADOQuery."STATE_SHORT_FULL">))>0, Up' +
            'percase(<RegisterAdresADOQuery."STATE_SHORT_FULL">),'#39#39')] [Upperc' +
            'ase(<RegisterAdresADOQuery."STATE_NAME">)] [IIF(Pos('#39#1056#1045#1057#1055#39',Upper' +
            'case(<RegisterAdresADOQuery."STATE_SHORT_FULL">))>0,'#39#39',Uppercase' +
            '(<RegisterAdresADOQuery."STATE_SHORT_FULL">))]')
        ParentFont = False
      end
      object Memo15: TfrxMemoView
        Left = 34.015770000000000000
        Top = 202.204724410000000000
        Width = 343.937230000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          '[Uppercase(<RegisterAdresADOQuery."DISTRICT_NAME">)]')
        ParentFont = False
      end
      object Memo16: TfrxMemoView
        Left = 34.015770000000000000
        Top = 215.811023622047000000
        Width = 343.937230000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          
            '[IIF(<RegisterAdresADOQuery."ITS_CITY">=1,Uppercase(<RegisterAdr' +
            'esADOQuery."SETTLEM_NAME">),'#39#39')]')
        ParentFont = False
      end
      object Memo17: TfrxMemoView
        Left = 90.708720000000000000
        Top = 228.661417320000000000
        Width = 279.685220000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          
            '[IIF(<RegisterAdresADOQuery."ITS_CITY">=1,'#39#39',Uppercase(<Register' +
            'AdresADOQuery."SETTLEM_NAME">))]')
        ParentFont = False
      end
      object Memo18: TfrxMemoView
        Left = 18.897650000000000000
        Top = 243.779527559055000000
        Width = 177.637910000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          '[Uppercase(<RegisterAdresADOQuery."STREET_NAME">)]')
        ParentFont = False
      end
      object Memo19: TfrxMemoView
        Left = 222.992270000000000000
        Top = 243.779527560000000000
        Width = 34.015770000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[Uppercase(<RegisterAdresADOQuery."HOUSE_NUM">)]')
        ParentFont = False
      end
      object Memo20: TfrxMemoView
        Left = 283.464750000000000000
        Top = 243.779527559055000000
        Width = 37.795300000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[Uppercase(<RegisterAdresADOQuery."CORPUS">)]')
        ParentFont = False
      end
      object Memo21: TfrxMemoView
        Left = 336.378170000000000000
        Top = 243.779527560000000000
        Width = 37.795300000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          
            '[IIF(<RegisterAdresADOQuery."APARTMENT_NUM">=0,'#39#39',Uppercase(<Reg' +
            'isterAdresADOQuery."APARTMENT_NUM">))]')
        ParentFont = False
      end
      object Memo22: TfrxMemoView
        Left = 170.078850000000000000
        Top = 289.889763779528000000
        Width = 207.874150000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          '[Uppercase(<IdentityDocADOQ."DOC_TYPE_NAME">)]')
        ParentFont = False
      end
      object Memo23: TfrxMemoView
        Left = 30.236240000000000000
        Top = 306.141930000000000000
        Width = 49.133890000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[Uppercase(<IdentityDocADOQ."DOC_SERIE">)]')
        ParentFont = False
      end
      object Memo24: TfrxMemoView
        Left = 109.606370000000000000
        Top = 306.141930000000000000
        Width = 68.031540000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[Uppercase(<IdentityDocADOQ."DOC_NUM">)]')
        ParentFont = False
      end
      object Memo25: TfrxMemoView
        Left = 219.212740000000000000
        Top = 306.141930000000000000
        Width = 22.677180000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[DayOf(<IdentityDocADOQ."DOC_CREATE_DATE">)]')
        ParentFont = False
      end
      object Memo26: TfrxMemoView
        Left = 249.448980000000000000
        Top = 306.141930000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          
            '[IIF(MonthOf(<IdentityDocADOQ."DOC_CREATE_DATE">)=1,'#39#1071#1053#1042#1040#1056#1071#39','#39#39')' +
            '][IIF(MonthOf(<IdentityDocADOQ."DOC_CREATE_DATE">)=2,'#39#1060#1045#1042#1056#1040#1051#1071#39','#39 +
            #39')][IIF(MonthOf(<IdentityDocADOQ."DOC_CREATE_DATE">)=3,'#39#1052#1040#1056#1058#1040#39','#39 +
            #39')][IIF(MonthOf(<IdentityDocADOQ."DOC_CREATE_DATE">)=4,'#39#1040#1055#1056#1045#1051#1071#39',' +
            #39#39')][IIF(MonthOf(<IdentityDocADOQ."DOC_CREATE_DATE">)=5,'#39#1052#1040#1071#39','#39#39 +
            ')][IIF(MonthOf(<IdentityDocADOQ."DOC_CREATE_DATE">)=6,'#39#1048#1070#1053#1071#39','#39#39')' +
            '][IIF(MonthOf(<IdentityDocADOQ."DOC_CREATE_DATE">)=7,'#39#1048#1070#1051#1071#39','#39#39')]' +
            '[IIF(MonthOf(<IdentityDocADOQ."DOC_CREATE_DATE">)=8,'#39#1040#1042#1043#1059#1057#1058#1040#39','#39#39 +
            ')][IIF(MonthOf(<IdentityDocADOQ."DOC_CREATE_DATE">)=9,'#39#1057#1045#1053#1058#1071#1041#1056#1071#39 +
            ','#39#39')][IIF(MonthOf(<IdentityDocADOQ."DOC_CREATE_DATE">)=10,'#39#1054#1050#1058#1071#1041 +
            #1056#1071#39','#39#39')][IIF(MonthOf(<IdentityDocADOQ."DOC_CREATE_DATE">)=11,'#39#1053#1054 +
            #1071#1041#1056#1071#39','#39#39')][IIF(MonthOf(<IdentityDocADOQ."DOC_CREATE_DATE">)=12,'#39 +
            #1044#1045#1050#1040#1041#1056#1071#39','#39#39')]')
        ParentFont = False
      end
      object Memo27: TfrxMemoView
        Left = 328.819110000000000000
        Top = 306.141930000000000000
        Width = 34.015770000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[YearOf(<IdentityDocADOQ."DOC_CREATE_DATE">)]')
        ParentFont = False
      end
      object Memo28: TfrxMemoView
        Top = 260.787570000000000000
        Width = 374.173470000000000000
        Height = 34.015770000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          
            '                                                [FMS_BRANCH_NAME' +
            '_DEFAULT]')
        ParentFont = False
      end
      object Memo30: TfrxMemoView
        Left = 113.385900000000000000
        Top = 348.850393700787000000
        Width = 264.567100000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          '[Uppercase(<MoveToAdrADOQuery."COUNTRY_NAME">)]')
        ParentFont = False
      end
      object Memo31: TfrxMemoView
        Left = 37.795300000000000000
        Top = 362.078740160000000000
        Width = 340.157700000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          
            '[IIF(Pos('#39#1056#1045#1057#1055#39',Uppercase(<MoveToAdrADOQuery."STATE_SHORT_FULL">' +
            '))>0, Uppercase(<MoveToAdrADOQuery."STATE_SHORT_FULL">),'#39#39')] [Up' +
            'percase(<MoveToAdrADOQuery."STATE_NAME">)] [IIF(Pos('#39#1056#1045#1057#1055#39',Upper' +
            'case(<MoveToAdrADOQuery."STATE_SHORT_FULL">))>0,'#39#39',Uppercase(<Mo' +
            'veToAdrADOQuery."STATE_SHORT_FULL">))]')
        ParentFont = False
      end
      object Memo32: TfrxMemoView
        Left = 34.015770000000000000
        Top = 376.062992125984000000
        Width = 343.937230000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          '[Uppercase(<MoveToAdrADOQuery."DISTRICT_NAME">)]')
        ParentFont = False
      end
      object Memo33: TfrxMemoView
        Left = 34.015770000000000000
        Top = 390.047244094488000000
        Width = 343.937230000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          
            '[IIF(<MoveToAdrADOQuery."ITS_CITY">=1,Uppercase(<MoveToAdrADOQue' +
            'ry."SETTLEM_NAME">),'#39#39')]')
        ParentFont = False
      end
      object Memo34: TfrxMemoView
        Left = 94.488250000000000000
        Top = 403.653543307087000000
        Width = 283.464750000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          
            '[IIF(<MoveToAdrADOQuery."ITS_CITY">=1,'#39#39',Uppercase(<MoveToAdrADO' +
            'Query."SETTLEM_NAME">))]')
        ParentFont = False
      end
      object Memo35: TfrxMemoView
        Left = 15.118120000000000000
        Top = 419.527830000000000000
        Width = 177.637910000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          '[Uppercase(<MoveToAdrADOQuery."STREET_NAME">)]')
        ParentFont = False
      end
      object Memo36: TfrxMemoView
        Left = 219.212740000000000000
        Top = 419.527830000000000000
        Width = 37.795300000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[Uppercase(<MoveToAdrADOQuery."HOUSE_NUM">)]')
        ParentFont = False
      end
      object Memo37: TfrxMemoView
        Left = 279.685220000000000000
        Top = 419.527830000000000000
        Width = 37.795300000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[Uppercase(<MoveToAdrADOQuery."CORPUS">)]')
        ParentFont = False
      end
      object Memo38: TfrxMemoView
        Left = 336.378170000000000000
        Top = 419.527830000000000000
        Width = 37.795300000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          
            '[IIF(<MoveToAdrADOQuery."APARTMENT_NUM">=0,'#39#39',Uppercase(<MoveToA' +
            'drADOQuery."APARTMENT_NUM">))]')
        ParentFont = False
      end
      object Memo58: TfrxMemoView
        Left = 75.590600000000000000
        Top = 158.740260000000000000
        Width = 298.582870000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          '[Uppercase(<PersonViewDetailADOT."COUNTRY_NAME">)]')
        ParentFont = False
      end
      object Memo14: TfrxMemoView
        Top = 317.480520000000000000
        Width = 377.953000000000000000
        Height = 30.236240000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          
            '                                       [Uppercase(<IdentityDocAD' +
            'OQ."DOC_BRANCH_NAME">)]')
        ParentFont = False
      end
      object Memo29: TfrxMemoView
        Left = 302.362400000000000000
        Top = 332.598640000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          '[Uppercase(<IdentityDocADOQ."DOC_BRANCHE_CODE">)]')
        ParentFont = False
      end
      object Memo59: TfrxMemoView
        Top = 30.236240000000000000
        Width = 60.472480000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '1. '#1060#1072#1084#1080#1083#1080#1103)
        ParentFont = False
      end
      object Memo60: TfrxMemoView
        Top = 45.354360000000000000
        Width = 37.795300000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '2. '#1048#1084#1103)
        ParentFont = False
      end
      object Memo61: TfrxMemoView
        Top = 60.472480000000000000
        Width = 60.472480000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '3. '#1054#1090#1095#1077#1089#1090#1074#1086)
        ParentFont = False
      end
      object Memo62: TfrxMemoView
        Top = 75.590600000000000000
        Width = 90.708720000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '4. '#1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103)
        ParentFont = False
      end
      object Memo63: TfrxMemoView
        Left = 287.244280000000000000
        Top = 75.590600000000000000
        Width = 34.015770000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '5. '#1055#1086#1083)
        ParentFont = False
      end
      object Memo64: TfrxMemoView
        Top = 90.708720000000000000
        Width = 128.504020000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '6. '#1052#1077#1089#1090#1086' '#1088#1086#1078#1076#1077#1085#1080#1103': '#1089#1090#1088#1072#1085#1072)
        ParentFont = False
      end
      object Memo65: TfrxMemoView
        Top = 105.826840000000000000
        Width = 37.795300000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1088#1077#1075#1080#1086#1085)
        ParentFont = False
      end
      object Memo66: TfrxMemoView
        Top = 119.055113230000000000
        Width = 34.015770000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1088#1072#1081#1086#1085)
        ParentFont = False
      end
      object Memo67: TfrxMemoView
        Top = 132.283550000000000000
        Width = 37.795300000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1075#1086#1088#1086#1076)
        ParentFont = False
      end
      object Memo68: TfrxMemoView
        Top = 147.401670000000000000
        Width = 86.929190000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1085#1072#1089#1077#1083#1077#1085#1085#1099#1081' '#1087#1091#1085#1082#1090)
        ParentFont = False
      end
      object Memo69: TfrxMemoView
        Top = 162.519790000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '7. '#1043#1088#1072#1078#1076#1072#1085#1089#1090#1074#1086)
        ParentFont = False
      end
      object Memo70: TfrxMemoView
        Top = 173.858380000000000000
        Width = 166.299320000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '8. '#1041#1099#1083' '#1079#1072#1088#1077#1075#1080#1089#1090#1088#1080#1088#1086#1074#1072#1085' '#1087#1086' '#1084#1077#1089#1090#1091)
        ParentFont = False
      end
      object Memo72: TfrxMemoView
        Top = 204.094620000000000000
        Width = 34.015770000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1088#1072#1081#1086#1085)
        ParentFont = False
      end
      object Memo73: TfrxMemoView
        Top = 217.322817560000000000
        Width = 37.795300000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1075#1086#1088#1086#1076)
        ParentFont = False
      end
      object Memo74: TfrxMemoView
        Top = 230.551330000000000000
        Width = 86.929190000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1085#1072#1089#1077#1083#1077#1085#1085#1099#1081' '#1087#1091#1085#1082#1090)
        ParentFont = False
      end
      object Memo75: TfrxMemoView
        Top = 190.866141730000000000
        Width = 52.913420000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1088#1077#1075#1080#1086#1085)
        ParentFont = False
      end
      object Memo76: TfrxMemoView
        Left = 3.779530000000000000
        Top = 247.559038030000000000
        Width = 22.677180000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1091#1083'.')
        ParentFont = False
      end
      object Memo77: TfrxMemoView
        Left = 196.535560000000000000
        Top = 247.559038030000000000
        Width = 26.456710000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1076#1086#1084)
        ParentFont = False
      end
      object Memo78: TfrxMemoView
        Left = 257.008040000000000000
        Top = 247.559038030000000000
        Width = 30.236240000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1082#1086#1088#1087'.')
        ParentFont = False
      end
      object Memo79: TfrxMemoView
        Left = 321.260050000000000000
        Top = 247.559038030000000000
        Width = 18.897650000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1082#1074'.')
        ParentFont = False
      end
      object Memo80: TfrxMemoView
        Top = 262.677148270000000000
        Width = 162.519790000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '9.'#1054#1088#1075#1072#1085' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1086#1085#1085#1086#1075#1086' '#1091#1095#1077#1090#1072)
        ParentFont = False
      end
      object Memo81: TfrxMemoView
        Top = 294.803340000000000000
        Width = 166.299320000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '10. '#1044#1086#1082#1091#1084#1077#1085#1090', '#1091#1076#1086#1089#1090'. '#1083#1080#1095#1085#1086#1089#1090#1100': '#1074#1080#1076)
        ParentFont = False
      end
      object Memo82: TfrxMemoView
        Top = 308.031476540000000000
        Width = 34.015770000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1089#1077#1088#1080#1103)
        ParentFont = False
      end
      object Memo83: TfrxMemoView
        Left = 79.370130000000000000
        Top = 308.031476540000000000
        Width = 34.015770000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1085#1086#1084#1077#1088)
        ParentFont = False
      end
      object Memo84: TfrxMemoView
        Left = 181.417440000000000000
        Top = 308.031476540000000000
        Width = 34.015770000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1074#1099#1076#1072#1085)
        ParentFont = False
      end
      object Memo85: TfrxMemoView
        Top = 319.370056770000000000
        Width = 128.504020000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1086#1088#1075#1072#1085', '#1074#1099#1076#1072#1074#1096#1080#1081' '#1076#1086#1082#1091#1084#1077#1085#1090)
        ParentFont = False
      end
      object Memo86: TfrxMemoView
        Left = 279.685220000000000000
        Top = 279.685220000000000000
        Width = 22.677180000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1082#1086#1076)
        ParentFont = False
      end
      object Memo87: TfrxMemoView
        Top = 351.496290000000000000
        Width = 162.519790000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '11.'#1050#1091#1076#1072' '#1074#1099#1073#1099#1083': '#1089#1090#1088#1072#1085#1072)
        ParentFont = False
      end
      object Memo88: TfrxMemoView
        Top = 364.724387480000000000
        Width = 41.574830000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1088#1077#1075#1080#1086#1085)
        ParentFont = False
      end
      object Memo89: TfrxMemoView
        Top = 377.953000000000000000
        Width = 34.015770000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1088#1072#1081#1086#1085)
        ParentFont = False
      end
      object Memo90: TfrxMemoView
        Top = 393.071120000000000000
        Width = 37.795300000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1075#1086#1088#1086#1076)
        ParentFont = False
      end
      object Memo91: TfrxMemoView
        Top = 406.299190630000000000
        Width = 86.929190000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1085#1072#1089#1077#1083#1077#1085#1085#1099#1081' '#1087#1091#1085#1082#1090)
        ParentFont = False
      end
      object Memo92: TfrxMemoView
        Top = 419.527830000000000000
        Width = 22.677180000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1091#1083'.')
        ParentFont = False
      end
      object Memo93: TfrxMemoView
        Left = 200.315090000000000000
        Top = 419.527830000000000000
        Width = 26.456710000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1076#1086#1084)
        ParentFont = False
      end
      object Memo94: TfrxMemoView
        Left = 257.008040000000000000
        Top = 419.527830000000000000
        Width = 30.236240000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1082#1086#1088#1087'.')
        ParentFont = False
      end
      object Memo95: TfrxMemoView
        Left = 321.260050000000000000
        Top = 419.527830000000000000
        Width = 18.897650000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1082#1074'.')
        ParentFont = False
      end
      object Memo113: TfrxMemoView
        Left = 309.921460000000000000
        Top = 3.779530000000000000
        Width = 60.472480000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1060#1086#1088#1084#1072' '#8470'7')
        ParentFont = False
      end
      object Memo114: TfrxMemoView
        Left = 71.811070000000000000
        Top = 3.779530000000000000
        Width = 226.771800000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1040#1044#1056#1045#1057#1053#1067#1049' '#1051#1048#1057#1058#1054#1050' '#1059#1041#1067#1058#1048#1071)
        ParentFont = False
      end
      object Memo115: TfrxMemoView
        Width = 22.677180000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          #1042)
        ParentFont = False
      end
      object Memo71: TfrxMemoView
        Left = 279.685220000000000000
        Top = 336.378170000000000000
        Width = 22.677180000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1082#1086#1076)
        ParentFont = False
      end
      object Memo96: TfrxMemoView
        Left = 362.834880000000000000
        Top = 308.031496062992000000
        Width = 22.677180000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1075'.')
        ParentFont = False
      end
      object Memo134: TfrxMemoView
        Left = 306.141930000000000000
        Top = 277.417322830000000000
        Width = 71.811070000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        LineSpacing = 1.000000000000000000
        Memo.UTF8W = (
          '[Uppercase(<FMS_BRANCH_CODE_DEFAULT>)]')
        ParentFont = False
      end
      object Memo136: TfrxMemoView
        Left = 56.692950000000000000
        Top = 374.173470000000000000
        Width = 321.260050000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        HideZeros = True
        Memo.UTF8W = (
          '[Uppercase(<OthReasonADOQ."STATIC_DATA">)]')
        ParentFont = False
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 110.000000000000000000
      PaperHeight = 155.000000000000000000
      PaperSize = 256
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object Memo39: TfrxMemoView
        Left = 128.504020000000000000
        Top = 28.346456692913400000
        Width = 249.448980000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          '[Uppercase(<MoveFromAdrADOQuery."COUNTRY_NAME">)]')
        ParentFont = False
      end
      object Memo40: TfrxMemoView
        Left = 37.795300000000000000
        Top = 41.574830000000000000
        Width = 340.157700000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          
            '[IIF(Pos('#39#1056#1045#1057#1055#39',Uppercase(<MoveFromAdrADOQuery."STATE_SHORT_FULL' +
            '">))>0, Uppercase(<MoveFromAdrADOQuery."STATE_SHORT_FULL">),'#39#39')]' +
            ' [Uppercase(<MoveFromAdrADOQuery."STATE_NAME">)] [IIF(Pos('#39#1056#1045#1057#1055#39 +
            ',Uppercase(<MoveFromAdrADOQuery."STATE_SHORT_FULL">))>0,'#39#39',Upper' +
            'case(<MoveFromAdrADOQuery."STATE_SHORT_FULL">))]')
        ParentFont = False
      end
      object Memo41: TfrxMemoView
        Left = 37.795300000000000000
        Top = 55.937007874015700000
        Width = 340.157700000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          '[Uppercase(<MoveFromAdrADOQuery."DISTRICT_NAME">)]')
        ParentFont = False
      end
      object Memo42: TfrxMemoView
        Left = 37.795300000000000000
        Top = 69.165354330708700000
        Width = 343.937230000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          
            '[IIF(<MoveFromAdrADOQuery."ITS_CITY">=1,Uppercase(<MoveFromAdrAD' +
            'OQuery."SETTLEM_NAME">),'#39#39')]')
        ParentFont = False
      end
      object Memo43: TfrxMemoView
        Left = 98.267780000000000000
        Top = 83.149660000000000000
        Width = 283.464750000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          
            '[IIF(<MoveFromAdrADOQuery."ITS_CITY">=1,'#39#39',Uppercase(<MoveFromAd' +
            'rADOQuery."SETTLEM_NAME">))]')
        ParentFont = False
      end
      object Memo44: TfrxMemoView
        Left = 22.677180000000000000
        Top = 98.267780000000000000
        Width = 170.078850000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          '[Uppercase(<MoveFromAdrADOQuery."STREET_NAME">)]')
        ParentFont = False
      end
      object Memo45: TfrxMemoView
        Left = 219.212740000000000000
        Top = 98.267780000000000000
        Width = 34.015770000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[Uppercase(<MoveFromAdrADOQuery."HOUSE_NUM">)]')
        ParentFont = False
      end
      object Memo46: TfrxMemoView
        Left = 283.464750000000000000
        Top = 98.267780000000000000
        Width = 37.795300000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[Uppercase(<MoveFromAdrADOQuery."CORPUS">)]')
        ParentFont = False
      end
      object Memo47: TfrxMemoView
        Left = 340.157700000000000000
        Top = 98.267780000000000000
        Width = 37.795300000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          
            '[IIF(<MoveFromAdrADOQuery."APARTMENT_NUM">=0,'#39#39',Uppercase(<MoveF' +
            'romAdrADOQuery."APARTMENT_NUM">))]')
        ParentFont = False
      end
      object Memo48: TfrxMemoView
        Left = 49.133890000000000000
        Top = 156.850393700000000000
        Width = 328.819110000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          '[Uppercase(<ChangePersonADOQ."LAST_NAME">)]')
        ParentFont = False
      end
      object Memo49: TfrxMemoView
        Left = 30.236240000000000000
        Top = 173.858380000000000000
        Width = 347.716760000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          '[Uppercase(<ChangePersonADOQ."FIRST_NAME">)]')
        ParentFont = False
      end
      object Memo50: TfrxMemoView
        Left = 49.133890000000000000
        Top = 188.976500000000000000
        Width = 328.819110000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          '[Uppercase(<ChangePersonADOQ."SURNAME">)]')
        ParentFont = False
      end
      object Memo54: TfrxMemoView
        Left = 22.677180000000000000
        Top = 128.504020000000000000
        Width = 170.078850000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          '[Uppercase(<MoveInSettlementADOQuery."STREET_NAME">)]')
        ParentFont = False
      end
      object Memo55: TfrxMemoView
        Left = 222.992270000000000000
        Top = 128.504020000000000000
        Width = 34.015770000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[Uppercase(<MoveInSettlementADOQuery."HOUSE_NUM">)]')
        ParentFont = False
      end
      object Memo56: TfrxMemoView
        Left = 283.464750000000000000
        Top = 128.504020000000000000
        Width = 37.795300000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haRight
        Memo.UTF8W = (
          '[Uppercase(<MoveInSettlementADOQuery."CORPUS">)]')
        ParentFont = False
      end
      object Memo57: TfrxMemoView
        Left = 340.157700000000000000
        Top = 128.504020000000000000
        Width = 37.795300000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          
            '[IIF(<MoveInSettlementADOQuery."APARTMENT_NUM">=0,'#39#39',Uppercase(<' +
            'MoveInSettlementADOQuery."APARTMENT_NUM">))]')
        ParentFont = False
      end
      object Memo97: TfrxMemoView
        Top = 117.165430000000000000
        Width = 215.433210000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '13. '#1055#1077#1088#1077#1077#1093#1072#1083' '#1074' '#1090#1086#1084' '#1078#1077' '#1085#1072#1089#1077#1083#1077#1085#1085#1086#1084' '#1087#1091#1085#1082#1090#1077' '#1085#1072':')
        ParentFont = False
      end
      object Memo98: TfrxMemoView
        Left = 3.779530000000000000
        Top = 132.283550000000000000
        Width = 22.677180000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1091#1083'.')
        ParentFont = False
      end
      object Memo99: TfrxMemoView
        Left = 196.535560000000000000
        Top = 132.283550000000000000
        Width = 26.456710000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1076#1086#1084)
        ParentFont = False
      end
      object Memo100: TfrxMemoView
        Left = 257.008040000000000000
        Top = 132.283550000000000000
        Width = 30.236240000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1082#1086#1088#1087'.')
        ParentFont = False
      end
      object Memo101: TfrxMemoView
        Left = 321.260050000000000000
        Top = 132.283550000000000000
        Width = 18.897650000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1082#1074'.')
        ParentFont = False
      end
      object Memo102: TfrxMemoView
        Top = 147.401670000000000000
        Width = 222.992270000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '14. '#1055#1077#1088#1077#1084#1077#1085#1080#1083'('#1072') '#1060'.'#1048'.'#1054'. '#1080' '#1087#1088#1086#1095#1080#1077' '#1089#1074#1077#1076#1077#1085#1080#1103' '#1085#1072':')
        ParentFont = False
      end
      object Memo103: TfrxMemoView
        Top = 158.740260000000000000
        Width = 49.133890000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1092#1072#1084#1080#1083#1080#1103)
        ParentFont = False
      end
      object Memo104: TfrxMemoView
        Top = 177.637910000000000000
        Width = 49.133890000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1080#1084#1103)
        ParentFont = False
      end
      object Memo105: TfrxMemoView
        Top = 192.756030000000000000
        Width = 49.133890000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1086#1090#1095#1077#1089#1090#1074#1086)
        ParentFont = False
      end
      object Memo106: TfrxMemoView
        Top = 207.874150000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1076#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103)
        ParentFont = False
      end
      object Memo107: TfrxMemoView
        Top = 222.992270000000000000
        Width = 215.433210000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '15. '#1055#1088#1086#1095#1080#1077' '#1087#1088#1080#1095#1080#1085#1099':')
        ParentFont = False
      end
      object Memo108: TfrxMemoView
        Top = 238.110390000000000000
        Width = 151.181200000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '16. '#1044#1086#1082#1091#1084#1077#1085#1090' '#1089#1086#1089#1090#1072#1074#1080#1083'  "         "')
        ParentFont = False
      end
      object Memo109: TfrxMemoView
        Top = 253.228510000000000000
        Width = 151.181200000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '17. '#1057#1085#1103#1090#1080#1077' '#1089' '#1088#1077#1075'. '#1091#1095#1077#1090#1072' "         "')
        ParentFont = False
      end
      object Memo110: TfrxMemoView
        Left = 283.464750000000000000
        Top = 207.874150000000000000
        Width = 26.456710000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1087#1086#1083)
        ParentFont = False
      end
      object Memo111: TfrxMemoView
        Left = 268.346630000000000000
        Top = 238.110390000000000000
        Width = 60.472480000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1075'.  '#1055#1086#1076#1087#1080#1089#1100)
        ParentFont = False
      end
      object Memo112: TfrxMemoView
        Left = 268.346630000000000000
        Top = 253.228510000000000000
        Width = 60.472480000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1075'.  '#1055#1086#1076#1087#1080#1089#1100)
        ParentFont = False
      end
      object Memo116: TfrxMemoView
        Top = 298.582870000000000000
        Width = 151.181200000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1041#1083#1086#1082' '#1084#1072#1096#1080#1085#1086#1095#1080#1090#1072#1077#1084#1099#1093' '#1076#1072#1085#1085#1099#1093)
        ParentFont = False
      end
      object Memo117: TfrxMemoView
        Left = 166.299320000000000000
        Top = 480.000310000000000000
        Width = 45.354360000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1060'. '#1048'. '#1054'.')
        ParentFont = False
      end
      object Shape1: TfrxShapeView
        Left = 11.338590000000000000
        Top = 328.819110000000000000
        Width = 347.716760000000000000
        Height = 151.181200000000000000
        ShowHint = False
        Frame.Width = 0.500000000000000000
      end
      object Memo118: TfrxMemoView
        Left = 257.008040000000000000
        Top = 15.118120000000000000
        Width = 113.385900000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '('#1086#1073#1086#1088#1086#1090#1085#1072#1103' '#1089#1090#1086#1088#1086#1085#1072')')
        ParentFont = False
      end
      object Memo119: TfrxMemoView
        Left = 306.141930000000000000
        Width = 60.472480000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1060#1086#1088#1084#1072' '#8470'7')
        ParentFont = False
      end
      object Memo120: TfrxMemoView
        Left = 15.118120000000000000
        Top = 268.346630000000000000
        Width = 60.472480000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1086#1092#1086#1088#1084#1080#1083)
        ParentFont = False
      end
      object Memo121: TfrxMemoView
        Left = 230.551330000000000000
        Top = 207.874150000000000000
        Width = 26.456710000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1075'.')
        ParentFont = False
      end
      object Memo122: TfrxMemoView
        Top = 30.236240000000000000
        Width = 128.504020000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '12. '#1054#1090#1082#1091#1076#1072' '#1087#1088#1080#1073#1099#1083': '#1089#1090#1088#1072#1085#1072)
        ParentFont = False
      end
      object Memo123: TfrxMemoView
        Top = 45.354360000000000000
        Width = 49.133890000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1088#1077#1075#1080#1086#1085)
        ParentFont = False
      end
      object Memo124: TfrxMemoView
        Top = 60.472480000000000000
        Width = 49.133890000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1088#1072#1081#1086#1085)
        ParentFont = False
      end
      object Memo125: TfrxMemoView
        Top = 71.811070000000000000
        Width = 49.133890000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1075#1086#1088#1086#1076)
        ParentFont = False
      end
      object Memo126: TfrxMemoView
        Left = 3.779530000000000000
        Top = 102.047310000000000000
        Width = 22.677180000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1091#1083'.')
        ParentFont = False
      end
      object Memo127: TfrxMemoView
        Left = 200.315090000000000000
        Top = 102.047310000000000000
        Width = 26.456710000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1076#1086#1084)
        ParentFont = False
      end
      object Memo128: TfrxMemoView
        Left = 257.008040000000000000
        Top = 102.047310000000000000
        Width = 30.236240000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1082#1086#1088#1087'.')
        ParentFont = False
      end
      object Memo129: TfrxMemoView
        Left = 321.260050000000000000
        Top = 102.047310000000000000
        Width = 18.897650000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1082#1074'.')
        ParentFont = False
      end
      object Memo130: TfrxMemoView
        Top = 86.929190000000000000
        Width = 98.267780000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1085#1072#1089#1077#1083#1077#1085#1085#1099#1081' '#1087#1091#1085#1082#1090)
        ParentFont = False
      end
      object Memo131: TfrxMemoView
        Left = 117.165430000000000000
        Top = 234.330860000000000000
        Width = 26.456710000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[IIF(DayOf(Date)<10,'#39'0'#39','#39#39')][DayOf(Date)]')
        ParentFont = False
      end
      object Memo132: TfrxMemoView
        Left = 154.960730000000000000
        Top = 234.330860000000000000
        Width = 68.031540000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          
            '[IIF(MonthOf(Date)=1,'#39#1071#1053#1042#1040#1056#1071#39','#39#39')][IIF(MonthOf(Date)=2,'#39#1060#1045#1042#1056#1040#1051#1071#39 +
            ','#39#39')][IIF(MonthOf(Date)=3,'#39#1052#1040#1056#1058#1040#39','#39#39')][IIF(MonthOf(Date)=4,'#39#1040#1055#1056#1045 +
            #1051#1071#39','#39#39')][IIF(MonthOf(Date)=5,'#39#1052#1040#1071#39','#39#39')][IIF(MonthOf(Date)=6,'#39#1048#1070#1053 +
            #1071#39','#39#39')][IIF(MonthOf(Date)=7,'#39#1048#1070#1051#1071#39','#39#39')][IIF(MonthOf(Date)=8,'#39#1040#1042#1043 +
            #1059#1057#1058#1040#39','#39#39')][IIF(MonthOf(Date)=9,'#39#1057#1045#1053#1058#1071#1041#1056#1071#39','#39#39')][IIF(MonthOf(Date)' +
            '=10,'#39#1054#1050#1058#1071#1041#1056#1071#39','#39#39')][IIF(MonthOf(Date)=11,'#39#1053#1054#1071#1041#1056#1071#39','#39#39')][IIF(MonthO' +
            'f(Date)=12,'#39#1044#1045#1050#1040#1041#1056#1071#39','#39#39')]')
        ParentFont = False
      end
      object Memo133: TfrxMemoView
        Left = 226.771800000000000000
        Top = 234.330860000000000000
        Width = 37.795300000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[YearOf(Date)]')
        ParentFont = False
      end
      object Memo135: TfrxMemoView
        Left = 105.826840000000000000
        Top = 219.968503937008000000
        Width = 272.126160000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        HideZeros = True
        Memo.UTF8W = (
          '[Uppercase(<OthReasonADOQ."STATIC_DATA">)]')
        ParentFont = False
      end
      object Memo51: TfrxMemoView
        Left = 79.370130000000000000
        Top = 204.850393700787400000
        Width = 26.456710000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          
            '[IIF(YearOf(<ChangePersonADOQ."BIRTHDATE">)>1900,IIF(DayOf(<Chan' +
            'gePersonADOQ."BIRTHDATE">)<10,'#39'0'#39','#39#39'),'#39#39')][IIF(YearOf(<ChangePer' +
            'sonADOQ."BIRTHDATE">)>1900,DayOf(<ChangePersonADOQ."BIRTHDATE">)' +
            ','#39#39')]')
        ParentFont = False
      end
      object Memo52: TfrxMemoView
        Left = 117.165430000000000000
        Top = 204.850393700787400000
        Width = 68.031540000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          
            '[IIF(YearOf(<ChangePersonADOQ."BIRTHDATE">)>1900,IIF(MonthOf(<Ch' +
            'angePersonADOQ."BIRTHDATE">)=1,'#39#1071#1053#1042#1040#1056#1071#39','#39#39'),'#39#39')][IIF(YearOf(<Cha' +
            'ngePersonADOQ."BIRTHDATE">)>1900,IIF(MonthOf(<ChangePersonADOQ."' +
            'BIRTHDATE">)=2,'#39#1060#1045#1042#1056#1040#1051#1071#39','#39#39'),'#39#39')][IIF(YearOf(<ChangePersonADOQ."' +
            'BIRTHDATE">)>1900,IIF(MonthOf(<ChangePersonADOQ."BIRTHDATE">)=3,' +
            #39#1052#1040#1056#1058#1040#39','#39#39'),'#39#39')][IIF(YearOf(<ChangePersonADOQ."BIRTHDATE">)>1900' +
            ',IIF(MonthOf(<ChangePersonADOQ."BIRTHDATE">)=4,'#39#1040#1055#1056#1045#1051#1071#39','#39#39'),'#39#39')]' +
            '[IIF(YearOf(<ChangePersonADOQ."BIRTHDATE">)>1900,IIF(MonthOf(<Ch' +
            'angePersonADOQ."BIRTHDATE">)=5,'#39#1052#1040#1071#39','#39#39'),'#39#39')][IIF(YearOf(<Change' +
            'PersonADOQ."BIRTHDATE">)>1900,IIF(MonthOf(<ChangePersonADOQ."BIR' +
            'THDATE">)=6,'#39#1048#1070#1053#1071#39','#39#39'),'#39#39')][IIF(YearOf(<ChangePersonADOQ."BIRTHD' +
            'ATE">)>1900,IIF(MonthOf(<ChangePersonADOQ."BIRTHDATE">)=7,'#39#1048#1070#1051#1071#39 +
            ','#39#39'),'#39#39')][IIF(YearOf(<ChangePersonADOQ."BIRTHDATE">)>1900,IIF(Mo' +
            'nthOf(<ChangePersonADOQ."BIRTHDATE">)=8,'#39#1040#1042#1043#1059#1057#1058#1040#39','#39#39'),'#39#39')][IIF(Y' +
            'earOf(<ChangePersonADOQ."BIRTHDATE">)>1900,IIF(MonthOf(<ChangePe' +
            'rsonADOQ."BIRTHDATE">)=9,'#39#1057#1045#1053#1058#1071#1041#1056#1071#39','#39#39'),'#39#39')][IIF(YearOf(<ChangeP' +
            'ersonADOQ."BIRTHDATE">)>1900,IIF(MonthOf(<ChangePersonADOQ."BIRT' +
            'HDATE">)=10,'#39#1054#1050#1058#1071#1041#1056#1071#39','#39#39'),'#39#39')][IIF(YearOf(<ChangePersonADOQ."BIR' +
            'THDATE">)>1900,IIF(MonthOf(<ChangePersonADOQ."BIRTHDATE">)=11,'#39#1053 +
            #1054#1071#1041#1056#1071#39','#39#39'),'#39#39')][IIF(YearOf(<ChangePersonADOQ."BIRTHDATE">)>1900,' +
            'IIF(MonthOf(<ChangePersonADOQ."BIRTHDATE">)=12,'#39#1044#1045#1050#1040#1041#1056#1071#39','#39#39'),'#39#39')' +
            ']')
        ParentFont = False
      end
      object Memo53: TfrxMemoView
        Left = 188.976500000000000000
        Top = 204.850393700787400000
        Width = 37.795300000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          
            '[IIF(YearOf(<ChangePersonADOQ."BIRTHDATE">)>1900,YearOf(<ChangeP' +
            'ersonADOQ."BIRTHDATE">),'#39#39')]')
        ParentFont = False
      end
    end
  end
  object IncomeStatAccountPaperRepF12P: TfrxReport
    Version = '4.12'
    DotMatrixReport = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Maximized = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41069.172559189800000000
    ReportOptions.LastChange = 41142.599556655090000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnPreview = IncomeStatAccountPaperRepF12PPreview
    OnPrintReport = IncomeStatAccountPaperRepF12PPrintReport
    Left = 72
    Top = 416
    Datasets = <
      item
        DataSet = CurrOperationfrxDBDS
        DataSetName = 'CurrOperationfrxDBDS'
      end
      item
        DataSet = IncomeStatAccountPaperRepF12P.NewResidingAdrADOQuery
        DataSetName = 'NewResidingAdrADOQuery'
      end
      item
        DataSet = IncomeStatAccountPaperRepF12P.OldResidingAdrADOQuery
        DataSetName = 'OldResidingAdrADOQuery'
      end
      item
        DataSet = PersonsfrxDBDS
        DataSetName = 'PersonsfrxDBDS'
      end
      item
        DataSet = IncomeStatAccountPaperRepF12P.PersonViewDetailADOT
        DataSetName = 'PersonViewDetailADOT'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
      object NewResidingAdrADOQuery: TfrxADOQuery
        UserName = 'NewResidingAdrADOQuery'
        CloseDataSource = True
        BCDToCurrency = False
        Master = CurrOperationfrxDBDS
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select * from OP_ADR_DATA where'
          
            'ELINK_CODE=144 AND ACT_REG_ID=:OP_ID                            ' +
            '                                            ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 200
        pTop = 28
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
      object PersonViewDetailADOT: TfrxADOQuery
        UserName = 'PersonViewDetailADOT'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'PERSON_ID'
            DataType = ftInteger
            Expression = '<PersonsfrxDBDS."PERSON_ID">'
          end>
        SQL.Strings = (
          
            'SELECT * FROM PERSON_VIEW_DETAIL WHERE PERSON_ID=:PERSON_ID     ' +
            '                                                                ' +
            '                              ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 56
        pTop = 28
        Parameters = <
          item
            Name = 'PERSON_ID'
            DataType = ftInteger
            Expression = '<PersonsfrxDBDS."PERSON_ID">'
          end>
      end
      object OldResidingAdrADOQuery: TfrxADOQuery
        UserName = 'OldResidingAdrADOQuery'
        CloseDataSource = True
        BCDToCurrency = False
        Master = CurrOperationfrxDBDS
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select * from OP_ADR_DATA where'
          
            'ELINK_CODE=145 AND ACT_REG_ID=:OP_ID                            ' +
            '                                            ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 200
        pTop = 88
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
    end
    object Page1: TfrxReportPage
      PaperWidth = 155.000000000000000000
      PaperHeight = 280.000000000000000000
      PaperSize = 256
      LeftMargin = 8.000000000000000000
      RightMargin = 11.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Memo1: TfrxMemoView
        Left = 83.149660000000000000
        Top = 308.031496060000000000
        Width = 423.307360000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[Uppercase(<PersonsfrxDBDS."LAST_NAME">)]')
        ParentFont = False
      end
      object Memo2: TfrxMemoView
        Left = 83.149660000000000000
        Top = 325.039370078740000000
        Width = 423.307360000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[Uppercase(<PersonsfrxDBDS."FIRST_NAME">)]')
        ParentFont = False
      end
      object Memo3: TfrxMemoView
        Left = 83.149660000000000000
        Top = 342.803149606299000000
        Width = 423.307360000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[Uppercase(<PersonsfrxDBDS."SURNAME">)]')
        ParentFont = False
      end
      object Memo108: TfrxMemoView
        Left = 340.157700000000000000
        Top = 366.614410000000000000
        Width = 71.811070000000000000
        Height = 18.897650000000000000
        ShowHint = False
        CharSpacing = 24.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          
            '[IIF(MonthOf(<PersonsfrxDBDS."BIRTHDATE">)<10,'#39'0'#39','#39#39')][MonthOf(<' +
            'PersonsfrxDBDS."BIRTHDATE">)]')
        ParentFont = False
      end
      object Memo4: TfrxMemoView
        Left = 136.063080000000000000
        Top = 366.614410000000000000
        Width = 34.015770000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          
            '[IIF(DayOf(<PersonsfrxDBDS."BIRTHDATE">)<10,'#39'0'#39','#39#39')][DayOf(<Pers' +
            'onsfrxDBDS."BIRTHDATE">)]')
        ParentFont = False
      end
      object Memo5: TfrxMemoView
        Left = 438.425480000000000000
        Top = 366.614410000000000000
        Width = 102.047310000000000000
        Height = 18.897650000000000000
        ShowHint = False
        CharSpacing = 12.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[YearOf(<PersonsfrxDBDS."BIRTHDATE">)]')
        ParentFont = False
      end
      object Memo6: TfrxMemoView
        Left = 253.228510000000000000
        Top = 396.850650000000000000
        Width = 253.228510000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold, fsUnderline]
        Memo.UTF8W = (
          '[UpperCase(<PersonViewDetailADOT."BIRTH_COUNT">)]')
        ParentFont = False
      end
      object Memo7: TfrxMemoView
        Left = 366.614410000000000000
        Top = 411.968770000000000000
        Width = 143.622140000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold, fsUnderline]
        Memo.UTF8W = (
          '[UpperCase(<PersonViewDetailADOT."REGION_NAME">)]')
        ParentFont = False
      end
      object Memo8: TfrxMemoView
        Left = 359.055350000000000000
        Top = 427.086890000000000000
        Width = 151.181200000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold, fsUnderline]
        Memo.UTF8W = (
          '[UpperCase(<PersonViewDetailADOT."DISTRICT_NAME">)]')
        ParentFont = False
      end
      object Memo9: TfrxMemoView
        Left = 362.834880000000000000
        Top = 445.984540000000000000
        Width = 147.401670000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold, fsUnderline]
        Memo.UTF8W = (
          
            '[IIF(<PersonViewDetailADOT."ITS_CITY">=0, '#39' '#39',UpperCase(<PersonV' +
            'iewDetailADOT."SETTLEM_NAME">))]')
        ParentFont = False
      end
      object Memo10: TfrxMemoView
        Left = 343.937230000000000000
        Top = 464.882190000000000000
        Width = 166.299320000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold, fsUnderline]
        Memo.UTF8W = (
          
            '[IIF(<PersonViewDetailADOT."ITS_CITY">=0,UpperCase(<PersonViewDe' +
            'tailADOT."SETTLEM_SHORT">+'#39' '#39'+<PersonViewDetailADOT."SETTLEM_NAM' +
            'E">),'#39' '#39')]')
        ParentFont = False
      end
      object Memo11: TfrxMemoView
        Left = 230.551330000000000000
        Top = 501.543307090000000000
        Width = 222.992270000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          '[UpperCase(<PersonViewDetailADOT."COUNTRY_NAME">)]')
        ParentFont = False
      end
      object Memo12: TfrxMemoView
        Left = 325.039580000000000000
        Top = 517.795610000000000000
        Width = 128.504020000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          '[UpperCase(<PersonViewDetailADOT."SEC_COUNTRY">)]')
        ParentFont = False
      end
      object Memo13: TfrxMemoView
        Left = 374.173470000000000000
        Top = 570.709030000000000000
        Width = 139.842610000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold, fsUnderline]
        Memo.UTF8W = (
          '[UpperCase(<NewResidingAdrADOQuery."STATE_NAME">)]')
        ParentFont = False
      end
      object Memo14: TfrxMemoView
        Left = 366.614410000000000000
        Top = 585.827150000000000000
        Width = 143.622140000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold, fsUnderline]
        Memo.UTF8W = (
          '[UpperCase(<NewResidingAdrADOQuery."DISTRICT_NAME">)]')
        ParentFont = False
      end
      object Memo15: TfrxMemoView
        Left = 370.393940000000000000
        Top = 600.945270000000000000
        Width = 139.842610000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold, fsUnderline]
        Memo.UTF8W = (
          
            '[IIF(<NewResidingAdrADOQuery."ITS_CITY">=0, '#39' '#39',UpperCase(<NewRe' +
            'sidingAdrADOQuery."SETTLEM_NAME">))]')
        ParentFont = False
      end
      object Memo16: TfrxMemoView
        Left = 347.716760000000000000
        Top = 619.842920000000000000
        Width = 162.519790000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold, fsUnderline]
        Memo.UTF8W = (
          
            '[IIF(<NewResidingAdrADOQuery."ITS_CITY">=0,UpperCase(<NewResidin' +
            'gAdrADOQuery."SETTLEM_SHORT">+'#39' '#39'+<NewResidingAdrADOQuery."SETTL' +
            'EM_NAME">),'#39' '#39')]')
        ParentFont = False
      end
      object Memo17: TfrxMemoView
        Left = 374.173470000000000000
        Top = 657.638220000000000000
        Width = 143.622140000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold, fsUnderline]
        Memo.UTF8W = (
          '[UpperCase(<OldResidingAdrADOQuery."STATE_NAME">)]')
        ParentFont = False
      end
      object Memo18: TfrxMemoView
        Left = 370.393940000000000000
        Top = 672.756340000000000000
        Width = 143.622140000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold, fsUnderline]
        Memo.UTF8W = (
          '[UpperCase(<OldResidingAdrADOQuery."DISTRICT_NAME">)]')
        ParentFont = False
      end
      object Memo19: TfrxMemoView
        Left = 370.393940000000000000
        Top = 687.874460000000000000
        Width = 143.622140000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold, fsUnderline]
        Memo.UTF8W = (
          
            '[IIF(<OldResidingAdrADOQuery."ITS_CITY">=0, '#39' '#39',UpperCase(<OldRe' +
            'sidingAdrADOQuery."SETTLEM_NAME">))]')
        ParentFont = False
      end
      object Memo20: TfrxMemoView
        Left = 347.716760000000000000
        Top = 706.772110000000000000
        Width = 166.299320000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold, fsUnderline]
        Memo.UTF8W = (
          
            '[IIF(<OldResidingAdrADOQuery."ITS_CITY">=0,UpperCase(<OldResidin' +
            'gAdrADOQuery."SETTLEM_SHORT">+'#39' '#39'+<OldResidingAdrADOQuery."SETTL' +
            'EM_NAME">),'#39' '#39')]')
        ParentFont = False
      end
      object Memo21: TfrxMemoView
        Left = 260.787570000000000000
        Top = 642.520100000000000000
        Width = 249.448980000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold, fsUnderline]
        Memo.UTF8W = (
          '[UpperCase(<OldResidingAdrADOQuery."COUNTRY_NAME">)]')
        ParentFont = False
      end
      object Memo22: TfrxMemoView
        Left = 480.000310000000000000
        Top = 158.740260000000000000
        Width = 26.456710000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          'V')
        ParentFont = False
      end
      object Memo23: TfrxMemoView
        Left = 200.315090000000000000
        Top = 366.614410000000000000
        Width = 128.504020000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          
            '[IIF(MonthOf(<PersonsfrxDBDS."BIRTHDATE">)=1,'#39#1071#1053#1042#1040#1056#1071#39','#39#39')][IIF(M' +
            'onthOf(<PersonsfrxDBDS."BIRTHDATE">)=2,'#39#1060#1045#1042#1056#1040#1051#1071#39','#39#39')][IIF(MonthO' +
            'f(<PersonsfrxDBDS."BIRTHDATE">)=3,'#39#1052#1040#1056#1058#1040#39','#39#39')][IIF(MonthOf(<Pers' +
            'onsfrxDBDS."BIRTHDATE">)=4,'#39#1040#1055#1056#1045#1051#1071#39','#39#39')][IIF(MonthOf(<Personsfrx' +
            'DBDS."BIRTHDATE">)=5,'#39#1052#1040#1071#39','#39#39')][IIF(MonthOf(<PersonsfrxDBDS."BIR' +
            'THDATE">)=6,'#39#1048#1070#1053#1071#39','#39#39')][IIF(MonthOf(<PersonsfrxDBDS."BIRTHDATE">' +
            ')=7,'#39#1048#1070#1051#1071#39','#39#39')][IIF(MonthOf(<PersonsfrxDBDS."BIRTHDATE">)=8,'#39#1040#1042#1043 +
            #1059#1057#1058#1040#39','#39#39')][IIF(MonthOf(<PersonsfrxDBDS."BIRTHDATE">)=9,'#39#1057#1045#1053#1058#1071#1041#1056#1071 +
            #39','#39#39')][IIF(MonthOf(<PersonsfrxDBDS."BIRTHDATE">)=10,'#39#1054#1050#1058#1071#1041#1056#1071#39','#39#39 +
            ')][IIF(MonthOf(<PersonsfrxDBDS."BIRTHDATE">)=11,'#39#1053#1054#1071#1041#1056#1071#39','#39#39')][II' +
            'F(MonthOf(<PersonsfrxDBDS."BIRTHDATE">)=12,'#39#1044#1045#1050#1040#1041#1056#1071#39','#39#39')]')
        ParentFont = False
      end
      object Shape1: TfrxShapeView
        Top = 310.677165350000000000
        Width = 78.992125980000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape2: TfrxShapeView
        Left = 78.992125980000000000
        Top = 310.677165350000000000
        Width = 433.889763780000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape3: TfrxShapeView
        Top = 327.685039370000000000
        Width = 78.992125980000000000
        Height = 17.763779530000000000
        ShowHint = False
      end
      object Shape4: TfrxShapeView
        Left = 78.992125980000000000
        Top = 327.685039370000000000
        Width = 433.889763780000000000
        Height = 17.763779530000000000
        ShowHint = False
      end
      object Shape5: TfrxShapeView
        Top = 345.448818900000000000
        Width = 78.992125980000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape6: TfrxShapeView
        Left = 78.992125980000000000
        Top = 345.448818900000000000
        Width = 433.889763780000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape7: TfrxShapeView
        Top = 362.456692910000000000
        Width = 116.031496060000000000
        Height = 35.149606300000000000
        ShowHint = False
      end
      object Shape8: TfrxShapeView
        Left = 116.031496060000000000
        Top = 362.456692910000000000
        Width = 396.850393700000000000
        Height = 35.149606300000000000
        ShowHint = False
      end
      object Shape9: TfrxShapeView
        Top = 397.606299210000000000
        Width = 173.102362200000000000
        Height = 88.063026300000000000
        ShowHint = False
      end
      object Shape10: TfrxShapeView
        Left = 173.102362200000000000
        Top = 397.606299210000000000
        Width = 339.779527560000000000
        Height = 88.063026300000000000
        ShowHint = False
      end
      object Shape11: TfrxShapeView
        Top = 485.669291340000000000
        Width = 512.881889760000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape12: TfrxShapeView
        Top = 502.677490000000000000
        Width = 512.881889760000000000
        Height = 68.031496060000000000
        ShowHint = False
      end
      object Shape13: TfrxShapeView
        Left = 229.795275590000000000
        Top = 502.677490000000000000
        Width = 283.086745980000000000
        Height = 17.763779530000000000
        ShowHint = False
      end
      object Shape14: TfrxShapeView
        Left = 323.905511810000000000
        Top = 520.440944880000000000
        Width = 188.976377952756000000
        Height = 17.007874015748000000
        ShowHint = False
      end
      object Shape15: TfrxShapeView
        Left = 305.007874020000000000
        Top = 537.448818900000000000
        Width = 207.874015750000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape16: TfrxShapeView
        Left = 305.007874015748000000
        Top = 554.456692913386000000
        Width = 207.874015750000000000
        Height = 16.251968503937000000
        ShowHint = False
      end
      object Line1: TfrxLineView
        Left = 456.944881889764000000
        Top = 502.677490000000000000
        Height = 68.031540000000000000
        ShowHint = False
        Diagonal = True
      end
      object Line2: TfrxLineView
        Left = 476.220780000000000000
        Top = 502.677490000000000000
        Height = 68.031540000000000000
        ShowHint = False
        Diagonal = True
      end
      object Line3: TfrxLineView
        Left = 493.984251968504000000
        Top = 502.677490000000000000
        Height = 68.031540000000000000
        ShowHint = False
        Diagonal = True
      end
      object Shape17: TfrxShapeView
        Top = 570.709030000000000000
        Width = 512.881889760000000000
        Height = 70.677165350000000000
        ShowHint = False
      end
      object Shape18: TfrxShapeView
        Top = 641.385826770000000000
        Width = 512.881889760000000000
        Height = 88.062992130000000000
        ShowHint = False
      end
      object Line4: TfrxLineView
        Left = 182.929133860000000000
        Top = 570.709030000000000000
        Height = 158.740260000000000000
        ShowHint = False
        Diagonal = True
      end
      object Shape19: TfrxShapeView
        Left = 10.204724410000000000
        Top = 607.370081180000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape20: TfrxShapeView
        Left = 24.188976380000000000
        Top = 607.370081180000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape21: TfrxShapeView
        Top = 729.449290000000000000
        Width = 512.881889760000000000
        Height = 18.141732280000000000
        ShowHint = False
      end
      object Line5: TfrxLineView
        Left = 294.803340000000000000
        Top = 729.449290000000000000
        Height = 18.141732280000000000
        ShowHint = False
        Diagonal = True
      end
      object Line6: TfrxLineView
        Left = 317.480520000000000000
        Top = 729.449290000000000000
        Height = 18.141732280000000000
        ShowHint = False
        Diagonal = True
      end
      object Line7: TfrxLineView
        Left = 340.157700000000000000
        Top = 729.449290000000000000
        Height = 18.141732280000000000
        ShowHint = False
        Diagonal = True
      end
      object Line8: TfrxLineView
        Left = 362.834880000000000000
        Top = 729.449290000000000000
        Height = 18.141732280000000000
        ShowHint = False
        Diagonal = True
      end
      object Line9: TfrxLineView
        Left = 385.512060000000000000
        Top = 729.449290000000000000
        Height = 18.141732280000000000
        ShowHint = False
        Diagonal = True
      end
      object Shape22: TfrxShapeView
        Top = 747.590551180000000000
        Width = 512.881889760000000000
        Height = 185.952755910000000000
        ShowHint = False
      end
      object Line10: TfrxLineView
        Left = 144.377952760000000000
        Top = 748.346940000000000000
        Height = 185.196970000000000000
        ShowHint = False
        Diagonal = True
      end
      object Shape23: TfrxShapeView
        Left = 332.598640000000000000
        Top = 368.125984250000000000
        Width = 27.968503940000000000
        Height = 15.874015750000000000
        ShowHint = False
      end
      object Shape24: TfrxShapeView
        Left = 360.566929133858000000
        Top = 368.125984251969000000
        Width = 27.968503937007900000
        Height = 15.874015750000000000
        ShowHint = False
      end
      object Shape25: TfrxShapeView
        Left = 436.535433070000000000
        Top = 368.125984250000000000
        Width = 18.897637800000000000
        Height = 15.874015750000000000
        ShowHint = False
      end
      object Shape26: TfrxShapeView
        Left = 455.433070866142000000
        Top = 368.125984251969000000
        Width = 18.897637800000000000
        Height = 15.874015750000000000
        ShowHint = False
      end
      object Shape27: TfrxShapeView
        Left = 474.330708660000000000
        Top = 368.125984250000000000
        Width = 19.275590551181100000
        Height = 15.874015750000000000
        ShowHint = False
      end
      object Shape28: TfrxShapeView
        Left = 493.606299210000000000
        Top = 368.125984250000000000
        Width = 18.897637800000000000
        Height = 15.874015750000000000
        ShowHint = False
      end
      object Shape29: TfrxShapeView
        Left = 380.598425200000000000
        Top = 236.976377950000000000
        Width = 18.897637800000000000
        Height = 15.874015750000000000
        GroupIndex = 1
        ShowHint = False
      end
      object Shape30: TfrxShapeView
        Left = 399.496062990000000000
        Top = 236.976377950000000000
        Width = 18.897637800000000000
        Height = 15.874015750000000000
        GroupIndex = 1
        ShowHint = False
      end
      object Shape31: TfrxShapeView
        Left = 380.598425200000000000
        Top = 266.078740157480000000
        Width = 18.897637800000000000
        Height = 15.874015750000000000
        ShowHint = False
      end
      object Shape32: TfrxShapeView
        Left = 399.496075200000000000
        Top = 266.078740157480000000
        Width = 18.897637800000000000
        Height = 15.874015750000000000
        ShowHint = False
      end
      object Shape33: TfrxShapeView
        Left = 437.669291340000000000
        Top = 236.976377950000000000
        Width = 18.897637800000000000
        Height = 15.874015750000000000
        ShowHint = False
      end
      object Shape34: TfrxShapeView
        Left = 456.566929130000000000
        Top = 236.976377950000000000
        Width = 18.897637800000000000
        Height = 15.874015750000000000
        ShowHint = False
      end
      object Shape35: TfrxShapeView
        Left = 475.464566930000000000
        Top = 236.976377950000000000
        Width = 18.897637800000000000
        Height = 15.874015750000000000
        ShowHint = False
      end
      object Shape36: TfrxShapeView
        Left = 475.464566930000000000
        Top = 164.031496060000000000
        Width = 37.039370080000000000
        Height = 15.118110240000000000
        ShowHint = False
      end
      object Shape37: TfrxShapeView
        Left = 475.464566929134000000
        Top = 188.976500000000000000
        Width = 37.039370080000000000
        Height = 15.118110240000000000
        ShowHint = False
      end
      object Shape38: TfrxShapeView
        Left = 475.464566930000000000
        Top = 211.653680000000000000
        Width = 37.039370080000000000
        Height = 15.118110240000000000
        ShowHint = False
      end
      object Memo24: TfrxMemoView
        Left = 3.779530000000000000
        Top = 309.921460000000000000
        Width = 75.590600000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '1. '#1060#1072#1084#1080#1083#1080#1103)
        ParentFont = False
      end
      object Memo25: TfrxMemoView
        Left = 3.779530000000000000
        Top = 328.819110000000000000
        Width = 75.590600000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '2. '#1048#1084#1103)
        ParentFont = False
      end
      object Memo26: TfrxMemoView
        Left = 3.779530000000000000
        Top = 343.937230000000000000
        Width = 75.590600000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '3. '#1054#1090#1095#1077#1089#1090#1074#1086)
        ParentFont = False
      end
      object Memo27: TfrxMemoView
        Left = 90.708720000000000000
        Top = 162.519790000000000000
        Width = 264.567100000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          #1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103': '#1087#1086' '#1084#1077#1089#1090#1091' '#1085#1086#1074#1086#1075#1086' '#1078#1080#1090#1077#1083#1100#1089#1090#1074#1072)
        ParentFont = False
      end
      object Memo28: TfrxMemoView
        Left = 136.063080000000000000
        Top = 188.976500000000000000
        Width = 291.023810000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          #1074' '#1090#1086#1084' '#1095#1080#1089#1083#1077' '#1074' '#1089#1074#1103#1079#1080' '#1089' '#1080#1079#1084#1077#1085#1077#1085#1080#1077#1084' '#1075#1088#1072#1078#1076#1072#1085#1089#1090#1074#1072)
        ParentFont = False
      end
      object Memo29: TfrxMemoView
        Left = 136.063080000000000000
        Top = 211.653680000000000000
        Width = 291.023810000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          #1087#1086' '#1084#1077#1089#1090#1091' '#1087#1088#1077#1073#1099#1074#1072#1085#1080#1103' '#1085#1072' '#1089#1088#1086#1082)
        ParentFont = False
      end
      object Memo30: TfrxMemoView
        Top = 105.826840000000000000
        Width = 544.252320000000000000
        Height = 49.133890000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          
            '   '#1047#1072#1087#1080#1089#1080' '#1074' '#1083#1080#1089#1090#1082#1077' '#1089#1090#1072#1090#1080#1089#1090#1080#1095#1077#1089#1082#1086#1075#1086' '#1091#1095#1077#1090#1072' '#1087#1088#1080#1073#1099#1090#1080#1103' '#1087#1086#1076#1083#1077#1078#1072#1090' '#1080#1089#1087#1086#1083 +
            #1100#1079#1086#1074#1072#1085#1080#1102' '#1090#1086#1083#1100#1082#1086' '#1076#1083#1103' '#1087#1086#1083#1091#1095#1077#1085#1080#1103' '#1089#1074#1086#1076#1085#1099#1093' '#1076#1072#1085#1085#1099#1093' '#1086' '#1095#1080#1089#1083#1077#1085#1085#1086#1089#1090#1080' '#1080' '#1089#1086#1089 +
            #1090#1072#1074#1077' '#1084#1080#1075#1088#1072#1085#1090#1086#1074' '#1080' '#1086#1090#1085#1086#1089#1103#1090#1089#1103' '#1082' '#1082#1072#1090#1077#1075#1086#1088#1080#1080' '#1082#1086#1085#1092#1080#1076#1077#1085#1094#1080#1072#1083#1100#1085#1086#1081' '#1080#1085#1092#1086#1088#1084#1072#1094 +
            #1080#1080)
        ParentFont = False
      end
      object Memo31: TfrxMemoView
        Left = 18.897650000000000000
        Top = 71.811070000000000000
        Width = 521.575140000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          
            '('#1082' '#1076#1086#1082#1091#1084#1077#1085#1090#1072#1084' '#1086' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080' '#1087#1086' '#1085#1086#1074#1086#1084#1091' '#1084#1077#1089#1090#1091' '#1078#1080#1090#1077#1083#1100#1089#1090#1074#1072' '#1080#1083#1080' '#1087#1086' '#1084#1077 +
            #1089#1090#1091' '#1087#1088#1077#1073#1099#1074#1072#1085#1080#1103')')
        ParentFont = False
      end
      object Memo32: TfrxMemoView
        Left = 37.795300000000000000
        Top = 37.795300000000000000
        Width = 521.575140000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '"'#1055'"    '#1051#1048#1057#1058#1054#1050' '#1057#1058#1040#1058#1048#1057#1058#1048#1063#1045#1057#1050#1054#1043#1054' '#1059#1063#1045#1058#1040' '#1055#1056#1048#1041#1067#1058#1048#1071)
        ParentFont = False
      end
      object Memo33: TfrxMemoView
        Left = 411.968770000000000000
        Top = 7.559060000000000000
        Width = 94.488250000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1060#1086#1088#1084#1072' '#8470' 12'#1055)
        ParentFont = False
      end
      object Memo34: TfrxMemoView
        Left = 238.110390000000000000
        Top = 283.464750000000000000
        Width = 41.574830000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '('#1095#1080#1089#1083#1086')')
        ParentFont = False
      end
      object Memo35: TfrxMemoView
        Left = 238.110390000000000000
        Top = 253.228510000000000000
        Width = 41.574830000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '('#1095#1080#1089#1083#1086')')
        ParentFont = False
      end
      object Memo36: TfrxMemoView
        Left = 317.480520000000000000
        Top = 253.228510000000000000
        Width = 41.574830000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '('#1084#1077#1089#1103#1094')')
        ParentFont = False
      end
      object Memo37: TfrxMemoView
        Left = 317.480520000000000000
        Top = 283.464750000000000000
        Width = 41.574830000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '('#1084#1077#1089#1103#1094')')
        ParentFont = False
      end
      object Memo38: TfrxMemoView
        Left = 207.874150000000000000
        Top = 268.346630000000000000
        Width = 79.370130000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          ' '#1087#1086'    "               "')
        ParentFont = False
      end
      object Memo39: TfrxMemoView
        Left = 207.874150000000000000
        Top = 238.110390000000000000
        Width = 79.370130000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '   c   "               "')
        ParentFont = False
      end
      object Memo40: TfrxMemoView
        Left = 461.102660000000000000
        Top = 253.228510000000000000
        Width = 26.456710000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '('#1075#1086#1076')')
        ParentFont = False
      end
      object Memo41: TfrxMemoView
        Left = 461.102660000000000000
        Top = 283.464750000000000000
        Width = 26.456710000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '('#1075#1086#1076')')
        ParentFont = False
      end
      object Memo42: TfrxMemoView
        Left = 136.063080000000000000
        Top = 381.732530000000000000
        Width = 41.574830000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '('#1095#1080#1089#1083#1086')')
        ParentFont = False
      end
      object Memo43: TfrxMemoView
        Left = 245.669450000000000000
        Top = 381.732530000000000000
        Width = 41.574830000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '('#1084#1077#1089#1103#1094')')
        ParentFont = False
      end
      object Memo44: TfrxMemoView
        Left = 461.102660000000000000
        Top = 381.732530000000000000
        Width = 26.456710000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '('#1075#1086#1076')')
        ParentFont = False
      end
      object Memo45: TfrxMemoView
        Left = 3.779530000000000000
        Top = 370.393940000000000000
        Width = 105.826840000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '4. '#1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103)
        ParentFont = False
      end
      object Memo46: TfrxMemoView
        Left = 3.779530000000000000
        Top = 400.630180000000000000
        Width = 60.472480000000000000
        Height = 34.015770000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '5. '#1052#1077#1089#1090#1086' '#1088#1086#1078#1076#1077#1085#1080#1103)
        ParentFont = False
      end
      object Memo47: TfrxMemoView
        Left = 3.779530000000000000
        Top = 483.779840000000000000
        Width = 313.700990000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '6. '#1055#1086#1083' ('#1087#1086#1076#1095#1077#1088#1082#1085#1091#1090#1100'):     '#1084#1091#1078#1089#1082#1086#1081' '#8211' 1; '#1078#1077#1085#1089#1082#1080#1081' '#8211' 2')
        ParentFont = False
      end
      object Memo48: TfrxMemoView
        Left = 3.779530000000000000
        Top = 502.677490000000000000
        Width = 313.700990000000000000
        Height = 64.252010000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        LineSpacing = 4.000000000000000000
        Memo.UTF8W = (
          '7. '#1043#1088#1072#1078#1076#1072#1085#1089#1090#1074#1086' ('#1091#1082#1072#1079#1072#1090#1100' '#1075#1086#1089#1091#1076#1072#1088#1089#1090#1074#1086')'
          #1077#1089#1083#1080' '#1080#1084#1077#1077#1090' '#1076#1074#1086#1081#1085#1086#1077' '#1075#1088#1072#1078#1076#1072#1085#1089#1090#1074#1086', '#1091#1082#1072#1079#1072#1090#1100' '#1075#1086#1089#1091#1076#1072#1088#1089#1090#1074#1086
          
            #1077#1089#1083#1080' '#1080#1079#1084#1077#1085#1077#1085#1086' '#1075#1088#1072#1078#1076#1072#1085#1089#1090#1074#1086', '#1091#1082#1072#1079#1072#1090#1100' '#1087#1088#1077#1076#1099#1076#1091#1097#1077#1077' '#1075#1088#1072#1078#1076#1072#1085#1089#1090#1074#1086' ('#1075#1086#1089#1091#1076 +
            #1072#1088#1089#1090#1074#1086')')
        ParentFont = False
      end
      object Memo49: TfrxMemoView
        Left = 3.779530000000000000
        Top = 570.709030000000000000
        Width = 90.708720000000000000
        Height = 34.015770000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '8. '#1053#1086#1074#1086#1077' '#1084#1077#1089#1090#1086
          #1078#1080#1090#1077#1083#1100#1089#1090#1074#1072)
        ParentFont = False
      end
      object Memo50: TfrxMemoView
        Left = 3.779530000000000000
        Top = 642.520100000000000000
        Width = 120.944960000000000000
        Height = 34.015770000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '9. '#1055#1086#1089#1083#1077#1076#1085#1077#1077' '#1084#1077#1089#1090#1086
          #1078#1080#1090#1077#1083#1100#1089#1090#1074#1072)
        ParentFont = False
      end
      object Memo51: TfrxMemoView
        Left = 185.196970000000000000
        Top = 570.709030000000000000
        Width = 306.141930000000000000
        Height = 68.031540000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        LineSpacing = 4.000000000000000000
        Memo.UTF8W = (
          #1088#1077#1089#1087#1091#1073#1083#1080#1082#1072', '#1082#1088#1072#1081', '#1086#1073#1083#1072#1089#1090#1100', '#1086#1082#1088#1091#1075
          #1088#1072#1081#1086#1085', '#1075#1086#1088#1086#1076#1089#1082#1086#1081' '#1088#1072#1081#1086#1085' ('#1086#1082#1088#1091#1075')'#9
          #1075#1086#1088#1086#1076', '#1087#1086#1089#1077#1083#1086#1082' '#1075#1086#1088#1086#1076#1089#1082#1086#1075#1086' '#1090#1080#1087#1072#9
          #1089#1077#1083#1100#1089#1082#1080#1081' '#1085#1072#1089#1077#1083#1077#1085#1085#1099#1081' '#1087#1091#1085#1082#1090#9)
        ParentFont = False
      end
      object Memo52: TfrxMemoView
        Left = 185.196970000000000000
        Top = 642.520100000000000000
        Width = 313.700990000000000000
        Height = 83.149660000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        LineSpacing = 3.000000000000000000
        Memo.UTF8W = (
          #1075#1086#1089#1091#1076#1072#1088#1089#1090#1074#1086
          #1088#1077#1089#1087#1091#1073#1083#1080#1082#1072', '#1082#1088#1072#1081', '#1086#1073#1083#1072#1089#1090#1100', '#1086#1082#1088#1091#1075
          #1088#1072#1081#1086#1085', '#1075#1086#1088#1086#1076#1089#1082#1086#1081' '#1088#1072#1081#1086#1085' ('#1086#1082#1088#1091#1075')'
          #1075#1086#1088#1086#1076', '#1087#1086#1089#1077#1083#1086#1082' '#1075#1086#1088#1086#1076#1089#1082#1086#1075#1086' '#1090#1080#1087#1072
          #1089#1077#1083#1100#1089#1082#1080#1081' '#1085#1072#1089#1077#1083#1077#1085#1085#1099#1081' '#1087#1091#1085#1082#1090)
        ParentFont = False
      end
      object Memo53: TfrxMemoView
        Left = 3.779530000000000000
        Top = 729.449290000000000000
        Width = 313.700990000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '10. '#1055#1088#1086#1078#1080#1074#1072#1083' '#1087#1086' '#1087#1086#1089#1083#1077#1076#1085#1077#1084#1091' '#1084#1077#1089#1090#1091' '#1078#1080#1090#1077#1083#1100#1089#1090#1074#1072' '#1089)
        ParentFont = False
      end
      object Memo54: TfrxMemoView
        Left = 389.291590000000000000
        Top = 729.449290000000000000
        Width = 41.574830000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1075#1086#1076#1072)
        ParentFont = False
      end
      object Memo55: TfrxMemoView
        Left = 3.779530000000000000
        Top = 748.346940000000000000
        Width = 132.283550000000000000
        Height = 113.385900000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          
            '11. '#1054#1089#1085#1086#1074#1085#1086#1077' '#1086#1073#1089#1090#1086#1103#1090#1077#1083#1100#1089#1090#1074#1086', '#1074#1099#1079#1074#1072#1074#1096#1077#1077' '#1085#1077#1086#1073#1093#1086#1076#1080#1084#1086#1089#1090#1100' '#1087#1077#1088#1077#1089#1077#1083#1077#1085#1080#1103 +
            ' ('#1087#1086#1076#1095#1077#1088#1082#1085#1091#1090#1100')')
        ParentFont = False
      end
      object Memo56: TfrxMemoView
        Left = 147.401670000000000000
        Top = 748.346940000000000000
        Width = 351.496290000000000000
        Height = 181.417440000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1074' '#1089#1074#1103#1079#1080' '#1089' '#1091#1095#1077#1073#1086#1081' '#8211' 10; '#1074' '#1089#1074#1103#1079#1080' '#1089' '#1088#1072#1073#1086#1090#1086#1081' '#8211' 20;'
          #1074#1086#1079#1074#1088#1072#1097#1077#1085#1080#1077' '#1082' '#1087#1088#1077#1078#1085#1077#1084#1091' '#1084#1077#1089#1090#1091' '#1078#1080#1090#1077#1083#1100#1089#1090#1074#1072' '#8211' 30;'
          #1080#1079'-'#1079#1072' '#1086#1073#1086#1089#1090#1088#1077#1085#1080#1103' '#1084#1077#1078#1085#1072#1094#1080#1086#1085#1072#1083#1100#1085#1099#1093' '#1086#1090#1085#1086#1096#1077#1085#1080#1081' '#8211' 40;'
          #1080#1079'-'#1079#1072' '#1086#1073#1086#1089#1090#1088#1077#1085#1080#1103' '#1082#1088#1080#1084#1080#1085#1086#1075#1077#1085#1085#1086#1081' '#1086#1073#1089#1090#1072#1085#1086#1074#1082#1080' '#8211' 50;'
          #1101#1082#1086#1083#1086#1075#1080#1095#1077#1089#1082#1086#1077' '#1085#1077#1073#1083#1072#1075#1086#1087#1086#1083#1091#1095#1080#1077' '#8211' 60;'
          #1085#1077#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1077' '#1087#1088#1080#1088#1086#1076#1085#1086'-'#1082#1083#1080#1084#1072#1090#1080#1095#1077#1089#1082#1080#1084' '#1091#1089#1083#1086#1074#1080#1103#1084' '#8211' 70;'
          
            #1087#1088#1080#1095#1080#1085#1099' '#1083#1080#1095#1085#1086#1075#1086', '#1089#1077#1084#1077#1081#1085#1086#1075#1086' '#1093#1072#1088#1072#1082#1090#1077#1088#1072' '#8211' 80, '#1074' '#1090'.'#1095'. '#1074' '#1089#1074#1103#1079#1080' '#1089' '#1087#1077#1088#1077 +
            #1084#1077#1085#1086#1081' '#1084#1077#1089#1090#1072' '#1088#1072#1073#1086#1090#1099' '#1089#1091#1087#1088#1091#1075#1072'('#1080') '#8211' 81, '#1074' '#1089#1074#1103#1079#1080' '#1089' '#1074#1089#1090#1091#1087#1083#1077#1085#1080#1077#1084' '#1074' '#1073#1088#1072#1082 +
            ' '#8211' 82,'
          #1082' '#1076#1077#1090#1103#1084' '#8211' 83, '#1082' '#1088#1086#1076#1080#1090#1077#1083#1103#1084' '#8211' 84;'
          #1080#1085#1072#1103' '#1087#1088#1080#1095#1080#1085#1072' ('#1091#1082#1072#1079#1072#1090#1100')'#9
          #1074' '#1090'.'#1095'. '#1087#1088#1080#1086#1073#1088#1077#1090#1077#1085#1080#1077' '#1078#1080#1083#1100#1103' ('#1087#1086#1082#1091#1087#1082#1072', '#1085#1072#1089#1083#1077#1076#1086#1074#1072#1085#1080#1077' '#1080' '#1090'.'#1087'.)')
        ParentFont = False
      end
      object Line11: TfrxLineView
        Left = 238.110390000000000000
        Top = 253.228510000000000000
        Width = 37.795300000000000000
        ShowHint = False
        Diagonal = True
      end
      object Line12: TfrxLineView
        Left = 238.110390000000000000
        Top = 283.464750000000000000
        Width = 37.795300000000000000
        ShowHint = False
        Diagonal = True
      end
      object Line13: TfrxLineView
        Left = 294.803340000000000000
        Top = 253.228510000000000000
        Width = 75.590600000000000000
        ShowHint = False
        Diagonal = True
      end
      object Line14: TfrxLineView
        Left = 294.803340000000000000
        Top = 283.464750000000000000
        Width = 75.590600000000000000
        ShowHint = False
        Diagonal = True
      end
      object Shape39: TfrxShapeView
        Left = 37.795300000000000000
        Top = 607.370081180000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape40: TfrxShapeView
        Left = 51.779551970000000000
        Top = 607.370081180000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape41: TfrxShapeView
        Left = 66.141732280000000000
        Top = 607.370081180000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape42: TfrxShapeView
        Left = 80.125984250000000000
        Top = 607.370081180000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape43: TfrxShapeView
        Left = 93.732283460000000000
        Top = 607.370081180000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape44: TfrxShapeView
        Left = 107.716535430000000000
        Top = 607.370081180000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape45: TfrxShapeView
        Left = 120.944960000000000000
        Top = 607.370081180000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape46: TfrxShapeView
        Left = 134.551259210000000000
        Top = 607.370081180000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape47: TfrxShapeView
        Left = 148.535511180000000000
        Top = 607.370081180000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape48: TfrxShapeView
        Left = 11.338590000000000000
        Top = 684.094930000000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape49: TfrxShapeView
        Left = 25.322841970000000000
        Top = 684.094930000000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape50: TfrxShapeView
        Left = 38.929165590000000000
        Top = 684.094930000000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape51: TfrxShapeView
        Left = 52.913417560000000000
        Top = 684.094930000000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape52: TfrxShapeView
        Left = 67.275597870000000000
        Top = 684.094930000000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape53: TfrxShapeView
        Left = 81.259849840000000000
        Top = 684.094930000000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape54: TfrxShapeView
        Left = 94.866149050000000000
        Top = 684.094930000000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape55: TfrxShapeView
        Left = 108.850401020000000000
        Top = 684.094930000000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape56: TfrxShapeView
        Left = 122.078825590000000000
        Top = 684.094930000000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape57: TfrxShapeView
        Left = 135.685124800000000000
        Top = 684.094930000000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape58: TfrxShapeView
        Left = 149.669376770000000000
        Top = 684.094930000000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape59: TfrxShapeView
        Left = 11.338590000000000000
        Top = 442.205010000000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape60: TfrxShapeView
        Left = 25.322841970000000000
        Top = 442.205010000000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape61: TfrxShapeView
        Left = 38.929165590000000000
        Top = 442.205010000000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape62: TfrxShapeView
        Left = 52.913417560000000000
        Top = 442.205010000000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape63: TfrxShapeView
        Left = 67.275597870000000000
        Top = 442.205010000000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape64: TfrxShapeView
        Left = 81.259849840000000000
        Top = 442.205010000000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape65: TfrxShapeView
        Left = 94.866149050000000000
        Top = 442.205010000000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape66: TfrxShapeView
        Left = 108.850401020000000000
        Top = 442.205010000000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape67: TfrxShapeView
        Left = 122.078825590000000000
        Top = 442.205010000000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape68: TfrxShapeView
        Left = 135.685124800000000000
        Top = 442.205010000000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape69: TfrxShapeView
        Left = 149.669376770000000000
        Top = 442.205010000000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Memo57: TfrxMemoView
        Left = 173.858380000000000000
        Top = 400.630180000000000000
        Width = 196.535560000000000000
        Height = 83.149660000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        LineSpacing = 3.000000000000000000
        Memo.UTF8W = (
          #1075#1086#1089#1091#1076#1072#1088#1089#1090#1074#1086
          #1088#1077#1089#1087#1091#1073#1083#1080#1082#1072', '#1082#1088#1072#1081', '#1086#1073#1083#1072#1089#1090#1100', '#1086#1082#1088#1091#1075
          #1088#1072#1081#1086#1085', '#1075#1086#1088#1086#1076#1089#1082#1086#1081' '#1088#1072#1081#1086#1085' ('#1086#1082#1088#1091#1075')'
          #1075#1086#1088#1086#1076', '#1087#1086#1089#1077#1083#1086#1082' '#1075#1086#1088#1086#1076#1089#1082#1086#1075#1086' '#1090#1080#1087#1072
          #1089#1077#1083#1100#1089#1082#1080#1081' '#1085#1072#1089#1077#1083#1077#1085#1085#1099#1081' '#1087#1091#1085#1082#1090)
        ParentFont = False
      end
      object Line15: TfrxLineView
        Left = 132.283550000000000000
        Top = 385.512060000000000000
        Width = 45.354360000000000000
        ShowHint = False
        Diagonal = True
      end
      object Line16: TfrxLineView
        Left = 200.315090000000000000
        Top = 385.512060000000000000
        Width = 128.504020000000000000
        ShowHint = False
        Diagonal = True
      end
      object Shape70: TfrxShapeView
        Left = 494.740157480000000000
        Top = 236.976377950000000000
        Width = 18.897637800000000000
        Height = 15.874015750000000000
        ShowHint = False
      end
      object Shape71: TfrxShapeView
        Left = 437.669291338582700000
        Top = 266.078740157480300000
        Width = 18.897637800000000000
        Height = 15.874015750000000000
        ShowHint = False
      end
      object Shape72: TfrxShapeView
        Left = 494.362241340000000000
        Top = 266.078740160000000000
        Width = 18.897637800000000000
        Height = 15.874015750000000000
        ShowHint = False
      end
      object Shape73: TfrxShapeView
        Left = 475.464591340000000000
        Top = 266.078740160000000000
        Width = 18.897637800000000000
        Height = 15.874015750000000000
        ShowHint = False
      end
      object Shape74: TfrxShapeView
        Left = 456.566941340000000000
        Top = 266.078740160000000000
        Width = 18.897637800000000000
        Height = 15.874015750000000000
        ShowHint = False
      end
      object Memo58: TfrxMemoView
        Left = 468.661720000000000000
        Top = 901.039370080000000000
        Width = 41.574830000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '- 90')
        ParentFont = False
      end
      object Line17: TfrxLineView
        Left = 283.464750000000000000
        Top = 914.646260000000000000
        Width = 181.417440000000000000
        ShowHint = False
        Diagonal = True
      end
      object Line24: TfrxLineView
        Left = 0.377952760000000000
        Top = 933.543910000000000000
        Height = -623.622308430000000000
        ShowHint = False
        Diagonal = True
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 155.000000000000000000
      PaperHeight = 280.000000000000000000
      PaperSize = 256
      LeftMargin = 8.000000000000000000
      RightMargin = 11.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Shape75: TfrxShapeView
        Width = 512.881889760000000000
        Height = 433.133858267716500000
        ShowHint = False
      end
      object Shape76: TfrxShapeView
        Top = 433.133858267716500000
        Width = 512.881889760000000000
        Height = 63.118105350000000000
        ShowHint = False
      end
      object Shape77: TfrxShapeView
        Top = 495.874015750000000000
        Width = 512.881889760000000000
        Height = 63.118105350000000000
        ShowHint = False
      end
      object Shape78: TfrxShapeView
        Top = 559.370078740000000000
        Width = 512.881889760000000000
        Height = 93.354345350000000000
        ShowHint = False
      end
      object Shape79: TfrxShapeView
        Top = 653.102362200000000000
        Width = 512.881889760000000000
        Height = 32.881865350000000000
        ShowHint = False
      end
      object Line18: TfrxLineView
        Left = 162.519790000000000000
        Height = 685.984249530000000000
        ShowHint = False
        Diagonal = True
      end
      object Shape80: TfrxShapeView
        Top = 685.984251970000000000
        Width = 512.881889760000000000
        Height = 47.999985350000000000
        ShowHint = False
      end
      object Shape81: TfrxShapeView
        Top = 733.984251968503900000
        Width = 512.881889760000000000
        Height = 15.874015750000000000
        ShowHint = False
      end
      object Memo59: TfrxMemoView
        Left = 3.779530000000000000
        Width = 154.960730000000000000
        Height = 52.913420000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '12. '#1047#1072#1085#1103#1090#1080#1077' '#1087#1086' '#1087#1086#1089#1083#1077#1076#1085#1077#1084#1091' '#1084#1077#1089#1090#1091' '#1078#1080#1090#1077#1083#1100#1089#1090#1074#1072' ('#1087#1086#1076#1095#1077#1088#1082#1085#1091#1090#1100')')
        ParentFont = False
      end
      object Memo60: TfrxMemoView
        Left = 166.299320000000000000
        Width = 343.937230000000000000
        Height = 430.866420000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1044#1086' '#1087#1077#1088#1077#1089#1077#1083#1077#1085#1080#1103' '#1086#1089#1091#1097#1077#1089#1090#1074#1083#1103#1083' '#1090#1088#1091#1076#1086#1074#1091#1102' '#1076#1077#1103#1090#1077#1083#1100#1085#1086#1089#1090#1100':'
          #1089#1077#1083#1100#1089#1082#1086#1077' '#1093#1086#1079#1103#1081#1089#1090#1074#1086', '#1086#1093#1086#1090#1072' '#1080' '#1083#1077#1089#1085#1086#1077' '#1093#1086#1079#1103#1081#1089#1090#1074#1086' '#8211' 01;'
          #1088#1099#1073#1086#1083#1086#1074#1089#1090#1074#1086', '#1088#1099#1073#1086#1074#1086#1076#1089#1090#1074#1086' '#8211' 05;'
          #1076#1086#1073#1099#1095#1072' '#1087#1086#1083#1077#1079#1085#1099#1093' '#1080#1089#1082#1086#1087#1072#1077#1084#1099#1093' '#8211' 10;'
          #1086#1073#1088#1072#1073#1072#1090#1099#1074#1072#1102#1097#1080#1077' '#1087#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1072' '#8211' 15;'
          #1087#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086' '#1080' '#1088#1072#1089#1087#1088#1077#1076#1077#1083#1077#1085#1080#1077' '#1101#1083#1077#1082#1090#1088#1086#1101#1085#1077#1088#1075#1080#1080', '#1075#1072#1079#1072' '#1080' '#1074#1086#1076#1099' '#8211' 40;'
          #1089#1090#1088#1086#1080#1090#1077#1083#1100#1089#1090#1074#1086' '#8211' 45;'
          
            #1086#1087#1090#1086#1074#1072#1103' '#1080' '#1088#1086#1079#1085#1080#1095#1085#1072#1103' '#1090#1086#1088#1075#1086#1074#1083#1103', '#1088#1077#1084#1086#1085#1090' '#1072#1074#1090#1086#1090#1088#1072#1085#1089#1087#1086#1088#1090#1085#1099#1093' '#1089#1088#1077#1076#1089#1090#1074', '#1084 +
            #1086#1090#1086#1094#1080#1082#1083#1086#1074', '#1073#1099#1090#1086#1074#1099#1093' '#1080#1079#1076#1077#1083#1080#1081' '#1080' '#1087#1088#1077#1076#1084#1077#1090#1086#1074' '#1083#1080#1095#1085#1086#1075#1086
          #1087#1086#1083#1100#1079#1086#1074#1072#1085#1080#1103' '#8211' 50;'
          #1075#1086#1089#1090#1080#1085#1080#1094#1099' '#1080' '#1088#1077#1089#1090#1086#1088#1072#1085#1099' '#8211' 55;'
          #1090#1088#1072#1085#1089#1087#1086#1088#1090' '#1080' '#1089#1074#1103#1079#1100' '#8211' 60;'
          #1092#1080#1085#1072#1085#1089#1086#1074#1072#1103' '#1076#1077#1103#1090#1077#1083#1100#1085#1086#1089#1090#1100' '#8211' 65;'
          
            #1086#1087#1077#1088#1072#1094#1080#1080' '#1089' '#1085#1077#1076#1074#1080#1078#1080#1084#1099#1084' '#1080#1084#1091#1097#1077#1089#1090#1074#1086#1084', '#1072#1088#1077#1085#1076#1072' '#1080' '#1087#1088#1077#1076#1086#1089#1090#1072#1074#1083#1077#1085#1080#1077' '#1091#1089#1083#1091#1075' ' +
            #8211' 70;'
          
            #1075#1086#1089#1091#1076#1072#1088#1089#1090#1074#1077#1085#1085#1086#1077' '#1091#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1080' '#1086#1073#1077#1089#1087#1077#1095#1077#1085#1080#1077' '#1074#1086#1077#1085#1085#1086#1081' '#1073#1077#1079#1086#1087#1072#1089#1085#1086#1089#1090#1080', '#1086 +
            #1073#1103#1079#1072#1090#1077#1083#1100#1085#1086#1077' '#1089#1086#1094#1080#1072#1083#1100#1085#1086#1077' '#1086#1073#1077#1089#1087#1077#1095#1077#1085#1080#1077' '#8211' 75;'
          #1086#1073#1088#1072#1079#1086#1074#1072#1085#1080#1077' '#8211' 80;'
          #1079#1076#1088#1072#1074#1086#1086#1093#1088#1072#1085#1077#1085#1080#1077' '#1080' '#1087#1088#1077#1076#1086#1089#1090#1072#1074#1083#1077#1085#1080#1077' '#1089#1086#1094#1080#1072#1083#1100#1085#1099#1093' '#1091#1089#1083#1091#1075' '#8211' 85;'
          
            #1087#1088#1077#1076#1086#1089#1090#1072#1074#1083#1077#1085#1080#1077' '#1087#1088#1086#1095#1080#1093' '#1082#1086#1084#1084#1091#1085#1072#1083#1100#1085#1099#1093', '#1089#1086#1094#1080#1072#1083#1100#1085#1099#1093' '#1080' '#1087#1077#1088#1089#1086#1085#1072#1083#1100#1085#1099#1093' '#1091#1089 +
            #1083#1091#1075' '#8211' 90;'
          #1087#1088#1077#1076#1086#1089#1090#1072#1074#1083#1077#1085#1080#1077' '#1091#1089#1083#1091#1075' '#1087#1086' '#1074#1077#1076#1077#1085#1080#1102' '#1076#1086#1084#1072#1096#1085#1077#1075#1086' '#1093#1086#1079#1103#1081#1089#1090#1074#1072' '#8211' 95;'
          #1076#1077#1103#1090#1077#1083#1100#1085#1086#1089#1090#1100' '#1101#1082#1089#1090#1077#1088#1088#1080#1090#1086#1088#1080#1072#1083#1100#1085#1099#1093' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1081' '#8211' 99.'
          #1059#1095#1080#1083#1089#1103' '#8211' 03, '#1074' '#1090#1086#1084' '#1095#1080#1089#1083#1077' '#1074' '#1042#1059#1047#1077' '#8211' 04.'
          #1053#1077' '#1088#1072#1073#1086#1090#1072#1083' '#8211' 09.'
          '')
        ParentFont = False
      end
      object Memo61: TfrxMemoView
        Left = 3.779530000000000000
        Top = 434.645950000000000000
        Width = 154.960730000000000000
        Height = 52.913420000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '13. '#1057#1090#1072#1090#1091#1089' '#1074' '#1079#1072#1085#1103#1090#1086#1089#1090#1080' ('#1087#1086#1076#1095#1077#1088#1082#1085#1091#1090#1100')')
        ParentFont = False
      end
      object Memo62: TfrxMemoView
        Left = 166.299320000000000000
        Top = 434.645950000000000000
        Width = 340.157700000000000000
        Height = 60.472480000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          
            #1088#1072#1073#1086#1090#1072' '#1087#1086' '#1085#1072#1081#1084#1091' '#1074' '#1082#1072#1095#1077#1089#1090#1074#1077': '#1088#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1103' '#8211' 1; '#1089#1087#1077#1094#1080#1072#1083#1080#1089#1090#1072' '#8211' 2; '#1080 +
            #1085#1086#1075#1086' '#1089#1083#1091#1078#1072#1097#1077#1075#1086' ('#1090#1077#1093#1085#1080#1095#1077#1089#1082#1086#1075#1086' '#1080#1089#1087#1086#1083#1085#1080#1090#1077#1083#1103') '#8211' 3; '#1088#1072#1073#1086#1095#1077#1075#1086' '#8211' 4; '#1089#1072#1084 +
            #1086#1089#1090#1086#1103#1090#1077#1083#1100#1085#1086' '#1086#1073#1077#1089#1087#1077#1095#1080#1074#1072#1083' '#1089#1077#1073#1103' '#1088#1072#1073#1086#1090#1086#1081' '#8211' 5')
        ParentFont = False
      end
      object Memo63: TfrxMemoView
        Left = 166.299320000000000000
        Top = 495.118430000000000000
        Width = 340.157700000000000000
        Height = 60.472480000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1087#1086#1083#1091#1095#1072#1083': '#1087#1077#1085#1089#1080#1102' '#1087#1086' '#1089#1090#1072#1088#1086#1089#1090#1080' '#8211' 1;'
          #1087#1086' '#1080#1085#1074#1072#1083#1080#1076#1085#1086#1089#1090#1080' '#8211' 2; '#1079#1072' '#1074#1099#1089#1083#1091#1075#1091' '#1083#1077#1090' '#8211' 4;'
          #1087#1086#1089#1086#1073#1080#1077' '#1087#1086' '#1073#1077#1079#1088#1072#1073#1086#1090#1080#1094#1077' '#8211' 12;'
          #1080#1085#1099#1077' '#1087#1077#1085#1089#1080#1080' '#1080' '#1087#1086#1089#1086#1073#1080#1103' '#8211' 7'
          '')
        ParentFont = False
      end
      object Memo64: TfrxMemoView
        Left = 166.299320000000000000
        Top = 559.370440000000000000
        Width = 340.157700000000000000
        Height = 90.708720000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          
            #1074#1099#1089#1096#1077#1077' '#8211' 1, '#1074' '#1090'.'#1095'. '#1080#1084#1077#1077#1090' '#1091#1095#1077#1085#1091#1102' '#1089#1090#1077#1087#1077#1085#1100': '#1076#1086#1082#1090#1086#1088#1072' '#1085#1072#1091#1082' '#8211' 2, '#1082#1072#1085#1076#1080 +
            #1076#1072#1090#1072' '#1085#1072#1091#1082' '#8211' 3; '#1085#1077#1087#1086#1083#1085#1086#1077' '#1074#1099#1089#1096#1077#1077' '#1087#1088#1086#1092#1077#1089#1089#1080#1086#1085#1072#1083#1100#1085#1086#1077' '#8211' 4; '#1089#1088#1077#1076#1085#1077#1077' '#1087#1088#1086 +
            #1092#1077#1089#1089#1080#1086#1085#1072#1083#1100#1085#1086#1077' ('#1089#1088#1077#1076#1085#1077#1077' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1077') '#8211' 5; '#1085#1072#1095#1072#1083#1100#1085#1086#1077' '#1087#1088#1086#1092#1077#1089#1089#1080#1086#1085#1072#1083#1100 +
            #1085#1086#1077' '#8211' 6; '#1089#1088#1077#1076#1085#1077#1077' '#1086#1073#1097#1077#1077' ('#1087#1086#1083#1085#1086#1077') '#8211' 7; '#1086#1089#1085#1086#1074#1085#1086#1077' '#1086#1073#1097#1077#1077' ('#1085#1077#1087#1086#1083#1085#1086#1077' '#1089#1088 +
            #1077#1076#1085#1077#1077') '#8211' 8; '#1085#1072#1095#1072#1083#1100#1085#1086#1077' '#1086#1073#1097#1077#1077' ('#1085#1072#1095#1072#1083#1100#1085#1086#1077') '#1080' '#1085#1077' '#1080#1084#1077#1102#1097#1080#1077' '#1085#1072#1095#1072#1083#1100#1085#1086#1075#1086' ' +
            #8211' 9')
        ParentFont = False
      end
      object Memo65: TfrxMemoView
        Left = 166.299320000000000000
        Top = 653.858690000000000000
        Width = 340.157700000000000000
        Height = 30.236240000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1078#1077#1085#1072#1090' ('#1079#1072#1084#1091#1078#1077#1084') '#8211' 1; '#1085#1080#1082#1086#1075#1076#1072' '#1085#1077' '#1073#1099#1083' '#1078#1077#1085#1072#1090' ('#1079#1072#1084#1091#1078#1077#1084') '#8211' 2;'
          #1088#1072#1079#1074#1077#1076#1077#1085'('#1072') '#8211' 3; '#1074#1076#1086#1074#1077#1094' ('#1074#1076#1086#1074#1072') '#8211' 4'
          '')
        ParentFont = False
      end
      object Memo66: TfrxMemoView
        Left = 3.779530000000000000
        Top = 495.118430000000000000
        Width = 154.960730000000000000
        Height = 64.252010000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          
            '14. '#1042#1080#1076' '#1089#1086#1094#1080#1072#1083#1100#1085#1086#1075#1086' '#1086#1073#1077#1089#1087#1077#1095#1077#1085#1080#1103' '#1087#1086' '#1087#1086#1089#1083#1077#1076#1085#1077#1084#1091' '#1084#1077#1089#1090#1091' '#1078#1080#1090#1077#1083#1100#1089#1090#1074#1072' (' +
            #1087#1086#1076#1095#1077#1088#1082#1085#1091#1090#1100')')
        ParentFont = False
      end
      object Memo67: TfrxMemoView
        Left = 3.779530000000000000
        Top = 559.370440000000000000
        Width = 154.960730000000000000
        Height = 52.913420000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '15. '#1054#1073#1088#1072#1079#1086#1074#1072#1085#1080#1077' ('#1087#1086#1076#1095#1077#1088#1082#1085#1091#1090#1100')')
        ParentFont = False
      end
      object Memo68: TfrxMemoView
        Left = 3.779530000000000000
        Top = 653.858690000000000000
        Width = 154.960730000000000000
        Height = 30.236240000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '16. '#1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1074' '#1073#1088#1072#1082#1077' ('#1087#1086#1076#1095#1077#1088#1082#1085#1091#1090#1100')')
        ParentFont = False
      end
      object Memo69: TfrxMemoView
        Left = 3.779530000000000000
        Top = 687.874460000000000000
        Width = 506.457020000000000000
        Height = 45.354360000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          
            '17. '#1045#1089#1083#1080' '#1076#1086' '#1087#1077#1088#1077#1089#1077#1083#1077#1085#1080#1103' '#1087#1088#1086#1078#1080#1074#1072#1083' '#1089' '#1089#1077#1084#1100#1077#1081', '#1090#1086' '#1087#1088#1080#1073#1099#1083' ('#1087#1086#1076#1095#1077#1088#1082#1085#1091#1090 +
            #1100'):'
          
            #1089#1086' '#1074#1089#1077#1081' '#1089#1077#1084#1100#1077#1081' '#8211' 1; '#1089' '#1095#1072#1089#1090#1100#1102' '#1095#1083#1077#1085#1086#1074' '#1089#1077#1084#1100#1080' '#8211' 2; '#1086#1076#1080#1085' ('#1086#1076#1085#1072') '#8211' 3; ' +
            #1087#1088#1086#1078#1080#1074#1072#1083'('#1072') '#1073#1077#1079' '#1089#1077#1084#1100#1080' '#8211' 4')
        ParentFont = False
      end
      object Memo70: TfrxMemoView
        Left = 3.779530000000000000
        Top = 733.228820000000000000
        Width = 506.457020000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          
            '18. '#1063#1072#1089#1090#1100' '#1095#1083#1077#1085#1086#1074' '#1089#1077#1084#1100#1080' '#1091#1078#1077' '#1087#1088#1086#1078#1080#1074#1072#1077#1090' '#1087#1086' '#1085#1086#1074#1086#1084#1091' '#1084#1077#1089#1090#1091' '#1078#1080#1090#1077#1083#1100#1089#1090#1074#1072':' +
            ' '#1076#1072' '#8211' 1; '#1085#1077#1090' '#8211' 2')
        ParentFont = False
      end
      object Memo71: TfrxMemoView
        Top = 752.126470000000000000
        Width = 506.457020000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1057#1074#1077#1076#1077#1085#1080#1103' '#1087#1088#1086#1074#1077#1088#1080#1083' '#1080' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1102' '#1086#1092#1086#1088#1084#1080#1083)
        ParentFont = False
      end
      object Memo72: TfrxMemoView
        Left = 3.779530000000000000
        Top = 778.583180000000000000
        Width = 506.457020000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '('#1092#1072#1084#1080#1083#1080#1103' '#1080' '#1076#1086#1083#1078#1085#1086#1089#1090#1100' '#1086#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1086#1075#1086' '#1079#1072' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1102')')
        ParentFont = False
      end
      object Memo73: TfrxMemoView
        Left = 423.307360000000000000
        Top = 793.701300000000000000
        Width = 56.692950000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '('#1055#1086#1076#1087#1080#1089#1100')')
        ParentFont = False
      end
      object Memo74: TfrxMemoView
        Top = 797.480830000000000000
        Width = 291.023810000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          
            '"                  "                                            ' +
            '                         '#1075'.')
        ParentFont = False
      end
      object Line19: TfrxLineView
        Left = 11.338590000000000000
        Top = 812.598950000000000000
        Width = 49.133890000000000000
        ShowHint = False
        Diagonal = True
      end
      object Line20: TfrxLineView
        Left = 75.590600000000000000
        Top = 812.598950000000000000
        Width = 124.724490000000000000
        ShowHint = False
        Diagonal = True
      end
      object Line21: TfrxLineView
        Left = 207.874150000000000000
        Top = 812.598950000000000000
        Width = 60.472480000000000000
        ShowHint = False
        Diagonal = True
      end
      object Line22: TfrxLineView
        Left = 3.779530000000000000
        Top = 782.362710000000000000
        Width = 461.102660000000000000
        ShowHint = False
        Diagonal = True
      end
      object Line23: TfrxLineView
        Left = 0.377952755905511800
        Top = 748.346940000000000000
        Height = -748.346940000000000000
        ShowHint = False
        Diagonal = True
      end
    end
  end
  object OutcomeStatAccountPaperRepF12V: TfrxReport
    Version = '4.12'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Maximized = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41069.172559189800000000
    ReportOptions.LastChange = 41142.640228182870000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnPreview = OutcomeStatAccountPaperRepF12VPreview
    OnPrintReport = OutcomeStatAccountPaperRepF12VPrintReport
    Left = 72
    Top = 472
    Datasets = <
      item
        DataSet = CurrOperationfrxDBDS
        DataSetName = 'CurrOperationfrxDBDS'
      end
      item
        DataSet = OutcomeStatAccountPaperRepF12V.NewResidingAdrADOQuery
        DataSetName = 'NewResidingAdrADOQuery'
      end
      item
        DataSet = OutcomeStatAccountPaperRepF12V.OldResidingAdrADOQuery
        DataSetName = 'OldResidingAdrADOQuery'
      end
      item
        DataSet = PersonsfrxDBDS
        DataSetName = 'PersonsfrxDBDS'
      end
      item
        DataSet = OutcomeStatAccountPaperRepF12V.PersonViewDetailADOT
        DataSetName = 'PersonViewDetailADOT'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
      object NewResidingAdrADOQuery: TfrxADOQuery
        UserName = 'NewResidingAdrADOQuery'
        CloseDataSource = True
        BCDToCurrency = False
        Master = CurrOperationfrxDBDS
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select * from OP_ADR_DATA where'
          
            'ELINK_CODE=144 AND ACT_REG_ID=:OP_ID                            ' +
            '                                            ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 200
        pTop = 28
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
      object PersonViewDetailADOT: TfrxADOQuery
        UserName = 'PersonViewDetailADOT'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'PERSON_ID'
            DataType = ftInteger
            Expression = '<PersonsfrxDBDS."PERSON_ID">'
          end>
        SQL.Strings = (
          
            'SELECT * FROM PERSON_VIEW_DETAIL WHERE PERSON_ID=:PERSON_ID     ' +
            '                                                                ' +
            '                              ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 56
        pTop = 28
        Parameters = <
          item
            Name = 'PERSON_ID'
            DataType = ftInteger
            Expression = '<PersonsfrxDBDS."PERSON_ID">'
          end>
      end
      object OldResidingAdrADOQuery: TfrxADOQuery
        UserName = 'OldResidingAdrADOQuery'
        CloseDataSource = True
        BCDToCurrency = False
        Master = CurrOperationfrxDBDS
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select * from OP_ADR_DATA where'
          
            'ELINK_CODE=145 AND ACT_REG_ID=:OP_ID                            ' +
            '                                            ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 200
        pTop = 88
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
    end
    object Page1: TfrxReportPage
      PaperWidth = 155.000000000000000000
      PaperHeight = 280.000000000000000000
      PaperSize = 256
      LeftMargin = 6.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Memo1: TfrxMemoView
        Left = 83.149660000000000000
        Top = 257.008040000000000000
        Width = 438.425480000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[Uppercase(<PersonsfrxDBDS."LAST_NAME">)]')
        ParentFont = False
      end
      object Memo3: TfrxMemoView
        Left = 83.149660000000000000
        Top = 321.260050000000000000
        Width = 438.425480000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[Uppercase(<PersonsfrxDBDS."SURNAME">)]')
        ParentFont = False
      end
      object Memo108: TfrxMemoView
        Left = 336.378170000000000000
        Top = 353.385826770000000000
        Width = 60.472480000000000000
        Height = 18.897650000000000000
        ShowHint = False
        CharSpacing = 20.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          
            '[IIF(MonthOf(<PersonsfrxDBDS."BIRTHDATE">)<10,'#39'0'#39','#39#39')][MonthOf(<' +
            'PersonsfrxDBDS."BIRTHDATE">)]')
        ParentFont = False
      end
      object Memo4: TfrxMemoView
        Left = 139.842610000000000000
        Top = 353.385826770000000000
        Width = 34.015770000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          
            '[IIF(DayOf(<PersonsfrxDBDS."BIRTHDATE">)<10,'#39'0'#39','#39#39')][DayOf(<Pers' +
            'onsfrxDBDS."BIRTHDATE">)]')
        ParentFont = False
      end
      object Memo5: TfrxMemoView
        Left = 408.189240000000000000
        Top = 353.385826771654000000
        Width = 120.944960000000000000
        Height = 18.897650000000000000
        ShowHint = False
        CharSpacing = 20.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[YearOf(<PersonsfrxDBDS."BIRTHDATE">)]')
        ParentFont = False
      end
      object Memo6: TfrxMemoView
        Left = 260.787570000000000000
        Top = 381.732530000000000000
        Width = 260.787570000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold, fsUnderline]
        Memo.UTF8W = (
          '[UpperCase(<PersonViewDetailADOT."BIRTH_COUNT">)]')
        ParentFont = False
      end
      object Memo7: TfrxMemoView
        Left = 377.953000000000000000
        Top = 396.850650000000000000
        Width = 143.622140000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold, fsUnderline]
        Memo.UTF8W = (
          '[UpperCase(<PersonViewDetailADOT."REGION_NAME">)]')
        ParentFont = False
      end
      object Memo8: TfrxMemoView
        Left = 374.173470000000000000
        Top = 415.748300000000000000
        Width = 147.401670000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold, fsUnderline]
        Memo.UTF8W = (
          '[UpperCase(<PersonViewDetailADOT."DISTRICT_NAME">)]')
        ParentFont = False
      end
      object Memo9: TfrxMemoView
        Left = 374.173470000000000000
        Top = 430.866420000000000000
        Width = 147.401670000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold, fsUnderline]
        Memo.UTF8W = (
          
            '[IIF(<PersonViewDetailADOT."ITS_CITY">=0, '#39' '#39',UpperCase(<PersonV' +
            'iewDetailADOT."SETTLEM_NAME">))]')
        ParentFont = False
      end
      object Memo10: TfrxMemoView
        Left = 351.496290000000000000
        Top = 449.764070000000000000
        Width = 170.078850000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold, fsUnderline]
        Memo.UTF8W = (
          
            '[IIF(<PersonViewDetailADOT."ITS_CITY">=0,UpperCase(<PersonViewDe' +
            'tailADOT."SETTLEM_SHORT">+'#39' '#39'+<PersonViewDetailADOT."SETTLEM_NAM' +
            'E">),'#39' '#39')]')
        ParentFont = False
      end
      object Memo11: TfrxMemoView
        Left = 230.551330000000000000
        Top = 487.559370000000000000
        Width = 204.094620000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          '[UpperCase(<PersonViewDetailADOT."COUNTRY_NAME">)]')
        ParentFont = False
      end
      object Memo12: TfrxMemoView
        Left = 325.039580000000000000
        Top = 502.677490000000000000
        Width = 113.385900000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          '[UpperCase(<PersonViewDetailADOT."SEC_COUNTRY">)]')
        ParentFont = False
      end
      object Memo13: TfrxMemoView
        Left = 377.953000000000000000
        Top = 627.401980000000000000
        Width = 143.622140000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold, fsUnderline]
        Memo.UTF8W = (
          '[UpperCase(<NewResidingAdrADOQuery."STATE_NAME">)]')
        ParentFont = False
      end
      object Memo14: TfrxMemoView
        Left = 374.173470000000000000
        Top = 642.520100000000000000
        Width = 147.401670000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold, fsUnderline]
        Memo.UTF8W = (
          '[UpperCase(<NewResidingAdrADOQuery."DISTRICT_NAME">)]')
        ParentFont = False
      end
      object Memo15: TfrxMemoView
        Left = 374.173470000000000000
        Top = 657.638220000000000000
        Width = 147.401670000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold, fsUnderline]
        Memo.UTF8W = (
          
            '[IIF(<NewResidingAdrADOQuery."ITS_CITY">=0, '#39' '#39',UpperCase(<NewRe' +
            'sidingAdrADOQuery."SETTLEM_NAME">))]')
        ParentFont = False
      end
      object Memo16: TfrxMemoView
        Left = 351.496290000000000000
        Top = 676.535870000000000000
        Width = 170.078850000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold, fsUnderline]
        Memo.UTF8W = (
          
            '[IIF(<NewResidingAdrADOQuery."ITS_CITY">=0,UpperCase(<NewResidin' +
            'gAdrADOQuery."SETTLEM_SHORT">+'#39' '#39'+<NewResidingAdrADOQuery."SETTL' +
            'EM_NAME">),'#39' '#39')]')
        ParentFont = False
      end
      object Memo17: TfrxMemoView
        Left = 377.953000000000000000
        Top = 536.693260000000000000
        Width = 143.622140000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold, fsUnderline]
        Memo.UTF8W = (
          '[UpperCase(<OldResidingAdrADOQuery."STATE_NAME">)]')
        ParentFont = False
      end
      object Memo19: TfrxMemoView
        Left = 374.173470000000000000
        Top = 570.709030000000000000
        Width = 151.181200000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold, fsUnderline]
        Memo.UTF8W = (
          
            '[IIF(<OldResidingAdrADOQuery."ITS_CITY">=0, '#39' '#39',UpperCase(<OldRe' +
            'sidingAdrADOQuery."SETTLEM_NAME">))]')
        ParentFont = False
      end
      object Memo20: TfrxMemoView
        Left = 351.496290000000000000
        Top = 589.606680000000000000
        Width = 173.858380000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold, fsUnderline]
        Memo.UTF8W = (
          
            '[IIF(<OldResidingAdrADOQuery."ITS_CITY">=0,UpperCase(<OldResidin' +
            'gAdrADOQuery."SETTLEM_SHORT">+'#39' '#39'+<OldResidingAdrADOQuery."SETTL' +
            'EM_NAME">),'#39' '#39')]')
        ParentFont = False
      end
      object Memo21: TfrxMemoView
        Left = 260.787570000000000000
        Top = 521.575140000000000000
        Width = 260.787570000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold, fsUnderline]
        Memo.UTF8W = (
          '[UpperCase(<OldResidingAdrADOQuery."COUNTRY_NAME">)]')
        ParentFont = False
      end
      object Memo2: TfrxMemoView
        Left = 83.149660000000000000
        Top = 287.244280000000000000
        Width = 438.425480000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[Uppercase(<PersonsfrxDBDS."FIRST_NAME">)]')
        ParentFont = False
      end
      object Memo18: TfrxMemoView
        Left = 370.393940000000000000
        Top = 551.811380000000000000
        Width = 151.181200000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold, fsUnderline]
        Memo.UTF8W = (
          '[UpperCase(<OldResidingAdrADOQuery."DISTRICT_NAME">)]')
        ParentFont = False
      end
      object Memo22: TfrxMemoView
        Left = 188.976500000000000000
        Top = 351.496290000000000000
        Width = 139.842610000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          
            '[IIF(MonthOf(<PersonsfrxDBDS."BIRTHDATE">)=1,'#39#1071#1053#1042#1040#1056#1071#39','#39#39')][IIF(M' +
            'onthOf(<PersonsfrxDBDS."BIRTHDATE">)=2,'#39#1060#1045#1042#1056#1040#1051#1071#39','#39#39')][IIF(MonthO' +
            'f(<PersonsfrxDBDS."BIRTHDATE">)=3,'#39#1052#1040#1056#1058#1040#39','#39#39')][IIF(MonthOf(<Pers' +
            'onsfrxDBDS."BIRTHDATE">)=4,'#39#1040#1055#1056#1045#1051#1071#39','#39#39')][IIF(MonthOf(<Personsfrx' +
            'DBDS."BIRTHDATE">)=5,'#39#1052#1040#1071#39','#39#39')][IIF(MonthOf(<PersonsfrxDBDS."BIR' +
            'THDATE">)=6,'#39#1048#1070#1053#1071#39','#39#39')][IIF(MonthOf(<PersonsfrxDBDS."BIRTHDATE">' +
            ')=7,'#39#1048#1070#1051#1071#39','#39#39')][IIF(MonthOf(<PersonsfrxDBDS."BIRTHDATE">)=8,'#39#1040#1042#1043 +
            #1059#1057#1058#1040#39','#39#39')][IIF(MonthOf(<PersonsfrxDBDS."BIRTHDATE">)=9,'#39#1057#1045#1053#1058#1071#1041#1056#1071 +
            #39','#39#39')][IIF(MonthOf(<PersonsfrxDBDS."BIRTHDATE">)=10,'#39#1054#1050#1058#1071#1041#1056#1071#39','#39#39 +
            ')][IIF(MonthOf(<PersonsfrxDBDS."BIRTHDATE">)=11,'#39#1053#1054#1071#1041#1056#1071#39','#39#39')][II' +
            'F(MonthOf(<PersonsfrxDBDS."BIRTHDATE">)=12,'#39#1044#1045#1050#1040#1041#1056#1071#39','#39#39')]')
        ParentFont = False
      end
      object Memo23: TfrxMemoView
        Left = 257.008040000000000000
        Top = 608.504330000000000000
        Width = 260.787570000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold, fsUnderline]
        Memo.UTF8W = (
          '[UpperCase(<NewResidingAdrADOQuery."COUNTRY_NAME">)]')
        ParentFont = False
      end
      object Shape5: TfrxShapeView
        Top = 314.456692910000000000
        Width = 78.992125980000000000
        Height = 33.637795275590600000
        ShowHint = False
      end
      object Shape6: TfrxShapeView
        Left = 78.992125980000000000
        Top = 314.456692910000000000
        Width = 445.228353780000000000
        Height = 33.637795275590600000
        ShowHint = False
      end
      object Shape7: TfrxShapeView
        Top = 348.094488188976400000
        Width = 116.031496060000000000
        Height = 36.283464566929130000
        ShowHint = False
      end
      object Shape8: TfrxShapeView
        Left = 116.031496060000000000
        Top = 348.094488190000000000
        Width = 408.188983700000000000
        Height = 36.283464570000000000
        ShowHint = False
      end
      object Shape9: TfrxShapeView
        Top = 384.378143150000000000
        Width = 180.661422200000000000
        Height = 86.929133858267700000
        ShowHint = False
      end
      object Shape10: TfrxShapeView
        Left = 180.661422200000000000
        Top = 384.378143150000000000
        Width = 343.559057560000000000
        Height = 86.929133860000000000
        ShowHint = False
      end
      object Shape11: TfrxShapeView
        Top = 471.307086610000000000
        Width = 524.220479760000000000
        Height = 18.141732280000000000
        ShowHint = False
      end
      object Shape12: TfrxShapeView
        Top = 489.449333940000000000
        Width = 524.220479760000000000
        Height = 34.015726060000000000
        ShowHint = False
      end
      object Shape15: TfrxShapeView
        Left = 323.905524020000000000
        Top = 506.456692910000000000
        Width = 200.314955750000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape16: TfrxShapeView
        Left = 236.976334020000000000
        Top = 489.448818900000000000
        Width = 287.244145750000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Line1: TfrxLineView
        Left = 441.826761890000000000
        Top = 489.449333940000000000
        Height = 34.015770000000000000
        ShowHint = False
        Diagonal = True
      end
      object Line2: TfrxLineView
        Left = 468.661720000000000000
        Top = 489.449333940000000000
        Height = 34.015770000000000000
        ShowHint = False
        Diagonal = True
      end
      object Line3: TfrxLineView
        Left = 493.984251970000000000
        Top = 489.449333940000000000
        Height = 34.015770000000000000
        ShowHint = False
        Diagonal = True
      end
      object Shape17: TfrxShapeView
        Top = 523.465103940000000000
        Width = 524.220479760000000000
        Height = 88.062992125984250000
        ShowHint = False
      end
      object Shape18: TfrxShapeView
        Top = 611.527559060000000000
        Width = 524.220479760000000000
        Height = 88.062992130000000000
        ShowHint = False
      end
      object Line4: TfrxLineView
        Left = 182.929133860000000000
        Top = 523.465103940000000000
        Height = 177.637910000000000000
        ShowHint = False
        Diagonal = True
      end
      object Shape19: TfrxShapeView
        Left = 10.204724410000000000
        Top = 571.464745120000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape20: TfrxShapeView
        Left = 24.188976380000000000
        Top = 571.464745120000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape21: TfrxShapeView
        Top = 699.590551180000000000
        Width = 524.220479760000000000
        Height = 18.141732280000000000
        ShowHint = False
      end
      object Line5: TfrxLineView
        Left = 294.803340000000000000
        Top = 699.590551181102000000
        Height = 18.141732280000000000
        ShowHint = False
        Diagonal = True
      end
      object Line6: TfrxLineView
        Left = 317.480520000000000000
        Top = 699.590551181102000000
        Height = 18.141732280000000000
        ShowHint = False
        Diagonal = True
      end
      object Line7: TfrxLineView
        Left = 340.157700000000000000
        Top = 699.590551180000000000
        Height = 18.141732280000000000
        ShowHint = False
        Diagonal = True
      end
      object Line8: TfrxLineView
        Left = 362.834880000000000000
        Top = 699.590551181102000000
        Height = 18.141732280000000000
        ShowHint = False
        Diagonal = True
      end
      object Line9: TfrxLineView
        Left = 385.512060000000000000
        Top = 699.590551181102000000
        Height = 18.141732280000000000
        ShowHint = False
        Diagonal = True
      end
      object Shape22: TfrxShapeView
        Top = 717.732283464567000000
        Width = 524.220479760000000000
        Height = 185.952755910000000000
        ShowHint = False
      end
      object Line10: TfrxLineView
        Left = 144.377952760000000000
        Top = 716.221133940000000000
        Height = 185.196970000000000000
        ShowHint = False
        Diagonal = True
      end
      object Shape23: TfrxShapeView
        Left = 336.378170000000000000
        Top = 354.897828190000000000
        Width = 20.409443940000000000
        Height = 15.874015750000000000
        ShowHint = False
      end
      object Shape24: TfrxShapeView
        Left = 356.787399130000000000
        Top = 354.897828190000000000
        Width = 20.409443940000000000
        Height = 15.874015750000000000
        ShowHint = False
      end
      object Shape25: TfrxShapeView
        Left = 402.519663070000000000
        Top = 354.897828190000000000
        Width = 26.456697800000000000
        Height = 15.874015750000000000
        ShowHint = False
      end
      object Shape26: TfrxShapeView
        Left = 428.976360870000000000
        Top = 354.897828190000000000
        Width = 26.456697800000000000
        Height = 15.874015750000000000
        ShowHint = False
      end
      object Shape27: TfrxShapeView
        Left = 455.433058660000000000
        Top = 354.897828190000000000
        Width = 26.834650550000000000
        Height = 15.874015750000000000
        ShowHint = False
      end
      object Shape28: TfrxShapeView
        Left = 482.267709210000000000
        Top = 354.897828190000000000
        Width = 26.456697800000000000
        Height = 15.874015750000000000
        ShowHint = False
      end
      object Memo47: TfrxMemoView
        Left = 3.779530000000000000
        Top = 258.898003940000000000
        Width = 75.590600000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '1. '#1060#1072#1084#1080#1083#1080#1103)
        ParentFont = False
      end
      object Memo48: TfrxMemoView
        Left = 3.779530000000000000
        Top = 289.134243940000000000
        Width = 75.590600000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '2. '#1048#1084#1103)
        ParentFont = False
      end
      object Memo49: TfrxMemoView
        Left = 3.779530000000000000
        Top = 323.150013940000000000
        Width = 75.590600000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '3. '#1054#1090#1095#1077#1089#1090#1074#1086)
        ParentFont = False
      end
      object Memo50: TfrxMemoView
        Left = 139.842610000000000000
        Top = 368.504373940000000000
        Width = 41.574830000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '('#1095#1080#1089#1083#1086')')
        ParentFont = False
      end
      object Memo51: TfrxMemoView
        Left = 241.889920000000000000
        Top = 368.504373940000000000
        Width = 41.574830000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '('#1084#1077#1089#1103#1094')')
        ParentFont = False
      end
      object Memo52: TfrxMemoView
        Left = 449.764070000000000000
        Top = 368.504373940000000000
        Width = 26.456710000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '('#1075#1086#1076')')
        ParentFont = False
      end
      object Memo53: TfrxMemoView
        Left = 3.779530000000000000
        Top = 353.386253940000000000
        Width = 105.826840000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '4. '#1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103)
        ParentFont = False
      end
      object Memo54: TfrxMemoView
        Left = 3.779530000000000000
        Top = 383.622493940000000000
        Width = 60.472480000000000000
        Height = 34.015770000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '5. '#1052#1077#1089#1090#1086' '#1088#1086#1078#1076#1077#1085#1080#1103)
        ParentFont = False
      end
      object Memo55: TfrxMemoView
        Left = 3.779530000000000000
        Top = 470.551683940000000000
        Width = 313.700990000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '6. '#1055#1086#1083' ('#1087#1086#1076#1095#1077#1088#1082#1085#1091#1090#1100'):     '#1084#1091#1078#1089#1082#1086#1081' '#8211' 1; '#1078#1077#1085#1089#1082#1080#1081' '#8211' 2')
        ParentFont = False
      end
      object Memo56: TfrxMemoView
        Left = 3.779530000000000000
        Top = 489.449333940000000000
        Width = 306.141930000000000000
        Height = 30.236240000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '7. '#1043#1088#1072#1078#1076#1072#1085#1089#1090#1074#1086' ('#1091#1082#1072#1079#1072#1090#1100' '#1075#1086#1089#1091#1076#1072#1088#1089#1090#1074#1086')'
          #1077#1089#1083#1080' '#1080#1084#1077#1077#1090' '#1076#1074#1086#1081#1085#1086#1077' '#1075#1088#1072#1078#1076#1072#1085#1089#1090#1074#1086', '#1091#1082#1072#1079#1072#1090#1100' '#1075#1086#1089#1091#1076#1072#1088#1089#1090#1074#1086)
        ParentFont = False
      end
      object Memo57: TfrxMemoView
        Left = 3.779530000000000000
        Top = 523.465103940000000000
        Width = 120.944960000000000000
        Height = 34.015770000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '8. '#1055#1086#1089#1083#1077#1076#1085#1077#1077' '#1084#1077#1089#1090#1086
          #1078#1080#1090#1077#1083#1100#1089#1090#1074#1072)
        ParentFont = False
      end
      object Memo58: TfrxMemoView
        Left = 3.779530000000000000
        Top = 610.394293940000000000
        Width = 120.944960000000000000
        Height = 34.015770000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '9. '#1053#1086#1074#1086#1077' '#1084#1077#1089#1090#1086
          #1078#1080#1090#1077#1083#1100#1089#1090#1074#1072)
        ParentFont = False
      end
      object Memo60: TfrxMemoView
        Left = 185.196970000000000000
        Top = 610.394293940000000000
        Width = 192.756030000000000000
        Height = 83.149660000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        LineSpacing = 4.000000000000000000
        Memo.UTF8W = (
          #1075#1086#1089#1091#1076#1072#1088#1089#1090#1074#1086
          #1088#1077#1089#1087#1091#1073#1083#1080#1082#1072', '#1082#1088#1072#1081', '#1086#1073#1083#1072#1089#1090#1100', '#1086#1082#1088#1091#1075
          #1088#1072#1081#1086#1085', '#1075#1086#1088#1086#1076#1089#1082#1086#1081' '#1088#1072#1081#1086#1085' ('#1086#1082#1088#1091#1075')'
          #1075#1086#1088#1086#1076', '#1087#1086#1089#1077#1083#1086#1082' '#1075#1086#1088#1086#1076#1089#1082#1086#1075#1086' '#1090#1080#1087#1072
          #1089#1077#1083#1100#1089#1082#1080#1081' '#1085#1072#1089#1077#1083#1077#1085#1085#1099#1081' '#1087#1091#1085#1082#1090)
        ParentFont = False
      end
      object Memo61: TfrxMemoView
        Left = 7.559060000000000000
        Top = 701.103013940000000000
        Width = 283.464750000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '10. '#1055#1088#1086#1078#1080#1074#1072#1083' '#1087#1086' '#1087#1086#1089#1083#1077#1076#1085#1077#1084#1091' '#1084#1077#1089#1090#1091' '#1078#1080#1090#1077#1083#1100#1089#1090#1074#1072' '#1089)
        ParentFont = False
      end
      object Memo63: TfrxMemoView
        Left = 7.559060000000000000
        Top = 716.221133940000000000
        Width = 132.283550000000000000
        Height = 113.385900000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          
            '11. '#1054#1089#1085#1086#1074#1085#1086#1077' '#1086#1073#1089#1090#1086#1103#1090#1077#1083#1100#1089#1090#1074#1086', '#1074#1099#1079#1074#1072#1074#1096#1077#1077' '#1085#1077#1086#1073#1093#1086#1076#1080#1084#1086#1089#1090#1100' '#1087#1077#1088#1077#1089#1077#1083#1077#1085#1080#1103 +
            ' ('#1087#1086#1076#1095#1077#1088#1082#1085#1091#1090#1100')')
        ParentFont = False
      end
      object Memo64: TfrxMemoView
        Left = 147.401670000000000000
        Top = 716.221133940000000000
        Width = 362.834880000000000000
        Height = 185.196970000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1074' '#1089#1074#1103#1079#1080' '#1089' '#1091#1095#1077#1073#1086#1081' '#8211' 10; '#1074' '#1089#1074#1103#1079#1080' '#1089' '#1088#1072#1073#1086#1090#1086#1081' '#8211' 20;'
          #1074#1086#1079#1074#1088#1072#1097#1077#1085#1080#1077' '#1082' '#1087#1088#1077#1078#1085#1077#1084#1091' '#1084#1077#1089#1090#1091' '#1078#1080#1090#1077#1083#1100#1089#1090#1074#1072' '#8211' 30;'
          #1080#1079'-'#1079#1072' '#1086#1073#1086#1089#1090#1088#1077#1085#1080#1103' '#1084#1077#1078#1085#1072#1094#1080#1086#1085#1072#1083#1100#1085#1099#1093' '#1086#1090#1085#1086#1096#1077#1085#1080#1081' '#8211' 40;'
          #1080#1079'-'#1079#1072' '#1086#1073#1086#1089#1090#1088#1077#1085#1080#1103' '#1082#1088#1080#1084#1080#1085#1086#1075#1077#1085#1085#1086#1081' '#1086#1073#1089#1090#1072#1085#1086#1074#1082#1080' '#8211' 50;'
          #1101#1082#1086#1083#1086#1075#1080#1095#1077#1089#1082#1086#1077' '#1085#1077#1073#1083#1072#1075#1086#1087#1086#1083#1091#1095#1080#1077' '#8211' 60;'
          #1085#1077#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1077' '#1087#1088#1080#1088#1086#1076#1085#1086'-'#1082#1083#1080#1084#1072#1090#1080#1095#1077#1089#1082#1080#1084' '#1091#1089#1083#1086#1074#1080#1103#1084' '#8211' 70;'
          
            #1087#1088#1080#1095#1080#1085#1099' '#1083#1080#1095#1085#1086#1075#1086', '#1089#1077#1084#1077#1081#1085#1086#1075#1086' '#1093#1072#1088#1072#1082#1090#1077#1088#1072' '#8211' 80, '#1074' '#1090'.'#1095'. '#1074' '#1089#1074#1103#1079#1080' '#1089' '#1087#1077#1088#1077 +
            #1084#1077#1085#1086#1081' '#1084#1077#1089#1090#1072' '#1088#1072#1073#1086#1090#1099' '#1089#1091#1087#1088#1091#1075#1072'('#1080') '#8211' 81, '#1074' '#1089#1074#1103#1079#1080' '#1089' '#1074#1089#1090#1091#1087#1083#1077#1085#1080#1077#1084' '#1074' '#1073#1088#1072#1082 +
            ' '#8211' 82,'
          #1082' '#1076#1077#1090#1103#1084' '#8211' 83, '#1082' '#1088#1086#1076#1080#1090#1077#1083#1103#1084' '#8211' 84;'
          #1080#1085#1072#1103' '#1087#1088#1080#1095#1080#1085#1072' ('#1091#1082#1072#1079#1072#1090#1100')'#9
          #1074' '#1090'.'#1095'. '#1087#1088#1080#1086#1073#1088#1077#1090#1077#1085#1080#1077' '#1078#1080#1083#1100#1103' ('#1087#1086#1082#1091#1087#1082#1072', '#1085#1072#1089#1083#1077#1076#1086#1074#1072#1085#1080#1077' '#1080' '#1090'.'#1087'.)')
        ParentFont = False
      end
      object Shape39: TfrxShapeView
        Left = 37.795300000000000000
        Top = 571.464745120000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape40: TfrxShapeView
        Left = 51.779551970000000000
        Top = 571.464745120000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape41: TfrxShapeView
        Left = 66.141732280000000000
        Top = 571.464745120000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape42: TfrxShapeView
        Left = 80.125984250000000000
        Top = 571.464745120000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape43: TfrxShapeView
        Left = 93.732283460000000000
        Top = 571.464745120000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape44: TfrxShapeView
        Left = 107.716535430000000000
        Top = 571.464745120000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape45: TfrxShapeView
        Left = 120.944960000000000000
        Top = 571.464745120000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape46: TfrxShapeView
        Left = 134.551259210000000000
        Top = 571.464745120000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape47: TfrxShapeView
        Left = 148.535511180000000000
        Top = 571.464745120000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape48: TfrxShapeView
        Left = 7.559060000000000000
        Top = 659.528183940000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape49: TfrxShapeView
        Left = 21.543311970000000000
        Top = 659.528183940000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape50: TfrxShapeView
        Left = 35.149635590000000000
        Top = 659.528183940000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape51: TfrxShapeView
        Left = 49.133887560000000000
        Top = 659.528183940000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape52: TfrxShapeView
        Left = 63.496067870000000000
        Top = 659.528183940000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape53: TfrxShapeView
        Left = 77.480319840000000000
        Top = 659.528183940000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape54: TfrxShapeView
        Left = 91.086619050000000000
        Top = 659.528183940000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape55: TfrxShapeView
        Left = 105.070871020000000000
        Top = 659.528183940000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape56: TfrxShapeView
        Left = 118.299295590000000000
        Top = 659.528183940000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape57: TfrxShapeView
        Left = 131.905594800000000000
        Top = 659.528183940000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape58: TfrxShapeView
        Left = 145.889846770000000000
        Top = 659.528183940000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape59: TfrxShapeView
        Left = 11.338590000000000000
        Top = 432.756383940000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape60: TfrxShapeView
        Left = 25.322841970000000000
        Top = 432.756383940000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape61: TfrxShapeView
        Left = 38.929165590000000000
        Top = 432.756383940000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape62: TfrxShapeView
        Left = 52.913417560000000000
        Top = 432.756383940000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape63: TfrxShapeView
        Left = 67.275597870000000000
        Top = 432.756383940000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape64: TfrxShapeView
        Left = 81.259849840000000000
        Top = 432.756383940000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape65: TfrxShapeView
        Left = 94.866149050000000000
        Top = 432.756383940000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape66: TfrxShapeView
        Left = 108.850401020000000000
        Top = 432.756383940000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape67: TfrxShapeView
        Left = 122.078825590000000000
        Top = 432.756383940000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape68: TfrxShapeView
        Left = 135.685124800000000000
        Top = 432.756383940000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Shape69: TfrxShapeView
        Left = 149.669376770000000000
        Top = 432.756383940000000000
        Width = 13.984251970000000000
        Height = 17.007874020000000000
        ShowHint = False
      end
      object Memo65: TfrxMemoView
        Left = 185.196970000000000000
        Top = 383.622493940000000000
        Width = 196.535560000000000000
        Height = 83.149660000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        LineSpacing = 3.000000000000000000
        Memo.UTF8W = (
          #1075#1086#1089#1091#1076#1072#1088#1089#1090#1074#1086
          #1088#1077#1089#1087#1091#1073#1083#1080#1082#1072', '#1082#1088#1072#1081', '#1086#1073#1083#1072#1089#1090#1100', '#1086#1082#1088#1091#1075
          #1088#1072#1081#1086#1085', '#1075#1086#1088#1086#1076#1089#1082#1086#1081' '#1088#1072#1081#1086#1085' ('#1086#1082#1088#1091#1075')'
          #1075#1086#1088#1086#1076', '#1087#1086#1089#1077#1083#1086#1082' '#1075#1086#1088#1086#1076#1089#1082#1086#1075#1086' '#1090#1080#1087#1072
          #1089#1077#1083#1100#1089#1082#1080#1081' '#1085#1072#1089#1077#1083#1077#1085#1085#1099#1081' '#1087#1091#1085#1082#1090)
        ParentFont = False
      end
      object Line15: TfrxLineView
        Left = 136.063080000000000000
        Top = 372.283903940000000000
        Width = 45.354360000000000000
        ShowHint = False
        Diagonal = True
      end
      object Line16: TfrxLineView
        Left = 196.535560000000000000
        Top = 372.283903940000000000
        Width = 128.504020000000000000
        ShowHint = False
        Diagonal = True
      end
      object Line24: TfrxLineView
        Left = 0.377952760000000000
        Top = 905.197633940000000000
        Height = -653.858548430000000000
        ShowHint = False
        Diagonal = True
      end
      object Memo59: TfrxMemoView
        Left = 185.196970000000000000
        Top = 521.575140000000000000
        Width = 192.756030000000000000
        Height = 83.149660000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        LineSpacing = 4.000000000000000000
        Memo.UTF8W = (
          #1075#1086#1089#1091#1076#1072#1088#1089#1090#1074#1086
          #1088#1077#1089#1087#1091#1073#1083#1080#1082#1072', '#1082#1088#1072#1081', '#1086#1073#1083#1072#1089#1090#1100', '#1086#1082#1088#1091#1075
          #1088#1072#1081#1086#1085', '#1075#1086#1088#1086#1076#1089#1082#1086#1081' '#1088#1072#1081#1086#1085' ('#1086#1082#1088#1091#1075')'
          #1075#1086#1088#1086#1076', '#1087#1086#1089#1077#1083#1086#1082' '#1075#1086#1088#1086#1076#1089#1082#1086#1075#1086' '#1090#1080#1087#1072
          #1089#1077#1083#1100#1089#1082#1080#1081' '#1085#1072#1089#1077#1083#1077#1085#1085#1099#1081' '#1087#1091#1085#1082#1090)
        ParentFont = False
      end
      object Shape13: TfrxShapeView
        Left = 78.992125984251970000
        Top = 283.464750000000000000
        Width = 445.228353780000000000
        Height = 30.992125980000000000
        ShowHint = False
      end
      object Shape1: TfrxShapeView
        Top = 283.464750000000000000
        Width = 78.992125980000000000
        Height = 30.992125980000000000
        ShowHint = False
      end
      object Shape36: TfrxShapeView
        Left = 456.566916930000000000
        Top = 190.488206060000000000
        Width = 67.275610080000000000
        Height = 15.118110240000000000
        ShowHint = False
      end
      object Shape37: TfrxShapeView
        Left = 456.566916930000000000
        Top = 215.433210000000000000
        Width = 67.275610080000000000
        Height = 15.118110240000000000
        ShowHint = False
      end
      object Memo27: TfrxMemoView
        Left = 60.472480000000000000
        Top = 192.756030000000000000
        Width = 340.157700000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          #1057#1085#1103#1090#1080#1077' '#1089' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1086#1085#1085#1086#1075#1086' '#1091#1095#1077#1090#1072' '#1087#1086' '#1084#1077#1089#1090#1091' '#1078#1080#1090#1077#1083#1100#1089#1090#1074#1072)
        ParentFont = False
      end
      object Memo28: TfrxMemoView
        Left = 83.149660000000000000
        Top = 215.433210000000000000
        Width = 291.023810000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          #1042#1099#1093#1086#1076' '#1080#1079' '#1075#1088#1072#1078#1076#1072#1085#1089#1090#1074#1072' '#1056#1086#1089#1089#1080#1081#1089#1082#1086#1081' '#1060#1077#1076#1077#1088#1072#1094#1080#1080)
        ParentFont = False
      end
      object Memo30: TfrxMemoView
        Left = 3.779530000000000000
        Top = 128.504020000000000000
        Width = 544.252320000000000000
        Height = 49.133890000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          
            '   '#1047#1072#1087#1080#1089#1080' '#1074' '#1083#1080#1089#1090#1082#1077' '#1089#1090#1072#1090#1080#1089#1090#1080#1095#1077#1089#1082#1086#1075#1086' '#1091#1095#1077#1090#1072' '#1074#1099#1073#1099#1090#1080#1103' '#1087#1086#1076#1083#1077#1078#1072#1090' '#1080#1089#1087#1086#1083#1100 +
            #1079#1086#1074#1072#1085#1080#1102' '#1090#1086#1083#1100#1082#1086' '#1076#1083#1103' '#1087#1086#1083#1091#1095#1077#1085#1080#1103' '#1089#1074#1086#1076#1085#1099#1093' '#1076#1072#1085#1085#1099#1093' '#1086' '#1095#1080#1089#1083#1077#1085#1085#1086#1089#1090#1080' '#1080' '#1089#1086#1089#1090 +
            #1072#1074#1077' '#1084#1080#1075#1088#1072#1085#1090#1086#1074' '#1080' '#1086#1090#1085#1086#1089#1103#1090#1089#1103' '#1082' '#1082#1072#1090#1077#1075#1086#1088#1080#1080' '#1082#1086#1085#1092#1080#1076#1077#1085#1094#1080#1072#1083#1100#1085#1086#1081' '#1080#1085#1092#1086#1088#1084#1072#1094#1080 +
            #1080)
        ParentFont = False
      end
      object Memo31: TfrxMemoView
        Top = 52.913420000000000000
        Width = 521.575140000000000000
        Height = 60.472480000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          
            '('#1082' '#1076#1086#1082#1091#1084#1077#1085#1090#1072#1084' '#1086' '#1089#1085#1103#1090#1080#1080' '#1089' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1086#1085#1085#1086#1075#1086' '#1091#1095#1077#1090#1072' '#1087#1086' '#1087#1086#1089#1083#1077#1076#1085#1077#1084#1091' '#1084#1077 +
            #1089#1090#1091
          
            #1078#1080#1090#1077#1083#1100#1089#1090#1074#1072' '#1076#1083#1103' '#1083#1080#1094', '#1074#1099#1077#1079#1078#1072#1102#1097#1080#1093' '#1079#1072' '#1087#1088#1077#1076#1077#1083#1099' '#1056#1086#1089#1089#1080#1081#1089#1082#1086#1081' '#1060#1077#1076#1077#1088#1072#1094#1080#1080' '#1080 +
            #1083#1080
          #1074#1099#1096#1077#1076#1096#1080#1093' '#1080#1079' '#1075#1088#1072#1078#1076#1072#1085#1089#1090#1074#1072
          #1056#1086#1089#1089#1080#1081#1089#1082#1086#1081' '#1060#1077#1076#1077#1088#1072#1094#1080#1080')')
        ParentFont = False
      end
      object Memo32: TfrxMemoView
        Left = 49.133890000000000000
        Top = 26.456710000000000000
        Width = 521.575140000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '"'#1042'"    '#1051#1048#1057#1058#1054#1050' '#1057#1058#1040#1058#1048#1057#1058#1048#1063#1045#1057#1050#1054#1043#1054' '#1059#1063#1045#1058#1040' '#1042#1067#1041#1067#1058#1048#1071)
        ParentFont = False
      end
      object Memo33: TfrxMemoView
        Left = 423.307360000000000000
        Top = 3.779530000000000000
        Width = 94.488250000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1060#1086#1088#1084#1072' '#8470' 12'#1042)
        ParentFont = False
      end
      object Shape2: TfrxShapeView
        Top = 253.228510000000000000
        Width = 78.992125980000000000
        Height = 30.236220470000000000
        ShowHint = False
      end
      object Shape3: TfrxShapeView
        Left = 78.992125984251970000
        Top = 253.228510000000000000
        Width = 445.228353780000000000
        Height = 30.236220470000000000
        ShowHint = False
      end
      object Memo37: TfrxMemoView
        Left = 468.661720000000000000
        Top = 869.291900000000000000
        Width = 41.574830000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '- 90')
        ParentFont = False
      end
      object Line17: TfrxLineView
        Left = 283.464750000000000000
        Top = 882.898789920000000000
        Width = 181.417440000000000000
        ShowHint = False
        Diagonal = True
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 155.000000000000000000
      PaperHeight = 280.000000000000000000
      PaperSize = 256
      LeftMargin = 6.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Shape75: TfrxShapeView
        Top = 11.338590000000000000
        Width = 524.220479760000000000
        Height = 399.496275350000000000
        ShowHint = False
      end
      object Shape76: TfrxShapeView
        Top = 411.212598430000000000
        Width = 524.220479760000000000
        Height = 51.023622050000000000
        ShowHint = False
      end
      object Shape77: TfrxShapeView
        Top = 461.858245750000000000
        Width = 524.220479760000000000
        Height = 63.496062992125980000
        ShowHint = False
      end
      object Shape78: TfrxShapeView
        Top = 525.354308740000000000
        Width = 524.220479760000000000
        Height = 93.732283464566930000
        ShowHint = False
      end
      object Shape79: TfrxShapeView
        Top = 619.086592200000000000
        Width = 524.220479760000000000
        Height = 32.881865350000000000
        ShowHint = False
      end
      object Line18: TfrxLineView
        Left = 162.519790000000000000
        Top = 11.338590000000000000
        Height = 640.629889530000000000
        ShowHint = False
        Diagonal = True
      end
      object Shape80: TfrxShapeView
        Top = 651.968481970000000000
        Width = 524.220479760000000000
        Height = 32.881865350000000000
        ShowHint = False
      end
      object Shape81: TfrxShapeView
        Top = 684.850361970000000000
        Width = 524.220479760000000000
        Height = 15.874015750000000000
        ShowHint = False
      end
      object Memo24: TfrxMemoView
        Left = 3.779530000000000000
        Top = 11.338590000000000000
        Width = 154.960730000000000000
        Height = 52.913420000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '12. '#1047#1072#1085#1103#1090#1080#1077' '#1087#1086' '#1087#1086#1089#1083#1077#1076#1085#1077#1084#1091' '#1084#1077#1089#1090#1091' '#1078#1080#1090#1077#1083#1100#1089#1090#1074#1072' ('#1087#1086#1076#1095#1077#1088#1082#1085#1091#1090#1100')')
        ParentFont = False
      end
      object Memo25: TfrxMemoView
        Left = 166.299320000000000000
        Top = 11.338590000000000000
        Width = 355.275820000000000000
        Height = 400.630180000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1044#1086' '#1087#1077#1088#1077#1089#1077#1083#1077#1085#1080#1103' '#1086#1089#1091#1097#1077#1089#1090#1074#1083#1103#1083' '#1090#1088#1091#1076#1086#1074#1091#1102' '#1076#1077#1103#1090#1077#1083#1100#1085#1086#1089#1090#1100':'
          #1089#1077#1083#1100#1089#1082#1086#1077' '#1093#1086#1079#1103#1081#1089#1090#1074#1086', '#1086#1093#1086#1090#1072' '#1080' '#1083#1077#1089#1085#1086#1077' '#1093#1086#1079#1103#1081#1089#1090#1074#1086' '#8211' 01;'
          #1088#1099#1073#1086#1083#1086#1074#1089#1090#1074#1086', '#1088#1099#1073#1086#1074#1086#1076#1089#1090#1074#1086' '#8211' 05;'
          #1076#1086#1073#1099#1095#1072' '#1087#1086#1083#1077#1079#1085#1099#1093' '#1080#1089#1082#1086#1087#1072#1077#1084#1099#1093' '#8211' 10;'
          #1086#1073#1088#1072#1073#1072#1090#1099#1074#1072#1102#1097#1080#1077' '#1087#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1072' '#8211' 15;'
          #1087#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1086' '#1080' '#1088#1072#1089#1087#1088#1077#1076#1077#1083#1077#1085#1080#1077' '#1101#1083#1077#1082#1090#1088#1086#1101#1085#1077#1088#1075#1080#1080', '#1075#1072#1079#1072' '#1080' '#1074#1086#1076#1099' '#8211' 40;'
          #1089#1090#1088#1086#1080#1090#1077#1083#1100#1089#1090#1074#1086' '#8211' 45;'
          
            #1086#1087#1090#1086#1074#1072#1103' '#1080' '#1088#1086#1079#1085#1080#1095#1085#1072#1103' '#1090#1086#1088#1075#1086#1074#1083#1103', '#1088#1077#1084#1086#1085#1090' '#1072#1074#1090#1086#1090#1088#1072#1085#1089#1087#1086#1088#1090#1085#1099#1093' '#1089#1088#1077#1076#1089#1090#1074', '#1084 +
            #1086#1090#1086#1094#1080#1082#1083#1086#1074', '#1073#1099#1090#1086#1074#1099#1093' '#1080#1079#1076#1077#1083#1080#1081' '#1080' '#1087#1088#1077#1076#1084#1077#1090#1086#1074' '#1083#1080#1095#1085#1086#1075#1086
          #1087#1086#1083#1100#1079#1086#1074#1072#1085#1080#1103' '#8211' 50;'
          #1075#1086#1089#1090#1080#1085#1080#1094#1099' '#1080' '#1088#1077#1089#1090#1086#1088#1072#1085#1099' '#8211' 55;'
          #1090#1088#1072#1085#1089#1087#1086#1088#1090' '#1080' '#1089#1074#1103#1079#1100' '#8211' 60;'
          #1092#1080#1085#1072#1085#1089#1086#1074#1072#1103' '#1076#1077#1103#1090#1077#1083#1100#1085#1086#1089#1090#1100' '#8211' 65;'
          
            #1086#1087#1077#1088#1072#1094#1080#1080' '#1089' '#1085#1077#1076#1074#1080#1078#1080#1084#1099#1084' '#1080#1084#1091#1097#1077#1089#1090#1074#1086#1084', '#1072#1088#1077#1085#1076#1072' '#1080' '#1087#1088#1077#1076#1086#1089#1090#1072#1074#1083#1077#1085#1080#1077' '#1091#1089#1083#1091#1075' ' +
            #8211' 70;'
          
            #1075#1086#1089#1091#1076#1072#1088#1089#1090#1074#1077#1085#1085#1086#1077' '#1091#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1080' '#1086#1073#1077#1089#1087#1077#1095#1077#1085#1080#1077' '#1074#1086#1077#1085#1085#1086#1081' '#1073#1077#1079#1086#1087#1072#1089#1085#1086#1089#1090#1080', '#1086 +
            #1073#1103#1079#1072#1090#1077#1083#1100#1085#1086#1077' '#1089#1086#1094#1080#1072#1083#1100#1085#1086#1077' '#1086#1073#1077#1089#1087#1077#1095#1077#1085#1080#1077' '#8211' 75;'
          #1086#1073#1088#1072#1079#1086#1074#1072#1085#1080#1077' '#8211' 80;'
          #1079#1076#1088#1072#1074#1086#1086#1093#1088#1072#1085#1077#1085#1080#1077' '#1080' '#1087#1088#1077#1076#1086#1089#1090#1072#1074#1083#1077#1085#1080#1077' '#1089#1086#1094#1080#1072#1083#1100#1085#1099#1093' '#1091#1089#1083#1091#1075' '#8211' 85;'
          
            #1087#1088#1077#1076#1086#1089#1090#1072#1074#1083#1077#1085#1080#1077' '#1087#1088#1086#1095#1080#1093' '#1082#1086#1084#1084#1091#1085#1072#1083#1100#1085#1099#1093', '#1089#1086#1094#1080#1072#1083#1100#1085#1099#1093' '#1080' '#1087#1077#1088#1089#1086#1085#1072#1083#1100#1085#1099#1093' '#1091#1089 +
            #1083#1091#1075' '#8211' 90;'
          #1087#1088#1077#1076#1086#1089#1090#1072#1074#1083#1077#1085#1080#1077' '#1091#1089#1083#1091#1075' '#1087#1086' '#1074#1077#1076#1077#1085#1080#1102' '#1076#1086#1084#1072#1096#1085#1077#1075#1086' '#1093#1086#1079#1103#1081#1089#1090#1074#1072' '#8211' 95;'
          #1076#1077#1103#1090#1077#1083#1100#1085#1086#1089#1090#1100' '#1101#1082#1089#1090#1077#1088#1088#1080#1090#1086#1088#1080#1072#1083#1100#1085#1099#1093' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1081' '#8211' 99.'
          #1059#1095#1080#1083#1089#1103' '#8211' 03, '#1074' '#1090#1086#1084' '#1095#1080#1089#1083#1077' '#1074' '#1042#1059#1047#1077' '#8211' 04.'
          #1053#1077' '#1088#1072#1073#1086#1090#1072#1083' '#8211' 09.')
        ParentFont = False
      end
      object Memo26: TfrxMemoView
        Left = 3.779530000000000000
        Top = 411.968770000000000000
        Width = 154.960730000000000000
        Height = 30.236240000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '13. '#1057#1090#1072#1090#1091#1089' '#1074' '#1079#1072#1085#1103#1090#1086#1089#1090#1080' ('#1087#1086#1076#1095#1077#1088#1082#1085#1091#1090#1100')')
        ParentFont = False
      end
      object Memo29: TfrxMemoView
        Left = 166.299320000000000000
        Top = 411.968770000000000000
        Width = 347.716760000000000000
        Height = 45.354360000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          
            #1088#1072#1073#1086#1090#1072' '#1087#1086' '#1085#1072#1081#1084#1091' '#1074' '#1082#1072#1095#1077#1089#1090#1074#1077': '#1088#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1103' '#8211' 1; '#1089#1087#1077#1094#1080#1072#1083#1080#1089#1090#1072' '#8211' 2; '#1080 +
            #1085#1086#1075#1086' '#1089#1083#1091#1078#1072#1097#1077#1075#1086' ('#1090#1077#1093#1085#1080#1095#1077#1089#1082#1086#1075#1086' '#1080#1089#1087#1086#1083#1085#1080#1090#1077#1083#1103') '#8211' 3; '#1088#1072#1073#1086#1095#1077#1075#1086' '#8211' 4; '#1089#1072#1084 +
            #1086#1089#1090#1086#1103#1090#1077#1083#1100#1085#1086' '#1086#1073#1077#1089#1087#1077#1095#1080#1074#1072#1083' '#1089#1077#1073#1103' '#1088#1072#1073#1086#1090#1086#1081' '#8211' 5')
        ParentFont = False
      end
      object Memo34: TfrxMemoView
        Left = 166.299320000000000000
        Top = 461.102660000000000000
        Width = 340.157700000000000000
        Height = 60.472480000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1087#1086#1083#1091#1095#1072#1083': '#1087#1077#1085#1089#1080#1102' '#1087#1086' '#1089#1090#1072#1088#1086#1089#1090#1080' '#8211' 1;'
          #1087#1086' '#1080#1085#1074#1072#1083#1080#1076#1085#1086#1089#1090#1080' '#8211' 2; '#1079#1072' '#1074#1099#1089#1083#1091#1075#1091' '#1083#1077#1090' '#8211' 4;'
          #1087#1086#1089#1086#1073#1080#1077' '#1087#1086' '#1073#1077#1079#1088#1072#1073#1086#1090#1080#1094#1077' '#8211' 12;'
          #1080#1085#1099#1077' '#1087#1077#1085#1089#1080#1080' '#1080' '#1087#1086#1089#1086#1073#1080#1103' '#8211' 7')
        ParentFont = False
      end
      object Memo35: TfrxMemoView
        Left = 166.299320000000000000
        Top = 525.354670000000000000
        Width = 340.157700000000000000
        Height = 90.708720000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          
            #1074#1099#1089#1096#1077#1077' '#8211' 1, '#1074' '#1090'.'#1095'. '#1080#1084#1077#1077#1090' '#1091#1095#1077#1085#1091#1102' '#1089#1090#1077#1087#1077#1085#1100': '#1076#1086#1082#1090#1086#1088#1072' '#1085#1072#1091#1082' '#8211' 2, '#1082#1072#1085#1076#1080 +
            #1076#1072#1090#1072' '#1085#1072#1091#1082' '#8211' 3; '#1085#1077#1087#1086#1083#1085#1086#1077' '#1074#1099#1089#1096#1077#1077' '#1087#1088#1086#1092#1077#1089#1089#1080#1086#1085#1072#1083#1100#1085#1086#1077' '#8211' 4; '#1089#1088#1077#1076#1085#1077#1077' '#1087#1088#1086 +
            #1092#1077#1089#1089#1080#1086#1085#1072#1083#1100#1085#1086#1077' ('#1089#1088#1077#1076#1085#1077#1077' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1077') '#8211' 5; '#1085#1072#1095#1072#1083#1100#1085#1086#1077' '#1087#1088#1086#1092#1077#1089#1089#1080#1086#1085#1072#1083#1100 +
            #1085#1086#1077' '#8211' 6; '#1089#1088#1077#1076#1085#1077#1077' '#1086#1073#1097#1077#1077' ('#1087#1086#1083#1085#1086#1077') '#8211' 7; '#1086#1089#1085#1086#1074#1085#1086#1077' '#1086#1073#1097#1077#1077' ('#1085#1077#1087#1086#1083#1085#1086#1077' '#1089#1088 +
            #1077#1076#1085#1077#1077') '#8211' 8; '#1085#1072#1095#1072#1083#1100#1085#1086#1077' '#1086#1073#1097#1077#1077' ('#1085#1072#1095#1072#1083#1100#1085#1086#1077') '#1080' '#1085#1077' '#1080#1084#1077#1102#1097#1080#1077' '#1085#1072#1095#1072#1083#1100#1085#1086#1075#1086' ' +
            #8211' 9')
        ParentFont = False
      end
      object Memo36: TfrxMemoView
        Left = 166.299320000000000000
        Top = 619.842920000000000000
        Width = 340.157700000000000000
        Height = 30.236240000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1078#1077#1085#1072#1090' ('#1079#1072#1084#1091#1078#1077#1084') '#8211' 1; '#1085#1080#1082#1086#1075#1076#1072' '#1085#1077' '#1073#1099#1083' '#1078#1077#1085#1072#1090' ('#1079#1072#1084#1091#1078#1077#1084') '#8211' 2;'
          #1088#1072#1079#1074#1077#1076#1077#1085'('#1072') '#8211' 3; '#1074#1076#1086#1074#1077#1094' ('#1074#1076#1086#1074#1072') '#8211' 4')
        ParentFont = False
      end
      object Memo66: TfrxMemoView
        Left = 3.779530000000000000
        Top = 461.102660000000000000
        Width = 154.960730000000000000
        Height = 64.252010000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          
            '14. '#1042#1080#1076' '#1089#1086#1094#1080#1072#1083#1100#1085#1086#1075#1086' '#1086#1073#1077#1089#1087#1077#1095#1077#1085#1080#1103' '#1087#1086' '#1087#1086#1089#1083#1077#1076#1085#1077#1084#1091' '#1084#1077#1089#1090#1091' '#1078#1080#1090#1077#1083#1100#1089#1090#1074#1072' (' +
            #1087#1086#1076#1095#1077#1088#1082#1085#1091#1090#1100')')
        ParentFont = False
      end
      object Memo67: TfrxMemoView
        Left = 3.779530000000000000
        Top = 525.354670000000000000
        Width = 154.960730000000000000
        Height = 34.015770000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '15. '#1054#1073#1088#1072#1079#1086#1074#1072#1085#1080#1077' ('#1087#1086#1076#1095#1077#1088#1082#1085#1091#1090#1100')')
        ParentFont = False
      end
      object Memo68: TfrxMemoView
        Left = 3.779530000000000000
        Top = 616.063390000000000000
        Width = 154.960730000000000000
        Height = 30.236240000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '16. '#1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1074' '#1073#1088#1072#1082#1077' ('#1087#1086#1076#1095#1077#1088#1082#1085#1091#1090#1100')')
        ParentFont = False
      end
      object Memo69: TfrxMemoView
        Left = 3.779530000000000000
        Top = 650.079160000000000000
        Width = 517.795610000000000000
        Height = 45.354360000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          
            '17. '#1045#1089#1083#1080' '#1076#1086' '#1087#1077#1088#1077#1089#1077#1083#1077#1085#1080#1103' '#1087#1088#1086#1078#1080#1074#1072#1083' '#1089' '#1089#1077#1084#1100#1077#1081', '#1090#1086' '#1087#1088#1080#1073#1099#1083' ('#1087#1086#1076#1095#1077#1088#1082#1085#1091#1090 +
            #1100'):'
          
            #1089#1086' '#1074#1089#1077#1081' '#1089#1077#1084#1100#1077#1081' '#8211' 1; '#1089' '#1095#1072#1089#1090#1100#1102' '#1095#1083#1077#1085#1086#1074' '#1089#1077#1084#1100#1080' '#8211' 2; '#1086#1076#1080#1085' ('#1086#1076#1085#1072') '#8211' 3; ' +
            #1087#1088#1086#1078#1080#1074#1072#1083'('#1072') '#1073#1077#1079' '#1089#1077#1084#1100#1080' '#8211' 4')
        ParentFont = False
      end
      object Memo70: TfrxMemoView
        Left = 7.559060000000000000
        Top = 684.094930000000000000
        Width = 506.457020000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          
            '18. '#1063#1072#1089#1090#1100' '#1095#1083#1077#1085#1086#1074' '#1089#1077#1084#1100#1080' '#1091#1078#1077' '#1087#1088#1086#1078#1080#1074#1072#1077#1090' '#1087#1086' '#1085#1086#1074#1086#1084#1091' '#1084#1077#1089#1090#1091' '#1078#1080#1090#1077#1083#1100#1089#1090#1074#1072':' +
            ' '#1076#1072' '#8211' 1; '#1085#1077#1090' '#8211' 2')
        ParentFont = False
      end
      object Memo71: TfrxMemoView
        Left = 3.779530000000000000
        Top = 714.331170000000000000
        Width = 506.457020000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1057#1074#1077#1076#1077#1085#1080#1103' '#1087#1088#1086#1074#1077#1088#1080#1083' '#1080' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1102' '#1086#1092#1086#1088#1084#1080#1083)
        ParentFont = False
      end
      object Memo72: TfrxMemoView
        Left = 7.559060000000000000
        Top = 744.567410000000000000
        Width = 506.457020000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '('#1092#1072#1084#1080#1083#1080#1103' '#1080' '#1076#1086#1083#1078#1085#1086#1089#1090#1100' '#1086#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1086#1075#1086' '#1079#1072' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1102')')
        ParentFont = False
      end
      object Memo73: TfrxMemoView
        Left = 445.984540000000000000
        Top = 778.583180000000000000
        Width = 56.692950000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '('#1055#1086#1076#1087#1080#1089#1100')')
        ParentFont = False
      end
      object Memo74: TfrxMemoView
        Left = 22.677180000000000000
        Top = 782.362710000000000000
        Width = 291.023810000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          
            '"                  "                                            ' +
            '                         '#1075'.')
        ParentFont = False
      end
      object Line19: TfrxLineView
        Left = 34.015770000000000000
        Top = 797.480830000000000000
        Width = 49.133890000000000000
        ShowHint = False
        Diagonal = True
      end
      object Line20: TfrxLineView
        Left = 98.267780000000000000
        Top = 797.480830000000000000
        Width = 124.724490000000000000
        ShowHint = False
        Diagonal = True
      end
      object Line21: TfrxLineView
        Left = 230.551330000000000000
        Top = 797.480830000000000000
        Width = 60.472480000000000000
        ShowHint = False
        Diagonal = True
      end
      object Line22: TfrxLineView
        Top = 748.346940000000000000
        Width = 461.102660000000000000
        ShowHint = False
        Diagonal = True
      end
    end
  end
  object CurrOperationfrxDBDS: TfrxDBDataset
    UserName = 'CurrOperationfrxDBDS'
    CloseDataSource = False
    DataSet = DataConnection.PersonOperationsADODS
    BCDToCurrency = False
    Left = 224
    Top = 248
  end
  object CurrOpIncomeRegGroundfrxDBDS: TfrxDBDataset
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    UserName = 'CurrOpIncomeRegGroundfrxDBDS'
    CloseDataSource = False
    DataSet = DataConnection.CurrOpIncomeRegGroundADODS
    BCDToCurrency = False
    Left = 224
    Top = 304
  end
  object CurrOpIncomeRegOwnerPersfrxDBDS: TfrxDBDataset
    UserName = 'CurrOpIncomeRegOwnerPersfrxDBDS'
    CloseDataSource = False
    DataSet = DataConnection.CurrOpIncomeRegOwnerPersADODS
    BCDToCurrency = False
    Left = 224
    Top = 360
  end
  object CurrOpLocationRegAdrfrxDBDS: TfrxDBDataset
    UserName = 'CurrOpLocationRegAdrfrxDBDS'
    CloseDataSource = False
    DataSet = DataConnection.CurrOpLocationRegAdrADODS
    BCDToCurrency = False
    Left = 224
    Top = 416
  end
  object CurrOpIncomeRegIdentDocfrxDBDS: TfrxDBDataset
    UserName = 'CurrOpIncomeRegIdentDocfrxDBDS'
    CloseDataSource = False
    DataSet = DataConnection.CurrOpIncomeRegIdentDocADODS
    BCDToCurrency = False
    Left = 224
    Top = 472
  end
  object CurrOpIncomeOwnerIdentDocfrxDBDS: TfrxDBDataset
    UserName = 'CurrOpIncomeOwnerIdentDocfrxDBDS'
    CloseDataSource = False
    DataSet = DataConnection.CurrOpIncomeOwnerIdentDocADODS
    BCDToCurrency = False
    Left = 384
    Top = 248
  end
  object ResideRegStatfrxRepF6: TfrxReport
    Version = '4.12'
    DotMatrixReport = False
    EngineOptions.TempDir = 'C:\DEVELOP(1)\Sources\FMS\reports'
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Maximized = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41047.458519803200000000
    ReportOptions.LastChange = 41147.848818912040000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Button1OnClick(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'begin'
      '                                            '
      'end.')
    OnPreview = ResideRegStatfrxRepF6Preview
    OnPrintReport = ResideRegStatfrxRepF6PrintReport
    OnLoadTemplate = ResidingRegStatWithTermfrxRepF6LoadTemplate
    Left = 224
    Top = 80
    Datasets = <
      item
        DataSet = ResideRegStatfrxRepF6.BaseDocADOQ
        DataSetName = 'BaseDocADOQ'
      end
      item
        DataSet = CurrOperationfrxDBDS
        DataSetName = 'CurrOperationfrxDBDS'
      end
      item
        DataSet = ResideRegStatfrxRepF6.MoveFromAdrADOQ
        DataSetName = 'MoveFromAdrADOQ'
      end
      item
        DataSet = ResideRegStatfrxRepF6.OwnerIdentityADOQ
        DataSetName = 'OwnerIdentityADOQ'
      end
      item
        DataSet = ResideRegStatfrxRepF6.OwnerPersonADOQ
        DataSetName = 'OwnerPersonADOQ'
      end
      item
        DataSet = PersonsfrxDBDS
        DataSetName = 'PersonsfrxDBDS'
      end
      item
        DataSet = ResideRegStatfrxRepF6.ResidingPlaceAdrADOQuery
        DataSetName = 'ResidingPlaceAdrADOQuery'
      end
      item
        DataSet = ResideRegStatfrxRepF6.ConsoulAllNameADOQ
        DataSetName = 'ConsoulAllNameADOQ'
      end
      item
        DataSet = ResideRegStatfrxRepF6.OwnerAllNameADOQ
        DataSetName = 'OwnerAllNameADOQ'
      end
      item
        DataSet = ResideRegStatfrxRepF6.ConsoulPersonADOQ
        DataSetName = 'ConsoulPersonADOQ'
      end
      item
        DataSet = ResideRegStatfrxRepF6.ConsoulIdentDocADOQ
        DataSetName = 'ConsoulIdentDocADOQ'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
      object MoveFromAdrADOQ: TfrxADOQuery
        UserName = 'MoveFromAdrADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        Master = CurrOperationfrxDBDS
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select * from OP_ADR_DATA where'
          
            'ELINK_CODE=3 AND ACT_REG_ID=:OP_ID                              ' +
            '                                          ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 80
        pTop = 24
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
      object OwnerPersonADOQ: TfrxADOQuery
        UserName = 'OwnerPersonADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        Master = CurrOperationfrxDBDS
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select * from OP_PERSONAL_DATA where'
          
            'ELINK_CODE=1 AND ACT_REG_ID=:OP_ID                              ' +
            '                                          ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 80
        pTop = 76
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
      object BaseDocADOQ: TfrxADOQuery
        UserName = 'BaseDocADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        Master = CurrOperationfrxDBDS
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select * from OP_DOC_DATA where'
          
            'ELINK_CODE=2 AND ACT_REG_ID=:OP_ID                              ' +
            '                                          ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 80
        pTop = 128
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
      object ResidingPlaceAdrADOQuery: TfrxADOQuery
        UserName = 'ResidingPlaceAdrADOQuery'
        CloseDataSource = True
        BCDToCurrency = False
        Master = CurrOperationfrxDBDS
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select * from OP_ADR_DATA where'
          
            'ELINK_CODE=129 AND ACT_REG_ID=:OP_ID                            ' +
            '                                            ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 80
        pTop = 180
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
      object OwnerIdentityADOQ: TfrxADOQuery
        UserName = 'OwnerIdentityADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        Master = CurrOperationfrxDBDS
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select * from OP_DOC_DATA where'
          
            'ELINK_CODE=7 AND ACT_REG_ID=:OP_ID                              ' +
            '                                          ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 80
        pTop = 232
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
      object ConsoulAllNameADOQ: TfrxADOQuery
        UserName = 'ConsoulAllNameADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select ael.AEL_AS_ID, ael.ACT_REG_ID,'
          ' ael.AEL_LINK_TYPE_ID, enl.ELINK_TYPE,'
          'ael.STATIC_DATA'
          'from AEL_ASSOC ael LEFT JOIN ENTLINKS enl '
          'ON (ael.AEL_LINK_TYPE_ID=enl.ELINK_ID) '
          'WHERE enl.ELINK_TYPE=7 AND ENL.ELINK_CODE=151      '
          'AND ael.ACT_REG_ID=:OP_ID                           ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 240
        pTop = 24
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
      object OwnerAllNameADOQ: TfrxADOQuery
        UserName = 'OwnerAllNameADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select ael.AEL_AS_ID, ael.ACT_REG_ID,'
          ' ael.AEL_LINK_TYPE_ID, enl.ELINK_TYPE,'
          'ael.STATIC_DATA'
          'from AEL_ASSOC ael LEFT JOIN ENTLINKS enl '
          'ON (ael.AEL_LINK_TYPE_ID=enl.ELINK_ID) '
          'WHERE enl.ELINK_TYPE=7 AND ENL.ELINK_CODE=152        '
          'AND ael.ACT_REG_ID=:OP_ID                           ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 240
        pTop = 76
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
      object ConsoulPersonADOQ: TfrxADOQuery
        UserName = 'ConsoulPersonADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        Master = CurrOperationfrxDBDS
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select * from OP_PERSONAL_DATA where'
          
            'ELINK_CODE=149 AND ACT_REG_ID=:OP_ID                            ' +
            '                                            ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 240
        pTop = 128
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
      object ConsoulIdentDocADOQ: TfrxADOQuery
        UserName = 'ConsoulIdentDocADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'DOC_ID'
            DataType = ftInteger
            Expression = '<ConsoulPersonADOQ."IDENTITY_DOC_ID">'
          end>
        SQL.Strings = (
          
            'SELECT * FROM DOCS_VIEW WHERE DOC_ID=:DOC_ID                    ' +
            '                                                         ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 240
        pTop = 180
        Parameters = <
          item
            Name = 'DOC_ID'
            DataType = ftInteger
            Expression = '<ConsoulPersonADOQ."IDENTITY_DOC_ID">'
          end>
      end
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 20.000000000000000000
      RightMargin = 15.000000000000000000
      TopMargin = 15.000000000000000000
      BottomMargin = 10.000000000000000000
      object Memo1: TfrxMemoView
        Left = 109.606370000000000000
        Top = 15.118120000000000000
        Width = 427.086890000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          #1047#1040#1071#1042#1051#1045#1053#1048#1045' '#1054' '#1056#1045#1043#1048#1057#1058#1056#1040#1062#1048#1048' '#1055#1054' '#1052#1045#1057#1058#1059' '#1046#1048#1058#1045#1051#1068#1057#1058#1042#1040)
        ParentFont = False
      end
      object Memo2: TfrxMemoView
        Left = 597.165740000000000000
        Width = 60.472480000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1060#1086#1088#1084#1072' '#8470'6')
        ParentFont = False
      end
      object Memo3: TfrxMemoView
        Left = 37.795300000000000000
        Top = 37.795300000000000000
        Width = 170.078850000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1042' '#1086#1088#1075#1072#1085' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1086#1085#1085#1086#1075#1086' '#1091#1095#1077#1090#1072)
        ParentFont = False
      end
      object Line1: TfrxLineView
        Left = 211.653680000000000000
        Top = 52.913420000000000000
        Width = 449.764070000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line2: TfrxLineView
        Top = 68.031540000000000000
        Width = 661.417750000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo4: TfrxMemoView
        Top = 68.031540000000000000
        Width = 15.118120000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1086#1090)
        ParentFont = False
      end
      object Line3: TfrxLineView
        Left = 15.118120000000000000
        Top = 83.149660000000000000
        Width = 646.299630000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo5: TfrxMemoView
        Left = 257.008040000000000000
        Top = 83.149660000000000000
        Width = 207.874150000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '('#1092#1072#1084#1080#1083#1080#1103', '#1080#1084#1103', '#1086#1090#1095#1077#1089#1090#1074#1086', '#1076#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103')')
        ParentFont = False
      end
      object Memo6: TfrxMemoView
        Top = 94.488250000000000000
        Width = 71.811070000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1055#1088#1080#1073#1099#1083'('#1072') '#1080#1079)
        ParentFont = False
      end
      object Line4: TfrxLineView
        Left = 75.590600000000000000
        Top = 105.826840000000000000
        Width = 585.827150000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo7: TfrxMemoView
        Left = 219.212740000000000000
        Top = 105.826840000000000000
        Width = 306.141930000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          
            '('#1091#1082#1072#1079#1072#1090#1100' '#1090#1086#1095#1085#1099#1081' '#1072#1076#1088#1077#1089' '#1084#1077#1089#1090#1072' '#1078#1080#1090#1077#1083#1100#1089#1090#1074#1072' '#1087#1088#1080#1073#1099#1074#1096#1077#1075#1086'('#1077#1081') '#1075#1088#1072#1078#1076#1072#1085#1080#1085#1072 +
            '('#1082#1080'))')
        ParentFont = False
      end
      object Memo8: TfrxMemoView
        Top = 117.165430000000000000
        Width = 132.283550000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1047#1072#1082#1086#1085#1085#1099#1081' '#1087#1088#1077#1076#1089#1090#1072#1074#1080#1090#1077#1083#1100)
        ParentFont = False
      end
      object Line5: TfrxLineView
        Left = 136.063080000000000000
        Top = 132.283550000000000000
        Width = 525.354670000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo9: TfrxMemoView
        Left = 313.700990000000000000
        Top = 132.283550000000000000
        Width = 170.078850000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '('#1091#1082#1072#1079#1072#1090#1100': '#1086#1090#1077#1094', '#1084#1072#1090#1100', '#1086#1087#1077#1082#1091#1085', '#1087#1086#1087#1077#1095#1080#1090#1077#1083#1100',')
        ParentFont = False
      end
      object Line6: TfrxLineView
        Top = 154.960730000000000000
        Width = 661.417750000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo10: TfrxMemoView
        Left = 272.126160000000000000
        Top = 154.960730000000000000
        Width = 120.944960000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1060'.'#1048'.'#1054'., '#1087#1072#1089#1087#1086#1088#1090#1085#1099#1077' '#1076#1072#1085#1085#1099#1077')')
        ParentFont = False
      end
      object Memo11: TfrxMemoView
        Top = 166.299320000000000000
        Width = 181.417440000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1046#1080#1083#1086#1077' '#1087#1086#1084#1077#1097#1077#1085#1080#1077' '#1087#1088#1077#1076#1086#1089#1090#1072#1074#1083#1077#1085#1086)
        ParentFont = False
      end
      object Line7: TfrxLineView
        Left = 185.196970000000000000
        Top = 181.417440000000000000
        Width = 476.220780000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo12: TfrxMemoView
        Left = 268.346630000000000000
        Top = 177.637910000000000000
        Width = 317.480520000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          
            '('#1091#1082#1072#1079#1072#1090#1100' '#1060'.'#1048'.'#1054'. '#1083#1080#1094#1072', '#1087#1088#1077#1076#1086#1089#1090#1072#1074#1080#1074#1096#1077#1075#1086' '#1078#1080#1083#1086#1077' '#1087#1086#1084#1077#1097#1077#1085#1080#1077', '#1089#1090#1077#1087#1077#1085#1100' '#1088 +
            #1086#1076#1089#1090#1074#1072')')
        ParentFont = False
      end
      object Memo13: TfrxMemoView
        Top = 204.094620000000000000
        Width = 71.811070000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1085#1072' '#1086#1089#1085#1086#1074#1072#1085#1080#1080)
        ParentFont = False
      end
      object Line8: TfrxLineView
        Top = 204.094620000000000000
        Width = 661.417750000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line9: TfrxLineView
        Left = 75.590600000000000000
        Top = 219.212740000000000000
        Width = 585.827150000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo14: TfrxMemoView
        Left = 120.944960000000000000
        Top = 219.212740000000000000
        Width = 498.897960000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          
            '('#1076#1086#1082#1091#1084#1077#1085#1090', '#1103#1074#1083#1103#1102#1097#1080#1081#1089#1103' '#1074' '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1080' '#1089' '#1078#1080#1083#1080#1097#1085#1099#1084' '#1079#1072#1082#1086#1085#1086#1076#1072#1090#1077#1083#1100#1089#1090#1074#1086 +
            #1084' '#1056#1086#1089#1089#1080#1081#1089#1082#1086#1081' '#1060#1077#1076#1077#1088#1072#1094#1080#1080' '#1086#1089#1085#1086#1074#1072#1085#1080#1077#1084' '#1076#1083#1103' '#1074#1089#1077#1083#1077#1085#1080#1103')')
        ParentFont = False
      end
      object Line10: TfrxLineView
        Top = 241.889920000000000000
        Width = 661.417750000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo15: TfrxMemoView
        Left = 3.779530000000000000
        Top = 245.669450000000000000
        Width = 56.692950000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1087#1086' '#1072#1076#1088#1077#1089#1091':')
        ParentFont = False
      end
      object Line11: TfrxLineView
        Left = 60.472480000000000000
        Top = 260.787570000000000000
        Width = 321.260050000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo16: TfrxMemoView
        Left = 381.732530000000000000
        Top = 245.669450000000000000
        Width = 41.574830000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          ', '#1091#1083#1080#1094#1072)
        ParentFont = False
      end
      object Line12: TfrxLineView
        Left = 430.866420000000000000
        Top = 260.787570000000000000
        Width = 230.551330000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo17: TfrxMemoView
        Left = 147.401670000000000000
        Top = 257.008040000000000000
        Width = 181.417440000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '('#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1085#1072#1089#1077#1083#1077#1085#1085#1086#1075#1086' '#1087#1091#1085#1082#1090#1072')')
        ParentFont = False
      end
      object Memo18: TfrxMemoView
        Left = 3.779530000000000000
        Top = 272.126160000000000000
        Width = 26.456710000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1076#1086#1084)
        ParentFont = False
      end
      object Line13: TfrxLineView
        Left = 26.456710000000000000
        Top = 287.244280000000000000
        Width = 177.637910000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo19: TfrxMemoView
        Left = 204.094620000000000000
        Top = 272.126160000000000000
        Width = 37.795300000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          ', '#1082#1086#1088#1087'.')
        ParentFont = False
      end
      object Line14: TfrxLineView
        Left = 241.889920000000000000
        Top = 287.244280000000000000
        Width = 181.417440000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo20: TfrxMemoView
        Left = 427.086890000000000000
        Top = 272.126160000000000000
        Width = 56.692950000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          ', '#1082#1074#1072#1088#1090#1080#1088#1072)
        ParentFont = False
      end
      object Line15: TfrxLineView
        Left = 483.779840000000000000
        Top = 287.244280000000000000
        Width = 177.637910000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo21: TfrxMemoView
        Left = 3.779530000000000000
        Top = 287.244280000000000000
        Width = 222.992270000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1044#1086#1082#1091#1084#1077#1085#1090', '#1091#1076#1086#1089#1090#1086#1074#1077#1088#1103#1102#1097#1080#1081' '#1083#1080#1095#1085#1086#1089#1090#1100': '#1074#1080#1076)
        ParentFont = False
      end
      object Line16: TfrxLineView
        Left = 230.551330000000000000
        Top = 302.362400000000000000
        Width = 185.196970000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line17: TfrxLineView
        Left = 445.984540000000000000
        Top = 302.362400000000000000
        Width = 90.708720000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line18: TfrxLineView
        Left = 551.811380000000000000
        Top = 302.362400000000000000
        Width = 109.606370000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo22: TfrxMemoView
        Left = 411.968770000000000000
        Top = 287.244280000000000000
        Width = 34.015770000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1089#1077#1088#1080#1103)
        ParentFont = False
      end
      object Memo23: TfrxMemoView
        Left = 536.693260000000000000
        Top = 287.244280000000000000
        Width = 15.118120000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #8470)
        ParentFont = False
      end
      object Memo24: TfrxMemoView
        Left = 3.779530000000000000
        Top = 302.362400000000000000
        Width = 37.795300000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1074#1099#1076#1072#1085)
        ParentFont = False
      end
      object Line19: TfrxLineView
        Left = 37.795300000000000000
        Top = 317.480520000000000000
        Width = 487.559370000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo25: TfrxMemoView
        Left = 529.134200000000000000
        Top = 302.362400000000000000
        Width = 26.456710000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1050#1086#1076)
        ParentFont = False
      end
      object Line20: TfrxLineView
        Left = 555.590910000000000000
        Top = 317.480520000000000000
        Width = 105.826840000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo26: TfrxMemoView
        Left = 207.874150000000000000
        Top = 317.480520000000000000
        Width = 151.181200000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '('#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1088#1075#1072#1085#1072', '#1091#1095#1088#1077#1078#1076#1077#1085#1080#1103')')
        ParentFont = False
      end
      object Memo27: TfrxMemoView
        Left = 3.779530000000000000
        Top = 340.157700000000000000
        Width = 113.385900000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080' "          "')
        ParentFont = False
      end
      object Memo28: TfrxMemoView
        Left = 272.126160000000000000
        Top = 340.157700000000000000
        Width = 11.338590000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1075'.')
        ParentFont = False
      end
      object Line21: TfrxLineView
        Left = 79.370130000000000000
        Top = 355.275820000000000000
        Width = 30.236240000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line22: TfrxLineView
        Left = 120.944960000000000000
        Top = 355.275820000000000000
        Width = 98.267780000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line23: TfrxLineView
        Left = 226.771800000000000000
        Top = 355.275820000000000000
        Width = 41.574830000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo29: TfrxMemoView
        Top = 362.834880000000000000
        Width = 355.275820000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1055#1086#1076#1087#1080#1089#1100' '#1079#1072#1103#1074#1080#1090#1077#1083#1103', '#1079#1072#1082#1086#1085#1085#1086#1075#1086' '#1087#1088#1077#1076#1089#1090#1072#1074#1080#1090#1077#1083#1103' ('#1085#1077#1085#1091#1078#1085#1086#1077' '#1079#1072#1095#1077#1088#1082#1085#1091#1090#1100')')
        ParentFont = False
      end
      object Line24: TfrxLineView
        Left = 438.425480000000000000
        Top = 377.953000000000000000
        Width = 222.992270000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo30: TfrxMemoView
        Left = 415.748300000000000000
        Top = 385.512060000000000000
        Width = 71.811070000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1044#1072#1090#1072' "          "')
        ParentFont = False
      end
      object Line25: TfrxLineView
        Left = 449.764070000000000000
        Top = 400.630180000000000000
        Width = 30.236240000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line26: TfrxLineView
        Left = 491.338900000000000000
        Top = 400.630180000000000000
        Width = 98.267780000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line27: TfrxLineView
        Left = 600.945270000000000000
        Top = 400.630180000000000000
        Width = 41.574830000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo31: TfrxMemoView
        Top = 408.189240000000000000
        Width = 434.645950000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          
            #1042#1089#1077#1083#1077#1085#1080#1077' '#1087#1088#1086#1080#1079#1074#1077#1076#1077#1085#1086' '#1074' '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1080' '#1089' '#1079#1072#1082#1086#1085#1086#1076#1072#1090#1077#1083#1100#1089#1090#1074#1086#1084' '#1056#1086#1089#1089#1080#1081#1089#1082 +
            #1086#1081' '#1060#1077#1076#1077#1088#1072#1094#1080#1080'.')
        ParentFont = False
      end
      object Memo32: TfrxMemoView
        Top = 423.307360000000000000
        Width = 268.346630000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1055#1086#1076#1087#1080#1089#1100' '#1083#1080#1094#1072', '#1087#1088#1077#1076#1086#1089#1090#1072#1074#1080#1074#1096#1077#1075#1086' '#1078#1080#1083#1086#1077' '#1087#1086#1084#1077#1097#1077#1085#1080#1077)
        ParentFont = False
      end
      object Memo33: TfrxMemoView
        Top = 438.425480000000000000
        Width = 325.039580000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1055#1086#1076#1087#1080#1089#1100' '#1083#1080#1094#1072', '#1087#1088#1077#1076#1086#1089#1090#1072#1074#1080#1074#1096#1077#1075#1086' '#1078#1080#1083#1086#1077' '#1087#1086#1084#1077#1097#1077#1085#1080#1077', '#1079#1072#1074#1077#1088#1103#1102)
        ParentFont = False
      end
      object Line28: TfrxLineView
        Left = 268.346630000000000000
        Top = 438.425480000000000000
        Width = 393.071120000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo34: TfrxMemoView
        Left = 45.354360000000000000
        Top = 472.441250000000000000
        Width = 162.519790000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '('#1087#1086#1076#1087#1080#1089#1100' '#1080' '#1060'.'#1048'.'#1054'. '#1076#1086#1083#1078#1085#1086#1089#1090#1085#1086#1075#1086' '#1083#1080#1094#1072')')
        ParentFont = False
      end
      object Line29: TfrxLineView
        Left = 3.779530000000000000
        Top = 472.441250000000000000
        Width = 245.669450000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo35: TfrxMemoView
        Left = 321.260050000000000000
        Top = 472.441250000000000000
        Width = 22.677180000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1052'.'#1055'.')
        ParentFont = False
      end
      object Memo36: TfrxMemoView
        Left = 411.968770000000000000
        Top = 457.323130000000000000
        Width = 45.354360000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '"          "')
        ParentFont = False
      end
      object Line30: TfrxLineView
        Left = 415.748300000000000000
        Top = 472.441250000000000000
        Width = 34.015770000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line31: TfrxLineView
        Left = 468.661720000000000000
        Top = 472.441250000000000000
        Width = 102.047310000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line32: TfrxLineView
        Left = 582.047620000000000000
        Top = 472.441250000000000000
        Width = 34.015770000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo37: TfrxMemoView
        Left = 619.842920000000000000
        Top = 457.323130000000000000
        Width = 11.338590000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1075'.')
        ParentFont = False
      end
      object Memo38: TfrxMemoView
        Left = 642.520100000000000000
        Top = 385.512060000000000000
        Width = 11.338590000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1075'.')
        ParentFont = False
      end
      object Memo39: TfrxMemoView
        Left = 3.779530000000000000
        Top = 521.575140000000000000
        Width = 45.354360000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          ' "          "')
        ParentFont = False
      end
      object Line33: TfrxLineView
        Left = 11.338590000000000000
        Top = 536.693260000000000000
        Width = 30.236240000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line34: TfrxLineView
        Left = 60.472480000000000000
        Top = 536.693260000000000000
        Width = 90.708720000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line35: TfrxLineView
        Left = 158.740260000000000000
        Top = 536.693260000000000000
        Width = 30.236240000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo40: TfrxMemoView
        Left = 188.976500000000000000
        Top = 521.575140000000000000
        Width = 11.338590000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1075'.')
        ParentFont = False
      end
      object Line36: TfrxLineView
        Left = 245.669450000000000000
        Top = 536.693260000000000000
        Width = 415.748300000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo41: TfrxMemoView
        Left = 313.700990000000000000
        Top = 536.693260000000000000
        Width = 283.464750000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          
            '('#1060'.'#1048'.'#1054'., '#1087#1086#1076#1087#1080#1089#1100' '#1076#1086#1083#1078#1085#1086#1089#1090#1085#1086#1075#1086' '#1083#1080#1094#1072' '#1086#1088#1075#1072#1085#1072' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1086#1085#1085#1086#1075#1086' '#1091#1095#1077#1090#1072 +
            ')')
        ParentFont = False
      end
      object Memo42: TfrxMemoView
        Top = 483.779840000000000000
        Width = 102.047310000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1055#1088#1080#1085#1103#1090#1086#1077' '#1088#1077#1096#1077#1085#1080#1077)
        ParentFont = False
      end
      object Line37: TfrxLineView
        Left = 105.826840000000000000
        Top = 498.897960000000000000
        Width = 555.590910000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line38: TfrxLineView
        Top = 514.016080000000000000
        Width = 661.417750000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo43: TfrxMemoView
        Top = 555.590910000000000000
        Width = 608.504330000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          
            #1042#1099#1076#1072#1085#1086' '#1089#1074#1080#1076#1077#1090#1077#1083#1100#1089#1090#1074#1086' '#1086' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080' '#1087#1086' '#1084#1077#1089#1090#1091' '#1078#1080#1090#1077#1083#1100#1089#1090#1074#1072' ('#1076#1083#1103' '#1075#1088#1072#1078 +
            #1076#1072#1085', '#1085#1077' '#1076#1086#1089#1090#1080#1075#1096#1080#1093' 14-'#1083#1077#1090#1085#1077#1075#1086' '#1074#1086#1079#1088#1072#1089#1090#1072') '#8470)
        ParentFont = False
      end
      object Line39: TfrxLineView
        Left = 608.504330000000000000
        Top = 570.709030000000000000
        Width = 49.133890000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo74: TfrxMemoView
        Left = 211.653680000000000000
        Top = 37.795300000000000000
        Width = 449.764070000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[FMS_BRANCH_NAME_DEFAULT]')
        ParentFont = False
      end
      object Memo75: TfrxMemoView
        Left = 79.370130000000000000
        Top = 90.708720000000000000
        Width = 582.047620000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[MoveFromAdrADOQ."ADR_FULL_NAME"]')
        ParentFont = False
      end
      object Memo76: TfrxMemoView
        Left = 15.118120000000000000
        Top = 68.031540000000000000
        Width = 646.299630000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          
            '[PersonsfrxDBDS."LAST_NAME"] [PersonsfrxDBDS."FIRST_NAME"] [Pers' +
            'onsfrxDBDS."SURNAME"], [PersonsfrxDBDS."BIRTHDATE"] '#1075'.'#1088'.')
        ParentFont = False
      end
      object Memo78: TfrxMemoView
        Left = 75.590600000000000000
        Top = 204.094620000000000000
        Width = 585.827150000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[BaseDocADOQ."DOC_FULL_NAME"]')
        ParentFont = False
      end
      object Memo79: TfrxMemoView
        Left = 60.472480000000000000
        Top = 245.669450000000000000
        Width = 321.260050000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ResidingPlaceAdrADOQuery."SETTLEM_NAME"]')
        ParentFont = False
      end
      object Memo80: TfrxMemoView
        Left = 430.866420000000000000
        Top = 245.669450000000000000
        Width = 230.551330000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ResidingPlaceAdrADOQuery."STREET_NAME"]')
        ParentFont = False
      end
      object Memo81: TfrxMemoView
        Left = 26.456710000000000000
        Top = 272.126160000000000000
        Width = 177.637910000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          
            '[ResidingPlaceAdrADOQuery."HOUSE_NUM"] [IIF(Length(<ResidingPlac' +
            'eAdrADOQuery."LITER">)>0,('#39#1083#1080#1090#1077#1088' '#39'+<ResidingPlaceAdrADOQuery."LI' +
            'TER">),'#39#39')]')
        ParentFont = False
      end
      object Memo82: TfrxMemoView
        Left = 241.889920000000000000
        Top = 272.126160000000000000
        Width = 181.417440000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ResidingPlaceAdrADOQuery."CORPUS"]')
        ParentFont = False
      end
      object Memo83: TfrxMemoView
        Left = 483.779840000000000000
        Top = 272.126160000000000000
        Width = 177.637910000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[ResidingPlaceAdrADOQuery."APARTMENT_NUM"]')
        ParentFont = False
      end
      object Memo84: TfrxMemoView
        Left = 226.771800000000000000
        Top = 287.244280000000000000
        Width = 181.417440000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '[OwnerIdentityADOQ."DOC_TYPE_NAME"]')
        ParentFont = False
      end
      object Memo85: TfrxMemoView
        Left = 445.984540000000000000
        Top = 287.244280000000000000
        Width = 90.708720000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '[OwnerIdentityADOQ."DOC_SERIE"]')
        ParentFont = False
      end
      object Memo86: TfrxMemoView
        Left = 555.590910000000000000
        Top = 287.244280000000000000
        Width = 105.826840000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '[OwnerIdentityADOQ."DOC_NUM"]')
        ParentFont = False
      end
      object Memo87: TfrxMemoView
        Left = 41.574830000000000000
        Top = 302.362400000000000000
        Width = 483.779840000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '[OwnerIdentityADOQ."DOC_BRANCH_NAME"]')
        ParentFont = False
      end
      object Memo88: TfrxMemoView
        Left = 555.590910000000000000
        Top = 302.362400000000000000
        Width = 105.826840000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '[OwnerIdentityADOQ."DOC_BRANCHE_CODE"]')
        ParentFont = False
      end
      object Memo89: TfrxMemoView
        Left = 75.590600000000000000
        Top = 340.157700000000000000
        Width = 34.015770000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '[DayOf(<OwnerIdentityADOQ."DOC_CREATE_DATE">)]')
        ParentFont = False
      end
      object Memo90: TfrxMemoView
        Left = 117.165430000000000000
        Top = 340.157700000000000000
        Width = 102.047310000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '[MonthOf(<OwnerIdentityADOQ."DOC_CREATE_DATE">)]')
        ParentFont = False
      end
      object Memo91: TfrxMemoView
        Left = 222.992270000000000000
        Top = 340.157700000000000000
        Width = 49.133890000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '[YearOf(<OwnerIdentityADOQ."DOC_CREATE_DATE">)]')
        ParentFont = False
      end
      object Memo77: TfrxMemoView
        Top = 162.519790000000000000
        Width = 665.197280000000000000
        Height = 41.574830000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        LineSpacing = 4.000000000000000000
        Memo.UTF8W = (
          
            '                                                [OwnerAllNameADO' +
            'Q."STATIC_DATA"] [Uppercase(<OwnerPersonADOQ."LAST_NAME">)] [Upp' +
            'ercase(<OwnerPersonADOQ."FIRST_NAME">)] [Uppercase(<OwnerPersonA' +
            'DOQ."SURNAME">)]')
        ParentFont = False
      end
      object Memo93: TfrxMemoView
        Top = 113.385900000000000000
        Width = 665.197280000000000000
        Height = 41.574830000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        LineSpacing = 4.000000000000000000
        Memo.UTF8W = (
          
            '                                  [ConsoulAllNameADOQ."STATIC_DA' +
            'TA"] [Uppercase(<ConsoulPersonADOQ."LAST_NAME">)] [Uppercase(<Co' +
            'nsoulPersonADOQ."FIRST_NAME">)] [Uppercase(<ConsoulPersonADOQ."S' +
            'URNAME">)] [ConsoulPersonADOQ."BIRTHDATE"], [ConsoulIdentDocADOQ' +
            '."DOC_SERIE"] '#8470'[ConsoulIdentDocADOQ."DOC_NUM"], [ConsoulIdentDoc' +
            'ADOQ."DOC_BRANCHE_CODE"], [ConsoulIdentDocADOQ."DOC_BRANCH_NAME"' +
            '], [ConsoulIdentDocADOQ."DOC_CREATE_DATE"]')
        ParentFont = False
      end
    end
  end
  object RegistrationCardfrxRepF9: TfrxReport
    Version = '4.12'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Maximized = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41054.502009456000000000
    ReportOptions.LastChange = 41128.950482025470000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnPreview = RegistrationCardfrxRepF9Preview
    OnPrintReport = RegistrationCardfrxRepF9PrintReport
    Left = 72
    Top = 528
    Datasets = <
      item
        DataSet = CurrOperationfrxDBDS
        DataSetName = 'CurrOperationfrxDBDS'
      end
      item
        DataSet = PersonsfrxDBDS
        DataSetName = 'PersonsfrxDBDS'
      end
      item
        DataSet = RegistrationCardfrxRepF9.RegIdentDocADOQ
        DataSetName = 'RegIdentDocADOQ'
      end
      item
        DataSet = RegistrationCardfrxRepF9.ResidingPlaceAdrADOQ
        DataSetName = 'ResidingPlaceAdrADOQ'
      end
      item
        DataSet = RegistrationCardfrxRepF9.PersonViewDetailADOT
        DataSetName = 'PersonViewDetailADOT'
      end
      item
        DataSet = RegistrationCardfrxRepF9.ComeFromAdrADOQ
        DataSetName = 'ComeFromAdrADOQ'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
      object RegIdentDocADOQ: TfrxADOQuery
        UserName = 'RegIdentDocADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        Master = CurrOperationfrxDBDS
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select * from OP_DOC_DATA where'
          
            'ELINK_CODE=1 AND ACT_REG_ID=:OP_ID                              ' +
            '                                          ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 204
        pTop = 136
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
      object ResidingPlaceAdrADOQ: TfrxADOQuery
        UserName = 'ResidingPlaceAdrADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        Master = CurrOperationfrxDBDS
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select * from OP_ADR_DATA where'
          
            'ELINK_CODE=129 AND ACT_REG_ID=:OP_ID                            ' +
            '                                            ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 204
        pTop = 72
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
      object PersonViewDetailADOT: TfrxADOQuery
        UserName = 'PersonViewDetailADOT'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'PERSON_ID'
            DataType = ftInteger
            Expression = '<PersonsfrxDBDS."PERSON_ID">'
          end>
        SQL.Strings = (
          
            'SELECT * FROM PERSON_VIEW_DETAIL WHERE PERSON_ID=:PERSON_ID     ' +
            '                                                                ' +
            '                              ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 60
        pTop = 16
        Parameters = <
          item
            Name = 'PERSON_ID'
            DataType = ftInteger
            Expression = '<PersonsfrxDBDS."PERSON_ID">'
          end>
      end
      object ComeFromAdrADOQ: TfrxADOQuery
        UserName = 'ComeFromAdrADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        Master = CurrOperationfrxDBDS
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select * from OP_ADR_DATA where'
          
            'ELINK_CODE=3 AND ACT_REG_ID=:OP_ID                              ' +
            '                                          ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 204
        pTop = 16
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 210.000000000000000000
      PaperHeight = 150.000000000000000000
      PaperSize = 256
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object Memo29: TfrxMemoView
        Left = 684.094930000000000000
        Top = 7.559060000000000000
        Width = 71.811070000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1060#1086#1088#1084#1072' '#8470' 9')
        ParentFont = False
      end
      object ReportTitle1: TfrxReportTitle
        Height = 30.236240000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Memo28: TfrxMemoView
          Left = 268.346630000000000000
          Top = 11.338590000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1050#1040#1056#1058#1054#1063#1050#1040' '#1056#1045#1043#1048#1057#1058#1056#1040#1062#1048#1048)
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 287.244280000000000000
        Top = 71.811070000000000000
        Width = 755.906000000000000000
        object Memo50: TfrxMemoView
          Top = 11.338590000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            '1. '#1060#1072#1084#1080#1083#1080#1103)
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Top = 26.456710000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            '2. '#1048#1084#1103)
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Top = 41.574830000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            '3. '#1054#1090#1095#1077#1089#1090#1074#1086)
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 75.590600000000000000
          Top = 26.456710000000000000
          Width = 272.126160000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line2: TfrxLineView
          Left = 75.590600000000000000
          Top = 45.354360000000000000
          Width = 272.126160000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line3: TfrxLineView
          Left = 75.590600000000000000
          Top = 60.472480000000000000
          Width = 272.126160000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line4: TfrxLineView
          Left = 419.527830000000000000
          Top = 26.456710000000000000
          Width = 317.480520000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line5: TfrxLineView
          Left = 419.527830000000000000
          Top = 45.354360000000000000
          Width = 317.480520000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line6: TfrxLineView
          Left = 419.527830000000000000
          Top = 60.472480000000000000
          Width = 317.480520000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo3: TfrxMemoView
          Top = 64.252010000000000000
          Width = 132.283550000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            '4. '#1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103)
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 215.433210000000000000
          Top = 64.252010000000000000
          Width = 75.590600000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            '5. '#1052#1077#1089#1090#1086' '#1088#1086#1078#1076#1077#1085#1080#1103)
          ParentFont = False
        end
        object Line7: TfrxLineView
          Left = 491.338900000000000000
          Top = 98.267780000000000000
          Width = 245.669450000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo6: TfrxMemoView
          Left = 298.582870000000000000
          Top = 64.252010000000000000
          Width = 192.756030000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1086#1073#1083#1072#1089#1090#1100', '#1082#1088#1072#1081', '#1088#1077#1089#1087#1091#1073#1083#1080#1082#1072', '#1086#1082#1088#1091#1075)
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 298.582870000000000000
          Top = 94.488250000000000000
          Width = 192.756030000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1088#1072#1081#1086#1085)
          ParentFont = False
        end
        object Line8: TfrxLineView
          Left = 491.338900000000000000
          Top = 117.165430000000000000
          Width = 245.669450000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo8: TfrxMemoView
          Left = 298.582870000000000000
          Top = 120.944960000000000000
          Width = 192.756030000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1075#1086#1088#1086#1076', '#1087#1075#1090)
          ParentFont = False
        end
        object Line9: TfrxLineView
          Left = 491.338900000000000000
          Top = 139.842610000000000000
          Width = 245.669450000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Line10: TfrxLineView
          Top = 162.519790000000000000
          Width = 737.008350000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Line11: TfrxLineView
          Top = 64.252010000000000000
          Width = 737.008350000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Line12: TfrxLineView
          Left = 211.653680000000000000
          Top = 64.252010000000000000
          Height = 98.267780000000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Memo9: TfrxMemoView
          Left = 298.582870000000000000
          Top = 143.622140000000000000
          Width = 192.756030000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1089#1077#1083#1086', '#1076#1077#1088#1077#1074#1085#1103', '#1072#1091#1083)
          ParentFont = False
        end
        object Line13: TfrxLineView
          Left = 268.346630000000000000
          Top = 192.756030000000000000
          Width = 222.992270000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo10: TfrxMemoView
          Left = 75.590600000000000000
          Top = 173.858380000000000000
          Width = 192.756030000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1086#1073#1083#1072#1089#1090#1100', '#1082#1088#1072#1081', '#1088#1077#1089#1087#1091#1073#1083#1080#1082#1072', '#1086#1082#1088#1091#1075)
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 75.590600000000000000
          Top = 192.756030000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1088#1072#1081#1086#1085)
          ParentFont = False
        end
        object Line14: TfrxLineView
          Left = 113.385900000000000000
          Top = 215.433210000000000000
          Width = 377.953000000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo12: TfrxMemoView
          Left = 75.590600000000000000
          Top = 219.212740000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1075#1086#1088#1086#1076', '#1087#1075#1090)
          ParentFont = False
        end
        object Line15: TfrxLineView
          Left = 143.622140000000000000
          Top = 238.110390000000000000
          Width = 347.716760000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo13: TfrxMemoView
          Left = 75.590600000000000000
          Top = 241.889920000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1089#1077#1083#1086', '#1076#1077#1088#1077#1074#1085#1103', '#1072#1091#1083)
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 75.590600000000000000
          Top = 264.567100000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            '"_____" ___________ 20___ '#1075'.')
          ParentFont = False
        end
        object Line16: TfrxLineView
          Left = 185.196970000000000000
          Top = 260.787570000000000000
          Width = 306.141930000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo15: TfrxMemoView
          Top = 173.858380000000000000
          Width = 71.811070000000000000
          Height = 64.252010000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            '6. '#1054#1090#1082#1091#1076#1072' '#1080' '#1082#1086#1075#1076#1072' '#1087#1088#1080#1073#1099#1083)
          ParentFont = False
        end
        object Line17: TfrxLineView
          Left = 529.134200000000000000
          Top = 192.756030000000000000
          Width = 207.874150000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo16: TfrxMemoView
          Left = 498.897960000000000000
          Top = 173.858380000000000000
          Width = 18.897650000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1091#1083'.')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 498.897960000000000000
          Top = 192.756030000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1076#1086#1084)
          ParentFont = False
        end
        object Line18: TfrxLineView
          Left = 529.134200000000000000
          Top = 215.433210000000000000
          Width = 41.574830000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo18: TfrxMemoView
          Left = 574.488560000000000000
          Top = 192.756030000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1082#1086#1088#1087'.')
          ParentFont = False
        end
        object Line19: TfrxLineView
          Left = 612.283860000000000000
          Top = 215.433210000000000000
          Width = 45.354360000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo19: TfrxMemoView
          Left = 661.417750000000000000
          Top = 192.756030000000000000
          Width = 18.897650000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1082#1074'.')
          ParentFont = False
        end
        object Line20: TfrxLineView
          Left = 684.094930000000000000
          Top = 215.433210000000000000
          Width = 52.913420000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo20: TfrxMemoView
          Left = 506.457020000000000000
          Top = 245.669450000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            '"_____" ___________ 20___ '#1075'.')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 75.590600000000000000
          Top = 26.456710000000000000
          Width = 317.480520000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Uppercase(<PersonsfrxDBDS."FIRST_NAME">)]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 75.590600000000000000
          Top = 41.574830000000000000
          Width = 317.480520000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Uppercase(<PersonsfrxDBDS."SURNAME">)]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 491.338900000000000000
          Top = 60.472480000000000000
          Width = 245.669450000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            
              '[PersonViewDetailADOT."BIRTH_COUNT"], [IIF(Length(<PersonViewDet' +
              'ailADOT."REGION_NAME">)>0,UpperCase(<PersonViewDetailADOT."REGIO' +
              'N_NAME">),'#39#39')][IIF(Length(<PersonViewDetailADOT."REGION_NAME">)>' +
              '0,'#39#39',IIF(Pos('#39#1056#1045#1057#1055#39',Uppercase(<ResidingPlaceAdrADOQuery."STATE_S' +
              'HORT_FULL">))>0, Uppercase(<ResidingPlaceAdrADOQuery."STATE_SHOR' +
              'T_FULL">),'#39#39'))] [IIF(Length(<PersonViewDetailADOT."REGION_NAME">' +
              ')>0,'#39#39',Uppercase(<ResidingPlaceAdrADOQuery."STATE_NAME">))] [IIF' +
              '(Length(<PersonViewDetailADOT."REGION_NAME">)>0,'#39#39',IIF(Pos('#39#1056#1045#1057#1055 +
              #39',Uppercase(<ResidingPlaceAdrADOQuery."STATE_SHORT_FULL">))>0,'#39#39 +
              ',Uppercase(<ResidingPlaceAdrADOQuery."STATE_SHORT_FULL">)))]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 491.338900000000000000
          Top = 98.267780000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[UpperCase(<PersonViewDetailADOT."DISTRICT_NAME">)]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 491.338900000000000000
          Top = 120.944960000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            
              '[IIF(<PersonViewDetailADOT."ITS_CITY">=0, '#39' '#39',Uppercase(<PersonV' +
              'iewDetailADOT."SETTL_SHORT_FULL">+'#39' '#39'+<PersonViewDetailADOT."SET' +
              'TLEM_NAME">))]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 491.338900000000000000
          Top = 143.622140000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            
              '[IIF(<PersonViewDetailADOT."ITS_CITY">=0,Uppercase(<PersonViewDe' +
              'tailADOT."SETTL_SHORT_FULL">+'#39' '#39'+<PersonViewDetailADOT."SETTLEM_' +
              'NAME">),'#39' '#39')]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 264.567100000000000000
          Top = 173.858380000000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[IIF(Pos('#39#1056#1045#1057#1055#39',Uppercase(<ComeFromAdrADOQ."STATE_SHORT_FULL">))' +
              '>0, Uppercase(<ComeFromAdrADOQ."STATE_SHORT_FULL">),'#39#39')] [UpperC' +
              'ase(<ComeFromAdrADOQ."STATE_NAME">)] [IIF(Pos('#39#1056#1045#1057#1055#39',Uppercase(<' +
              'ComeFromAdrADOQ."STATE_SHORT_FULL">))>0,'#39#39',Uppercase(<ComeFromAd' +
              'rADOQ."STATE_SHORT_FULL">))]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 117.165430000000000000
          Top = 196.535560000000000000
          Width = 374.173470000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[UpperCase(<ComeFromAdrADOQ."DISTRICT_NAME">)]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 151.181200000000000000
          Top = 219.212740000000000000
          Width = 336.378170000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[IIF(<ComeFromAdrADOQ."ITS_CITY">=0, '#39' '#39',Uppercase(<ComeFromAdrA' +
              'DOQ."SETTL_SHORT_FULL">+'#39' '#39'+<ComeFromAdrADOQ."SETTLEM_NAME">))]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 188.976500000000000000
          Top = 241.889920000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[IIF(<ComeFromAdrADOQ."ITS_CITY">=0,Uppercase(<ComeFromAdrADOQ."' +
              'SETTL_SHORT_FULL">+'#39' '#39'+<ComeFromAdrADOQ."SETTLEM_NAME">),'#39' '#39')]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 529.134200000000000000
          Top = 173.858380000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[UpperCase(<ComeFromAdrADOQ."STREET_NAME">)]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 529.134200000000000000
          Top = 196.535560000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[IIF(<ComeFromAdrADOQ."HOUSE_NUM">=0,'#39#39',UpperCase(<ComeFromAdrAD' +
              'OQ."HOUSE_NUM">))]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 612.283860000000000000
          Top = 196.535560000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[IIF(Length(<ComeFromAdrADOQ."CORPUS">)=0,'#39'-'#39',UpperCase(<ComeFro' +
              'mAdrADOQ."CORPUS">))]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 684.094930000000000000
          Top = 196.535560000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[IIF(<ComeFromAdrADOQ."APARTMENT_NUM">=0,'#39#39',UpperCase(<ComeFromA' +
              'drADOQ."APARTMENT_NUM">))]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 75.590600000000000000
          Top = 7.559060000000000000
          Width = 317.480520000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Uppercase(<PersonsfrxDBDS."LAST_NAME">)]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Top = 83.149660000000000000
          Width = 207.874150000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            
              '[DayOf(<PersonsfrxDBDS."BIRTHDATE">)] [IIF(MonthOf(<PersonsfrxDB' +
              'DS."BIRTHDATE">)=1,'#39#1071#1053#1042#1040#1056#1071#39','#39#39')][IIF(MonthOf(<PersonsfrxDBDS."BI' +
              'RTHDATE">)=2,'#39#1060#1045#1042#1056#1040#1051#1071#39','#39#39')][IIF(MonthOf(<PersonsfrxDBDS."BIRTHDA' +
              'TE">)=3,'#39#1052#1040#1056#1058#1040#39','#39#39')][IIF(MonthOf(<PersonsfrxDBDS."BIRTHDATE">)=4' +
              ','#39#1040#1055#1056#1045#1051#1071#39','#39#39')][IIF(MonthOf(<PersonsfrxDBDS."BIRTHDATE">)=5,'#39#1052#1040#1071#39 +
              ','#39#39')][IIF(MonthOf(<PersonsfrxDBDS."BIRTHDATE">)=6,'#39#1048#1070#1053#1071#39','#39#39')][II' +
              'F(MonthOf(<PersonsfrxDBDS."BIRTHDATE">)=7,'#39#1048#1070#1051#1071#39','#39#39')][IIF(MonthO' +
              'f(<PersonsfrxDBDS."BIRTHDATE">)=8,'#39#1040#1042#1043#1059#1057#1058#1040#39','#39#39')][IIF(MonthOf(<Pe' +
              'rsonsfrxDBDS."BIRTHDATE">)=9,'#39#1057#1045#1053#1058#1071#1041#1056#1071#39','#39#39')][IIF(MonthOf(<Person' +
              'sfrxDBDS."BIRTHDATE">)=10,'#39#1054#1050#1058#1071#1041#1056#1071#39','#39#39')][IIF(MonthOf(<Personsfrx' +
              'DBDS."BIRTHDATE">)=11,'#39#1053#1054#1071#1041#1056#1071#39','#39#39')][IIF(MonthOf(<PersonsfrxDBDS.' +
              '"BIRTHDATE">)=12,'#39#1044#1045#1050#1040#1041#1056#1071#39','#39#39')] [YearOf(<PersonsfrxDBDS."BIRTHDA' +
              'TE">)] '#1043'.')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 60.472480000000000000
        Top = 536.693260000000000000
        Width = 755.906000000000000000
        object Memo22: TfrxMemoView
          Top = 15.118120000000000000
          Width = 94.488250000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            '8. '#1040#1076#1088#1077#1089' '#1084#1077#1089#1090#1072' '#1078#1080#1090#1077#1083#1100#1089#1090#1074#1072)
          ParentFont = False
        end
        object Line21: TfrxLineView
          Left = 245.669450000000000000
          Top = 34.015770000000000000
          Width = 491.338900000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Line22: TfrxLineView
          Left = 173.858380000000000000
          Top = 52.913420000000000000
          Width = 185.196970000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Line23: TfrxLineView
          Left = 396.850650000000000000
          Top = 52.913420000000000000
          Width = 64.252010000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Line24: TfrxLineView
          Left = 506.457020000000000000
          Top = 52.913420000000000000
          Width = 71.811070000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Line25: TfrxLineView
          Left = 604.724800000000000000
          Top = 52.913420000000000000
          Width = 132.283550000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo23: TfrxMemoView
          Left = 136.063080000000000000
          Top = 15.118120000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1085#1072#1089#1077#1083#1077#1085#1085#1099#1081' '#1087#1091#1085#1082#1090)
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 136.063080000000000000
          Top = 34.015770000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1091#1083#1080#1094#1072)
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 362.834880000000000000
          Top = 34.015770000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            ', '#1076#1086#1084)
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 464.882190000000000000
          Top = 34.015770000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            ', '#1082#1086#1088#1087'.')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 578.268090000000000000
          Top = 34.015770000000000000
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            ', '#1082#1074'.')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 177.637910000000000000
          Top = 34.015770000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[UpperCase(<ResidingPlaceAdrADOQ."STREET_NAME">)]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 404.409710000000000000
          Top = 34.015770000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            
              '[IIF(<ResidingPlaceAdrADOQ."HOUSE_NUM">=0,'#39#39',UpperCase(<Residing' +
              'PlaceAdrADOQ."HOUSE_NUM">))]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 506.457020000000000000
          Top = 34.015770000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            
              '[IIF(Length(<ResidingPlaceAdrADOQ."CORPUS">)=0,'#39'-'#39',UpperCase(<Re' +
              'sidingPlaceAdrADOQ."CORPUS">))]')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 612.283860000000000000
          Top = 34.015770000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[IIF(<ResidingPlaceAdrADOQ."APARTMENT_NUM">=0,'#39#39',UpperCase(<Resi' +
              'dingPlaceAdrADOQ."APARTMENT_NUM">))]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 249.448980000000000000
          Top = 15.118120000000000000
          Width = 487.559370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[UpperCase(<ResidingPlaceAdrADOQ."SETTL_SHORT_FULL">)] [UpperCas' +
              'e(<ResidingPlaceAdrADOQ."SETTLEM_NAME">)]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 657.638220000000000000
        Width = 755.906000000000000000
      end
      object MasterData1: TfrxMasterData
        Height = 34.015770000000000000
        Top = 480.000310000000000000
        Width = 755.906000000000000000
        DataSet = RegistrationCardfrxRepF9.RegIdentDocADOQ
        DataSetName = 'RegIdentDocADOQ'
        RowCount = 0
        object Memo60: TfrxMemoView
          Left = 3.779530000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = RegistrationCardfrxRepF9.RegIdentDocADOQ
          DataSetName = 'RegIdentDocADOQ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Uppercase(<RegIdentDocADOQ."DOC_TYPE_NAME">)]')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 173.858380000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = RegistrationCardfrxRepF9.RegIdentDocADOQ
          DataSetName = 'RegIdentDocADOQ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Uppercase(<RegIdentDocADOQ."DOC_SERIE">)]')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 241.889920000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = RegistrationCardfrxRepF9.RegIdentDocADOQ
          DataSetName = 'RegIdentDocADOQ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Uppercase(<RegIdentDocADOQ."DOC_NUM">)]')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 347.716760000000000000
          Width = 404.409710000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataSet = RegistrationCardfrxRepF9.RegIdentDocADOQ
          DataSetName = 'RegIdentDocADOQ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            
              '[Uppercase(<RegIdentDocADOQ."DOC_BRANCH_NAME">)] [Uppercase(<Reg' +
              'IdentDocADOQ."DOC_BRANCHE_CODE">)] [Uppercase(<RegIdentDocADOQ."' +
              'DOC_CREATE_DATE">)]')
          ParentFont = False
        end
        object Line35: TfrxLineView
          Top = 34.015770000000000000
          Width = 755.906000000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
      end
      object Header1: TfrxHeader
        Height = 37.795300000000000000
        Top = 419.527830000000000000
        Width = 755.906000000000000000
        object Memo56: TfrxMemoView
          Left = 37.795300000000000000
          Top = 18.897650000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1042#1080#1076)
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 170.078850000000000000
          Top = 18.897650000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1077#1088#1080#1103)
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 257.008040000000000000
          Top = 18.897650000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1086#1084#1077#1088)
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 366.614410000000000000
          Top = 18.897650000000000000
          Width = 389.291590000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1072#1082#1080#1084' '#1086#1088#1075#1072#1085#1086#1084', '#1091#1095#1088#1077#1078#1076#1077#1085#1080#1077#1084' '#1080' '#1082#1086#1075#1076#1072' '#1074#1099#1076#1072#1085)
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Top = 3.779530000000000000
          Width = 234.330860000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            '7. '#1044#1086#1082#1091#1084#1077#1085#1090', '#1091#1076#1086#1089#1090#1086#1074#1077#1088#1103#1102#1097#1080#1081' '#1083#1080#1095#1085#1086#1089#1090#1100)
          ParentFont = False
        end
        object Line29: TfrxLineView
          Top = 3.779530000000000000
          Width = 755.906000000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Line30: TfrxLineView
          Top = 18.897650000000000000
          Width = 340.157700000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Line31: TfrxLineView
          Top = 34.015770000000000000
          Width = 755.906000000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Line32: TfrxLineView
          Left = 340.157700000000000000
          Top = 3.779530000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line33: TfrxLineView
          Left = 238.110390000000000000
          Top = 18.897650000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line34: TfrxLineView
          Left = 170.078850000000000000
          Top = 18.897650000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
      end
    end
    object Page2: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 210.000000000000000000
      PaperHeight = 148.000000000000000000
      PaperSize = 11
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object Memo30: TfrxMemoView
        Top = 45.354360000000000000
        Width = 162.519790000000000000
        Height = 49.133890000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '9. '#1054#1090#1084#1077#1090#1082#1080' '#1086' '#1087#1086#1089#1090#1072#1085#1086#1074#1082#1077
          #1085#1072' '#1074#1086#1080#1085#1089#1082#1080#1081' '#1091#1095#1077#1090
          '('#1076#1083#1103' '#1074#1086#1077#1085#1085#1086#1086#1073#1103#1079#1072#1085#1085#1099#1093')')
        ParentFont = False
      end
      object Memo31: TfrxMemoView
        Left = 687.874460000000000000
        Width = 71.811070000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1060#1086#1088#1084#1072' '#8470' 9')
        ParentFont = False
      end
      object Memo32: TfrxMemoView
        Left = 634.961040000000000000
        Top = 15.118120000000000000
        Width = 120.944960000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '('#1086#1073#1086#1088#1086#1090#1085#1072#1103' '#1089#1090#1086#1088#1086#1085#1072')')
        ParentFont = False
      end
      object Memo33: TfrxMemoView
        Top = 105.826840000000000000
        Width = 287.244280000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '10. '#1054#1090#1084#1077#1090#1082#1080' '#1086' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080' '#1087#1086' '#1084#1077#1089#1090#1091' '#1078#1080#1090#1077#1083#1100#1089#1090#1074#1072)
        ParentFont = False
      end
      object Memo34: TfrxMemoView
        Left = 328.819110000000000000
        Top = 105.826840000000000000
        Width = 294.803340000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '11. '#1054#1090#1084#1077#1090#1082#1080' '#1086' '#1089#1085#1103#1090#1080#1080' '#1089' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1086#1085#1085#1086#1075#1086' '#1091#1095#1077#1090#1072)
        ParentFont = False
      end
      object Line26: TfrxLineView
        Top = 102.047310000000000000
        Width = 755.906000000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line27: TfrxLineView
        Top = 124.724490000000000000
        Width = 755.906000000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line28: TfrxLineView
        Left = 325.039580000000000000
        Top = 102.047310000000000000
        Height = 200.315090000000000000
        ShowHint = False
        Frame.Typ = [ftLeft]
      end
    end
  end
  object ApartmentCardfrxRepF10: TfrxReport
    Version = '4.12'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41100.649753217590000000
    ReportOptions.LastChange = 41100.649753217590000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnPreview = ApartmentCardfrxRepF10Preview
    OnPrintReport = ApartmentCardfrxRepF10PrintReport
    Left = 224
    Top = 528
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object TempIdentityDocfrxRepF2P: TfrxReport
    Version = '4.12'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41100.727068981480000000
    ReportOptions.LastChange = 41112.349205844900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnPreview = TempIdentityDocfrxRepF2PPreview
    OnPrintReport = TempIdentityDocfrxRepF2PPrintReport
    Left = 384
    Top = 24
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 103.000000000000000000
      PaperHeight = 125.000000000000000000
      PaperSize = 256
      LeftMargin = 5.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object Memo1: TfrxMemoView
        Width = 336.378170000000000000
        Height = 411.968770000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          ''
          ''
          ''
          ''
          ''
          ''
          ''
          #1042#1056#1045#1052#1045#1053#1053#1054#1045
          #1059#1044#1054#1057#1058#1054#1042#1045#1056#1045#1053#1048#1045
          #1051#1048#1063#1053#1054#1057#1058#1048
          ''
          #1043#1056#1040#1046#1044#1040#1053#1048#1053#1040
          #1056#1054#1057#1057#1048#1049#1057#1050#1054#1049' '#1060#1045#1044#1045#1056#1040#1062#1048#1048
          ''
          ''
          ''
          #1071#1074#1083#1103#1077#1090#1089#1103' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1084' '#1086#1075#1088#1072#1085#1080#1095#1077#1085#1085#1086#1075#1086' '#1089#1088#1086#1082#1072' '#1076#1077#1081#1089#1090#1074#1080#1103)
        ParentFont = False
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 103.000000000000000000
      PaperHeight = 125.000000000000000000
      PaperSize = 256
      LeftMargin = 5.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object Rich1: TfrxRichView
        Width = 336.378170000000000000
        Height = 430.866420000000000000
        ShowHint = False
        GapX = 2.000000000000000000
        GapY = 1.000000000000000000
        RichEdit = {
          7B5C727466315C616E73695C616E7369637067313235315C64656666305C6465
          666C616E67313034397B5C666F6E7474626C7B5C66305C66726F6D616E5C6670
          7271325C66636861727365743230347B5C2A5C666E616D652054696D6573204E
          657720526F6D616E3B7D54696D6573204E657720526F6D616E204359523B7D7B
          5C66315C66726F6D616E5C66707271325C6663686172736574302054696D6573
          204E657720526F6D616E3B7D7B5C66325C666E696C5C66636861727365743230
          34205461686F6D613B7D7D0D0A7B5C2A5C67656E657261746F72204D73667465
          64697420352E34312E32312E323530393B7D5C766965776B696E64345C756331
          5C706172645C72693433375C736C3237365C736C6D756C74315C74783931365C
          7478313833325C7478323734385C7478333636345C7478343538305C74783534
          39365C7478363532305C7478373332385C7478383234345C7478393136305C74
          7831303037365C747831303939325C747831313930385C747831323832345C74
          7831333630385C66305C667331365C7061720D0A5C276239205C756C5C746162
          5C7461625C7061720D0A5C706172645C72693132355C736C3237365C736C6D75
          6C74315C7478323132375C7478323734385C7478333636345C7478343538305C
          7478353439365C7478363431325C7478373332385C7478383234345C74783931
          36305C747831303037365C747831303939325C747831313930385C7478313238
          32345C747831333734305C747831343635365C6C616E67313033335C756C6E6F
          6E655C6631202020202020202020202020202020202020202020202020205C6C
          616E67313034395C66305C2764345C2765305C2765635C2765385C2765625C27
          65385C276666205C756C5C7461625C7461625C7461625C7061720D0A5C6C616E
          67313033335C663120202020202020202020202020205C6C616E67313034395C
          66305C7461625C7461625C7461625C756C6E6F6E655C7061720D0A5C6C616E67
          313033335C663120202020202020202020202020202020202020202020202020
          5C6C616E67313034395C66305C2763385C2765635C276666205C756C5C746162
          5C7461625C7461625C7061720D0A5C6C616E67313033335C756C6E6F6E655C66
          31202020202020202020202020202020202020202020202020205C6C616E6731
          3034395C66305C2763655C2766325C2766375C2765355C2766315C2766325C27
          65325C276565205C756C5C7461625C7461625C7461625C7061720D0A5C756C6E
          6F6E655C2763345C2765305C2766325C276530205C2766305C2765655C276536
          5C2765345C2765355C2765645C2765385C276666205C756C5C7461625C746162
          5C7061720D0A5C756C6E6F6E655C2763635C2765355C2766315C2766325C2765
          65205C2766305C2765655C2765365C2765345C2765355C2765645C2765385C27
          6666205C756C5C7461625C7461625C7061720D0A5C7461625C7461625C746162
          5C7061720D0A5C756C6E6F6E655C2763625C2765385C2766375C2765645C2765
          305C276666205C2765665C2765655C2765345C2765665C2765385C2766315C27
          6663205C756C5C7461625C7461625C7061720D0A5C756C6E6F6E655C7061720D
          0A5C706172645C72693433375C736C3237365C736C6D756C74315C7478393136
          5C7478313833325C7478323734385C7478333636345C7478343538305C747835
          3439365C7478363532305C7478373332385C7478383234345C7478393136305C
          747831303037365C747831303939325C747831313930385C747831323832345C
          747831333630385C2763632E5C2763662E5C7061720D0A5C7061720D0A5C7061
          72645C72693433375C736C3237365C736C6D756C74315C74783931365C747831
          3833325C7478323734385C7478333636345C7478343634395C7478353439365C
          7478363532305C7478373332385C7478383234345C7478393136305C74783130
          3037365C747831303939325C747831313930385C747831323832345C74783133
          3630385C2763305C2765345C2766305C2765355C276631205C2765635C276535
          5C2766315C2766325C276530205C2765365C2765385C2766325C2765355C2765
          625C2766635C2766315C2766325C2765325C27653020285C2765635C2765355C
          2766315C2766325C276530205C2765665C2766305C2765355C2765315C276662
          5C2765325C2765305C2765645C2765385C27666629205C756C5C7461625C7461
          625C7061720D0A5C7461625C7461625C7461625C7461625C7461625C7061720D
          0A5C7461625C7461625C7461625C7461625C7461625C7061720D0A5C756C6E6F
          6E655C2764335C2765345C2765655C2766315C2766325C2765655C2765325C27
          65355C2766305C2765355C2765645C2765385C276535205C2765325C2766625C
          2765345C2765305C2765645C276565205C756C5C7461625C7461625C7461625C
          7461625C7061720D0A5C706172645C72693433375C736C3134345C736C6D756C
          74315C74783931365C7478313833325C7478323734385C7478333636345C7478
          343634395C7478353439365C7478363532305C7478373332385C747838323434
          5C7478393136305C747831303037365C747831303939325C747831313930385C
          747831323832345C747831333630385C756C6E6F6E655C7461625C7461625C66
          73313420285C2765645C2765305C2765385C2765635C2765355C2765645C2765
          655C2765325C2765305C2765645C2765385C276535205C2765665C2765655C27
          65345C2766305C2765305C2765375C2765345C2765355C2765625C2765355C27
          65645C2765385C276666295C7061720D0A5C706172645C72693433375C736C32
          37365C736C6D756C74315C74783931365C7478313833325C7478323734385C74
          78333636345C7478343634395C7478353439365C7478363532305C7478373332
          385C7478383234345C7478393136305C747831303037365C747831303939325C
          747831313930385C747831323832345C747831333630385C756C5C667331365C
          7461625C7461625C7461625C7461625C7461625C7061720D0A5C756C6E6F6E65
          5C276332205C2766315C2765325C2766665C2765375C276538205C276631205C
          756C5C7461625C7461625C7461625C7461625C7461625C7061720D0A5C706172
          645C72693433375C736C3134345C736C6D756C74315C74783931365C74783138
          33325C7478323734385C7478333636345C7478343538305C7478353439365C74
          78363532305C7478373332385C7478383234345C7478393136305C7478313030
          37365C747831303939325C747831313930385C747831323832345C7478313336
          30385C756C6E6F6E655C7461625C7461625C6673313420285C2765665C276630
          5C2765385C2766375C2765385C2765645C276530205C2765325C2766625C2765
          345C2765305C2766375C276538295C7061720D0A5C706172645C72693433375C
          736C3237365C736C6D756C74315C74783931365C7478313833325C7478323734
          385C7478333636345C7478343538305C7478353439365C7478363532305C7478
          383234345C7478393136305C747831303037365C747831303939325C74783131
          3930385C747831323832345C747831333630385C667331365C2763345C276535
          5C2765395C2766315C2766325C2765325C2765385C2766325C2765355C276562
          5C2766635C2765645C276565205C2765345C276565205C2761625C756C202020
          20202020205C756C6E6F6E655C276262205C756C5C7461625C7461625C756C6E
          6F6E6520203230205C756C5C7461625C756C6E6F6E655C2765335C2765655C27
          65345C2765305C7061720D0A5C706172645C72693433375C736C3237365C736C
          6D756C74315C74783931365C7478313833325C7478323734385C747833363634
          5C7478343538305C7478353439365C7478363532305C7478373332385C747838
          3234345C7478393136305C747831303037365C747831303939325C7478313139
          30385C747831323832345C747831333630385C7061720D0A5C7461625C276363
          2E205C2763662E5C7061720D0A5C7061720D0A5C7461625C2763665C2765655C
          2765345C2765665C2765385C2766315C276663205C2766305C2766335C276561
          5C2765655C2765325C2765655C2765345C2765385C2766325C2765355C276562
          5C2766665C7061720D0A5C7461625C2765665C2765655C2765345C2766305C27
          65305C2765375C2765345C2765355C2765625C2765355C2765645C2765385C27
          66665C7461625C756C5C7461625C7461625C7061720D0A5C756C6E6F6E655C27
          63665C2766305C2765655C2765345C2765625C2765355C2765645C276565205C
          2765345C276565205C2761625C756C20202020202020205C756C6E6F6E655C27
          6262205C756C5C7461625C7461625C756C6E6F6E65202032305C756C5C746162
          5C756C6E6F6E6520205C2765335C2765655C2765345C2765305C7061720D0A5C
          7061720D0A5C7461625C2763632E5C2763662E5C7061720D0A5C7461625C7061
          720D0A5C7461625C2763665C2765655C2765345C2765665C2765385C2766315C
          276663205C2766305C2766335C2765615C2765655C2765325C2765655C276534
          5C2765385C2766325C2765355C2765625C2766665C7061720D0A5C706172645C
          7461625C2765665C2765655C2765345C2766305C2765305C2765375C2765345C
          2765355C2765625C2765355C2765645C2765385C2766665C7461625C756C5C74
          61625C7461625C756C6E6F6E655C66325C7061720D0A7D0D0A00}
      end
    end
  end
  object InterPassComeAnnfrxRep: TfrxReport
    Version = '4.12'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Maximized = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41113.160649386580000000
    ReportOptions.LastChange = 41113.160649386580000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 384
    Top = 304
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object ChildIntPassComeAnnfrxRep: TfrxReport
    Version = '4.12'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Maximized = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41113.160719386570000000
    ReportOptions.LastChange = 41113.160719386570000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 384
    Top = 360
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object IntPassAnnApplicationfrxRep: TfrxReport
    Version = '4.12'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Maximized = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41113.160649386580000000
    ReportOptions.LastChange = 41113.160649386580000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 384
    Top = 416
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object ResidingRegTermfrxRepF6: TfrxReport
    Version = '4.12'
    DotMatrixReport = False
    EngineOptions.TempDir = 'C:\DEVELOP(1)\Sources\FMS\reports'
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Maximized = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41047.458519803200000000
    ReportOptions.LastChange = 41188.524168240740000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Button1OnClick(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'begin'
      '                                            '
      'end.')
    OnPreview = ResidingRegTermfrxRepF6Preview
    OnPrintReport = ResidingRegTermfrxRepF6PrintReport
    OnLoadTemplate = ResidingRegStatWithTermfrxRepF6LoadTemplate
    Left = 384
    Top = 80
    Datasets = <
      item
        DataSet = ResidingRegTermfrxRepF6.BaseDocADOQ
        DataSetName = 'BaseDocADOQ'
      end
      item
        DataSet = ResidingRegTermfrxRepF6.ConsoulAllNameADOQ
        DataSetName = 'ConsoulAllNameADOQ'
      end
      item
        DataSet = ResidingRegTermfrxRepF6.ConsoulIdentDocADOQ
        DataSetName = 'ConsoulIdentDocADOQ'
      end
      item
        DataSet = ResidingRegTermfrxRepF6.ConsoulPersonADOQ
        DataSetName = 'ConsoulPersonADOQ'
      end
      item
        DataSet = CurrOperationfrxDBDS
        DataSetName = 'CurrOperationfrxDBDS'
      end
      item
        DataSet = ResidingRegTermfrxRepF6.MoveFromAdrADOQ
        DataSetName = 'MoveFromAdrADOQ'
      end
      item
        DataSet = ResidingRegTermfrxRepF6.OwnerAllNameADOQ
        DataSetName = 'OwnerAllNameADOQ'
      end
      item
        DataSet = ResidingRegTermfrxRepF6.OwnerIdentityADOQ
        DataSetName = 'OwnerIdentityADOQ'
      end
      item
        DataSet = ResidingRegTermfrxRepF6.OwnerPersonADOQ
        DataSetName = 'OwnerPersonADOQ'
      end
      item
        DataSet = PersonsfrxDBDS
        DataSetName = 'PersonsfrxDBDS'
      end
      item
        DataSet = ResidingRegTermfrxRepF6.ResidingPlaceAdrADOQuery
        DataSetName = 'ResidingPlaceAdrADOQuery'
      end
      item
        DataSet = ResidingRegTermfrxRepF6.PersIdentADOQ
        DataSetName = 'PersIdentADOQ'
      end
      item
        DataSet = ResidingRegTermfrxRepF6.CorrespBrancheADOQ
        DataSetName = 'CorrespBrancheADOQ'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
      object MoveFromAdrADOQ: TfrxADOQuery
        UserName = 'MoveFromAdrADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        Master = CurrOperationfrxDBDS
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select * from OP_ADR_DATA where'
          
            'ELINK_CODE=145 AND ACT_REG_ID=:OP_ID                            ' +
            '                                            ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 80
        pTop = 24
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
      object OwnerPersonADOQ: TfrxADOQuery
        UserName = 'OwnerPersonADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        Master = CurrOperationfrxDBDS
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select * from OP_PERSONAL_DATA where'
          
            'ELINK_CODE=4 AND ACT_REG_ID=:OP_ID                              ' +
            '                                          ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 80
        pTop = 76
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
      object BaseDocADOQ: TfrxADOQuery
        UserName = 'BaseDocADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        Master = CurrOperationfrxDBDS
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select * from OP_DOC_DATA where'
          
            'ELINK_CODE=2 AND ACT_REG_ID=:OP_ID                              ' +
            '                                          ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 80
        pTop = 128
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
      object ResidingPlaceAdrADOQuery: TfrxADOQuery
        UserName = 'ResidingPlaceAdrADOQuery'
        CloseDataSource = True
        BCDToCurrency = False
        Master = CurrOperationfrxDBDS
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select * from OP_ADR_DATA where'
          
            'ELINK_CODE=144 AND ACT_REG_ID=:OP_ID                            ' +
            '                                            ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 80
        pTop = 180
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
      object OwnerIdentityADOQ: TfrxADOQuery
        UserName = 'OwnerIdentityADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        Master = CurrOperationfrxDBDS
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select * from OP_DOC_DATA where'
          
            'ELINK_CODE=7 AND ACT_REG_ID=:OP_ID                              ' +
            '                                          ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 80
        pTop = 232
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
      object ConsoulAllNameADOQ: TfrxADOQuery
        UserName = 'ConsoulAllNameADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select ael.AEL_AS_ID, ael.ACT_REG_ID,'
          ' ael.AEL_LINK_TYPE_ID, enl.ELINK_TYPE,'
          'ael.STATIC_DATA'
          'from AEL_ASSOC ael LEFT JOIN ENTLINKS enl '
          'ON (ael.AEL_LINK_TYPE_ID=enl.ELINK_ID) '
          'WHERE enl.ELINK_TYPE=7 AND ENL.ELINK_CODE=151      '
          'AND ael.ACT_REG_ID=:OP_ID                           ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 228
        pTop = 24
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
      object OwnerAllNameADOQ: TfrxADOQuery
        UserName = 'OwnerAllNameADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select ael.AEL_AS_ID, ael.ACT_REG_ID,'
          ' ael.AEL_LINK_TYPE_ID, enl.ELINK_TYPE,'
          'ael.STATIC_DATA'
          'from AEL_ASSOC ael LEFT JOIN ENTLINKS enl '
          'ON (ael.AEL_LINK_TYPE_ID=enl.ELINK_ID) '
          'WHERE enl.ELINK_TYPE=7 AND ENL.ELINK_CODE=152        '
          'AND ael.ACT_REG_ID=:OP_ID                           ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 228
        pTop = 76
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
      object ConsoulPersonADOQ: TfrxADOQuery
        UserName = 'ConsoulPersonADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        Master = CurrOperationfrxDBDS
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select * from OP_PERSONAL_DATA where'
          
            'ELINK_CODE=149 AND ACT_REG_ID=:OP_ID                            ' +
            '                                            ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 228
        pTop = 128
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
      object ConsoulIdentDocADOQ: TfrxADOQuery
        UserName = 'ConsoulIdentDocADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'DOC_ID'
            DataType = ftInteger
            Expression = '<ConsoulPersonADOQ."IDENTITY_DOC_ID">'
          end>
        SQL.Strings = (
          
            'SELECT * FROM DOCS_VIEW WHERE DOC_ID=:DOC_ID                    ' +
            '                                                         ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 228
        pTop = 180
        Parameters = <
          item
            Name = 'DOC_ID'
            DataType = ftInteger
            Expression = '<ConsoulPersonADOQ."IDENTITY_DOC_ID">'
          end>
      end
      object PersIdentADOQ: TfrxADOQuery
        UserName = 'PersIdentADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        Master = CurrOperationfrxDBDS
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select * from OP_DOC_DATA where'
          
            'ELINK_CODE=1 AND ACT_REG_ID=:OP_ID                              ' +
            '                                          ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 228
        pTop = 232
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
      object CorrespBrancheADOQ: TfrxADOQuery
        UserName = 'CorrespBrancheADOQ'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
        SQL.Strings = (
          'select ael.AEL_AS_ID, ael.ACT_REG_ID,'
          ' ael.AEL_LINK_TYPE_ID, enl.ELINK_TYPE,'
          'ael.STATIC_DATA'
          'from AEL_ASSOC ael LEFT JOIN ENTLINKS enl '
          'ON (ael.AEL_LINK_TYPE_ID=enl.ELINK_ID) '
          'WHERE enl.ELINK_TYPE=7 AND ENL.ELINK_CODE=160        '
          'AND ael.ACT_REG_ID=:OP_ID                           ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 372
        pTop = 24
        Parameters = <
          item
            Name = 'OP_ID'
            DataType = ftInteger
            Expression = '<CurrOperationfrxDBDS."ACTIONS_ID">'
          end>
      end
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 20.000000000000000000
      RightMargin = 15.000000000000000000
      TopMargin = 15.000000000000000000
      BottomMargin = 10.000000000000000000
      object Memo45: TfrxMemoView
        Left = 22.677180000000000000
        Top = 22.677180000000000000
        Width = 623.622450000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          #1047#1040#1071#1042#1051#1045#1053#1048#1045' '#1054' '#1057#1053#1071#1058#1048#1048' '#1057' '#1056#1045#1043#1048#1057#1058#1056#1040#1062#1048#1054#1053#1053#1054#1043#1054' '#1059#1063#1045#1058#1040' '#1055#1054' '#1052#1045#1057#1058#1059' '#1046#1048#1058#1045#1051#1068#1057#1058#1042#1040)
        ParentFont = False
      end
      object Memo46: TfrxMemoView
        Left = 37.795300000000000000
        Top = 45.354360000000000000
        Width = 173.858380000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1042' '#1086#1088#1075#1072#1085' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1086#1085#1085#1086#1075#1086' '#1091#1095#1077#1090#1072)
        ParentFont = False
      end
      object Line42: TfrxLineView
        Left = 211.653680000000000000
        Top = 60.472480000000000000
        Width = 449.764070000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo47: TfrxMemoView
        Top = 60.472480000000000000
        Width = 15.118120000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1086#1090)
        ParentFont = False
      end
      object Line43: TfrxLineView
        Left = 15.118120000000000000
        Top = 75.590600000000000000
        Width = 646.299630000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo48: TfrxMemoView
        Left = 257.008040000000000000
        Top = 71.811070000000000000
        Width = 170.078850000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '('#1092#1072#1084#1080#1083#1080#1103', '#1080#1084#1103', '#1086#1090#1095#1077#1089#1090#1074#1086', '#1076#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103')')
        ParentFont = False
      end
      object Memo49: TfrxMemoView
        Left = 3.779530000000000000
        Top = 94.488250000000000000
        Width = 222.992270000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1044#1086#1082#1091#1084#1077#1085#1090', '#1091#1076#1086#1089#1090#1086#1074#1077#1088#1103#1102#1097#1080#1081' '#1083#1080#1095#1085#1086#1089#1090#1100': '#1074#1080#1076)
        ParentFont = False
      end
      object Line44: TfrxLineView
        Left = 230.551330000000000000
        Top = 109.606370000000000000
        Width = 185.196970000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo50: TfrxMemoView
        Left = 415.748300000000000000
        Top = 94.488250000000000000
        Width = 34.015770000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1089#1077#1088#1080#1103)
        ParentFont = False
      end
      object Line45: TfrxLineView
        Left = 449.764070000000000000
        Top = 109.606370000000000000
        Width = 86.929190000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo51: TfrxMemoView
        Left = 536.693260000000000000
        Top = 94.488250000000000000
        Width = 15.118120000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #8470)
        ParentFont = False
      end
      object Line46: TfrxLineView
        Left = 551.811380000000000000
        Top = 109.606370000000000000
        Width = 109.606370000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo52: TfrxMemoView
        Left = 3.779530000000000000
        Top = 109.606370000000000000
        Width = 41.574830000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1074#1099#1076#1072#1085)
        ParentFont = False
      end
      object Line47: TfrxLineView
        Left = 41.574830000000000000
        Top = 124.724490000000000000
        Width = 480.000310000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo53: TfrxMemoView
        Left = 529.134200000000000000
        Top = 109.606370000000000000
        Width = 26.456710000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1050#1086#1076)
        ParentFont = False
      end
      object Line48: TfrxLineView
        Left = 555.590910000000000000
        Top = 124.724490000000000000
        Width = 105.826840000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo54: TfrxMemoView
        Left = 207.874150000000000000
        Top = 124.724490000000000000
        Width = 151.181200000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '('#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1088#1075#1072#1085#1072', '#1091#1095#1088#1077#1078#1076#1077#1085#1080#1103')')
        ParentFont = False
      end
      object Memo55: TfrxMemoView
        Left = 3.779530000000000000
        Top = 147.401670000000000000
        Width = 113.385900000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080' "          "')
        ParentFont = False
      end
      object Memo56: TfrxMemoView
        Left = 272.126160000000000000
        Top = 147.401670000000000000
        Width = 11.338590000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1075'.')
        ParentFont = False
      end
      object Line49: TfrxLineView
        Left = 79.370130000000000000
        Top = 162.519790000000000000
        Width = 30.236240000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line50: TfrxLineView
        Left = 124.724490000000000000
        Top = 162.519790000000000000
        Width = 98.267780000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line51: TfrxLineView
        Left = 230.551330000000000000
        Top = 162.519790000000000000
        Width = 41.574830000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo57: TfrxMemoView
        Top = 170.078850000000000000
        Width = 132.283550000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1047#1072#1082#1086#1085#1085#1099#1081' '#1087#1088#1077#1076#1089#1090#1072#1074#1080#1090#1077#1083#1100)
        ParentFont = False
      end
      object Line52: TfrxLineView
        Left = 132.283550000000000000
        Top = 185.196970000000000000
        Width = 529.134200000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo58: TfrxMemoView
        Left = 313.700990000000000000
        Top = 181.417440000000000000
        Width = 170.078850000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '('#1091#1082#1072#1079#1072#1090#1100': '#1086#1090#1077#1094', '#1084#1072#1090#1100', '#1086#1087#1077#1082#1091#1085', '#1087#1086#1087#1077#1095#1080#1090#1077#1083#1100',')
        ParentFont = False
      end
      object Memo59: TfrxMemoView
        Left = 268.346630000000000000
        Top = 204.094620000000000000
        Width = 124.724490000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1060'..'#1048'.'#1054'., '#1087#1072#1089#1087#1086#1088#1090#1085#1099#1077' '#1076#1072#1085#1085#1099#1077')')
        ParentFont = False
      end
      object Line53: TfrxLineView
        Top = 207.874150000000000000
        Width = 661.417750000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo60: TfrxMemoView
        Top = 226.771800000000000000
        Width = 328.819110000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1042' '#1089#1074#1103#1079#1080' '#1089' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1077#1081' '#1087#1086' '#1085#1086#1074#1086#1084#1091' '#1084#1077#1089#1090#1091' '#1078#1080#1090#1077#1083#1100#1089#1090#1074#1072' '#1087#1086' '#1072#1076#1088#1077#1089#1091':')
        ParentFont = False
      end
      object Line54: TfrxLineView
        Left = 328.819110000000000000
        Top = 241.889920000000000000
        Width = 332.598640000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo61: TfrxMemoView
        Left = 283.464750000000000000
        Top = 257.008040000000000000
        Width = 94.488250000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '('#1091#1082#1072#1079#1072#1090#1100' '#1090#1086#1095#1085#1099#1081' '#1072#1076#1088#1077#1089')')
        ParentFont = False
      end
      object Line55: TfrxLineView
        Top = 260.787570000000000000
        Width = 661.417750000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo62: TfrxMemoView
        Top = 272.126160000000000000
        Width = 166.299320000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1054#1088#1075#1072#1085' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1086#1085#1085#1086#1075#1086' '#1091#1095#1077#1090#1072)
        ParentFont = False
      end
      object Line56: TfrxLineView
        Left = 166.299320000000000000
        Top = 287.244280000000000000
        Width = 495.118430000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo63: TfrxMemoView
        Left = 366.614410000000000000
        Top = 283.464750000000000000
        Width = 105.826840000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          '('#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1088#1075#1072#1085#1072')')
        ParentFont = False
      end
      object Memo64: TfrxMemoView
        Top = 294.803340000000000000
        Width = 449.764070000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          
            #1087#1088#1086#1096#1091' '#1089#1085#1103#1090#1100' '#1084#1077#1085#1103' '#1089' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1086#1085#1085#1086#1075#1086' '#1091#1095#1077#1090#1072' '#1087#1086' '#1087#1088#1077#1078#1085#1077#1084#1091' '#1084#1077#1089#1090#1091' '#1078#1080#1090#1077 +
            #1083#1100#1089#1090#1074#1072' '#1087#1086' '#1072#1076#1088#1077#1089#1091':')
        ParentFont = False
      end
      object Line57: TfrxLineView
        Left = 449.764070000000000000
        Top = 309.921460000000000000
        Width = 211.653680000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line58: TfrxLineView
        Top = 328.819110000000000000
        Width = 661.417750000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo65: TfrxMemoView
        Left = 468.661720000000000000
        Top = 332.598640000000000000
        Width = 45.354360000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          ' "          "')
        ParentFont = False
      end
      object Line59: TfrxLineView
        Left = 476.220780000000000000
        Top = 347.716760000000000000
        Width = 30.236240000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line60: TfrxLineView
        Left = 525.354670000000000000
        Top = 347.716760000000000000
        Width = 90.708720000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line61: TfrxLineView
        Left = 623.622450000000000000
        Top = 347.716760000000000000
        Width = 30.236240000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo66: TfrxMemoView
        Left = 653.858690000000000000
        Top = 332.598640000000000000
        Width = 11.338590000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1075'.')
        ParentFont = False
      end
      object Memo67: TfrxMemoView
        Left = 468.661720000000000000
        Top = 370.393940000000000000
        Width = 45.354360000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          ' "          "')
        ParentFont = False
      end
      object Line62: TfrxLineView
        Left = 476.220780000000000000
        Top = 385.512060000000000000
        Width = 30.236240000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line63: TfrxLineView
        Left = 525.354670000000000000
        Top = 385.512060000000000000
        Width = 90.708720000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line64: TfrxLineView
        Left = 623.622450000000000000
        Top = 385.512060000000000000
        Width = 30.236240000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo68: TfrxMemoView
        Left = 653.858690000000000000
        Top = 370.393940000000000000
        Width = 11.338590000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1075'.')
        ParentFont = False
      end
      object Memo69: TfrxMemoView
        Left = 3.779530000000000000
        Top = 332.598640000000000000
        Width = 362.834880000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1055#1086#1076#1087#1080#1089#1100' '#1079#1072#1103#1074#1080#1090#1077#1083#1103', '#1079#1072#1082#1086#1085#1085#1086#1075#1086' '#1087#1088#1077#1076#1089#1090#1072#1074#1080#1090#1077#1083#1103' ('#1085#1077#1085#1091#1078#1085#1086#1077' '#1079#1072#1095#1077#1088#1082#1085#1091#1090#1100')')
        ParentFont = False
      end
      object Memo70: TfrxMemoView
        Left = 3.779530000000000000
        Top = 355.275820000000000000
        Width = 68.031540000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1055#1086#1076#1087#1080#1089#1100' '#1075#1088'.')
        ParentFont = False
      end
      object Memo71: TfrxMemoView
        Left = 215.433210000000000000
        Top = 355.275820000000000000
        Width = 56.692950000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1079#1072#1074#1077#1088#1103#1102'.')
        ParentFont = False
      end
      object Memo72: TfrxMemoView
        Left = 3.779530000000000000
        Top = 370.393940000000000000
        Width = 56.692950000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1052'.'#1055'.')
        ParentFont = False
      end
      object Memo73: TfrxMemoView
        Left = 79.370130000000000000
        Top = 370.393940000000000000
        Width = 200.315090000000000000
        Height = 15.118120000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Memo.UTF8W = (
          #1055#1086#1076#1087#1080#1089#1100' '#1080' '#1060'.'#1048'.'#1054'. '#1076#1086#1083#1078#1085#1086#1089#1090#1085#1086#1075#1086' '#1083#1080#1094#1072)
        ParentFont = False
      end
      object Line65: TfrxLineView
        Left = 71.811070000000000000
        Top = 370.393940000000000000
        Width = 143.622140000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line66: TfrxLineView
        Left = 362.834880000000000000
        Top = 347.716760000000000000
        Width = 98.267780000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Line67: TfrxLineView
        Left = 279.685220000000000000
        Top = 385.512060000000000000
        Width = 188.976500000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
      end
      object Memo92: TfrxMemoView
        Left = 22.677180000000000000
        Top = 56.692950000000000000
        Width = 638.740570000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          
            '[Uppercase(<PersonsfrxDBDS."LAST_NAME">)] [Uppercase(<Personsfrx' +
            'DBDS."FIRST_NAME">)] [Uppercase(<PersonsfrxDBDS."SURNAME">)], [U' +
            'ppercase(<PersonsfrxDBDS."BIRTHDATE">)] '#1043'.'#1056'.')
        ParentFont = False
      end
      object Memo95: TfrxMemoView
        Top = 222.992270000000000000
        Width = 665.197280000000000000
        Height = 41.574830000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        LineSpacing = 1.000000000000000000
        Memo.UTF8W = (
          
            '                                                                ' +
            '                            [Uppercase(<ResidingPlaceAdrADOQuery' +
            '."ADR_FULL_NAME">)]')
        ParentFont = False
      end
      object Memo96: TfrxMemoView
        Top = 291.023810000000000000
        Width = 661.417750000000000000
        Height = 41.574830000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        LineSpacing = 1.500000000000000000
        Memo.UTF8W = (
          
            '                                                                ' +
            '                                                             [Up' +
            'percase(<MoveFromAdrADOQ."ADR_FULL_NAME">)]')
        ParentFont = False
      end
      object Memo97: TfrxMemoView
        Left = 230.551330000000000000
        Top = 90.708720000000000000
        Width = 181.417440000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          '[Uppercase(<PersIdentADOQ."DOC_TYPE_NAME">)]')
        ParentFont = False
      end
      object Memo98: TfrxMemoView
        Left = 449.764070000000000000
        Top = 90.708720000000000000
        Width = 83.149660000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[Uppercase(<PersIdentADOQ."DOC_SERIE">)]')
        ParentFont = False
      end
      object Memo99: TfrxMemoView
        Left = 559.370440000000000000
        Top = 90.708720000000000000
        Width = 102.047310000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[Uppercase(<PersIdentADOQ."DOC_NUM">)]')
        ParentFont = False
      end
      object Memo100: TfrxMemoView
        Left = 41.574830000000000000
        Top = 105.826840000000000000
        Width = 483.779840000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          '[Uppercase(<PersIdentADOQ."DOC_BRANCH_NAME">)]')
        ParentFont = False
      end
      object Memo101: TfrxMemoView
        Left = 555.590910000000000000
        Top = 105.826840000000000000
        Width = 105.826840000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[Uppercase(<PersIdentADOQ."DOC_BRANCHE_CODE">)]')
        ParentFont = False
      end
      object Memo102: TfrxMemoView
        Left = 75.590600000000000000
        Top = 143.622140000000000000
        Width = 34.015770000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[DayOf(<PersIdentADOQ."DOC_CREATE_DATE">)]')
        ParentFont = False
      end
      object Memo103: TfrxMemoView
        Left = 120.944960000000000000
        Top = 143.622140000000000000
        Width = 98.267780000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          
            '[IIF(MonthOf(<PersIdentADOQ."DOC_CREATE_DATE">)=1,'#39#1071#1053#1042#1040#1056#1071#39','#39#39')][' +
            'IIF(MonthOf(<PersIdentADOQ."DOC_CREATE_DATE">)=2,'#39#1060#1045#1042#1056#1040#1051#1071#39','#39#39')][' +
            'IIF(MonthOf(<PersIdentADOQ."DOC_CREATE_DATE">)=3,'#39#1052#1040#1056#1058#1040#39','#39#39')][II' +
            'F(MonthOf(<PersIdentADOQ."DOC_CREATE_DATE">)=4,'#39#1040#1055#1056#1045#1051#1071#39','#39#39')][IIF' +
            '(MonthOf(<PersIdentADOQ."DOC_CREATE_DATE">)=5,'#39#1052#1040#1071#39','#39#39')][IIF(Mon' +
            'thOf(<PersIdentADOQ."DOC_CREATE_DATE">)=6,'#39#1048#1070#1053#1071#39','#39#39')][IIF(MonthO' +
            'f(<PersIdentADOQ."DOC_CREATE_DATE">)=7,'#39#1048#1070#1051#1071#39','#39#39')][IIF(MonthOf(<' +
            'PersIdentADOQ."DOC_CREATE_DATE">)=8,'#39#1040#1042#1043#1059#1057#1058#1040#39','#39#39')][IIF(MonthOf(<' +
            'PersIdentADOQ."DOC_CREATE_DATE">)=9,'#39#1057#1045#1053#1058#1071#1041#1056#1071#39','#39#39')][IIF(MonthOf(' +
            '<PersIdentADOQ."DOC_CREATE_DATE">)=10,'#39#1054#1050#1058#1071#1041#1056#1071#39','#39#39')][IIF(MonthOf' +
            '(<PersIdentADOQ."DOC_CREATE_DATE">)=11,'#39#1053#1054#1071#1041#1056#1071#39','#39#39')][IIF(MonthOf' +
            '(<PersIdentADOQ."DOC_CREATE_DATE">)=12,'#39#1044#1045#1050#1040#1041#1056#1071#39','#39#39')]')
        ParentFont = False
      end
      object Memo104: TfrxMemoView
        Left = 226.771800000000000000
        Top = 143.622140000000000000
        Width = 45.354360000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[YearOf(<PersIdentADOQ."DOC_CREATE_DATE">)]')
        ParentFont = False
      end
      object Memo93: TfrxMemoView
        Top = 166.299320000000000000
        Width = 661.417750000000000000
        Height = 41.574830000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        LineSpacing = 4.000000000000000000
        Memo.UTF8W = (
          
            '                                  [ConsoulAllNameADOQ."STATIC_DA' +
            'TA"] [Uppercase(<ConsoulPersonADOQ."LAST_NAME">)] [Uppercase(<Co' +
            'nsoulPersonADOQ."FIRST_NAME">)] [Uppercase(<ConsoulPersonADOQ."S' +
            'URNAME">)] [ConsoulPersonADOQ."BIRTHDATE"], [ConsoulIdentDocADOQ' +
            '."DOC_SERIE"] '#8470'[ConsoulIdentDocADOQ."DOC_NUM"], [ConsoulIdentDoc' +
            'ADOQ."DOC_BRANCHE_CODE"], [ConsoulIdentDocADOQ."DOC_BRANCH_NAME"' +
            '], [ConsoulIdentDocADOQ."DOC_CREATE_DATE"]')
        ParentFont = False
      end
      object Memo1: TfrxMemoView
        Left = 211.653680000000000000
        Top = 41.574830000000000000
        Width = 449.764070000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          '[CorrespBrancheADOQ."STATIC_DATA"]')
        ParentFont = False
      end
      object Memo2: TfrxMemoView
        Left = 170.078850000000000000
        Top = 268.346630000000000000
        Width = 491.338900000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        Memo.UTF8W = (
          '[<FMS_BRANCH_NAME_DEFAULT>]')
        ParentFont = False
      end
    end
  end
  object frxRTFExport1: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PictureType = gpPNG
    Wysiwyg = True
    Creator = 'FastReport'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 384
    Top = 472
  end
end
