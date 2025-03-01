--# -path=.:../romance:../common:../abstract:../prelude
concrete StructuralPor of Structural = CatPor **
  open PhonoPor, MorphoPor, ParadigmsPor, BeschPor, DiffPor,
  MakeStructuralPor, (X = ConstructX), (B=LexiconPor)
  , Prelude in {

  flags optimize=all ;
        coding=utf8 ;

  lin
    --- Prons
    i_Pron =
      mkPronoun
      "eu" "me" "me" "mim" "meu" "minha" "meus" "minhas"
      Masc Sg P1 ;
    he_Pron =
      mkPronoun
      "ele" "o" "lhe" "ele" "seu" "sua" "seus" "suas"
      Masc Sg P3 ;
    it_Pron = he_Pron ;
    she_Pron =
      mkPronFrom he_Pron
      "ela" "a" "lhe" "ela"
      Fem Sg P3 ;
    youSg_Pron = he_Pron ** pronLin "você" "te" "lhe" "você" ;
    youPol_Pron = mkPronoun "tu" "te" "te" "ti"
      "teu" "tua" "teus" "tuas"
      Masc Sg P2 ;
    we_Pron =
      mkPronoun
      "nós" "nos" "nos" "nós" "nosso" "nossa" "nossos" "nossas"
      Masc Pl P1 ;
    they_Pron = mkPronFrom he_Pron
      "eles" "os" "lhes" "eles"
      Masc Pl P3 ;
    youPl_Pron =
      mkPronFrom they_Pron
      "vocês" "os" "lhes" "vocês"
      Masc Pl P3 ;

    above_Prep = mkPrep "sobre" ;
    after_Prep = {s = "depois" ; c = MorphoPor.genitive ;
                  isDir = False} ;
    all_Predet = {
      s = \\a,c => prepCase c ++ aagrForms "todo" "toda" "todos" "todas" ! a ;
      c = Nom ;
      a = PNoAg
      } ;
    almost_AdA, almost_AdN = ss "quase" ;
    always_AdV = ss "sempre" ;
    although_Subj = ss "embora" ** {m = Conjunct} ;
    and_Conj = {s1 = [] ; s2 = etConj.s ; n = Pl} ;
    at_least_AdN = ss "pelo menos" ;
    at_most_AdN = ss "no máximo" ;
    because_Subj = ss "porque" ** {m = Indic} ;
    before_Prep = {s = "antes" ; c = MorphoPor.genitive ;
                   isDir = False} ;
    behind_Prep = {s = "atrás" ; c = MorphoPor.genitive ;
                   isDir = False} ;
    between_Prep = mkPrep "entre" ;
    both7and_DConj = {s1 = "tanto" ; s2 = "quanto" ; n = Pl} ;
    but_PConj = ss "mas" ;
    by8agent_Prep = mkPrep [] ablative ; -- por
    by8means_Prep = mkPrep [] ablative ; -- por
    can8know_VV = mkVV B.know_V ;
    can_VV = mkVV (mkV (poder_Besch "poder")) ;
    during_Prep = mkPrep "durante" ;
    either7or_DConj = {s1,s2 = "ou" ; n = Sg} ;
    everybody_NP = makeNP "todos" Masc Pl ;
    every_Det = mkDeterminer "todo" "toda" Sg False ;
    everything_NP = pn2np (mkPN "tudo" Masc) ;
    everywhere_Adv = ss ["em toda parte"] ;
    except_Prep = mkPrep "exceto" ;
    few_Det = mkDeterminer "poucos" "poucas" Pl False ;
  ---  first_Ord = {s = \\ag => (regA "primeiro").s ! Posit ! AF ag.g ag.n} ;
    for_Prep = mkPrep "para" ;
    from_Prep = complGen ; ---
    here_Adv = mkAdv "aqui" ;
    here7to_Adv = mkAdv ["para cá"] ;
    here7from_Adv = mkAdv "daqui" ;
    how_IAdv = ss "como" ;
    how8many_IDet = mkIDet "quantos" "quantas" Pl ;
    how8much_IAdv = ss "quanto" ;
    if_Subj = ss "se" ** {m = Indic} ;
    if_then_Conj = {s1 = "se" ; s2 = "então" ;
                    n = Sg ; lock_Conj = <>} ;
    in8front_Prep = {s = "à frente" ; c = MorphoPor.genitive ; isDir = False} ;
    in_Prep = mkPrep [] locative ;

    less_CAdv = X.mkCAdv "menos" conjThan ; ----
    many_Det = mkDeterminer "muitos" "muitas" Pl False ;
    more_CAdv = X.mkCAdv "mais" conjThan ;
    most_Predet = {s = \\_,c => prepCase c ++ ["a maior parte"] ; c = CPrep P_de ;
                   a = PNoAg} ;
    much_Det = mkDeterminer "muito" "muita" Sg False ;
    must_VV = mkVV (regV "dever") ;
    no_Quant =
      let
        nenhum : ParadigmsPor.Number => ParadigmsPor.Gender => Case => Str =
          -- https://web.archive.org/web/20181003161105/http://sualingua.com.br/2009/05/08/nenhuns/
          \\n,g,c => prepCase c ++ genNumForms "nenhum" "nenhuma" "nenhuns" "nenhumas" ! g ! n
      in {
        s = \\_ => nenhum ;
        sp = nenhum ;
        s2 = [] ; isNeg = True
      } ;
    no_Utt = ss "não" ;
    not_Predet = {s = \\a,c => prepCase c ++ "nem" ; c = Nom ; a = PNoAg} ;
    nobody_NP = pn2npNeg (mkPN "ninguém") ;
    nothing_NP = pn2npNeg (mkPN "nada") ;

    on_Prep = mkPrep "sobre" ;
    only_Predet = {s = \\_,c => prepCase c ++ "só" ; c = Nom ;
                   a = PNoAg} ;
    or_Conj = {s1 = [] ; s2 = "ou" ; n = Sg} ;
    otherwise_PConj = ss "caso contrário" ;
    part_Prep = complGen ;
    please_Voc = ss ["por favor"] ;
    possess_Prep = complGen ;
    quite_Adv = ss "bastante" ;
    so_AdA = ss "tanto" ;
    somebody_NP = pn2np (mkPN "alguém" Masc) ;
    somePl_Det = mkDeterminer "alguns" "algumas" Pl False ;
    someSg_Det = mkDeterminer "algum" "alguma" Sg False ;
    something_NP = pn2np (mkPN "algo" Masc) ;
    somewhere_Adv = ss ["em algum lugar"] ;
    that_Quant = mkQuantifier "esse" "essa" "esses" "essas" ;
    there_Adv = mkAdv "ali" ; -- lá
    there7to_Adv = mkAdv ["para lá"] ;
    there7from_Adv = mkAdv "dali" ;
    therefore_PConj = ss ["por isso"] ;

    this_Quant = mkQuantifier "este" "esta" "estes" "estas" ;
    through_Prep = mkPrep [] ablative ; -- por
    too_AdA = ss "demasiado" ; -- o certo seria demais como postfix
    to_Prep = complDat ;
    under_Prep = mkPrep "embaixo" ;
    very_AdA = ss "muito" ;
    want_VV = mkVV (mkV (querer_Besch "querer")) ;
    whatSg_IP = {s = \\c => prepCase c ++ "que" ; a = aagr Masc Sg} ;
    whatPl_IP = {s = \\c => prepCase c ++ "que" ; a = aagr Masc Pl} ; ---
    when_IAdv = ss "quando" ;
    when_Subj = ss "quando" ** {m = Indic} ;
    where_IAdv = ss "onde" ;
    which_IQuant = {s = table {
                      Sg => \\g,c => prepCase c ++ "qual" ; --- que
                      Pl => \\g,c => prepCase c ++ "quais"
                      }
      } ;
    whoPl_IP = {s = \\c => prepCase c ++ "quem" ; a = aagr Masc Pl} ;
    whoSg_IP = {s = \\c => prepCase c ++ "quem" ; a = aagr Masc Sg} ;
    why_IAdv = ss ["por quê"] ;
    without_Prep = mkPrep "sem" ;
    with_Prep = mkPrep "com" ;
    yes_Utt = ss "sim" ;

  oper
    -- is it still necessary after deleting the Spa confusion? y/e
    etConj : {s : Str ; n : MorphoPor.Number} = {s = "e"} ** {n = Pl} ;

  lin
    as_CAdv = X.mkCAdv "tão" conjThan ; ----
    have_V2 = dirV2 B.have_V ;
    that_Subj = {s = "que" ; m = Conjunct} ;

  lin language_title_Utt = ss "português" ;

} ;
