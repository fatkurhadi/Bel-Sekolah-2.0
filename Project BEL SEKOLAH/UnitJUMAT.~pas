unit UnitJUMAT;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, MPlayer, ExtCtrls, DBCtrls, Grids, DBGrids, DB, ADODB;

type
  TFormJUMAT = class(TForm)
    ADOT_JUMAT: TADOTable;
    DS_JUMAT: TDataSource;
    DBG_JUMAT: TDBGrid;
    DBN_JUMAT: TDBNavigator;
    TimerJUMAT: TTimer;
    MP_JUMAT: TMediaPlayer;
    LabelJUMAT: TLabel;
    procedure TimerJUMATTimer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormJUMAT: TFormJUMAT;

implementation
Uses ULogin;

{$R *.dfm}

procedure TFormJUMAT.TimerJUMATTimer(Sender: TObject);
begin
    LabelJUMAT.Caption:=FormatDateTime('HH:MM:SS',Now);
  If MP_JUMAT.FileName = '' Then
  Begin
    MP_JUMAT.FileName := ADOT_JUMAT['MUSIK'];
  End
  Else
  Begin
    If MP_JUMAT.FileName <> ADOT_JUMAT['MUSIK'] Then
    Begin
       MP_JUMAT.FileName := ADOT_JUMAT['MUSIK'];
    End;
  End;

  If LabelJUMAT.Caption = ADOT_JUMAT['PUKUL'] Then
  Begin
    MP_JUMAT.Open;
    MP_JUMAT.Play;
    ADOT_JUMAT.Next;
  End;
end;

procedure TFormJUMAT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FormJUMAT := Nil;
  Action := CaFree;
end;

end.
