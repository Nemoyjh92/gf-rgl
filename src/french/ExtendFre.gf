<<<<<<< HEAD
--# -path=alltenses:../common:../abstract

concrete ExtendFre of Extend =
  CatFre ** ExtendFunctor -
   [
----   iFem_Pron, youFem_Pron, weFem_Pron, youPlFem_Pron, theyFem_Pron, youPolFem_Pron, youPolPl_Pron, youPolPlFem_Pron,
   ExistCN, ExistMassCN, ExistPluralCN
   ]                   -- put the names of your own definitions here
  with
    (Grammar = GrammarFre) **
  open
    GrammarFre,
    ResFre,
    MorphoFre,
    PhonoFre,
    Coordination,
    Prelude,
    ParadigmsFre in {
    -- put your own definitions here

lin
   ExistCN cn =
      let
         pos = ExistNP (DetCN (DetQuant IndefArt NumSg) cn) ;
         neg = ExistNP (DetCN (DetQuant de_Quant NumSg) cn) ;
      in posNegClause pos neg PNeg.p ;
   ExistMassCN cn =
      let
         pos = ExistNP (MassNP cn) ;
         neg = ExistNP (DetCN (DetQuant de_Quant NumSg) cn) ;
      in posNegClause pos neg PNeg.p ;
   ExistPluralCN cn =
      let
         pos = ExistNP (DetCN (DetQuant IndefArt NumPl) cn) ;
         neg = ExistNP (DetCN (DetQuant de_Quant NumPl) cn) ;
      in posNegClause pos neg PNeg.p ;

oper
  de_Quant : Quant = IndefArt ** {s = \\_,_,_,_ => elisDe} ;



    }
=======
--# -path=alltenses:../common:../abstract

concrete ExtendFre of Extend =
  CatFre ** ExtendFunctor -
   [
----   iFem_Pron, youFem_Pron, weFem_Pron, youPlFem_Pron, theyFem_Pron, youPolFem_Pron, youPolPl_Pron, youPolPlFem_Pron,
   ExistCN, ExistMassCN, ExistPluralCN
   ]                   -- put the names of your own definitions here
  with
    (Grammar = GrammarFre) **
  open
    GrammarFre,
    ResFre,
    MorphoFre,
    PhonoFre,
    Coordination,
    Prelude,
    ParadigmsFre in {
    -- put your own definitions here

lin
   ExistCN cn =
      let
         pos = ExistNP (DetCN (DetQuant IndefArt NumSg) cn) ;
         neg = ExistNP (DetCN (DetQuant de_Quant NumSg) cn) ;
      in posNegClause pos neg PNeg.p ;
   ExistMassCN cn =
      let
         pos = ExistNP (MassNP cn) ;
         neg = ExistNP (DetCN (DetQuant de_Quant NumSg) cn) ;
      in posNegClause pos neg PNeg.p ;
   ExistPluralCN cn =
      let
         pos = ExistNP (DetCN (DetQuant IndefArt NumPl) cn) ;
         neg = ExistNP (DetCN (DetQuant de_Quant NumPl) cn) ;
      in posNegClause pos neg PNeg.p ;

oper
  de_Quant : Quant = IndefArt ** {s = \\_,_,_,_ => elisDe} ;

lin GivenName, MaleSurname, FemaleSurname = \n -> n ;
lin FullName gn sn = {
       s = gn.s ++ sn.s ;
       g = gn.g
    } ;

}
<<<<<<< HEAD
>>>>>>> b17d353994fb9fad892e92c5fe50f956900efb29
=======
>>>>>>> b17d353994fb9fad892e92c5fe50f956900efb29
