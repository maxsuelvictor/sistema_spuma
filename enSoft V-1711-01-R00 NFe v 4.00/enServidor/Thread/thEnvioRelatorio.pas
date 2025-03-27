unit thEnvioRelatorio;

interface

uses
   Winapi.Windows,System.Classes,System.Math,System.SysUtils,System.Variants,Vcl.Forms,Vcl.Dialogs,System.IniFiles,Data.SqlExpr,Datasnap.DBClient,Datasnap.Provider, Data.DB,ShellAPI,
       frxClass;

type
  EnvioRelatorio = class(TThread)

  public
   // constructor Create(CreateSuspended:Boolean;horario:String);

  private
    { Private declarations }
    procedure Enviar;
    function GetMsgEmail(Id_empresa,emp_fantasia,data:String):String;


  protected
    procedure Execute; override;


  end;

implementation

uses enFR, enConstantes, uServer;


function EnvioRelatorio.GetMsgEmail(Id_empresa,emp_fantasia,data:String):String;
begin
  Result :=
      '<body> '+
      '  <font size="1" face="arial"> '+
      '    <center> '+
      '      (Mariores informações sobre os anexos no corpo do e-mail) '+
      '    </center> '+
      '  </font></br> '+

      '  <table border="2" bgcolor="F5FFFA" width="100%"> '+
      '  <tr><td> '+

      '     <center> '+
      '     <table border="0" bgcolor="F5FFFA" width="95%"> '+
      '     <tr><td> '+

      '         <font size="2" face="arial"> '+

      '            <p>Você está recebendo Relatório Gerencial de Vendas da Empresa <b>'+Id_empresa+' - '+emp_fantasia+'</b> gerado no dia <b>'+data+'</b> </p>'+
      '         </font> '+

      '        </td> '+
      '     </tr> '+
      '          </table> '+
      '          </center> '+
      '       </td> '+
      '     </tr> '+

      '   </table> '+

      '   <font size="1" face="arial"> '+
      '     Esse e-mail, bem como seu(s) anexo(s), foi gerado pelo sistema enSoft(www.e-north.com.br), '+
      '     parte integrante do pacote '+ copy(ExtractFileName(Application.ExeName),1,Length(ExtractFileName(Application.ExeName))-4)+'. '+
      '   </font> '+

      '</body> ';
end;



procedure EnvioRelatorio.Enviar;
var
  agora:TDateTime;
  PathImg,xOpcoes: String;
  LogoEmpresa: TfrxPictureView;
  FR:TFR;
  dtaInicial,dtaFinal,dirPdf,nomePdf:String;
  qtdeRegistro:Integer;
  ArqIni:TInifile;
  nomeArq:String;
