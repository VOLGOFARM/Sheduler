object fAddTask: TfAddTask
  Left = 0
  Top = 0
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1085#1086#1074#1086#1081'  '#1079#1072#1076#1072#1095#1080
  ClientHeight = 264
  ClientWidth = 337
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 8
    Top = 8
    Width = 321
    Height = 21
    TabOrder = 0
    OnKeyUp = Edit1KeyUp
  end
  object DBGridEh1: TDBGridEh
    Left = 8
    Top = 63
    Width = 321
    Height = 193
    AutoFitColWidths = True
    DataGrouping.GroupLevels = <>
    DataSource = MSDataSource1
    Flat = True
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'Tahoma'
    FooterFont.Style = []
    IndicatorOptions = [gioShowRowIndicatorEh]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'TaskName'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1047#1072#1076#1072#1095#1080
        Width = 307
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Button1: TButton
    Left = 48
    Top = 35
    Width = 75
    Height = 22
    Action = butAddFakt
    TabOrder = 2
  end
  object Button2: TButton
    Left = 206
    Top = 35
    Width = 75
    Height = 22
    Action = ClearFilter
    TabOrder = 3
  end
  object ActionList1: TActionList
    Left = 232
    Top = 176
    object ClearFilter: TAction
      Caption = #1054#1090#1084#1077#1085#1072
      SecondaryShortCuts.Strings = (
        'ESC')
      OnExecute = ClearFilterExecute
    end
    object butAddFakt: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Hint = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1079#1072#1076#1072#1095#1080
      SecondaryShortCuts.Strings = (
        'Enter')
      OnExecute = butAddFaktExecute
    end
  end
  object MSQuery1: TMSQuery
    Left = 168
    Top = 176
    object MSQuery1ID: TIntegerField
      FieldName = 'ID'
      ReadOnly = True
    end
    object MSQuery1TaskName: TStringField
      FieldName = 'TaskName'
      FixedChar = True
      Size = 70
    end
  end
  object MSDataSource1: TMSDataSource
    DataSet = MSQuery1
    Left = 200
    Top = 176
  end
end
