unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, DB, DBTables;

type
  TForm3 = class(TForm)
    qckrp1: TQuickRep;
    qrgrp1: TQRGroup;
    qrlbla: TQRLabel;
    qrlbl1: TQRLabel;
    qrsbdtl1: TQRSubDetail;
    qrdbtxtemail: TQRDBText;
    qrsysdt1: TQRSysData;
    qrlbl2: TQRLabel;
    qrlbl3: TQRLabel;
    qrlbl4: TQRLabel;
    qrlbl5: TQRLabel;
    qrlbl6: TQRLabel;
    qrdbtxtnik: TQRDBText;
    qrdbtxtnik1: TQRDBText;
    qrdbtxtnik2: TQRDBText;
    qrdbtxtnik3: TQRDBText;
    qrdbtxtnik4: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses
  Unit2;

{$R *.dfm}

end.
