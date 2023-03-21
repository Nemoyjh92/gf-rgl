resource ResTam = ParamTam ** open Prelude, Predef in {

--------------------------------------------------------------------------------
-- Nouns
  oper
    Noun : Type = {s: ParamX.Number => ParamTam.Case  => Str} ;
--  Noun2 : Type = Noun ** {c2 : Preposition} ;
--  Noun3 : Type = Noun2 ** {c3 : Preposition} ;

    CNoun : Type = Noun ;
--      heavyMod : Str ; -- heavy stuff like relative clauses after determiner

--  PNoun : Type = Noun ;

    mkN : (_ : Str)  -> Noun =  \x -> {
      s = table {
	Sg => table{
	  Nom => x ;
	  Acc => x + "ai" ;
	  Dat => x + "ukku" ;
	  Soc => x + "otu" ;
	  Gen => x + "utaiya" ;
	  Instr => x + "al" ;
	  Loc => x + "itam" ;
	  Abl => x + "itamiruntu"
	  } ;
	Pl => table{
	  Nom => x + "kal" ;
	  Acc => x + "kal" + "ai" ;
	  Dat => x + "kal" + "ukku" ;
	  Soc => x + "kal" + "otu" ;
	  Gen => x + "kal" + "utaiya" ;
	  Instr => x + "kal" + "al" ;
	  Loc => x + "kal" + "itam" ;
	  Abl => x + "kal" + "itamiruntu"
	  }
	} ;
      } ;

  useN : Noun -> CNoun = \n -> n ** {
    heavyMod = []
    } ;

---------------------------------------------
-- Pronoun

--  Pronoun : Type = {
--    s : Str ;
--    p : Person ; -- for relative clauses
--    empty : Str ; -- need to avoid GF being silly. See https://inariksit.github.io/gf/2018/08/28/gf-gotchas.html#metavariables-or-those-question-marks-that-appear-when-parsing
--    } ;

--  mkPron : Str -> Person -> Pronoun = \str,p -> {
--    s = str ;
--    p = p ;
--    empty = []
--    } ;
---------------------------------------------
-- NP

    NounPhrase : Type = {
    s : Case => Str ; 
--    empty : Str ; -- need to avoid GF being silly. See https://inariksit.github.io/gf/2018/08/28/gf-gotchas.html#metavariables-or-those-question-marks-that-appear-when-parsing
    } ;

--  IPhrase : Type = NounPhrase ** {
--    sp : NForm => Str ; -- standalone berapa banyak kucing
--  } ;

--  emptyNP : NounPhrase = {
--    s = \\_ => [] ;
--    a = NotPron ;
--    empty = []
--    } ;

  mkNounPhrase : Str -> NounPhrase = \str -> {
    s = \\_ => str ;
--    a = NotPron ;
--    empty = []
    } ;

--  mkIP : Str -> IPhrase = \str -> {
--    s = \\_ => str ;
--    a = NotPron ;
--    empty = [] ;
--    sp = \\_ => str ;
--  } ;


--------------------------------------------------------------------------------
-- Det, Quant, Card, Ord

  Quant : Type = {
    s : Number => Str ; -- quantifier in a context, eg. 'berapa (kucing)' (Tamil: I (Nemo) am uncommenting only this part)
--    sp : NForm => Str ; -- a standalone, eg. '(kucing) berapa banyak'
--    poss : Possession ;
    } ;

--  IQuant : Type = Quant ** {
--    isPre : Bool ;
--  } ;

--  linDet : Determiner -> Str = \det -> det.pr ++ det.s ;

  Determiner : Type = {
	s : Str ;
    pr : Str ; -- prefix for numbers
    n : Number ; -- number as in 5 (noun in singular), Sg or Pl
    } ;
  
  CardNum : Type = {
    s : Str ;
    } ;

  Num : Type = {
	s : Str ;
    n : Number
    } ; -- (Tamil: Necessary for DetQuant : Quant -> Num -> Det ;)

  baseNum : Num = {
    s = [] ;
	n = Sg ;
  } ;

--  CardOrdNum : Type = CardNum ** {
--    ord : Str
--    } ;

--  DigNum : Type = {
--    s : CardOrd => Str ;
--    } ;

  mkQuant : (sg, pl : Str) -> Quant = \idha, indha -> {
    s = table {
		Sg => idha ;
		Pl => indha 
	} -- (Tamil: Extra arguments leftover from Malay)
    } ;
  

  mkDet : Str -> Str -> Number -> Determiner = \cnt, str, num -> {
	s = str ;
    pr = "" ;
    n = num ; 
  } ;


--  mkIdet : Str -> Str -> Str -> Number -> Bool -> Determiner = \cnt, str, standalone, num, isPre -> mkDet cnt str num ** {
--    pr = case isPre of {True => str ; False => [] } ;
--    -- if isPre is True, then: "berapa kucing"
--    s = case isPre of { False => str ; True => [] };
--    count = cnt ;
--    sp = \\_ => standalone ;
--  } ;


--  --   s = \\p,a => vp.topic ++ np ++ vp.prePart ++ useVerb vp.verb ! p ! a ++ vp.compl ++ compl ;
--  -- np = vp.topic ++ np ;
--  -- vp = insertObj (ss compl) vp ;

--------------------------------------------------------------------------------
-- Prepositions

--  Preposition : Type = {
--    s : Str ;             -- dengan
--    obj : Person => Str ; -- dengan+nya -- needed in relative clauses to refer to the object
--    prepType : PrepType ; -- TODO rename, the name is confusing
--    } ;

--  mkPrep : Str -> Preposition = \dengan -> {
--    s = dengan ;
--    obj = \\p => dengan + posss2tr (Poss p) ;
--    prepType = OtherPrep ;
--    } ;

--  -- direct object: "hits him" -> "memukul+nya"
--  dirPrep : Preposition = {
--    s = [] ;
--    obj = table {
--      P1 => BIND ++ "ku" ;
--      P2 => BIND ++ "mu" ;
--      P3 => BIND ++ "nya" } ;
--    prepType = DirObj ;
--    } ;

--  -- truly empty
--  emptyPrep : Preposition = {
--    s = [] ;
--    obj = \\_ => [] ;
--    prepType = EmptyPrep ;
--    } ;

--  datPrep : Preposition = mkPrep "kepada" ;

--  applyPrep : Preposition -> NounPhrase -> Str = \prep,np ->
--    case <np.a, prep.prepType> of {
--      <IsPron p,OtherPrep> => prep.obj ! p ++ np.empty ;
--      _                    => prep.s ++ np.s ! Bare
--    } ;

--------------------------------------------------------------------------------
-- Adjectives

  Adjective : Type = SS ;
  Adjective2 : Type = Adjective ;

  mkAdj : Str -> Adjective = \str -> {s = str} ;

 AdjPhrase : Type = Adjective   ** {compar : Str} ;
--------------------------------------------------------------------------------
-- Verbs

  Verb : Type = {s: Tense  => PNG=> Str} ;

  -- This mkVerb is for class VII, p. 64. "Cond" is just copied from "Fut" for now (08/12/2022)
  mkVerb : (s : Str) -> Verb = \x -> {
      s = table {
	Past => table {
	  s1  => x + "nt" + "een" ;
	  s2 => x + "nt" + "aay" ;
	  sm3 => x + "nt" + "aan" ;
	  sf3 => x + "nt" + "aal" ;
	  sn3 => x + "nt" + "atu" ;
	  smf3 => x + "nt" + "aar" ;
	  pl1 => x + "nt" + "oom" ;
	  pl2 => x + "nt" + "iirkal" ;
	  plmf3 => x + "nt" + "aarkal" ;
	  pln3 => x + "nt" + "ana" 
	  } ;
	Pres => table{
	  s1  => x + "kkir" + "een" ;
	  s2 => x + "kkir" + "aay" ;
	  sm3 => x + "kkir" + "aan" ;
	  sf3 => x + "kkir" + "aal" ;
	  sn3 => x + "kkir" + "aal" ;
	  smf3 => x + "kkir" + "aar" ;
	  pl1 => x + "kkir" + "oom" ;
	  pl2 => x + "kkir" + "iirkal" ;
	  plmf3 => x + "kkir" + "aarkal" ;
	  pln3 => x + "kkir" + "ana" 
	  } ;
	Fut => table{
	  s1  => x + "pp" + "een" ;
	  s2 => x + "pp" + "aay" ;
	  sm3 => x + "pp" + "aan" ;
	  sf3 => x + "pp" + "aal" ;
	  sn3 => x + "kk" + "um" ;
	  smf3 => x + "pp" + "aar" ;
	  pl1 => x + "pp" + "oom" ;
	  pl2 => x + "pp" + "iirkal" ;
	  plmf3 => x + "pp" + "aarkal" ;
	  pln3 => x + "kk" + "um" 
	  } ;
        Cond => table{
	  s1  => x + "pp" + "een" ;
	  s2 => x + "pp" + "aay" ;
	  sm3 => x + "pp" + "aan" ;
	  sf3 => x + "pp" + "aal" ;
	  sn3 => x + "kk" + "um" ;
	  smf3 => x + "pp" + "aar" ;
	  pl1 => x + "pp" + "oom" ;
	  pl2 => x + "pp" + "iirkal" ;
	  plmf3 => x + "pp" + "aarkal" ;
	  pln3 => x + "kk" + "um" 
	  }
	} 
    } ; 

--  mkVerb2 : Verb -> Preposition -> Verb2 = \v,pr -> v ** {
--    c2 = pr ;
--    passive = "di" ++ BIND ++ v.s ! Root
--    } ;

--  mkVerb3 : Verb -> (p,q : Preposition) -> Verb3 = \v,p,q ->
--    mkVerb2 v p ** {c3 = q} ;

--  mkVerb4 : Verb -> Preposition -> Str -> Verb4 = \v,pr,str -> v ** {
--    s = \\_ => v.s ! Active ++ str;
--    c2 = pr ;
--    passive = "di" ++ BIND ++ v.s ! Root ++ str
--    } ;

--  copula : Verb = {s = \\_ => "ada"} ; -- TODO
------------------
-- Adv

--  Adverb : Type = {
--    s : Str;
--  } ;

--  IAdv : Type = Adverb ** {
--    isPre : Bool ;
--    vf : VForm ;
--  } ;

------------------
-- VP

--  VerbPhrase : Type = {
--    s : VForm => Polarity => Str ; -- tidak or bukan
--    } ;

--  VPSlash : Type = VerbPhrase ** {
--    c2 : Preposition ;
--    adjCompl : Str ;
--    } ;

--  useV : Verb -> VerbPhrase = \v -> v ** {
--    s = \\vf,pol => verbneg pol ++ v.s ! vf
--    } ;

--  useComp : Str -> VerbPhrase = \s -> {
--    s = \\vf,pol => nounneg pol ++ s ;
--    } ;

--  linVP : VerbPhrase -> Str = \vp -> vp.s ! Active ! Pos;

-- https://www.reddit.com/r/indonesian/comments/gsizsv/when_to_use_tidak_bukan_jangan_belum/

--  verbneg : Polarity -> Str = \pol -> case pol of {
--    Neg => "tidak" ; -- or "tak"?
--    Pos => []
--    } ;

--  nounneg : Polarity -> Str = \pol -> case pol of {
--    Neg => "bukan" ;
--    Pos => []
--    } ;

--  impneg : Polarity -> Str = \pol -> case pol of {
--    Neg => "jangan" ;
--    Pos => []
--  } ;
--------------------------------------------------------------------------------
-- Cl, S

  Clause : Type = {
    subj : Str ;
    pred : PNG => Str -- Cl may become relative clause, need to keep open VForm
    } ;

--  RClause : Type = {
--    subj : Str ;
--    pred : Person => Polarity => Str
--    } ;

--  RS : Type = {s : Person => Str} ;

--  ClSlash : Type = Clause ** {c2 : Preposition} ;

--  Sentence : Type = {s : Str} ;

  predVP : NounPhrase -> VerbPhrase -> Clause = \np,vp -> {
    s = np.s ++ vp.s
    } ;

--  predVPSlash : NounPhrase -> VPSlash -> ClSlash = \np,vps ->
--    predVP np <vps : VerbPhrase> ** {c2 = vps.c2} ;


--  -- mkClause : Str -> NounPhrase -> VPSlash -> Clause = \str,np,vp -> {
--  --   subj = str ++ np.s ! Bare;
--  --   pred = vp.s
--  -- } ;


--  -- mkClause : Str -> IPhrase -> VerbPhrase -> Clause = \str,ip,vp -> {
--  --   subj = ip.s ! Bare ;
--  --   pred = vp.s ;
--  -- } ;


--  -- baseQuant : Quant = {
--  --   s = [] ;
--  --   sp = \\_ => [] ;
--  --   poss = Bare ;
--  --   } ;

--  --     -- \\vf,pol, =>
--  --     -- let
--  --     --   verb   : Str    = joinVP vp tense ant pol agr ;
--  --     --   obj    : Str    = vp.s2 ! agr ;
--  --     -- in case ord of {
--  --     --   ODir   => subj ++ verb ++ obj ;  -- Ġanni jiekol ħut
--  --     --   OQuest => verb ++ obj ++ subj    -- jiekol ħut Ġanni ?
--  --     -- }

--  -- mkQuant : Str -> Quant = \str -> baseQuant ** {
--  --   s = str ;
--  --   sp = \\_ => str
--  --   } ;

--------------------------------------------------------------------------------
-- linrefs

--}
}
