<<<<<<< HEAD
concrete CatExtZul of CatExt = open ResZul,Prelude,ParamX in {

  lincat
    Loc = { s : CType => Agr => Polarity => BasicTense => Str } ;
    LocN = { s : Str } ;
    QuantStem = { s : Agr => Str } ;
    RelStem = { s : Str } ;
    VAux = { s : Str ; at : AuxType } ;
    ConjN = { s : Str } ;
    IAdj = { s : AForm => Str } ;
    -- INAdv = { s : Str ; postIAdv : Bool } ;

    Postdet = { s : Agr => Str } ;
    SubCl = { s : Polarity => BasicTense => Str } ;

}
=======
concrete CatExtZul of CatExt = open ResZul,Prelude,ParamX in {

  lincat
    Loc = {
      s : CType => Agr => Polarity => BasicTense => Str ;
      imp_s : Number => Polarity => Str ;
      inf_s : NForm => Polarity => Str
    } ;
    LocN = { s : Str } ;
    LocAdv = { s : Str ; reqLocS : Bool } ;
    QuantStem = { s : Agr => Str } ;
    RelStem = { s : Str } ;
    VAux = { s : Str ; at : AuxType } ;
    ConjN = { s : Str } ;
    IAdj = { s : AForm => Str } ;
    -- INAdv = { s : Str ; postIAdv : Bool } ;

    Postdet = { s : Agr => Str } ;
    SubCl = { s : Polarity => BasicTense => Str } ;

}
>>>>>>> b17d353994fb9fad892e92c5fe50f956900efb29
