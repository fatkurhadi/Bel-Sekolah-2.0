unit ULOGIN;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ADODB, jpeg, ExtCtrls;

type
  TFLOGIN = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    ADO1: TADOConnection;
    BitBtn1: TBitBtn;
    Image1: TImage;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLOGIN: TFLOGIN;

implementation

uses UnitBELSEKOLAH;

{$R *.dfm}

procedure TFLOGIN.BitBtn1Click(Sender: TObject);
Var
  D : String;
begin
  D:= Form_BEL_SEKOLAH.The_Path+'BEL_SEKOLAH.mdb';
  If ADO1.Connected = False Then
  Begin
    ADO1.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+D+';Persist Security Info=False';
    ADO1.Connected := True;
  End;                     
  BitBtn1.Enabled := False;
  form_Bel_Sekolah.Timer1.Enabled := True;
  Close;
end;

end.
