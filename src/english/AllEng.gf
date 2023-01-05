<<<<<<< HEAD
--# -path=.:../abstract:../common:../api

concrete AllEng of AllEngAbs =
  LangEng,
  IrregEng-[
    blow_V,burn_V,come_V,dig_V,fall_V,fly_V,freeze_V,go_V,lie_V,run_V,
    sew_V,sing_V,sit_V,sleep_V,spit_V,stand_V,swell_V,swim_V,think_V],
  ExtendEng
  **
  open ExtraEng --- to force compilation since this module is used in many places
  in
    {} ;
=======
--# -path=.:../abstract:../common:../api

concrete AllEng of AllEngAbs =
  NounEng,
  VerbEng,
  AdjectiveEng,
  AdverbEng,
  NumeralEng,
  SentenceEng,
  QuestionEng,
  RelativeEng,
  ConjunctionEng,
  PhraseEng,
  TextX - [Pol,PPos,PNeg,SC,CAdv],
  IdiomEng,
  TenseX - [Pol,PPos,PNeg,SC,CAdv]

  -- the large monolingual lexicon
  , DictEng

  -- the Extend module
  -- comment out here and in the abstract, if too much ambiguity
  , ExtendEng - [ProDrop, UseComp_estar, UseDAPFem, UseDAPMasc]
  **   open Prelude, ResEng, ExtraEng --- to force compilation since this module is used in many places
  in {

flags startcat = Phr ;

lin
  PPos = {s = [] ; p = CPos} ;
  PNeg = {s = [] ; p = CNeg True} ; -- contracted: don't
}
>>>>>>> b853d5c47730927f9c61cd3196079e1ac8008695
