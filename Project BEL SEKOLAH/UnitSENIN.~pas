unit UnitSENIN;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, MPlayer, ExtCtrls, DBCtrls, Grids, DBGrids, DB, ADODB;

type
  TFormSENIN = class(TForm)
    ADOT_SENIN: TADOTable;
    DS_SENIN: TDataSource;
    DBG_SENIN: TDBGrid;
    DBN_SENIN: TDBNavigator;
    TimerSENIN: TTimer;
    MP_SENIN: TMediaPlayer;
    LabelSENIN: TLabel;
    procedure TimerSENINTimer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSENIN: TFormSENIN;

implementation
Uses ULogin;

{$R *.dfm}

procedure TFormSENIN.TimerSENINTimer(Sender: TObject);
begin
     LabelSENIN.Caption:=FormatDateTime('HH:MM:SS',Now);
  If MP_SENIN.FileName = '' Then
  Begin
    MP_SENIN.FileName := ADOT_SENIN['MUSIK'];
  End
  Else
  Begin
    If MP_SENIN.FileName <> ADOT_SENIN['MUSIK'] Then
    Begin
       MP_SENIN.FileName := ADOT_SENIN['MUSIK'];
    End;
  End;

  If LabelSENIN.Caption = ADOT_SENIN['PUKUL'] Then
  Begin
    MP_SENIN.Open;
    MP_SENIN.Play;
    ADOT_SENIN.Next;
  End;
end;

procedure TFormSENIN.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FormSENIN := Nil;
  Action := CaFree;
end;

end.
