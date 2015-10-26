object fSettings: TfSettings
  Left = 0
  Top = 0
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
  ClientHeight = 136
  ClientWidth = 339
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  DesignSize = (
    339
    136)
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 175
    Top = 103
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    TabOrder = 0
    OnClick = Button1Click
    ExplicitLeft = 511
    ExplicitTop = 303
  end
  object btCancel: TButton
    Left = 256
    Top = 103
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 1
    OnClick = btCancelClick
    ExplicitLeft = 592
    ExplicitTop = 303
  end
  object CheckBox1: TCheckBox
    Left = 8
    Top = 8
    Width = 185
    Height = 17
    Hint = #1047#1072#1074#1077#1088#1096#1080#1090#1100' '#1079#1072#1076#1072#1095#1091' '#1073#1077#1079' '#1083#1080#1096#1085#1080#1093' '#1074#1086#1087#1088#1086#1089#1086#1074
    Caption = #1055#1088#1080' '#1079#1072#1082#1088#1099#1090#1080#1080' '#1079#1072#1074#1077#1088#1096#1072#1090#1100' '#1076#1077#1085#1100
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
  end
end
