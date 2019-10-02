unit UnitRABU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, MPlayer, ExtCtrls, DBCtrls, Grids, DBGrids, DB, ADODB;

type
  TFormRABU = class(TForm)
    ADOT_RABU: TADOTable;
    DS_RABU: TDataSource;
    DBG_RABU: TDBGrid;
    TimerRABU: TTimer;
    MP_RABU: TMediaPlayer;
    LabelRABU: TLabel;
    DBN_RABU: TDBNavigator;
    procedure TimerRABUTimer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRABU: TFormRABU;

implementation

uses ULogin;

{$R *.dfm}

procedure TFormRABU.TimerRABUTimer(Sender: TObject);
begin
    LabelRABU.Caption:=FormatDateTime('HH:MM:SS',Now);
  If MP_RABU.FileName = '' Then
  Begin
    MP_RABU.FileName := ADOT_RABU['MUSIK'];
  End
  Else
  Begin
    If MP_RABU.FileName <> ADOT_RABU['MUSIK'] Then
    Begin
       MP_RABU.FileName := ADOT_RABU['MUSIK'];
    End;
  End;

  If LabelRABU.Caption = ADOT_RABU['PUKUL'] Then
  Begin
    MP_RABU.Open;
    MP_RABU.Play;
    ADOT_RABU.Next;
  End;
end;

procedure TFormRABU.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FormRABU := Nil;
  Action := CaFree;
end;

end.
