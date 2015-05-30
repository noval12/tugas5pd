unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  DBGrids, ZConnection, ZDataset, db;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Datasource1: TDatasource;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    ZQuery2: TZQuery;
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button5Click(Sender: TObject);
begin
  ZQuery2.SQL.Clear;
  ZQuery2.SQL.Add('insert into siswa values("'+edit1.text+'","'+edit2.text+'","'+edit3.text+'","'+edit4.text+'")');
  ZQuery2.ExecSQL;
  showmessage('Berhasil');
  ZQuery1.refresh;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  ZQuery2.SQL.Clear;
  ZQuery2.SQL.Add('update siswa set nis="'+edit1.text+'", nama="'+edit3.text+'",kelas="'+edit2.text+'",email="'+edit4.text+'" where nis = "'+edit1.text+'"');
  ZQuery2.ExecSQL;
  showmessage('Berhasil');
  ZQuery1.refresh;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
   ZQuery2.SQL.Clear;
  ZQuery2.SQL.Add('delete from siswa where NIS = "'+edit1.text+'"');
  ZQuery2.ExecSQL;
  showmessage('Berhasil');
  ZQuery1.refresh;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  application.terminate
end;

end.

