program tirex;

uses
  Forms,
  uutama in 'uutama.pas' {ff0};

{$R *.res}
{$R backupres.res} 

begin
  Application.Initialize;
  Application.Title := 'T-Rex Tunnel';
  Application.CreateForm(Tff0, ff0);
  Application.Run;
end.
