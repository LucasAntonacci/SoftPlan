unit Threads;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TThreadProgresso = class(TThread)
    private
      ProgressBar: TProgressBar;
      FIntervalo: Integer;
      FProcesso: Integer;

      procedure DoProgresso;
      procedure SetaProgresso(const Value: TProgressBar);
    protected
      procedure Execute; override;
    public
      constructor Create;
      property aProgressBar: TProgressBar read ProgressBar write SetaProgresso;
      property Processo: Integer read FProcesso write FProcesso;
      property Intervalo: Integer read FIntervalo write FIntervalo;

  end;

  TfThreads = class(TForm)
    GroupBox1: TGroupBox;
    edtIntervalo: TEdit;
    btnTestar: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnTestarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  fThreads: TfThreads;
  iProcesso: Integer;
  prbProgresso : TProgressBar;

implementation

{$R *.dfm}

procedure TfThreads.btnTestarClick(Sender: TObject);
var
  aThread: TThreadProgresso;
begin
  if Length(edtIntervalo.Text) = 0 then
  begin
    Application.MessageBox(pChar('Valor invalido.'), 'Aviso', 0);
    Exit;
  end;
  prbProgresso := TProgressBar.Create(Self);
  Self.InsertControl(prbProgresso);
  prbProgresso.Align := alBottom;
  aThread := TThreadProgresso.Create;
  try
    aThread.Intervalo    := StrToInt(edtIntervalo.Text);
    aThread.Processo     := iProcesso;
    aThread.aProgressBar := prbProgresso;
    inc(iProcesso);
    edtIntervalo.Text     := '0';
  finally
    aThread.Free;
  end;
end;

procedure TfThreads.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  prbProgresso.Free;
end;

procedure TfThreads.FormCreate(Sender: TObject);
begin
  iProcesso := 0;
end;

{ TThreadProgresso }

constructor TThreadProgresso.Create;
begin
  inherited Create(false);
end;

procedure TThreadProgresso.DoProgresso;
begin
  Application.ProcessMessages;
end;

procedure TThreadProgresso.Execute;
var
  I: Integer;
begin
  inherited;
  for I := 0 to 100 do
  begin
    Sleep(FIntervalo);
    aProgressBar.Position := aProgressBar.Position + 2;
    Synchronize(DoProgresso);
  end;


end;

procedure TThreadProgresso.SetaProgresso(const Value: TProgressBar);
begin
  ProgressBar := Value;
end;

end.
