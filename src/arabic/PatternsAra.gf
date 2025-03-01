resource PatternsAra =  {

flags coding=utf8 ;

  oper

    fA'  = { h = "" ; m1 = ""; m2 = ""; t = "َاء"} ;

    eafAcI = { h = "أَ"; m1 = "َا"; m2 = ""; t = "ِي" } ;
    eafcA' = { h = "أَ"; m1 = "ْ" ; m2 = ""; t = "َاء"} ;
    eafcI  = { h = "أَ"; m1 = "ْ" ; m2 = ""; t = "ِي" } ;
    fac    = { h = ""  ; m1 = "َ" ; m2 = ""; t = ""   } ;
    facc   = { h = ""  ; m1 = "َ" ; m2 = ""; t = "ّ"  } ;
    facca  = { h = ""  ; m1 = "َ" ; m2 = ""; t = "َّ" } ;
    facci  = { h = ""  ; m1 = "َ" ; m2 = ""; t = "ِّ" } ;
    faccu  = { h = ""  ; m1 = "َ" ; m2 = ""; t = "ُّ" } ;
    facp   = { h = ""  ; m1 = "َ" ; m2 = ""; t = "َة" } ;
    faca   = { h = ""  ; m1 = "َ" ; m2 = ""; t = "َ"  } ;
    facA   = { h = ""  ; m1 = "َ" ; m2 = ""; t = "َا" } ;
    facA'  = { h = ""  ; m1 = "َ" ; m2 = ""; t = "َاء"} ;
    fAc    = { h = ""  ; m1 = "َا"; m2 = ""; t = ""   } ;
    fAcp   = { h = ""  ; m1 = "َا"; m2 = ""; t = "َة" } ;
    fic    = { h = ""  ; m1 = "ِ" ; m2 = ""; t = ""   } ;
    ficc   = { h = ""  ; m1 = "ِ" ; m2 = ""; t = "ّ"  } ;
    ficA'  = { h = ""  ; m1 = "ِ" ; m2 = ""; t = "َاء"} ;
    fIc    = { h = ""  ; m1 = "ِي"; m2 = ""; t = ""   } ;
    fIcAn  = { h = ""  ; m1 = "ِي"; m2 = ""; t = "َان"} ;
    fca    = { h = ""  ; m1 = "ْ" ; m2 = ""; t = "َ"  } ;
    fci    = { h = ""  ; m1 = "ْ" ; m2 = ""; t = "ِ"  } ;
    fcu    = { h = ""  ; m1 = "ْ" ; m2 = ""; t = "ُ"  } ;
    fuc    = { h = ""  ; m1 = "ُ" ; m2 = ""; t = ""   } ;
    fucc   = { h = ""  ; m1 = "ُ" ; m2 = ""; t = "ّ"  } ;
    fucci  = { h = ""  ; m1 = "ُ" ; m2 = ""; t = "ِّ" } ;
    fuccu  = { h = ""  ; m1 = "ُ" ; m2 = ""; t = "ُّ" } ;
    fuci   = { h = ""  ; m1 = "ُ" ; m2 = ""; t = "ِ"  } ;
    fucu   = { h = ""  ; m1 = "ُ" ; m2 = ""; t = "ُ"  } ;
    fUc    = { h = ""  ; m1 = "ُو"; m2 = ""; t = ""   } ;
    ufca   = { h = "ُ" ; m1 = "ْ" ; m2 = ""; t = "َ"  } ;

    eafAc    = fAc ** { h = "أَ" } ;
    eafac    = fac ** { h = "أَ" } ;
    eafIc    = fIc ** { h = "أَ" } ;
    eafic    = fic ** { h = "أَ" } ;

    eafAcil  = { h = "أَ"; m1 = "َا"  ; m2 = "ِ"   ; t = ""   } ;
    eafAcIl  = { h = "أَ"; m1 = "َا"  ; m2 = "ِي"  ; t = ""   } ;
    eafcilp  = { h = "أَ"; m1 = "ْ"   ; m2 = "ِ"   ; t = "َة" } ;
    eafcal   = { h = "أَ"; m1 = "ْ"   ; m2 = "َ"   ; t = ""   } ;
    eafcAl   = { h = "أَ"; m1 = "ْ"   ; m2 = "َا"  ; t = ""   } ;
    eifcAl   = { h = "إِ"; m1 = "ْ"   ; m2 = "َا"  ; t = ""   } ;
    eIfcAl   = eifcAl ** {h = "إِي"} ;
    eafcil   = { h = "أَ"; m1 = "ْ"   ; m2 = "ِ"   ; t = ""   } ;
    eafcul   = { h = "أَ"; m1 = "ْ"   ; m2 = "ُ"   ; t = ""   } ;
    eiftacal = { h = "إِ"; m1 = "ْتَ" ; m2 = "َ"   ; t = ""   } ;
    eufcil   = { h = "أُ"; m1 = "ْ"   ; m2 = "ِ"   ; t = ""   } ;
    eufic    = fic ** { h = "أُ" } ;
    eufIc    = fIc ** { h = "أُ" } ;
    ufic     = fic ** { h = "ُ" } ;
    ufIc     = fIc ** { h = "ُ" } ;
    ufac     = fac ** { h = "ُ" } ;
    ufAc     = fAc ** { h = "ُ" } ;
    afcul    = { h = "َ" ; m1 = "ْ"   ; m2 = "ُ"   ; t = ""   } ;
    faccalo  = { h = ""  ; m1 = "َ"   ; m2 = "َّ"  ; t = "ْ"  } ;
    facal    = { h = ""  ; m1 = "َ"   ; m2 = "َ"   ; t = ""   } ;
    facalo   = { h = ""  ; m1 = "َ"   ; m2 = "َ"   ; t = "ْ"  } ;
    facalp   = { h = ""  ; m1 = "َ"   ; m2 = "َ"   ; t = "َة" } ;
    facA'il  = { h = ""  ; m1 = "َ"   ; m2 = "َائِ"; t = ""   } ;
    facAl    = { h = ""  ; m1 = "َ"   ; m2 = "َا"  ; t = ""   } ;
    facAlI   = { h = ""  ; m1 = "َ"   ; m2 = "َا"  ; t = "ِي" } ;
    facil    = { h = ""  ; m1 = "َ"   ; m2 = "ِ"   ; t = ""   } ;
    facIl    = { h = ""  ; m1 = "َ"   ; m2 = "ِي"  ; t = ""   } ;
    facl     = { h = ""  ; m1 = "َ"   ; m2 = "ْ"   ; t = ""   } ;
    faclp    = { h = ""  ; m1 = "َ"   ; m2 = "ْ"   ; t = "َة" } ;
    facul    = { h = ""  ; m1 = "َ"   ; m2 = "ُ"   ; t = ""   } ;
    fAcal    = { h = ""  ; m1 = "َا"  ; m2 = "َ"   ; t = ""   } ;
    fAcil    = { h = ""  ; m1 = "َا"  ; m2 = "ِ"   ; t = ""   } ;
    faccal   = { h = ""  ; m1 = "َ"   ; m2 = "َّ"  ; t = ""   } ;
    faccil   = { h = ""  ; m1 = "َ"   ; m2 = "ِّ"  ; t = ""   } ;
    faclA'   = { h = ""  ; m1 = "َ"   ; m2 = "ْ"   ; t = "َاء"} ;
    fAcilp   = { h = ""  ; m1 = "َا"  ; m2 = "ِ"   ; t = "َة" } ;
    fawAcil  = { h = ""  ; m1 = "َوَا"; m2 = "ِ"   ; t = ""   } ;
    ficAlp   = { h = ""  ; m1 = "ِ"   ; m2 = "َا"  ; t = "َة" } ;
    fcal     = { h = ""  ; m1 = "ْ"   ; m2 = "َ"   ; t = ""   } ;
    fcil     = { h = ""  ; m1 = "ْ"   ; m2 = "ِ"   ; t = ""   } ;
    fcul     = { h = ""  ; m1 = "ْ"   ; m2 = "ُ"   ; t = ""   } ;
    ficl     = { h = ""  ; m1 = "ِ"   ; m2 = "ْ"   ; t = ""   } ;
    fcIl     = fcil ** {m2 = "ِي"} ;
    fcAl     = fcal ** {m2 = "َا"} ;
    ficAl    = { h = ""  ; m1 = "ِ"   ; m2 = "َا"  ; t = ""   } ;
    ficlp    = { h = ""  ; m1 = "ِ"   ; m2 = "ْ"   ; t = "َة" } ;
    ftacc    = facc ** {m1 = "ْتَ"} ;
    ftucc    = facc ** {m1 = "ْتُ"} ;
    ftacal   = { h = ""  ; m1 = "ْتَ" ; m2 = "َ"   ; t = ""   } ;
    fticAl   = ficAl ** { m1 = "ْتِ" } ; -- IL hollow VIII
    ftical   = ftacal ** { m1 = "ْتِ" } ; -- IL hollow VIII
    ftAcal   = ftacal ** { m1 = "ْتَا" } ; -- IL hollow VIII
    ftIcal   = ftacal ** { m1 = "ْتِي" } ;  -- IL hollow VIII
    ftacil   = { h = ""  ; m1 = "ْتَ" ; m2 = "ِ"   ; t = ""   } ;
    ftucil   = fucil ** { m1 = "ْتُ" } ;
    euttucil = { h =  "اُتُّ" ; m1 = "ِ" ; m2 = "" ; t = "" } ; ---- IL assimilated VIII
    ttacal   = ftacal ** { m1 = ""  ; h = "تَّ" } ; ---- IL assimilated VIII
    ttacil   = ftacil ** { m1 = ""  ; h = "تَّ" } ; ---- IL assimilated VIII
    tticAl   = ficAl ** { h = "تِّ" } ;             ---- IL assimilated VIII
    fuccAl   = { h = ""  ; m1 = "ُ"   ; m2 = "َّا" ; t = ""   } ;
    fuccil   = { h = ""  ; m1 = "ُ"   ; m2 = "ِّ"  ; t = ""   } ;
    fuccilo  = { h = ""  ; m1 = "ُ"   ; m2 = "ِّ"  ; t = "ْ"  } ;
    fucal    = { h = ""  ; m1 = "ُ"   ; m2 = "َ"   ; t = ""   } ;
    fucaylp  = { h = ""  ; m1 = "ُ"   ; m2 = "َيْ" ; t = "َة" } ;
    fucAl    = { h = ""  ; m1 = "ُ"   ; m2 = "َا"  ; t = ""   } ;
    fucl     = { h = ""  ; m1 = "ُ"   ; m2 = "ْ"   ; t = ""   } ;
    fucil    = { h = ""  ; m1 = "ُ"   ; m2 = "ِ"   ; t = ""   } ;
    fuclp    = { h = ""  ; m1 = "ُ"   ; m2 = "ْ"   ; t = "َة" } ;
    fucilo   = { h = ""  ; m1 = "ُ"   ; m2 = "ِ"   ; t = "ْ"  } ;
    fucul    = { h = ""  ; m1 = "ُ"   ; m2 = "ُ"   ; t = ""   } ;
    fuculo   = { h = ""  ; m1 = "ُ"   ; m2 = "ُ"   ; t = "ْ"  } ;
    fucUl    = { h = ""  ; m1 = "ُ"   ; m2 = "ُو"  ; t = ""   } ;
    fUcil    = { h = ""  ; m1 = "ُو"  ; m2 = "ِ"   ; t = ""   } ;
    mafcUl   = { h = "مَ"; m1 = "ْ"   ; m2 = "ُو"  ; t = ""   } ;
    mafcil   = { h = "مَ"; m1 = "ْ"   ; m2 = "ِ"  ; t = ""   } ;
    tafAcal  = { h = "تَ"; m1 = "َا"  ; m2 = "َ"   ; t = ""   } ;
    tafAcul  = { h = "تَ"; m1 = "َا"  ; m2 = "ُ"   ; t = ""   } ;
    tafaccal = { h = "تَ"; m1 = "َ"   ; m2 = "َّ"  ; t = ""   } ;
    tafaccul = { h = "تَ"; m1 = "َ"   ; m2 = "ُّ"  ; t = ""   } ;
    tufuccil = { h = "تُ"; m1 = "ُ"   ; m2 = "ِّ"  ; t = ""   } ;
    tufUcil  = { h = "تُ"; m1 = "ُو"  ; m2 = "ِ"   ; t = ""   } ;
    ufAcal   = { h = "ُ" ; m1 = "َا"  ; m2 = "َ"   ; t = ""   } ;
    ufAcil   = { h = "ُ" ; m1 = "َا"  ; m2 = "ِ"   ; t = ""   } ;
    ufcal    = { h = "ُ" ; m1 = "ْ"   ; m2 = "َ"   ; t = ""   } ;
    ufcil    = { h = "ُ" ; m1 = "ْ"   ; m2 = "ِ"   ; t = ""   } ;
    ufcul    = { h = "ُ" ; m1 = "ْ"   ; m2 = "ُ"   ; t = ""   } ;

}
