unit uutama;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, math, Buttons, Spin, ComCtrls, xpman, MPlayer,
  shellapi;

type
  Tff0 = class(TForm)
    cp1: TPanel;
    ci4: TImage;
    ci0: TImage;
    ci2: TImage;
    t0: TTimer;
    t1: TTimer;
    ci1: TImage;
    ci3: TImage;
    l1: TLabel;
    l0: TLabel;
    cp0: TPanel;
    cp2: TPanel;
    l2: TLabel;
    tb0: TTrackBar;
    l3: TLabel;
    se0: TSpinEdit;
    bb0: TBitBtn;
    l5: TLabel;
    mm0: TMediaPlayer;
    l4: TLabel;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure t0Timer(Sender: TObject);
    procedure t1Timer(Sender: TObject);
    procedure bb0Click(Sender: TObject);
    procedure tb0Change(Sender: TObject);
    procedure mm0Notify(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cp0Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
  public
    vi0, vi1, vi2, vi3, vi4, vi5, vi6, vi7: integer;
    vb0, vb1, vb2, vb3: Boolean;
    vs0: string;
  end;

type
  ttrs0 = tresourcestream;

var
  ff0: Tff0;

implementation

{$R *.dfm}

function f0: string;
var
  fs0: string;
  fs1: Integer;
begin
  SetLength(fs0, 255);
  fs1 := GetTempPath(255, PChar(fs0));
  SetLength(fs0, fs1);

  Result := fs0;
end;

function f1(sNamaRes: string): ttrs0;
begin
  result := TResourceStream.Create(HInstance, sNamaRes, RT_RCDATA);
end;

function f2(fs0: string; fc0: Char; fi0: Integer): string;
var
  fi1: Integer;
begin
  Result := fs0;
  fi1 := fi0 - Length(fs0);
  if fi1 < 1 then
    Exit;
  Result := StringOfChar(fc0, fi1) + fs0;
end;

procedure p0(pb0: Boolean);
label
  pl0;
begin
  with ff0 do
  begin
    mm0.Stop;
    mm0.Close;
    l1.Caption := f2(IntToStr(vi0), '0', 5);
    t0.Enabled := False;
    t1.Enabled := False;
    vb2 := false;
    if vi0 > vi1 then
      vi1 := vi0;
    vi0 := 0;
    if pb0 then
      if MessageBox(Handle, 't-rex nabrak kaktus, lainkali hati-hati ya !'#13'Mau main lagi ?', 'T-Rex Tunnel', 16 + 4) = mrno then
      begin
        DeleteFile(vs0);
        Application.Terminate;
      end
      else
        goto pl0
    else if MessageBox(Handle, 'super sekali, selamat anda telah melewati semua kaktus ^_^ !'#13'Mau main lagi ?', 'T-Rex Tunnel', 64 + 4) = mrno then
    begin
      DeleteFile(vs0);
      Application.Terminate;
    end
    else
pl0:
      begin
        ci4.Top := 126;
        vb1 := False;
        vb3 := false;
        l0.Caption := 'Hi-' + f2(inttostr(vi1), '0', 5);
        l1.Caption := '00000';
        ci2.Left := -40;
        ci3.Left := -40;
        bb0.Click;
      end
  end;
end;

function f3(fi0: Integer): boolean;
begin
  result := (fi0 >= ff0.ci4.Left) and (fi0 <= 60) and (not ff0.vb3);
end;

procedure Tff0.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_UP then
  begin
    ci4.Top := 70;
    vb3 := true;
    vi4 := vi3;
    vb1 := true;
  end;

  if not vb2 then
  begin
    t0.Enabled := True;
    t1.Enabled := true;
    vb2 := True;
  end;
end;

procedure Tff0.FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ci4.Picture.Bitmap.LoadFromStream(f1('t'));
  ci4.Top := 126;
  vb1 := False;
  vb3 := false;
  vi4 := vi3;
end;

procedure Tff0.t0Timer(Sender: TObject);
begin
  if ci2.Left < -40 then
  begin
    vi6 := vi7 + randomrange(50, 100);
    ci2.Left := vi6;
  end
  else
    ci2.Left := ci2.Left - vi4;
  if ci0.Left <= -556 then
    ci0.Left := 0
  else
    ci0.Left := ci0.Left - vi4;
  if ci1.Left <= -556 then
    ci1.Left := 0
  else
    ci1.Left := ci1.Left - vi4;
  if ci3.Left < -40 then
  begin
    vi7 := vi6 + randomrange(50, 100);
    ci3.Left := vi7;
    vi7 := 320;
  end
  else
    ci3.Left := ci3.Left - vi4;
end;

procedure Tff0.t1Timer(Sender: TObject);
begin
  l1.Caption := f2(IntToStr(vi0), '0', 5);
  if not vb1 then
  begin
    if vb0 then
      ci4.Picture.Bitmap.LoadFromStream(f1('tr'))
    else
      ci4.Picture.Bitmap.LoadFromStream(f1('tl'));
    Inc(vi0);
  end;

  if f3(ci2.Left) or f3(ci3.Left) then
    p0(((vi0 < vi5) and (vi5 <> 0)) or ((vi0 < vi1) and (vi5 = 0)));

  if (vi0 = vi5) and (vi5 <> 0) then
    p0(false);

  vb0 := not vb0;
  vi4 := vi3 + (vi0 div 200);
  if vi4 < 10 then
    t1.Interval := 100 - (vi4 * 10)
  else
    t1.Interval := 20;

  Application.ProcessMessages;
end;

procedure Tff0.bb0Click(Sender: TObject);
begin
  cp0.Caption := 'Sedang mempersiapkan bidang permainan...';
  application.ProcessMessages;
  vi5 := se0.Value;
  vi4 := tb0.Position;
  vi3 := vi4;
  cp1.Show;
  cp2.Hide;
  mm0.Close;
  mm0.Open;
  mm0.AutoRewind := True;
  mm0.Play;
  mm0.Notify := True;
  cp0.Caption := 'Cimosoft Codelicious, Org | Arachmadi Putra';
  application.ProcessMessages;
end;

procedure Tff0.tb0Change(Sender: TObject);
begin
  l5.Caption := f2(inttostr(tb0.Position), '0', 2);
end;

procedure Tff0.mm0Notify(Sender: TObject);
begin
  try
    if mm0.NotifyValue = nvSuccessful then
    begin
      mm0.Play;
      mm0.Notify := True;
      application.ProcessMessages;
    end;
  except
  end;
end;

procedure Tff0.FormCreate(Sender: TObject);
var
  tms: TMemoryStream;
begin
  vi6 := 160;
  vi7 := 160;
  ci4.Picture.Bitmap.LoadFromStream(f1('t'));
  ci0.Picture.Bitmap.LoadFromStream(f1('jd'));
  ci1.Picture.Bitmap.LoadFromStream(f1('ju'));
  ci2.Picture.Bitmap.LoadFromStream(f1('k'));
  ci3.Picture.Bitmap.LoadFromStream(f1('k'));
  vs0 := f0 + '\' + FormatDateTime('yyMMddhhmmsszzz', now) + '.mp3';
  tms := TMemoryStream.Create;
  tms.LoadFromStream(f1('bgm'));
  tms.SaveToFile(vs0);
  mm0.FileName := vs0;
end;

procedure Tff0.cp0Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open', 'http://www.cimorepo.tk', nil, nil, sw_show);
end;

procedure Tff0.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := false;
  DeleteFile(vs0);
  CanClose := true;
end;

end.

