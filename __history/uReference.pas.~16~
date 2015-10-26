unit uReference;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uUsers, uPosts, uCurators, uDivision, DB;

type
  TfrmReference = class(TForm)
    sprUsers1: TsprUsers;
    sprPosts1: TsprPosts;
    sprCurators1: TsprCurators;
    sprDepartments1: TsprDepartments;
    procedure FormResize(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReference: TfrmReference;

implementation

{$R *.dfm}

uses
  uMain;

procedure TfrmReference.FormActivate(Sender: TObject);
begin
  if fMain.msCon.Connected then
  begin
    with sprUsers1 do
    begin
      with Departments do
      begin
        Close;
        Connection := fMain.msCon;
        Open;
      end;
      with Posts do
      begin
        Close;
        Connection := fMain.msCon;
        Open;
      end;
      with MSQuery1 do
      begin
        Close;
        Connection := fMain.msCon;
        Open;
      end;
    end;
    with sprPosts1 do
    begin
      with MSQuery1 do
      begin
        Close;
        Connection := fMain.msCon;
        Open;
      end;
    end;
    with sprDepartments1 do
    begin
      with MSTable2 do
      begin
        Close;
        Connection := fMain.msCon;
        Open;
      end;
      with MSTable1 do
      begin
        Close;
        Connection := fMain.msCon;
        Open;
      end;
    end;
  end;
end;

procedure TfrmReference.FormResize(Sender: TObject);
begin
  // sprTaskList1.DBGridEh1.Height:= frmReference.Height - 70;
end;

end.
