unit UnitSABTU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, MPlayer, ExtCtrls, DBCtrls, Grids, DBGrids, DB, ADODB;

type
  TFormSABTU = class(TForm)
    ADOT_SABTU: TADOTable;
    DS_SABTU: TDataSource;
    DBG_SABTU: TDBGrid;
    DBN_SABTU: TDBNavigator;
    TimerSABTU: TTimer;
    MP_SABTU: TMediaPlayer;
    LabelSABTU: TLabel;
    procedure TimerSABTUTimer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSABTU: TFormSABTU;

implementation
Uses ULogin;

{$R *.dfm}

procedure TFormSABTU.TimerSABTUTimer(Sender: TObject);
begin
     LabelSABTU.Caption:=FormatDateTime('HH:MM:SS',Now);
  If MP_SABTU.FileName = '' Then
  Begin
    MP_SABTU.FileName := ADOT_SABTU['MUSIK'];
  End
  Else
  Begin
    If MP_SABTU.FileName <> ADOT_SABTU['MUSIK'] Then
    Begin
       MP_SABTU.FileName := ADOT_SABTU['MUSIK'];
    End;
  End;

  If LabelSABTU.Caption = ADOT_SABTU['PUKUL'] Then
  Begin
    MP_SABTU.Open;
    MP_SABTU.Play;
    ADOT_SABTU.Next;
  End;
end;

procedure TFormSABTU.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FormSABTU := Nil;
  Action := CaFree;
end;

end.
