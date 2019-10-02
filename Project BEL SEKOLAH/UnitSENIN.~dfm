object FormSENIN: TFormSENIN
  Left = 192
  Top = 114
  Width = 822
  Height = 623
  Caption = 'SENIN'
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
  object LabelSENIN: TLabel
    Left = 491
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
  object MP_SENIN: TMediaPlayer
    Left = 161
    Top = 24
    Width = 253
    Height = 30
    TabOrder = 2
  end
  object DBG_SENIN: TDBGrid
    Left = 0
    Top = 0
    Width = 433
    Height = 574
    Align = alLeft
    DataSource = DS_SENIN
    Enabled = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBN_SENIN: TDBNavigator
    Left = 625
    Top = 171
    Width = 218
    Height = 25
    DataSource = DS_SENIN
    VisibleButtons = [nbPrior, nbNext]
    TabOrder = 1
  end
  object ADOT_SENIN: TADOTable
    Connection = FLOGIN.ADO1
    CursorType = ctStatic
    TableName = 'TB_SENIN'
    Left = 440
    Top = 80
  end
  object DS_SENIN: TDataSource
    DataSet = ADOT_SENIN
    Left = 440
    Top = 112
  end
  object TimerSENIN: TTimer
    OnTimer = TimerSENINTimer
    Left = 440
    Top = 16
  end
end
