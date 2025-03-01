incomplete concrete SentenceBantu of Sentence = 
  CatBantu ** open Prelude, CommonBantu, ResBantu in {

  lin

  PredVP np vp = mkClause (np.s ! npNom) (agrFeatures np.a) vp ;
{-
    PredSCVP sc vp = mkClause sc.s (agrP3 Sg) vp ;

    ImpVP vp = {
      s = \\pol,n => 
        let 
          agr   = AgP2 (numImp n) ;
          verb  = infVP VVAux vp Simul CPos agr ;
          dont  = case pol of {
            CNeg True => "don't" ;
            CNeg False => "do" ++ "not" ;
            _ => []
            }
        in
        dont ++ verb
    } ;

    SlashVP np vp = 
      mkClause (np.s ! npNom) np.a vp ** {c2 = vp.c2} ;

    AdvSlash slash adv = {
      s  = \\t,a,b,o => slash.s ! t ! a ! b ! o ++ adv.s ;
      c2 = slash.c2
    } ;

    SlashPrep cl prep = cl ** {c2 = prep.s} ;

    SlashVS np vs slash = 
      mkClause (np.s ! npNom) np.a 
        (insertObj (\\_ => conjThat ++ slash.s) (predV vs))  **
        {c2 = slash.c2} ;

    EmbedS  s  = {s = conjThat ++ s.s} ;
    EmbedQS qs = {s = qs.s ! QIndir} ;
    EmbedVP vp = {s = infVP VVInf vp Simul CPos (agrP3 Sg)} ; --- agr
-}
    UseCl  t p cl =
      let b : Bool = case p.p of {Pos => True ; _ => False}
      in {s = t.s ++ p.s ++ cl.s ! t.t ! t.a ! b} ;

{-   UseQCl t p cl = {
      s = \\q => t.s ++ p.s ++ cl.s ! t.t ! t.a ! ctr p.p ! q
    } ;
    UseRCl t p cl = {
      s = \\r => t.s ++ p.s ++ cl.s ! t.t ! t.a ! ctr p.p ! r ;
      c = cl.c
    } ;
    UseSlash t p cl = {
      s = t.s ++ p.s ++ cl.s ! t.t ! t.a ! ctr p.p  ! oDir ;
      c2 = cl.c2
    } ;

    AdvS a s = {s = a.s ++ s.s} ;
    ExtAdvS a s = {s = a.s ++ frontComma ++ s.s} ;

    SSubjS a s b = {s = a.s ++ frontComma ++ s.s ++ b.s} ;

    RelS s r = {s = s.s ++ frontComma ++ r.s ! agrP3 Sg} ;

  oper
    ctr : CPolarity -> CPolarity = \x -> x ;
---    ctr = contrNeg True ;  -- contracted negations
-}

}
