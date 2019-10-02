unit UnitSELASA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, MPlayer, ExtCtrls, DBCtrls, Grids, DBGrids, DB, ADODB;

type
  TFormSELASA = class(TForm)
    ADOT_SELASA: TADOTable;
    DS_SELASA: TDataSource;
    DBG_SELASA: TDBGrid;
    DBN_SELASA: TDBNavigator;
    TimerSELASA: TTimer;
    MP_SELASA: TMediaPlayer;
    LabelSELASA: TLabel;
    procedure TimerSELASATimer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSELASA: TFormSELASA;

implementation

uses ULogin;

{$R *.dfm}

procedure TFormSELASA.TimerSELASATimer(Sender: TObject);
begin
    LabelSELASA.Caption:=FormatDateTime('HH:MM:SS',Now);
  If MP_SELASA.FileName = '' Then
  Begin
    MP_SELASA.FileName := ADOT_SELASA['MUSIK'];
  End
  Else
  Begin
    If MP_SELASA.FileName <> ADOT_SELASA['MUSIK'] Then
    Begin
       MP_SELASA.FileName := ADOT_SELASA['MUSIK'];
    End;
  End;

  If LabelSELASA.Caption = ADOT_SELASA['PUKUL'] Then
  Begin
    MP_SELASA.Open;
    MP_SELASA.Play;
    ADOT_SELASA.Next;
  End;
end;

procedure TFormSELASA.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FormSELASA := Nil;
  Action := CaFree;
end;

end.
