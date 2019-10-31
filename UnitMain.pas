unit UnitMain;

interface

uses
     Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls,
     IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP;

type
     TFormMain = class(TForm)
          ButtonSend: TButton;
          LabelAnalytics: TLabel;
          MemoResult: TMemo;
          IdHTTP: TIdHTTP;
          LabelResults: TLabel;
          PageControl: TPageControl;
          PanelParams: TPanel;
          Label_V: TLabel;
          Edit_V: TEdit;
          Label_TID: TLabel;
          Edit_TID: TEdit;
          Edit_CID: TEdit;
          Label_CID: TLabel;
          Label_AN: TLabel;
          Edit_AN: TEdit;
          Edit_CD: TEdit;
          Label_CD: TLabel;
          LabelType: TLabel;
          Edit_UID: TEdit;
          Label_UID: TLabel;
          TabEvent: TTabSheet;
          Edit_EL: TEdit;
          Label_EL: TLabel;
          Label_EV: TLabel;
          Edit_EV: TEdit;
          Edit_EA: TEdit;
          Label_EA: TLabel;
          Edit_EC: TEdit;
          Label_EC: TLabel;
          TabPageView: TTabSheet;
          Edit_DH: TEdit;
          Label_DH: TLabel;
          Label_DP: TLabel;
          Edit_DP: TEdit;
          Label_DT: TLabel;
          Edit_DT: TEdit;
          Edit_SR: TEdit;
          Label_SR: TLabel;
          Edit_AV: TEdit;
          Label_AV: TLabel;
          Edit_UA: TEdit;
          Label_UA: TLabel;
          Edit_DS: TEdit;
          Label_DS: TLabel;
          Edit_CN: TEdit;
          Label_CN: TLabel;
          procedure ButtonSendClick(Sender: TObject);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     FormMain: TFormMain;

implementation

{$R *.dfm}

procedure TFormMain.ButtonSendClick(Sender: TObject);
var
     sResponse: string;
     EnvStr: TStringList;
begin
     // https://developers.google.com/analytics/devguides/collection/protocol/v1/devguide?hl=pt-br
     // EXEMPLOS UA-128990494-3
     ButtonSend.Enabled := False;
     //
     MemoResult.Lines.Clear;
     //
     EnvStr := TStringList.Create;
     //
     EnvStr.Clear;
     //

     if PageControl.ActivePage = TabPageView then
     begin
          if Edit_V.Text <> '' then
               EnvStr.Values['v'] := Edit_V.Text;
          if Edit_TID.Text <> '' then
               EnvStr.Values['tid'] := Edit_TID.Text;
          if Edit_CID.Text <> '' then
               EnvStr.Values['cid'] := Edit_CID.Text;
          //
          EnvStr.Values['t'] := TabPageView.Hint;
          //
          if Edit_DH.Text <> '' then
               EnvStr.Values['dh'] := Edit_DH.Text;
          if Edit_DP.Text <> '' then
               EnvStr.Values['dp'] := Edit_DP.Text;
          if Edit_DT.Text <> '' then
               EnvStr.Values['dt'] := Edit_DT.Text;
          //
          EnvStr.Values['dr'] := 'http://www.zoetecnologia.com.br';
          EnvStr.Values['cn'] := '(direct)';
          EnvStr.Values['cs'] := 'Version ' + Edit_AV.Text;
          EnvStr.Values['cm'] := 'Windows 10';
          EnvStr.Values['ck'] := 'UserName';
          EnvStr.Values['cc'] := 'content';
     end;
     //
     if PageControl.ActivePage = TabEvent then
     begin
          EnvStr.Values['v'] := Edit_V.Text;
          EnvStr.Values['tid'] := Edit_TID.Text;
          EnvStr.Values['cid'] := Edit_CID.Text;
          //
          EnvStr.Values['t'] := TabEvent.Hint;
          //
          EnvStr.Values['ec'] := Edit_EC.Text;
          EnvStr.Values['ea'] := Edit_EA.Text;
          EnvStr.Values['el'] := Edit_EL.Text;
          EnvStr.Values['ev'] := Edit_EV.Text;
     end;
     //
     if (EnvStr.Text <> '') then
     begin
          try
               sResponse := IdHTTP.Post(LabelAnalytics.Caption, EnvStr);
          except
               on E: Exception do
                    ShowMessage('Error on request: '#13#10 + E.Message);
          end;
          //
          Application.ProcessMessages;
          //
          MemoResult.Lines.Add(DateTimeToStr(Now));
          MemoResult.Lines.Add('=====================');
          MemoResult.Lines.Add(sResponse);
          MemoResult.Lines.Add(IdHTTP.ResponseText);
          MemoResult.Lines.Add('=====================');
          MemoResult.Lines.Add(LabelAnalytics.Caption);
          MemoResult.Lines.Add(EnvStr.Text);
     end;
     //
     EnvStr.Free;
     //
     ButtonSend.Enabled := True;
end;

end.
