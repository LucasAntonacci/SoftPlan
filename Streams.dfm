object fStreams: TfStreams
  Left = 0
  Top = 0
  Caption = 'Streams'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Tamanho1: TLabel
    Left = 128
    Top = 13
    Width = 48
    Height = 13
    Caption = 'Tamanho:'
  end
  object Tamanho2: TLabel
    Left = 128
    Top = 45
    Width = 48
    Height = 13
    Caption = 'Tamanho:'
  end
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 110
    Height = 25
    Caption = 'Rodar 1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 40
    Width = 110
    Height = 25
    Caption = 'Rodar 100'
    TabOrder = 1
    OnClick = Button2Click
  end
  object ProgressBar1: TProgressBar
    AlignWithMargins = True
    Left = 3
    Top = 279
    Width = 629
    Height = 17
    Align = alBottom
    TabOrder = 2
  end
end
