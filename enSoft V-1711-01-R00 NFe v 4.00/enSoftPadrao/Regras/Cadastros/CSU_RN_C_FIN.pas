unit CSU_RN_C_FIN;

interface
uses Data.DB,System.SysUtils,System.Variants,Vcl.Dialogs,System.Math,Datasnap.DBClient,Vcl.StdCtrls;

procedure CalTotalForFin(var txtTotAberto,txtTotAVencer,txtTotVencido,txtTotSubst,txtTotJurosPg,txtTotPago,txtTotQuitado,txtTotGeral:String );
procedure CalTotalCliFin(var txtTotAberto,txtTotAVencer,txtTotVencido,txtTotSubst,
                             txtTotJurosPg,txtTotPago,txtTotQuitado,txtTotGeral,txtTotAbertoCorr:String );

implementation


Uses uDmGeral,enConstantes, uProxy;

procedure CalTotalForFin(var txtTotAberto,txtTotAVencer,txtTotVencido,txtTotSubst,txtTotJurosPg,txtTotPago,txtTotQuitado, txtTotGeral: String);
var
  TotAberto,TotAVencer,TotVencido,TotJuros,TotSubst,TotQuitado,TotGeral,TotPago: Currency;
begin
  TotAberto  := 0;
  TotAVencer := 0;
  TotVencido := 0;
  TotQuitado := 0;
  TotGeral   := 0;
  TotPago    := 0;
  TotJuros   := 0;
  TotSubst   := 0;

  dmgeral.BUS_CD_M_PAG_TIT.First;
  while not dmgeral.BUS_CD_M_PAG_TIT.Eof do
     begin

       if dmgeral.BUS_CD_M_PAG_TITvlr_saldo.AsCurrency > 0 then
          begin
              TotAberto := TotAberto + dmgeral.BUS_CD_M_PAG_TIT.FieldByName('vlr_saldo').AsCurrency;
          end;

       if (dmgeral.BUS_CD_M_PAG_TITdta_vencimento.AsDateTime >= xDataSis )and (dmgeral.BUS_CD_M_PAG_TITvlr_saldo.AsCurrency > 0) then
          begin
              TotAVencer := TotAVencer + dmgeral.BUS_CD_M_PAG_TIT.FieldByName('vlr_saldo').AsCurrency;
          end;

       if (dmgeral.BUS_CD_M_PAG_TITdta_vencimento.AsDateTime < xDataSis )and (dmgeral.BUS_CD_M_PAG_TITvlr_saldo.AsCurrency > 0) then
          begin
              TotVencido := TotVencido + dmgeral.BUS_CD_M_PAG_TIT.FieldByName('vlr_saldo').AsCurrency;
          end;

       if dmgeral.BUS_CD_M_PAG_TITvlr_saldo.AsCurrency = 0 then
          begin
              TotQuitado := TotQuitado + dmgeral.BUS_CD_M_PAG_TIT.FieldByName('vlr_parcela').AsCurrency;
          end;

        dmgeral.BUS_CD_M_PAG_TIT_PAG.First;
        while not dmgeral.BUS_CD_M_PAG_TIT_PAG.Eof do
          begin
            if dmgeral.BUS_CD_M_PAG_TIT_PAGcom_substituicao.AsBoolean then
                begin
                  TotSubst := TotSubst + dmgeral.BUS_CD_M_PAG_TIT_PAGvlr_pagamento.AsCurrency;
                end
             else
                begin
                  TotPago  := TotPago + dmgeral.BUS_CD_M_PAG_TIT_PAGvlr_pagamento.AsCurrency;
                  TotJuros := TotJuros + dmgeral.BUS_CD_M_PAG_TIT_PAGvlr_juros.AsCurrency;
                end;

            //TotPago := TotPago + dmgeral.BUS_CD_M_PAG_TIT_PAGvlr_pagamento.AsCurrency;
            dmgeral.BUS_CD_M_PAG_TIT_PAG.Next;
          end;

       //TotGeral := TotAberto + TotQuitado;
       TotGeral := TotGeral + dmgeral.BUS_CD_M_PAG_TITvlr_parcela.AsCurrency;
       dmgeral.BUS_CD_M_PAG_TIT.Next;
     end;
  dmgeral.BUS_CD_M_PAG_TIT.First;

  txtTotAberto := FormatCurr('###,###,###,###,##0.00',TotAberto);
  txtTotAVencer := FormatCurr('###,###,###,###,##0.00',TotAVencer);
  txtTotVencido := FormatCurr('###,###,###,###,##0.00',TotVencido);

  txtTotSubst := FormatCurr('###,###,###,###,##0.00',TotSubst);
  txtTotJurosPg := FormatCurr('###,###,###,###,##0.00',TotJuros);

  txtTotPago := FormatCurr('###,###,###,###,##0.00',TotPago);
  txtTotQuitado := FormatCurr('###,###,###,###,##0.00',TotQuitado);
  txtTotGeral := FormatCurr('###,###,###,###,##0.00',TotGeral);
