object fThreads: TfThreads
  Left = 0
  Top = 0
  Caption = 'Threads'
  ClientHeight = 61
  ClientWidth = 212
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
  object GroupBox1: TGroupBox
    Left = 8
    Top = 0
    Width = 193
    Height = 57
    Caption = ' Intervalo de tempo'
    TabOrder = 0
    object edtIntervalo: TEdit
      Left = 12
      Top = 19
      Width = 90
      Height = 21
      Alignment = taRightJustify
      TabOrder = 0
      Text = '0'
    end
  end
  object btnTestar: TButton
    Left = 116
    Top = 17
    Width = 75
    Height = 25
    Caption = 'Tes&tar'
    TabOrder = 1
    OnClick = btnTestarClick
  end
end
