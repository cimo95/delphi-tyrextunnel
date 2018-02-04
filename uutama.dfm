object ff0: Tff0
  Left = 511
  Top = 257
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'T-Rex Tunnel v.0.0'
  ClientHeight = 219
  ClientWidth = 336
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyUp = FormKeyUp
  PixelsPerInch = 96
  TextHeight = 13
  object cp1: TPanel
    Left = 8
    Top = 8
    Width = 320
    Height = 180
    BevelInner = bvLowered
    BevelOuter = bvNone
    TabOrder = 0
    Visible = False
    object ci4: TImage
      Left = 25
      Top = 126
      Width = 41
      Height = 44
      AutoSize = True
      Proportional = True
      Stretch = True
      Transparent = True
    end
    object ci0: TImage
      Left = 1
      Top = 162
      Width = 1196
      Height = 17
      AutoSize = True
      Transparent = True
    end
    object ci2: TImage
      Left = 128
      Top = 122
      Width = 24
      Height = 47
      AutoSize = True
      Transparent = True
    end
    object ci1: TImage
      Left = 0
      Top = 58
      Width = 1196
      Height = 17
      AutoSize = True
      Transparent = True
    end
    object ci3: TImage
      Left = 360
      Top = 122
      Width = 24
      Height = 47
      AutoSize = True
      Transparent = True
    end
    object l1: TLabel
      Left = 231
      Top = 12
      Width = 80
      Height = 30
      Caption = '00000'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Fixedsys'
      Font.Style = []
      ParentFont = False
    end
    object l0: TLabel
      Left = 10
      Top = 12
      Width = 128
      Height = 30
      Caption = 'Hi-00000'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Fixedsys'
      Font.Style = []
      ParentFont = False
    end
  end
  object cp0: TPanel
    Left = 8
    Top = 192
    Width = 321
    Height = 17
    Cursor = crHandPoint
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Caption = 'Cimosoft Codelicious, Org | Arachmadi Putra'
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    OnClick = cp0Click
  end
  object cp2: TPanel
    Left = 8
    Top = 8
    Width = 320
    Height = 180
    BevelInner = bvLowered
    BevelOuter = bvNone
    TabOrder = 2
    object l2: TLabel
      Left = 32
      Top = 28
      Width = 61
      Height = 13
      Caption = 'Kecepatan : '
    end
    object l3: TLabel
      Left = 32
      Top = 76
      Width = 80
      Height = 13
      Caption = 'Maks. Capaian : '
    end
    object l5: TLabel
      Left = 242
      Top = 22
      Width = 32
      Height = 30
      Caption = '02'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Fixedsys'
      Font.Style = []
      ParentFont = False
    end
    object l4: TLabel
      Left = 24
      Top = 92
      Width = 80
      Height = 13
      Caption = '0 = tak terhingga'
    end
    object tb0: TTrackBar
      Left = 96
      Top = 16
      Width = 145
      Height = 45
      Min = 2
      Position = 2
      TabOrder = 0
      TickMarks = tmBoth
      OnChange = tb0Change
    end
    object se0: TSpinEdit
      Left = 112
      Top = 72
      Width = 89
      Height = 40
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Fixedsys'
      Font.Style = []
      MaxValue = 999
      MinValue = 0
      ParentFont = False
      TabOrder = 1
      Value = 25
    end
    object bb0: TBitBtn
      Left = 32
      Top = 128
      Width = 257
      Height = 33
      Caption = 'MULAI'
      TabOrder = 2
      OnClick = bb0Click
      Kind = bkRetry
    end
    object mm0: TMediaPlayer
      Left = 32
      Top = 120
      Width = 253
      Height = 30
      Visible = False
      TabOrder = 3
      OnNotify = mm0Notify
    end
  end
  object t0: TTimer
    Enabled = False
    Interval = 10
    OnTimer = t0Timer
    Left = 224
    Top = 56
  end
  object t1: TTimer
    Enabled = False
    Interval = 100
    OnTimer = t1Timer
    Left = 248
    Top = 80
  end
end
