program ProjectBELSEKOLAH;

uses
  Forms,
  UnitBELSEKOLAH in 'UnitBELSEKOLAH.pas' {Form_BEL_SEKOLAH},
  UnitSENIN in 'UnitSENIN.pas' {FormSENIN},
  UnitSELASA in 'UnitSELASA.pas' {FormSELASA},
  UnitRABU in 'UnitRABU.pas' {FormRABU},
  UnitKAMIS in 'UnitKAMIS.pas' {FormKAMIS},
  UnitJUMAT in 'UnitJUMAT.pas' {FormJUMAT},
  UnitSABTU in 'UnitSABTU.pas' {FormSABTU},
  UDM in 'UDM.pas' {DM: TDataModule},
  ULOGIN in 'ULOGIN.pas' {FLOGIN};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm_BEL_SEKOLAH, Form_BEL_SEKOLAH);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFLOGIN, FLOGIN);
  Application.Run;
end.
