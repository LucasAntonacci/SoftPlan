object fExceptions: TfExceptions
  Left = 0
  Top = 0
  Caption = 'Exceptions'
  ClientHeight = 483
  ClientWidth = 840
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 8
    Top = 39
    Width = 65
    Height = 13
    Caption = 'Detalhes erro'
  end
  object Label2: TLabel
    Left = 346
    Top = 40
    Width = 28
    Height = 13
    Caption = 'Texto'
  end
  object lTitulo: TLabel
    Left = 122
    Top = 16
    Width = 36
    Height = 16
    Caption = 'Texto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Opera'#231#227'o 1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo2: TMemo
    Left = 346
    Top = 56
    Width = 473
    Height = 153
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
  object Button2: TButton
    Left = 8
    Top = 224
    Width = 121
    Height = 25
    Caption = 'Opera'#231#227'o em lote'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Memo3: TMemo
    Left = 8
    Top = 255
    Width = 473
    Height = 212
    Lines.Strings = (
      'Memo1')
    TabOrder = 3
  end
  object Memo1: TMemo
    Left = 8
    Top = 56
    Width = 321
    Height = 153
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssVertical
    TabOrder = 4
  end
end
