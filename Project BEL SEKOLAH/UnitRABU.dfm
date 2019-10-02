object FormRABU: TFormRABU
  Left = 192
  Top = 114
  Width = 824
  Height = 619
  Caption = 'RABU'
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
  object LabelRABU: TLabel
    Left = 490
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
  object MP_RABU: TMediaPlayer
    Left = 154
    Top = 24
    Width = 253
    Height = 30
    TabOrder = 1
  end
  object DBG_RABU: TDBGrid
    Left = 0
    Top = 0
    Width = 433
    Height = 564
    Align = alLeft
    DataSource = DS_RABU
    Enabled = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBN_RABU: TDBNavigator
    Left = 623
    Top = 172
    Width = 222
    Height = 25
    DataSource = DS_RABU
    VisibleButtons = [nbPrior, nbNext]
    TabOrder = 2
  end
  object ADOT_RABU: TADOTable
    Connection = FLOGIN.ADO1
    CursorType = ctStatic
    TableName = 'Rabu'
    Left = 448
    Top = 80
  end
  object DS_RABU: TDataSource
    DataSet = ADOT_RABU
    Left = 448
    Top = 112
  end
  object TimerRABU: TTimer
    OnTimer = TimerRABUTimer
    Left = 448
    Top = 16
  end
end