end;

procedure CalTotalCliFin(var txtTotAberto,txtTotAVencer,txtTotVencido,txtTotSubst,txtTotJurosPg,
                             txtTotPago,txtTotQuitado,txtTotGeral,txtTotAbertoCorr: String);
var
  TotAberto,TotAVencer,TotVencido,TotJuros,TotPago,TotQuitado,TotSubst, TotGeral,TotAbertoCorr: Currency;
begin
  TotAberto   := 0;
  TotAVencer  := 0;
  TotVencido  := 0;
  TotJuros    := 0;
  TotPago     := 0;
  TotQuitado  := 0;
  TotGeral      := 0;
  TotAbertoCorr := 0;
  TotSubst      := 0;


  dmgeral.BUS_CD_M_REC.First;
  while not dmgeral.BUS_CD_M_REC.Eof do
     begin

       if dmgeral.BUS_CD_M_RECvlr_saldo.AsCurrency > 0 then
          begin
              TotAberto := TotAberto + dmgeral.BUS_CD_M_RECvlr_saldo.AsCurrency;
          end;

       if (dmgeral.BUS_CD_M_RECdta_vencimento.AsDateTime >= xDataSis )and (dmgeral.BUS_CD_M_RECvlr_saldo.AsCurrency > 0) then
          begin
              TotAVencer := TotAVencer + dmgeral.BUS_CD_M_RECvlr_saldo.AsCurrency;
          end;

       if (dmgeral.BUS_CD_M_RECdta_vencimento.AsDateTime < xDataSis )and (dmgeral.BUS_CD_M_RECvlr_saldo.AsCurrency > 0) then
          begin
              TotVencido := TotVencido + dmgeral.BUS_CD_M_RECvlr_saldo.AsCurrency + dmGeral.BUS_CD_M_RECint_vlr_juros.AsCurrency;
          end;

       if dmgeral.BUS_CD_M_RECint_vlr_corrigido.AsCurrency > 0 then
          begin
              TotAbertoCorr := TotAbertoCorr + dmgeral.BUS_CD_M_RECint_vlr_corrigido.AsCurrency;
          end;

       if dmgeral.BUS_CD_M_RECvlr_saldo.AsCurrency = 0 then
          begin
              TotQuitado := TotQuitado + dmgeral.BUS_CD_M_RECvlr_parcela.AsCurrency;
          end;


        dmgeral.BUS_CD_M_REC_PAG.First;
        while not dmgeral.BUS_CD_M_REC_PAG.Eof do
           begin
             if dmgeral.BUS_CD_M_REC_PAGcom_substituicao.AsBoolean then
                begin
                  // Por Maxsuel Victor em 01/02/2016
                  // Já está embutido o valor do juros
                  TotSubst := TotSubst + dmgeral.BUS_CD_M_REC_PAGvlr_pagamento.AsCurrency;
                end
             else
                begin
                  // Por Maxsuel Victor em 01/02/2016
                  // Já está embutido o valor do juros
                  TotPago  := TotPago + dmgeral.BUS_CD_M_REC_PAGvlr_pagamento.AsCurrency;

                  TotJuros := TotJuros + dmgeral.BUS_CD_M_REC_PAGvlr_juros.AsCurrency;
                end;
             dmgeral.BUS_CD_M_REC_PAG.Next;
           end;
        dmgeral.BUS_CD_M_REC_PAG.First;

       TotGeral := TotGeral + dmgeral.BUS_CD_M_RECvlr_parcela.AsCurrency;
       dmgeral.BUS_CD_M_REC.Next;
     end;
  dmgeral.BUS_CD_M_REC.First;


  txtTotAberto     := FormatCurr('###,###,###,###,##0.00',TotAberto);
  txtTotAbertoCorr := FormatCurr('###,###,###,###,##0.00',TotAbertoCorr);
  txtTotAVencer    := FormatCurr('###,###,###,###,##0.00',TotAVencer);
  txtTotVencido    := FormatCurr('###,###,###,###,##0.00',TotVencido);
  txtTotQuitado    := FormatCurr('###,###,###,###,##0.00',TotQuitado);
  txtTotJurosPg    := FormatCurr('###,###,###,###,##0.00',TotJuros);
  txtTotPago       := FormatCurr('###,###,###,###,##0.00',TotPago);
  txtTotSubst      := FormatCurr('###,###,###,###,##0.00',TotSubst);
  txtTotGeral      := FormatCurr('###,###,###,###,##0.00',TotGeral);

end;

end.
