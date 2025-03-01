<<<<<<< HEAD
--# -path=alltenses:../common:../abstract

concrete ExtendChi of Extend = CatChi **
  ExtendFunctor - [
    VPS, ListVPS, VPI, ListVPI
  , MkVPS, BaseVPS, ConsVPS, ConjVPS
  , PredVPS, SQuestVPS, RelVPS --, QuestVPS -- TODO
  , MkVPI, BaseVPI, ConsVPI, ConjVPI --, ComplVPIVV -- TODO
  , VPS2, ListVPS2, VPI2, ListVPI2
  , MkVPS2, BaseVPS2, ConsVPS2, ConjVPS2, ComplVPS2, ReflVPS2
  , MkVPI2, BaseVPI2, ConsVPI2, ConjVPI2, ComplVPI2
  , ProDrop, ComplDirectVS, ComplDirectVQ
  , PassVPSlash, PassAgentVPSlash ]
  with (Grammar=GrammarChi) ** open
     Prelude
   , Coordination
   , ResChi
   , (S=StructuralChi)
  in {

  lincat
    VPS, VPI   = SS ;
    [VPS], [VPI] = ListX ;
    VPS2, VPI2 = SS ** {c2 : Preposition ; isPre : Bool} ; -- whether the missing arg is before verb
    [VPS2], [VPI2] = ListX ** {c2 : Preposition ; isPre : Bool} ;

  lin
    PassVPSlash vps = insertAdv (mkNP passive_s) vps ;
    PassAgentVPSlash vps np = insertAdv (ss (appPrep S.by8agent_Prep np.s)) (insertAdv (mkNP passive_s) vps) ;

    MkVPS t p vp = {s = t.s ++ p.s ++ (mkClause [] vp).s ! p.p ! t.t} ;
    ConjVPS c = conjunctDistrSS (c.s ! CSent) ;
    BaseVPS = twoSS ;
    ConsVPS = consrSS duncomma ;

    -- : NP -> VPS -> S ;          -- she [has walked and won't sleep]
    PredVPS np vps = {preJiu = np.s ; postJiu = vps.s} ;

    -- : NP -> VPS -> QS ;         -- has she walked
    SQuestVPS np vps = {s = \\_ => np.s ++ vps.s ++ question_s} ;

    -- : IP -> VPS -> QS ;         -- who has walked
    -- QuestVPS ip vps = -- TODO: probably need to change structure of VPS

    -- : RP -> VPS -> RS ;         -- which won't sleep
    RelVPS rp vps = {s = rp.s ! True ++ vps.s} ;

    MkVPI vp = {s = (mkClause [] vp).s ! Pos ! APlain} ;
    ConjVPI c = conjunctDistrSS (c.s ! CSent) ;
    BaseVPI = twoSS ;
    ConsVPI = consrSS duncomma ;

    MkVPS2 t p vps = {s = t.s ++ p.s ++ (mkClause [] <vps : ResChi.VP>).s ! p.p ! t.t} ** vps ;
    ConjVPS2 c vs = conjunctDistrSS (c.s ! CSent) vs ** vs ;
    BaseVPS2 v w = twoSS v w ** w ;
    ConsVPS2 v vs = consrSS duncomma v vs ** vs ;

    MkVPI2 vps = {s = (mkClause [] <vps : ResChi.VP>).s ! Pos ! APlain} ** vps ;
    ConjVPI2 c vs = conjunctDistrSS (c.s ! CSent) vs ** vs ;
    BaseVPI2 v w = twoSS v w ** w ;
    ConsVPI2 v vs = consrSS duncomma v vs ** vs ;


    GenNP np =  {s,pl = np.s ++ possessive_s ; detType = DTPoss} ;
    GenRP nu cn = {s = \\_ => cn.s ++ relative_s} ;

    ProDrop pron = pron ** {s = []} ;
    ComplDirectVS vs utt =
      AdvVP (UseV <lin V vs : V>)
            (mkAdv (":" ++ quoted utt.s)) ; -- DEFAULT complement added as Adv in quotes
    ComplDirectVQ vq utt =
      AdvVP (UseV <lin V vq : V>)
            (mkAdv (":" ++ quoted utt.s)) ; -- DEFAULT complement added as Adv in quotes

  oper
    mkAdv : Str -> CatChi.Adv ;
    mkAdv str = lin Adv {s = str ; advType = ATManner ; hasDe = False} ;

lin GivenName, MaleSurname, FemaleSurname, PlSurname = \n -> n ;
lin FullName gn sn = {
       s = gn.s ++ sn.s
    } ;

};
