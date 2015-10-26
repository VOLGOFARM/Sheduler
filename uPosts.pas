unit uPosts;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, MemDS, DBAccess, MSAccess, Grids, DBGridEh, GridsEh, ComCtrls,
  ToolWin, ExtCtrls, DimTB, DBGridEhGrouping;

type
  TsprPosts = class(TFrame)
    DBGridEh1: TDBGridEh;
    MSDataSource1: TMSDataSource;
    MSQuery1: TMSQuery;
    MSQuery1PostName: TStringField;
    MSQuery1ID: TIntegerField;
    DBPanel1: TDBPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses uMain;

end.
