unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    edtnik: TEdit;
    edtnama: TEdit;
    edttelp: TEdit;
    edtemail: TEdit;
    edtalamat: TEdit;
    btn1: TButton;
    btnsimpan: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    cbbmember: TComboBox;
    lbldiskon: TLabel;
    lbl8: TLabel;
    edt6: TEdit;
    dbgrd1: TDBGrid;
    edtcari: TEdit;
    btn2: TButton;
    procedure btn5Click(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure cbbmemberChange(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure edtcariChange(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a : String;

implementation

uses
  Unit2, DB, ZDataset, Unit3;

{$R *.dfm}

procedure TForm1.btn5Click(Sender: TObject);
begin
    edtnik.Clear;
    edtnama.Clear;
    edttelp.Clear;
    edtemail.Clear;
    edtalamat.Clear;
    cbbmember.Clear;
end;

procedure TForm1.btnsimpanClick(Sender: TObject);
begin
DataModule2.con1.Connect;
DataModule2.zqry1.SQL.Clear;
DataModule2.zqry1.SQL.Add('INSERT INTO kustomer (id, nik, nama, telp, email, alamat, member) VALUES (NULL, :nik,:nama,:telp,:email,:alamat,:member)');
DataModule2.zqry1.Params.ParamByName('nik').AsString := edtnik.Text;
DataModule2.zqry1.Params.ParamByName('nama').AsString := edtnama.Text;
DataModule2.zqry1.Params.ParamByName('telp').AsString := edttelp.Text;
DataModule2.zqry1.Params.ParamByName('email').AsString := edtemail.Text;
DataModule2.zqry1.Params.ParamByName('alamat').AsString := edtalamat.Text;
if cbbmember.ItemIndex = 0 then
DataModule2.zqry1.Params.ParamByName('member').AsString := 'Yes'
else if cbbmember.ItemIndex = 1 then
  DataModule2.zqry1.Params.ParamByName('member').AsString := 'No';
try
    DataModule2.zqry1.ExecSQL;
    DataModule2.zqry1.SQL.Clear;
    DataModule2.zqry1.SQL.Add('SELECT * FROM kustomer');
    DataModule2.zqry1.Open;
    ShowMessage('Data berhasil disimpan!');
  except
    on E: Exception do
      ShowMessage('Terjadi kesalahan: ' + E.Message);
  end;

end;

procedure TForm1.btn1Click(Sender: TObject);
begin
btnsimpan.Enabled:= True;
end;

procedure TForm1.cbbmemberChange(Sender: TObject);
begin
if cbbmember.ItemIndex = 0 then
    lbldiskon.Caption := 'Diskon :10%'
  else
    lbldiskon.Caption := 'Diskon :5%';
end;

procedure TForm1.dbgrd1CellClick(Column: TColumn);
begin
 a := DataModule2.zqry1.Fields[0].AsString;
  edtnik.Text := DataModule2.zqry1.Fields[1].AsString;
  edtnama.Text := DataModule2.zqry1.Fields[2].AsString;
  edttelp.Text := DataModule2.zqry1.Fields[3].AsString;
  edtemail.Text := DataModule2.zqry1.Fields[4].AsString;
  edtalamat.Text := DataModule2.zqry1.Fields[5].AsString;

  // Asumsikan bahwa field yang benar untuk cek apakah member ada pada indeks ke-6
if DataModule2.zqry1.Fields[6].AsString = 'Yes' then
begin
  cbbmember.ItemIndex := 0;
  lbldiskon.Caption := 'Diskon: 10%';
end
else
begin
  cbbmember.ItemIndex := 1;
  lbldiskon.Caption := 'Diskon: 5%';
end;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
DataModule2.con1.Connect;
DataModule2.zqry1.SQL.Clear;
DataModule2.zqry1.SQL.Add('UPDATE kustomer SET nik=:nik,nama=:nama,telp=:telp,email=:email,alamat=:alamat,member=:member WHERE id="'+a+'"');
DataModule2.zqry1.Params.ParamByName('nik').AsString := edtnik.Text;
DataModule2.zqry1.Params.ParamByName('nama').AsString := edtnama.Text;
DataModule2.zqry1.Params.ParamByName('telp').AsString := edttelp.Text;
DataModule2.zqry1.Params.ParamByName('email').AsString := edtemail.Text;
DataModule2.zqry1.Params.ParamByName('alamat').AsString := edtalamat.Text;
if cbbmember.ItemIndex = 0 then
DataModule2.zqry1.Params.ParamByName('member').AsString := 'Yes'
else if cbbmember.ItemIndex = 1 then
  DataModule2.zqry1.Params.ParamByName('member').AsString := 'No';
try
    DataModule2.zqry1.ExecSQL;
    DataModule2.zqry1.SQL.Clear;
    DataModule2.zqry1.SQL.Add('SELECT * FROM kustomer');
    DataModule2.zqry1.Open;
    ShowMessage('Data berhasil diupdate!');
  except
    on E: Exception do
      ShowMessage('Terjadi kesalahan: ' + E.Message);
  end;

end;

procedure TForm1.btn4Click(Sender: TObject);
begin
DataModule2.con1.Connect;
DataModule2.zqry1.SQL.Clear;
DataModule2.zqry1.SQL.Add('DELETE FROM kustomer WHERE id="'+a+'"');
try
    DataModule2.zqry1.ExecSQL;
    DataModule2.zqry1.SQL.Clear;
    DataModule2.zqry1.SQL.Add('SELECT * FROM kustomer');
    DataModule2.zqry1.Open;
    ShowMessage('Data berhasil dihapus!');
    edtnik.Clear;
    edtnama.Clear;
    edttelp.Clear;
    edtemail.Clear;
    edtalamat.Clear;
    cbbmember.Clear;
  except
    on E: Exception do
      ShowMessage('Terjadi kesalahan: ' + E.Message);
  end;

end;

procedure TForm1.edtcariChange(Sender: TObject);
begin
  with DataModule2.zqry1 do
  begin
    SQL.Clear;
    SQL.Add('SELECT * FROM kustomer WHERE nama LIKE "%'+edtcari.Text+'%"');
    Open;
  end
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
Form3.qckrp1.Preview;
end;

end.
