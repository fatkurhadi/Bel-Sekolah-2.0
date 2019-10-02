unit UnitBELSEKOLAH;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, StdCtrls, jpeg, DB, ADODB;

type
  TForm_BEL_SEKOLAH = class(TForm)
    MainMenuUTAMA: TMainMenu;
    HARI1: TMenuItem;
    SENIN1: TMenuItem;
    SELASA1: TMenuItem;
    RABU1: TMenuItem;
    KAMIS1: TMenuItem;
    JUMAT1: TMenuItem;
    SABTU1: TMenuItem;
    KELUAR1: TMenuItem;
    Panel1: TPanel;
    Image1: TImage;
    GroupBoxHARI: TGroupBox;
    LabelHARI: TLabel;
    Timer1: TTimer;
    SERVER1: TMenuItem;
    procedure KELUAR1Click(Sender: TObject);
    procedure SENIN1Click(Sender: TObject);
    procedure SELASA1Click(Sender: TObject);
    procedure RABU1Click(Sender: TObject);
    procedure KAMIS1Click(Sender: TObject);
    procedure JUMAT1Click(Sender: TObject);
    procedure SABTU1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure SERVER1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    The_Path : String;
  end;

var
  Form_BEL_SEKOLAH: TForm_BEL_SEKOLAH;

implementation

uses UnitSENIN, UnitSELASA, UnitRABU, UnitKAMIS, UnitJUMAT, UnitSABTU,
  ULOGIN;

{$R *.dfm}

procedure TForm_BEL_SEKOLAH.KELUAR1Click(Sender: TObject);
begin
     IF (Application.MessageBox('PANJENENGAN PINGIN METU !','KONFIRMASI',MB_YESNO)=IDYES) THEN
     Close
end;

procedure TForm_BEL_SEKOLAH.SENIN1Click(Sender: TObject);
begin
    TFormSENIN.Create(Self);
end;

procedure TForm_BEL_SEKOLAH.SELASA1Click(Sender: TObject);
begin
    TFormSELASA.Create(Self);
end;

procedure TForm_BEL_SEKOLAH.RABU1Click(Sender: TObject);
begin
    TFormRABU.Create(Self);
end;

procedure TForm_BEL_SEKOLAH.KAMIS1Click(Sender: TObject);
begin
    TFormKAMIS.Create(Self);
end;

procedure TForm_BEL_SEKOLAH.JUMAT1Click(Sender: TObject);
begin
    TFormJUMAT.Create(Self);
end;

procedure TForm_BEL_SEKOLAH.SABTU1Click(Sender: TObject);
begin
    TFormSABTU.Create(Self);
end;

procedure TForm_BEL_SEKOLAH.Timer1Timer(Sender: TObject);
var
  days: array[1..7] of string;
begin
  days[1] := 'MINGGU';
  days[2] := 'SENIN';
  days[3] := 'SELASA';
  days[4] := 'RABU';
  days[5] := 'KAMIS';
  days[6] := 'JUMAT';
  days[7] := 'SABTU';
  LabelHARI.Caption := days[DayOfWeek(Now)];
  IF LabelHARI.Caption='SENIN' THEN
  begin
    If FormSENIN = Nil Then
    Begin
       FormSENIN := TFormSENIN.Create(Self);
       FormSENIN.ADOT_SENIN.Active := True;
       FormSENIN.Show;
    End;
  end;

  IF LabelHARI.Caption='SELASA' THEN
  begin
    If FormSELASA = Nil Then
    Begin
       FormSELASA := TFormSELASA.Create(Self);
       FormSELASA.ADOT_SELASA.Active := True;
       FormSELASA.Show;
    End;
  end;

  IF LabelHARI.Caption='RABU' THEN
  begin
    If FormRABU = Nil Then
    Begin
       FormRABU := TFormRABU.Create(Self);
       FormRABU.ADOT_RABU.Active := True;
       FormRABU.Show;
    End;
  end;

  IF LabelHARI.Caption='KAMIS' THEN
  begin
    If FormKAMIS = Nil Then
    Begin
       FormKAMIS := TFormKAMIS.Create(Self);
       FormKAMIS.ADOT_KAMIS.Active := True;
       FormKAMIS.Show;
    End;
  end;

  IF LabelHARI.Caption='JUMAT' THEN
  begin
    If FormJUMAT = Nil Then
    Begin
       FormJUMAT := TFormJUMAT.Create(Self);
       FormJUMAT.ADOT_JUMAT.Active := True;
       FormJUMAT.Show;
    End;
  end;

  IF LabelHARI.Caption='SABTU' THEN
  begin
    If FormSABTU = Nil Then
    Begin
       FormSABTU := TFormSABTU.Create(Self);
       FormSABTU.ADOT_SABTU.Active := True;
       FormSABTU.Show;
    End;
  end;
end;

procedure TForm_BEL_SEKOLAH.SERVER1Click(Sender: TObject);
begin
  FLogin.Show;
end;

end.
