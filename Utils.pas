unit Utils;

interface

uses
  FMX.DialogService,
  System.SysUtils,
  Fmx.Dialogs,
  System.UITypes;

procedure MensagemYesNo(aMensagem : string; aProcedureYes : TProc = nil; aProcedureNo : TProc = nil);

implementation

procedure MensagemYesNo(aMensagem : string; aProcedureYes : TProc = nil; aProcedureNo : TProc = nil);
Begin

  TDialogService.MessageDialog(aMensagem, TMsgDlgType.mtConfirmation, [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], TMsgDlgBtn.mbNo, 0,
  procedure(const AResult: TModalResult)
   begin
    case AResult of
      mrYes :
      begin
        if Assigned(aProcedureYes) then
          aProcedureYes;
      end;
      mrNo :
      begin
        if Assigned(aProcedureNo) then
          aProcedureNo;
      end;
    end;
  end);

End;
end.
