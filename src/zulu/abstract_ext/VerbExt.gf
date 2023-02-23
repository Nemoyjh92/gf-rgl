<<<<<<< HEAD
abstract VerbExt = Cat,CatExt ** {

  fun

    CopAP : AP -> VP ;
    CopNP : NP -> VP ;
    CopNPAssoc : NP -> VP ;
    CopLoc : Loc -> VP ;

    -- BecomeAP : AP -> VP ;
    -- BecomeNP : NP -> VP ;
    -- BecomeNPAssoc : NP -> VP ;
    -- BecomeLoc : Loc -> VP ;

    ComplV2Nonspec : V2 -> NP -> VP ;

}
=======
abstract VerbExt = Cat,CatExt ** {

  fun

    CopAP : AP -> VP ;
    CopNP : NP -> VP ;
    CopNPAssoc : NP -> VP ;
    CopLocative : Loc -> VP ;

    CopPoss : NP -> VP ;
    CopQuant : QuantStem -> VP ;

    -- BecomeAP : AP -> VP ;
    -- BecomeNP : NP -> VP ;
    -- BecomeNPAssoc : NP -> VP ;
    -- BecomeLoc : Loc -> VP ;

    UseVStative : V -> VP ;
    ComplV2Nonspec : V2 -> NP -> VP ;

}
>>>>>>> b17d353994fb9fad892e92c5fe50f956900efb29
