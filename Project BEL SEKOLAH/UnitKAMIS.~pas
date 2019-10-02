unit UnitKAMIS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, MPlayer, ExtCtrls, DBCtrls, Grids, DBGrids, DB, ADODB;

type
  TFormKAMIS = class(TForm)
    ADOT_KAMIS: TADOTable;
    DS_KAMIS: TDataSource;
    DBG_KAMIS: TDBGrid;
    TimerKAMIS: TTimer;
    MP_KAMIS: TMediaPlayer;
    LabelKAMIS: TLabel;
    DBN_KAMIS: TDBNavigator;
    procedure TimerKAMISTimer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormKAMIS: TFormKAMIS;

implementation
Uses ULogin;

{$R *.dfm}

procedure TFormKAMIS.TimerKAMISTimer(Sender: TObject);
begin
     LabelKAMIS.Caption:=FormatDateTime('HH:MM:SS',Now);
  If MP_KAMIS.FileName = '' Then
  Begin
    MP_KAMIS.FileName := ADOT_KAMIS['MUSIK'];
  End
  Else
  Begin
    If MP_KAMIS.FileName <> ADOT_KAMIS['MUSIK'] Then
    Begin
       MP_KAMIS.FileName := ADOT_KAMIS['MUSIK'];
    End;
  End;

  If LabelKAMIS.Caption = ADOT_KAMIS['PUKUL'] Then
  Begin
    MP_KAMIS.Open;
    MP_KAMIS.Play;
    ADOT_KAMIS.Next;
  End;
end;

procedure TFormKAMIS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FormKAMIS := Nil;
  Action := CaFree;
end;

end.
