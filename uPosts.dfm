object sprPosts: TsprPosts
  Left = 0
  Top = 0
  Width = 447
  Height = 345
  TabOrder = 0
  TabStop = True
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 33
    Width = 447
    Height = 312
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
        FieldName = 'PostName'
        Footers = <>
        Title.Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
        Width = 334
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DBPanel1: TDBPanel
    Left = 0
    Top = 0
    Width = 447
    Height = 33
    Align = alTop
    Caption = ' '
    TabOrder = 1
    DataSource = MSDataSource1
  end
  object MSDataSource1: TMSDataSource
    DataSet = MSQuery1
    Left = 40
    Top = 72
  end
  object MSQuery1: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO dbo.Posts (PostName, DepartmentsID)'
      
        '  (SELECT :PostName, DepartmentID From Users Where UserId = (Use' +
        'r_Id()))')
    SQL.Strings = (
      'SELECT *'
      'FROM ViewPosts'
      
        '--where DepartmentsID = (SELECT DepartmentID From Users Where Us' +
        'erId=User_Id())'
      'order by PostName')
    Left = 8
    Top = 72
    object MSQuery1PostName: TStringField
      FieldName = 'PostName'
      Origin = 'dbo.Posts.PostName'
      FixedChar = True
      Size = 70
    end
    object MSQuery1ID: TIntegerField
      FieldName = 'ID'
      Origin = 'dbo.Posts.ID'
    end
  end
end
