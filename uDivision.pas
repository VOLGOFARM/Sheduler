unit uDivision;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, DB, DBAccess, MSAccess, MemDS, Grids, DBGridEh, GridsEh, ComCtrls,
  ToolWin, ExtCtrls, DimTB, DBGridEhGrouping;

type
  TsprDepartments = class(TFrame)
    DBGridEh1: TDBGridEh;
    MSTable1: TMSTable;
    MSDataSource1: TMSDataSource;
    DBPanel1: TDBPanel;
    MSTable1ID: TIntegerField;
    MSTable1DepartmentName: TStringField;
    MSTable1DepartmetOwner: TIntegerField;
    MSTable2: TMSTable;
    MSTable1DepNameSubDivision: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}
uses uMain;

end.
