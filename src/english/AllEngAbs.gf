<<<<<<< HEAD
--# -path=.:../abstract:../common:prelude

abstract AllEngAbs =
  Lang,
  IrregEngAbs-[
    blow_V,burn_V,come_V,dig_V,fall_V,fly_V,freeze_V,go_V,lie_V,run_V,
    sew_V,sing_V,sit_V,sleep_V,spit_V,stand_V,swell_V,swim_V,think_V],
  Extend
  ** {} ;
=======
--# -path=.:../abstract:../common:prelude

abstract AllEngAbs =
  -- the standard Grammar module
  Noun, Verb, Adjective, Adverb, Numeral, Sentence, Question, Relative, Conjunction, Phrase, Text, Idiom, Tense

  -- the large monolingual lexicon for English only. If you want to do wide-coverage parsing for multiple languages, use the Parse module at https://github.com/GrammaticalFramework/gf-wordnet
, DictEngAbs

 -- the Extend module
 -- comment out the following line (here and in the concrete), if too much ambiguity
 , Extend - [ProDrop, UseComp_estar, UseDAPFem, UseDAPMasc]

 ** {
  flags startcat=Phr ;
  }
>>>>>>> b853d5c47730927f9c61cd3196079e1ac8008695
