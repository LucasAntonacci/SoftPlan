object fMain: TfMain
  Left = 0
  Top = 0
  Caption = 'Foo'
  ClientHeight = 522
  ClientWidth = 911
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBtns: TPanel
    Left = 696
    Top = 0
    Width = 215
    Height = 522
    Align = alRight
    TabOrder = 0
    object Button1: TButton
      Left = 9
      Top = 39
      Width = 200
      Height = 25
      Caption = 'Dataset Copy'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button5: TButton
      Left = 9
      Top = 8
      Width = 200
      Height = 25
      Caption = 'Threads'
      TabOrder = 1
      OnClick = Button5Click
    end
    object Button4: TButton
      Left = 9
      Top = 132
      Width = 200
      Height = 25
      Caption = 'Exceptions/Performance'
      TabOrder = 2
      OnClick = Button4Click
    end
    object Button3: TButton
      Left = 9
      Top = 70
      Width = 200
      Height = 25
      Caption = 'Streams'
      TabOrder = 3
      OnClick = Button3Click
    end
    object Button2: TButton
      Left = 9
      Top = 101
      Width = 200
      Height = 25
      Caption = 'Dataset Loop'
      TabOrder = 4
      OnClick = Button2Click
    end
  end
  object MainMenu1: TMainMenu
    Left = 16
    Top = 168
    object Operaes1: TMenuItem
      Caption = 'Opera'#231#245'es'
      object DatasetCopy1: TMenuItem
        Caption = 'Dataset Copy'
        OnClick = DatasetCopy1Click
      end
      object hreads1: TMenuItem
        Caption = 'Threads'
        OnClick = hreads1Click
      end
      object ExceptionsPerformance1: TMenuItem
        Caption = 'Exceptions/Performance'
        OnClick = ExceptionsPerformance1Click
      end
      object Streams1: TMenuItem
        Caption = 'Streams'
        OnClick = Streams1Click
      end
      object DatasetLoop1: TMenuItem
        Caption = 'Dataset Loop'
        OnClick = DatasetLoop1Click
      end
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      OnClick = Sair1Click
    end
  end
end
