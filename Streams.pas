unit Streams;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls;

type
  TfStreams = class(TForm)
    Button1: TButton;
    Tamanho1: TLabel;
    Button2: TButton;
    Tamanho2: TLabel;
    ProgressBar1: TProgressBar;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    FPath: string;

    function LoadStream: TMemoryStream;
  public
  end;

var
  fStreams: TfStreams;

implementation

{$R *.dfm}

procedure TfStreams.Button1Click(Sender: TObject);
var
  sTemp: TStream;
begin
  sTemp := LoadStream;

  Tamanho1.Caption := 'Size: ' + (sTemp.Size div 1024).ToString + ' MB';
end;

procedure TfStreams.Button2Click(Sender: TObject);
var
  inc, SizeInc: Integer;
  msTemp: TMemoryStream;
begin
  Button2.Enabled := false;
  try
    ProgressBar1.Position := 0;
    ProgressBar1.Max      := 100;
    SizeInc               := 0;
    for inc := 0 to 99 do
    begin
      msTemp := LoadStream;
      SizeInc := SizeInc + msTemp.Size;
      ProgressBar1.Position := ProgressBar1.Position + 1;
      Application.ProcessMessages;
    end;

    Tamanho2.Caption := (SizeInc div 1024).ToString + ' MB';
  finally
    Button2.Enabled := true;
  end;

end;


procedure TfStreams.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfStreams.FormCreate(Sender: TObject);
begin
  FPath := IncludeTrailingPathDelimiter(ExtractFilePath(ParamStr(0))) + 'pdf.pdf';
end;

function TfStreams.LoadStream: TMemoryStream;
var
 vMemo: TMemoryStream;
begin
 vMemo := TMemoryStream.Create;
  try
    if FileExists(FPath) then
    begin
      vMemo.LoadFromFile(FPath);
    end;
  finally
    Result := vMemo;
    vMemo.Free;
  end;
end;

end.
