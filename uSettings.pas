unit uSettings;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, MemDS, DBAccess, MSAccess;

type
  TfSettings = class(TForm)
    Button1: TButton;
    btCancel: TButton;
    CheckBox1: TCheckBox;
    procedure btCancelClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SetParam;
    procedure SaveParam;
  end;

var
  fSettings: TfSettings;

implementation

Uses
  uMain;

{$R *.dfm}

procedure TfSettings.btCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfSettings.Button1Click(Sender: TObject);
begin
  SaveParam;
end;

procedure TfSettings.FormActivate(Sender: TObject);
begin
  SetParam;
end;

procedure TfSettings.SaveParam;
var
  MSQ: TMSQuery;
begin
  MSQ := TMSQuery.Create(nil);
  MSQ.Connection := fMain.msCon;

  with MSQ do begin
    SQL.Clear;
    SQL.Add(' Select idrow from Properties where UserID = :UserID ');
    ParamByName('UserID').AsInteger := fMain.CurrentUser;
    Open;
  end;

  if MSQ.RecordCount = 0 then
    with MSQ do begin
      SQL.Clear;
      SQL.Add(' insert into Properties (UserID,EndTaskWithClose) values (:USerID, :EndTaskWithClose) ');
      ParamByName('UserID').AsInteger := fMain.CurrentUser;
      ParamByName('EndTaskWithClose').AsBoolean := CheckBox1.Checked;
      ExecSQL;
    end
  else
    with MSQ do begin
      SQL.Clear;
      SQL.Add(' Update Properties Set EndTaskWithClose = :EndTaskWithClose where UserID = :UserID');
      ParamByName('UserID').AsInteger := fMain.CurrentUser;
      ParamByName('EndTaskWithClose').AsBoolean := CheckBox1.Checked;
      ExecSQL;
    end;

    with MSQ do begin
      SQL.Clear;
      SQL.Add(' Select idrow from Properties where UserID = :UserID and EndTaskWithClose = :EndTaskWithClose ');
      ParamByName('UserID').AsInteger := fMain.CurrentUser;
      ParamByName('EndTaskWithClose').AsBoolean := CheckBox1.Checked;
      Open;
    end;
    if MSQ.RecordCount > 0 then fMain.SetEndTaskWithClose := CheckBox1.Checked;
  Close;
end;

procedure TfSettings.SetParam;
begin
  CheckBox1.Checked := fMain.SetEndTaskWithClose;
end;

end.
