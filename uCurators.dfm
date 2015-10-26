object sprCurators: TsprCurators
  Left = 0
  Top = 0
  Width = 518
  Height = 389
  TabOrder = 0
  TabStop = True
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 33
    Width = 518
    Height = 356
    Align = alClient
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
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghIncSearch, dghPreferIncSearch, dghDblClickOptimizeColWidth, dghDialogFind, dghColumnResize, dghColumnMove]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'UserName'
        Footers = <>
        Title.Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
        Width = 245
      end
      item
        EditButtons = <>
        FieldName = 'DepartmentName'
        Footers = <>
        Title.Caption = #1054#1090#1076#1077#1083
        Width = 152
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DBPanel1: TDBPanel
    Left = 0
    Top = 0
    Width = 518
    Height = 33
    Align = alTop
    Caption = ' '
    TabOrder = 1
    DataSource = MSDataSource1
  end
  object MSQuery1: TMSQuery
    SQL.Strings = (
      'Select *'
      'From viewCurators')
    Left = 40
    Top = 280
    object MSQuery1ID: TIntegerField
      FieldName = 'ID'
      Origin = 'dbo.Curators.ID'
    end
    object MSQuery1UserID: TIntegerField
      FieldName = 'UserID'
      Origin = 'dbo.Curators.UserID'
    end
    object MSQuery1DepartmentID: TIntegerField
      FieldName = 'DepartmentID'
      Origin = 'dbo.Curators.DepartmentID'
    end
    object MSQuery1UserName: TStringField
      FieldKind = fkLookup
      FieldName = 'UserName'
      LookupDataSet = MSTable1
      LookupKeyFields = 'UserID'
      LookupResultField = 'UserName'
      KeyFields = 'UserID'
      Origin = 'dbo.Users.UserName'
      FixedChar = True
      Size = 150
      Lookup = True
    end
    object MSQuery1DepartmentName: TStringField
      FieldKind = fkLookup
      FieldName = 'DepartmentName'
      LookupDataSet = MSTable2
      LookupKeyFields = 'ID'
      LookupResultField = 'DepartmentName'
      KeyFields = 'DepartmentID'
      Origin = 'dbo.Departments.DepartmentName'
      FixedChar = True
      Size = 60
      Lookup = True
    end
  end
  object MSTable1: TMSTable
    TableName = 'dbo.Users'
    OrderFields = 'UserName'
    Left = 96
    Top = 280
  end
  object MSTable2: TMSTable
    TableName = 'dbo.Departments'
    OrderFields = 'DepartmentName'
    Left = 144
    Top = 280
  end
  object MSDataSource1: TMSDataSource
    DataSet = MSQuery1
    Left = 40
    Top = 248
  end
end
