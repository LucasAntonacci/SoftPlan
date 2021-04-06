unit Exceptions;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfExceptions = class(TForm)
    Button1: TButton;
    Memo2: TMemo;
    Label2: TLabel;
    Button2: TButton;
    Memo3: TMemo;
    Label3: TLabel;
    Memo1: TMemo;
    lTitulo: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    FPath: string;

    procedure LoadNumbers(AIgnore: Integer);
  public
  end;

var
  fExceptions: TfExceptions;

implementation

{$R *.dfm}

procedure TfExceptions.Button1Click(Sender: TObject);
var
  Teste1, Teste2: Integer;
begin
  Teste1 := 0;
  try
    Memo1.Lines.Clear;
    Memo2.Lines.Clear;
    try
      Teste1 := GetTickCount;
      LoadNumbers(1);
    except on E: Exception do
      begin
        Memo1.Lines.Add('Classe Exception: ' + E.ClassName);
        Memo1.Lines.Add('Erro: ' + E.Message);
        raise;
      end;
    end;
  finally
    Teste2 := GetTickCount - Cardinal(Teste1);
    lTitulo.Caption := 'Tempo de processamento: ' + Teste2.ToString + ' ms';
  end;
end;

procedure TfExceptions.Button2Click(Sender: TObject);
var
  inc: Integer;
  Tempo: Integer;
begin
  Memo1.Lines.Clear;
  Memo2.Lines.Clear;

  Tempo := GetTickCount;

  for inc := 0 to 7 do
    LoadNumbers(inc);

  lTitulo.Caption := 'Tempo de processamento: ' + Tempo.ToString + ' ms';
end;

procedure TfExceptions.FormCreate(Sender: TObject);
begin
  FPath := IncludeTrailingPathDelimiter(ExtractFilePath(ParamStr(0))) + 'TesteLucasAntonacci.txt';
  Memo1.Text := '';
  Memo2.Text := '';
  Memo3.Text := '';
end;

procedure TfExceptions.LoadNumbers(AIgnore: Integer);
var
  StrLst : TStringList;
  inc, Hor : Integer;
  Texto : String;
begin
  StrLst := TStringList.Create;
  StrLst.LoadFromFile(FPath);

  try
    for inc := 0 to StrLst.Count do
    begin
      Texto := StrLst[inc];
      Hor := pos(AIgnore.ToString,Texto);
      if Hor > 0  then
          Memo2.Lines.Add(Texto[Hor-1]);
    end;
  except
    raise Exception.Create(Format('Erro ao tentar retirar número %d', [AIgnore]));
  end;
end;

end.
