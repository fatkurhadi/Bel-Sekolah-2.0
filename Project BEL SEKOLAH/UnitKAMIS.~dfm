object FormKAMIS: TFormKAMIS
  Left = 195
  Top = 115
  Width = 826
  Height = 626
  Caption = 'KAMIS'
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object LabelKAMIS: TLabel
    Left = 482
    Top = 8
    Width = 490
    Height = 151
    Caption = '00:00:00'
    Color = clWindowText
    Font.Charset = ANSI_CHARSET
    Font.Color = clLime
    Font.Height = -133
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object MP_KAMIS: TMediaPlayer
    Left = 154
    Top = 24
    Width = 253
    Height = 30
    TabOrder = 1
  end
  object DBG_KAMIS: TDBGrid
    Left = 0
    Top = 0
    Width = 433
    Height = 577
    Align = alLeft
    DataSource = DS_KAMIS
    Enabled = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBN_KAMIS: TDBNavigator
    Left = 617
    Top = 172
    Width = 218
    Height = 25
    DataSource = DS_KAMIS
    VisibleButtons = [nbPrior, nbNext]
    TabOrder = 2
  end
  object ADOT_KAMIS: TADOTable
    Connection = FLOGIN.ADO1
    CursorType = ctStatic
    TableName = 'TB_KAMIS'
    Left = 440
    Top = 80
  end
  object DS_KAMIS: TDataSource
    DataSet = ADOT_KAMIS
    Left = 440
    Top = 112
  end
  object TimerKAMIS: TTimer
    OnTimer = TimerKAMISTimer
    Left = 440
    Top = 16
  end
end