begin

  try


     FR := TFR.Create(nil);
     AGORA := NOW;

     dtainicial := '01/'+formatdatetime('mm/yyyy',AGORA);
     dtaFinal := DateToStr(AGORA-1);

     nomePdf := 'GRV'+formatdatetime('dd-mm-yyyy',AGORA)+'.pdf';

     ArqIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'Arquivo_enviado.Ini');

     FR.CAD_CD_C_PAR.Close;
     FR.CAD_CD_C_PAR.Data :=
     FR.CAD_CD_C_PAR.DataRequest(VarArrayOf([1]));


     FR.CSU_CD_M_GER_FVN_MED.CreateDataSet;
     FR.CAD_CD_C_PAR.First;
     while not  FR.CAD_CD_C_PAR.eof do
       begin

         nomeArq := ArqIni.ReadString('EMPRESA_'+FR.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString, 'REL_GRV', '');


        if (nomeArq <> nomePdf) AND
           (FR.CAD_CD_C_PAR_CTR.FieldByName('enviar_rel_grv').AsBoolean=true) and (FR.CAD_CD_C_PAR_EML.RecordCount>0) then
          begin
            FR.CSU_CD_M_GER_FVN.Close;
            FR.CSU_CD_M_GER_FVN.Data :=
            FR.CSU_CD_M_GER_FVN.DataRequest(VarArrayOf([FR.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,dtaInicial,dtaFinal]));



            FR.CSU_CD_M_GER_FVN_MED.EmptyDataSet;

            FR.CSU_CD_M_GER_FVN_MED.Insert;

            FR.CSU_CD_M_GER_FVN_MED.FieldByName('VLR_BRUTO_DIA').AsCurrency := 0;
            FR.CSU_CD_M_GER_FVN_MED.FieldByName('VLR_DESCONTO_DIA').AsCurrency := 0;
            FR.CSU_CD_M_GER_FVN_MED.FieldByName('VLR_LIQUIDO_DIA').AsCurrency := 0;

            FR.CSU_CD_M_GER_FVN_MED.FieldByName('VLR_BRUTO_MSL').AsCurrency := 0;
            FR.CSU_CD_M_GER_FVN_MED.FieldByName('VLR_DESCONTO_MSL').AsCurrency := 0;
            FR.CSU_CD_M_GER_FVN_MED.FieldByName('VLR_LIQUIDO_MSL').AsCurrency := 0;


            FR.CSU_CD_M_GER_FVN.First;
            while not FR.CSU_CD_M_GER_FVN.eof do
               begin
                  FR.CSU_CD_M_GER_FVN_MED.FieldByName('VLR_BRUTO_DIA').AsCurrency :=
                        FR.CSU_CD_M_GER_FVN_MED.FieldByName('VLR_BRUTO_DIA').AsCurrency+
                         FR.CSU_CD_M_GER_FVN.FieldByName('VLR_BRUTO_DIA').AsCurrency;

                  FR.CSU_CD_M_GER_FVN_MED.FieldByName('VLR_DESCONTO_DIA').AsCurrency :=
                       FR.CSU_CD_M_GER_FVN_MED.FieldByName('VLR_DESCONTO_DIA').AsCurrency+
                         FR.CSU_CD_M_GER_FVN.FieldByName('VLR_DESCONTO_DIA').AsCurrency;

                  FR.CSU_CD_M_GER_FVN_MED.FieldByName('VLR_LIQUIDO_DIA').AsCurrency :=
                      FR.CSU_CD_M_GER_FVN_MED.FieldByName('VLR_LIQUIDO_DIA').AsCurrency+
                         FR.CSU_CD_M_GER_FVN.FieldByName('VLR_LIQUIDO_DIA').AsCurrency;

                  FR.CSU_CD_M_GER_FVN_MED.FieldByName('VLR_BRUTO_MSL').AsCurrency :=
                      FR.CSU_CD_M_GER_FVN_MED.FieldByName('VLR_BRUTO_MSL').AsCurrency+
                         FR.CSU_CD_M_GER_FVN.FieldByName('VLR_BRUTO_MSL').AsCurrency;

                  FR.CSU_CD_M_GER_FVN_MED.FieldByName('VLR_DESCONTO_MSL').AsCurrency :=
                       FR.CSU_CD_M_GER_FVN_MED.FieldByName('VLR_DESCONTO_MSL').AsCurrency+
                         FR.CSU_CD_M_GER_FVN.FieldByName('VLR_DESCONTO_MSL').AsCurrency;

                  FR.CSU_CD_M_GER_FVN_MED.FieldByName('VLR_LIQUIDO_MSL').AsCurrency :=
                       FR.CSU_CD_M_GER_FVN_MED.FieldByName('VLR_LIQUIDO_MSL').AsCurrency+
                         FR.CSU_CD_M_GER_FVN.FieldByName('VLR_LIQUIDO_MSL').AsCurrency;



                  FR.CSU_CD_M_GER_FVN.Next;
               end;


            FR.CSU_CD_M_GER_FVN.First;
            if  FR.CSU_CD_M_GER_FVN.RecordCount>0 then
              begin
                 FR.CSU_CD_M_GER_FVN_MED.FieldByName('VLR_BRUTO_DIA').AsCurrency :=
                      RoundTo( FR.CSU_CD_M_GER_FVN_MED.FieldByName('VLR_BRUTO_DIA').AsCurrency/FR.CSU_CD_M_GER_FVN.RecordCount,-2);

                 FR.CSU_CD_M_GER_FVN_MED.FieldByName('VLR_DESCONTO_DIA').AsCurrency :=
                      RoundTo( FR.CSU_CD_M_GER_FVN_MED.FieldByName('VLR_DESCONTO_DIA').AsCurrency/FR.CSU_CD_M_GER_FVN.RecordCount,-2);

                 FR.CSU_CD_M_GER_FVN_MED.FieldByName('VLR_LIQUIDO_DIA').AsCurrency :=
                      RoundTo( FR.CSU_CD_M_GER_FVN_MED.FieldByName('VLR_LIQUIDO_DIA').AsCurrency/FR.CSU_CD_M_GER_FVN.RecordCount,-2);


                 FR.CSU_CD_M_GER_FVN_MED.FieldByName('VLR_BRUTO_MSL').AsCurrency :=
                      RoundTo( FR.CSU_CD_M_GER_FVN_MED.FieldByName('VLR_BRUTO_MSL').AsCurrency/FR.CSU_CD_M_GER_FVN.RecordCount,-2);


                 FR.CSU_CD_M_GER_FVN_MED.FieldByName('VLR_DESCONTO_MSL').AsCurrency :=
                      RoundTo( FR.CSU_CD_M_GER_FVN_MED.FieldByName('VLR_DESCONTO_MSL').AsCurrency/FR.CSU_CD_M_GER_FVN.RecordCount,-2);


                 FR.CSU_CD_M_GER_FVN_MED.FieldByName('VLR_LIQUIDO_MSL').AsCurrency :=
                      RoundTo( FR.CSU_CD_M_GER_FVN_MED.FieldByName('VLR_LIQUIDO_MSL').AsCurrency/FR.CSU_CD_M_GER_FVN.RecordCount,-2);

              end;

             FR.CSU_CD_M_GER_NCL.Close;
             FR.CSU_CD_M_GER_NCL.Data :=
             FR.CSU_CD_M_GER_NCL.DataRequest(VarArrayOf([FR.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,dtaInicial,dtaFinal]));




             if ((FR.CSU_CD_M_GER_NCL.RecordCount>0) or (FR.CSU_CD_M_GER_FVN.RecordCount>0)) then
               begin
                 dirPdf := ExtractFilePath(Application.ExeName)+'GRV'+formatdatetime('dd-mm-yyyy',AGORA)+'.pdf';

                 PathImg := ExtractFilePath(Application.ExeName)+'emp'+FR.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').Text+'\LogoEmpresa.jpg';
                 if FileExists(PathImg) then
                  begin
                    LogoEmpresa := TfrxPictureView(FR.CSU_FR_R_GER_FVN.FindObject('imgEmpresa1'));
                    if Assigned(LogoEmpresa) then
                      LogoEmpresa.Picture.LoadFromFile(PathImg);
                  end;
                xOpcoes := #13+#10+#13+#10 + '< Opções do relatório >' + #13+#10+#13+#10;
                xOpcoes := xOpcoes + 'Empresa............: ' +FR.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString +' - '+
                                                              FR.CAD_CD_C_PAR.FieldByName('EMP_FANTASIA').AsString+#13+#10;

                FR.CSU_FR_R_GER_FVN.Variables['dia'] := formatdatetime('dd',Agora-1);
                FR.CSU_FR_R_GER_FVN.Variables['mes'] := formatdatetime('mm',Agora);


                FR.CSU_FR_R_GER_FVN.Variables['Assin_enorth'] := QuotedStr(CAssin_Enorth);
                FR.CSU_FR_R_GER_FVN.Variables['Opcoes'] := QuotedStr(xOpcoes);
                FR.CSU_FR_R_GER_FVN.PrepareReport(true);

                FR.PAD_PD_R_REL.FileName :=  dirPdf;
                FR.PAD_PD_R_REL.ShowDialog := false;
                FR.CSU_FR_R_GER_FVN.EXPORT(FR.PAD_PD_R_REL);


                FR.ACBrMail.Body.Add(GetMsgEmail(FR.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString,
                                                 FR.CAD_CD_C_PAR.FieldByName('EMP_FANTASIA').AsString,formatdatetime('dd/mm/yyyy',AGORA)));

                FR.ACBrMail.Subject := 'Relatório Gerencial de Vendas';
                FR.ACBrMail.Host :=TRIM(FR.CAD_CD_C_PAR_NFE.FieldByName('EMAIL_SMTP').AsString);
                FR.ACBrMail.Port :=TRIM(FR.CAD_CD_C_PAR_NFE.FieldByName('EMAIL_SMTP_PORTA').AsString);
                FR.ACBrMail.Username :=TRIM(FR.CAD_CD_C_PAR_NFE.FieldByName('EMAIL_USUARIO').AsString);
                FR.ACBrMail.Password :=TRIM(FR.CAD_CD_C_PAR_NFE.FieldByName('EMAIL_SENHA').AsString);
                FR.ACBrMail.From :=TRIM(FR.CAD_CD_C_PAR_NFE.FieldByName('EMAIL_USUARIO').AsString);
                FR.ACBrMail.Attempts := 1;

                FR.ACBrMail.SetSSL := FALSE; // SSL - ConexÃ£o Segura
                FR.ACBrMail.SetTLS := FALSE; // Auto TLS

                if (not FR.CAD_CD_C_PAR_NFE.FieldByname('EMAIL_SMTP_TLS').IsNull) then
                  begin
                     FR.ACBrMail.SetTLS := FR.CAD_CD_C_PAR_NFE.FieldByname('EMAIL_SMTP_TLS').asBoolean;
                  end;

                if (not FR.CAD_CD_C_PAR_NFE.FieldByname('EMAIL_SMTP_SSL').IsNull) then
                  begin
                     FR.ACBrMail.SetSSL := FR.CAD_CD_C_PAR_NFE.FieldByname('EMAIL_SMTP_SSL').asBoolean;
                  end;

                FR.ACBrMail.ReadingConfirmation := False; //Pede confirmaÃ§Ã£o de leitura do email
                FR.ACBrMail.UseThread := False;           //Aguarda Envio do Email(nÃ£o usa thread)
                FR.ACBrMail.FromName := '';//trim(dmGeral.CAD_CD_C_PAR_NFE.FieldByname('EMAIL_USUARIO').asString);
                FR.ACBrMail.IsHTML := true;

                FR.CAD_CD_C_PAR_EML.First;
                while not FR.CAD_CD_C_PAR_EML.eof do
                  begin
                     FR.ACBrMail.AddCC(trim(FR.CAD_CD_C_PAR_EML.FieldByName('email').AsString));
                     FR.CAD_CD_C_PAR_EML.Next;
                  end;

                FR.ACBrMail.AddAttachment(dirPdf);
                ArqIni.WriteString('EMPRESA_'+FR.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString, 'REL_GRV', nomePdf);
                try

                  FR.ACBrMail.Send(false);

                except
                   ArqIni.WriteString('EMPRESA_'+FR.CAD_CD_C_PAR.FieldByName('ID_EMPRESA').AsString, 'REL_GRV', '');
                end;


                deletefile(dirPdf);

             end;

          end;

         FR.CAD_CD_C_PAR.Next;
       end;


  finally
    FR.CSU_CD_M_GER_FVN.Close;
    FR.CSU_CD_M_GER_FVN_MED.Close;
    FR.CSU_CD_M_GER_NCL.Close;
    FR.CAD_CD_C_PAR.Close;
    FreeAndNil(FR);
    FreeAndNIl(ArqIni);
  end;
end;




procedure  EnvioRelatorio.Execute;
begin
  inherited;
   if not Terminated then
      Synchronize(Enviar);

end;

end.
