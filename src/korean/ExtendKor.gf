<<<<<<< HEAD
--# -path=.:../common:../abstract

concrete ExtendKor of Extend = CatKor
  -- ** ExtendFunctor - [ApposNP]
  -- with (Grammar=GrammarKor)
  ** open Prelude, ResKor, NounKor, Coordination in {

  lin
    -- : NP -> NP -> NP
    ApposNP np1 np2 = np1 ** {s = \\nf => np1.s ! nf ++ np2.s ! nf} ;
} ;
=======
--# -path=.:../common:../abstract

concrete ExtendKor of Extend = CatKor
  -- ** ExtendFunctor - [ApposNP]
  -- with (Grammar=GrammarKor)
  ** open Prelude, ResKor, NounKor, Coordination in {

  lin
    -- : NP -> NP -> NP
    ApposNP np1 np2 = np1 ** {s = \\nf => np1.s ! nf ++ np2.s ! nf} ;

lin GivenName, MaleSurname, FemaleSurname = \n -> n ;
lin FullName gn sn = {
       s = \\nf => gn.s ! nf ++ sn.s ! nf ;
       p = gn.p
    } ;

} ;
>>>>>>> b17d353994fb9fad892e92c5fe50f956900efb29
