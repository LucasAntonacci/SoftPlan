object fDatasetCopy: TfDatasetCopy
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Dataset Copy'
  ClientHeight = 568
  ClientWidth = 641
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object MovimentaTela: TSplitter
    Left = 313
    Top = 25
    Width = 13
    Height = 543
    ExplicitLeft = 8
  end
  object dbgTeste1: TDBGrid
    Left = 0
    Top = 25
    Width = 313
    Height = 543
    Align = alLeft
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object dbNavigator: TDBNavigator
    Left = 0
    Top = 0
    Width = 641
    Height = 25
    Align = alTop
    TabOrder = 1
    ExplicitTop = 1
    ExplicitWidth = 670
  end
  object dbgTeste2: TDBGrid
    Left = 326
    Top = 25
    Width = 315
    Height = 543
    Align = alClient
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end
