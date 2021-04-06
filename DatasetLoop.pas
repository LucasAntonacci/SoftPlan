unit DatasetLoop;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Datasnap.DBClient, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TfDatasetLoop = class(TForm)
    DBGrid1: TDBGrid;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    Button1: TButton;
    DBNavigator1: TDBNavigator;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
  public
  end;

var
  fDatasetLoop: TfDatasetLoop;

implementation

{$R *.dfm}

procedure TfDatasetLoop.Button1Click(Sender: TObject);
begin
  ClientDataSet1.First;

  while not ClientDataSet1.Eof do
  begin
    if ClientDataSet1.FieldByName('Campo2').AsInteger mod 2 = 0 then
      ClientDataSet1.Delete
    else
      ClientDataSet1.Next;
  end;
end;

procedure TfDatasetLoop.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  ClientDataSet1.Free;
end;

procedure TfDatasetLoop.FormCreate(Sender: TObject);
begin
  ClientDataSet1.CreateDataSet;

  ClientDataSet1.Append;
  ClientDataSet1.FieldByName('Campo1').AsString := 'Campo1';
  ClientDataSet1.FieldByName('Campo2').AsInteger := 1;
  ClientDataSet1.Post;

  ClientDataSet1.Append;
  ClientDataSet1.FieldByName('Campo1').AsString := 'Campo2';
  ClientDataSet1.FieldByName('Campo2').AsInteger := 2;
  ClientDataSet1.Post;

  ClientDataSet1.Append;
  ClientDataSet1.FieldByName('Campo1').AsString := 'Campo3';
  ClientDataSet1.FieldByName('Campo2').AsInteger := 2;
  ClientDataSet1.Post;

  ClientDataSet1.Append;
  ClientDataSet1.FieldByName('Campo1').AsString := 'Campo4';
  ClientDataSet1.FieldByName('Campo2').AsInteger := 1;
  ClientDataSet1.Post;

  ClientDataSet1.Append;
  ClientDataSet1.FieldByName('Campo1').AsString := 'Campo5';
  ClientDataSet1.FieldByName('Campo2').AsInteger := 2;
  ClientDataSet1.Post;

  ClientDataSet1.Append;
  ClientDataSet1.FieldByName('Campo1').AsString := 'Campo6';
  ClientDataSet1.FieldByName('Campo2').AsInteger := 2;
  ClientDataSet1.Post;

  ClientDataSet1.Append;
  ClientDataSet1.FieldByName('Campo1').AsString := 'Campo7';
  ClientDataSet1.FieldByName('Campo2').AsInteger := 2;
  ClientDataSet1.Post;

  ClientDataSet1.Append;
  ClientDataSet1.FieldByName('Campo1').AsString := 'Campo8';
  ClientDataSet1.FieldByName('Campo2').AsInteger := 1;
  ClientDataSet1.Post;

  ClientDataSet1.Append;
  ClientDataSet1.FieldByName('Campo1').AsString := 'Campo9';
  ClientDataSet1.FieldByName('Campo2').AsInteger := 2;
  ClientDataSet1.Post;

  ClientDataSet1.Append;
  ClientDataSet1.FieldByName('Campo1').AsString := 'Campo10';
  ClientDataSet1.FieldByName('Campo2').AsInteger := 1;
  ClientDataSet1.Post;
end;

end.
