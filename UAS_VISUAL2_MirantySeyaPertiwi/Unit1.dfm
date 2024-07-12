object Form1: TForm1
  Left = 367
  Top = 91
  Width = 639
  Height = 562
  VertScrollBar.Position = 2
  Caption = 'KOSTUMER'
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 56
    Top = 22
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object lbl2: TLabel
    Left = 56
    Top = 62
    Width = 29
    Height = 13
    Caption = 'NAMA'
  end
  object lbl3: TLabel
    Left = 56
    Top = 102
    Width = 23
    Height = 13
    Caption = 'TELP'
  end
  object lbl4: TLabel
    Left = 56
    Top = 150
    Width = 30
    Height = 13
    Caption = 'EMAIL'
  end
  object lbl5: TLabel
    Left = 56
    Top = 198
    Width = 40
    Height = 13
    Caption = 'ALAMAT'
  end
  object lbl6: TLabel
    Left = 48
    Top = 246
    Width = 41
    Height = 13
    Caption = 'MEMBER'
  end
  object lbldiskon: TLabel
    Left = 352
    Top = 254
    Width = 144
    Height = 16
    Caption = 'DISKON : Terisi Otomatis'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl8: TLabel
    Left = 40
    Top = 606
    Width = 80
    Height = 13
    Caption = 'MASUKAN NAMA'
  end
  object edtnik: TEdit
    Left = 176
    Top = 22
    Width = 321
    Height = 21
    TabOrder = 0
  end
  object edtnama: TEdit
    Left = 176
    Top = 62
    Width = 321
    Height = 21
    TabOrder = 1
  end
  object edttelp: TEdit
    Left = 176
    Top = 102
    Width = 321
    Height = 21
    TabOrder = 2
  end
  object edtemail: TEdit
    Left = 176
    Top = 150
    Width = 321
    Height = 21
    TabOrder = 3
  end
  object edtalamat: TEdit
    Left = 176
    Top = 198
    Width = 321
    Height = 21
    TabOrder = 4
  end
  object btn1: TButton
    Left = 48
    Top = 302
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 5
    OnClick = btn1Click
  end
  object btnsimpan: TButton
    Left = 152
    Top = 302
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    Enabled = False
    TabOrder = 6
    OnClick = btnsimpanClick
  end
  object btn3: TButton
    Left = 248
    Top = 302
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 7
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 344
    Top = 302
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 8
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 440
    Top = 302
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 9
    OnClick = btn5Click
  end
  object cbbmember: TComboBox
    Left = 176
    Top = 246
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 10
    OnChange = cbbmemberChange
    Items.Strings = (
      'Yes'
      'No')
  end
  object edt6: TEdit
    Left = 192
    Top = 606
    Width = 329
    Height = 21
    TabOrder = 11
  end
  object dbgrd1: TDBGrid
    Left = 40
    Top = 350
    Width = 473
    Height = 120
    DataSource = DataModule2.ds1
    TabOrder = 12
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object edtcari: TEdit
    Left = 40
    Top = 486
    Width = 361
    Height = 21
    TabOrder = 13
    OnChange = edtcariChange
  end
  object btn2: TButton
    Left = 440
    Top = 486
    Width = 75
    Height = 25
    Caption = 'Cetak'
    TabOrder = 14
    OnClick = btn2Click
  end
end
