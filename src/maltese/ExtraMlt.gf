<<<<<<< HEAD
-- ExtraMlt.gf: extra stuff
--
-- Maltese GF Resource Grammar
-- John J. Camilleri 2011 -- 2013
-- Licensed under LGPL

concrete ExtraMlt of ExtraMltAbs = CatMlt **
  open (R=ResMlt), ParadigmsMlt in {

  flags coding=utf8 ;

  lin
    SlashVa v = (R.predV v) ** { c2 = noCompl } ; -- See Verb.SlashV2a

    -- VasV2 v = v ** { c2 = noCompl } ;

    -- ProDrop : Pron -> Pron
    -- unstressed subject pronoun becomes []: "(jiena) norqod"
    ProDrop p = {
      s = table {
        R.Personal => [] ;
        c => p.s ! c
        } ;
      a = p.a ;
      } ;

}
=======
-- ExtraMlt.gf: extra stuff
--
-- Maltese GF Resource Grammar
-- John J. Camilleri 2011 -- 2013
-- Licensed under LGPL

concrete ExtraMlt of ExtraMltAbs = CatMlt **
  open (R=ResMlt), ParadigmsMlt in {

  flags coding=utf8 ;

  lin
    SlashVa v = (R.predV v) ** { c2 = noCompl } ; -- See Verb.SlashV2a

    -- VasV2 v = v ** { c2 = noCompl } ;

    -- ProDrop : Pron -> Pron
    -- unstressed subject pronoun becomes []: "(jiena) norqod"
    ProDrop p = {
      s = table {
        R.Personal => [] ;
        c => p.s ! c
        } ;
      a = p.a ;
      } ;

lin GivenName, MaleSurname, FemaleSurname, PlSurname = \n -> n ;
lin FullName gn sn = {
       s = gn.s ++ sn.s ;
       a = gn.a
    } ;

}
>>>>>>> b17d353994fb9fad892e92c5fe50f956900efb29
