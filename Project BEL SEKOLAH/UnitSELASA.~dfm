object FormSELASA: TFormSELASA
  Left = 192
  Top = 114
  Width = 825
  Height = 621
  Caption = 'SELASA'
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
  object LabelSELASA: TLabel
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
  object MP_SELASA: TMediaPlayer
    Left = 156
    Top = 24
    Width = 253
    Height = 30
    TabOrder = 2
  end
  object DBG_SELASA: TDBGrid
    Left = 0
    Top = 0
    Width = 433
    Height = 572
    Align = alLeft
    DataSource = DS_SELASA
    Enabled = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBN_SELASA: TDBNavigator
    Left = 624
    Top = 172
    Width = 218
    Height = 25
    DataSource = DS_SELASA
    VisibleButtons = [nbPrior, nbNext]
    TabOrder = 1
  end
  object ADOT_SELASA: TADOTable
    Connection = FLOGIN.ADO1
    CursorType = ctStatic
    TableName = 'TB_SELASA'
    Left = 448
    Top = 80
  end
  object DS_SELASA: TDataSource
    DataSet = ADOT_SELASA
    Left = 448
    Top = 112
  end
  object TimerSELASA: TTimer
    OnTimer = TimerSELASATimer
    Left = 448
    Top = 16
  end
end
