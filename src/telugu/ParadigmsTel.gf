--# -path=.:../abstract:../../prelude:../common

--1 Teldi Lexical Paradigms

resource ParadigmsTel = open 
  (Predef=Predef), 
  Prelude, 
  ResTel,
  CatTel
  in {
--
----2 Parameters 
--
oper
--  masculine : Gender ;
--  feminine : Gender ;
--
--  masculine = Masc ; feminine = Fem ; --i
--
--
----2 Nouns
--
  mkN = overload {
    mkN : Str -> N 
      = \s -> wallNoun s ** {lock_N = <>} ;
--    mkN : Str -> Gender -> N 
--      = \s,g -> reggNoun s g ** {lock_N = <>} ;
    mkN : (x1,_,_,x4 : Str) -> Gender -> N 
      = \sd,so,pd,po,g -> mkNoun sd so pd po g ** {lock_N = <>} ;
    } ;
--
--  mkPN = overload {
--    mkPN : Str -> PN = \s -> let n = regNoun s in {s = n.s ! Sg ; g = n.g ; lock_PN = <>} ;
--    mkPN : N -> Gender -> PN = \n,g -> {s = n.s ! Sg ; g = g ; lock_PN = <>} ;
--    } ;
--
----2 Adjectives
--
--  mkA = overload {
--    mkA : Str -> A 
--      = \s -> regAdjective s ** {lock_A = <>} ;
--    mkA : (x1,_,x3 : Str) -> A
--      = \msd,m,f -> mkAdjective msd m f ** {lock_A = <>} ;
--    } ;
--
----2 Verbs
--
--  mkV = overload {
--    mkV : Str -> V 
--      = \s -> regVerb s ** {lock_V = <>} ;
--    mkV : (x1,_,_,_,_,_,_,_,_,_,_,_,_,_,x15 : Str) -> V
--      = \inf,stem,ims,imp,ifs,ifp,pms,pmp,pfs,pfp,ss1,ss2,sp2,sp3,r -> 
--           mkVerb inf stem ims imp ifs ifp pms pmp pfs pfp ss1 ss2 sp2 sp3 r ** 
--             {lock_V = <>} ;
--    } ;
--
--
--  mkV2 = overload {
--    mkV2 : Str -> V2 
--      = \s -> regVerb s ** {c2 = {s = [] ; c = VTrans} ; lock_V2 = <>} ;
--    mkV2 : V -> V2 
--      = \v -> v ** {c2 = {s = [] ; c = VTrans} ; lock_V2 = <>} ;
--    mkV2 : V -> Str -> V2 
--      = \v,p -> v ** {c2 = {s = p ; c = VTransPost} ; lock_V2 = <>} ;
--    } ;
--
--
------3 Compound nouns 
------
------ A compound noun is an uninflected string attached to an inflected noun,
------ such as "baby boom", "chief executive officer".
----
----    mkN : Str -> N -> N
----  } ;
----
----
------3 Relational nouns 
------ 
------ Relational nouns ("daughter of x") need a preposition. 
----
----  mkN2 : N -> Prep -> N2 ;
----
------ The most common preposition is "of", and the following is a
------ shortcut for regular relational nouns with "of".
----
----  regN2 : Str -> N2 ;
----
------ Use the function $mkPrep$ or see the section on prepositions below to  
------ form other prepositions.
------
------ Three-place relational nouns ("the connection from x to y") need two prepositions.
----
----  mkN3 : N -> Prep -> Prep -> N3 ;
----
----
----
------3 Proper names and noun phrases
------
------ Proper names, with a regular genitive, are formed from strings.
----
----  mkPN : overload {
----
----    mkPN : Str -> PN ;
----
------ Sometimes a common noun can be reused as a proper name, e.g. "Bank"
----
----    mkPN : N -> PN
----  } ;
----
----
------2 Adjectives
----
----  mkA : overload {
----
------ For regular adjectives, the adverbial and comparison forms are derived. This holds
------ even for cases with the variations "happy - happily - happier - happiest",
------ "free - freely - freer - freest", and "rude - rudest".
----
----    mkA : (happy : Str) -> A ;
----
------ However, the duplication of the final consonant cannot be predicted,
------ but a separate case is used to give the comparative
----
----    mkA : (fat,fatter : Str) -> A ;
----
------ As many as four forms may be needed.
----
----    mkA : (good,better,best,well : Str) -> A 
----    } ;
----
------ To force comparison to be formed by "more - most", 
------ the following function is used:
----
----    compoundA : A -> A ; -- -/more/most ridiculous
----
----
----
------3 Two-place adjectives
------
------ Two-place adjectives need a preposition for their second argument.
----
----  mkA2 : A -> Prep -> A2 ;
----
----
----
------2 Adverbs
----
------ Adverbs are not inflected. Most lexical ones have position
------ after the verb. Some can be preverbal (e.g. "always").
----
----  mkAdv : Str -> Adv ;
----  mkAdV : Str -> AdV ;
----
------ Adverbs modifying adjectives and sentences can also be formed.
----
----  mkAdA : Str -> AdA ;
----
------2 Prepositions
------
------ A preposition as used for rection in the lexicon, as well as to
------ build $PP$s in the resource API, just requires a string.
----
----  mkPrep : Str -> Prep ;
----  noPrep : Prep ;
----
------ (These two functions are synonyms.)
----
------2 Verbs
------
----
------ Verbs are constructed by the function $mkV$, which takes a varying
------ number of arguments.
----
----  mkV : overload {
----
------ The regular verb function recognizes the special cases where the last
------ character is "y" ("cry-cries" but "buy-buys") or a sibilant
------ ("kiss-"kisses", "jazz-jazzes", "rush-rushes", "munch - munches", 
------ "fix - fixes").
----
----    mkV : (cry : Str) -> V ;
----
------ Give the present and past forms for regular verbs where
------ the last letter is duplicated in some forms,
------ e.g. "rip - ripped - ripping".
----
----    mkV : (stop, stopped : Str) -> V ;
----
------ There is an extensive list of irregular verbs in the module $IrregularTel$.
------ In practice, it is enough to give three forms, 
------ e.g. "drink - drank - drunk".
----
----    mkV : (drink, drank, drunk  : Str) -> V ;
----
------ Irregular verbs with duplicated consonant in the present participle.
---- 
----    mkV : (run, ran, run, running  : Str) -> V ;
----
------ Except for "be", the worst case needs five forms: the infinitive and
------ the third person singular present, the past indicative, and the
------ past and present participles.
----
----    mkV : (go, goes, went, gone, going : Str) -> V
----  };
----
------ Verbs with a particle.
------ The particle, such as in "switch on", is given as a string.
----
----  partV  : V -> Str -> V ;
----
------ Reflexive verbs.
------ By default, verbs are not reflexive; this function makes them that.
----
----  reflV  : V -> V ;
----
------3 Two-place verbs
------
------ Two-place verbs need a preposition, except the special case with direct object.
------ (transitive verbs). Notice that a particle comes from the $V$.
----
----  mkV2 : overload {
----    mkV2  : V -> Prep -> V2 ; -- believe in
----    mkV2  : V -> V2           -- kill
----  };
----
------3 Three-place verbs
------
------ Three-place (ditransitive) verbs need two prepositions, of which
------ the first one or both can be absent.
----
----  mkV3     : V -> Prep -> Prep -> V3 ;   -- speak, with, about
----  dirV3    : V -> Prep -> V3 ;           -- give,_,to
----  dirdirV3 : V -> V3 ;                   -- give,_,_
----
------3 Other complement patterns
------
------ Verbs and adjectives can take complements such as sentences,
------ questions, verb phrases, and adjectives.
----
----  mkV0  : V -> V0 ;
----  mkVS  : V -> VS ;
----  mkV2S : V -> Prep -> V2S ;
----  mkVV  : V -> VV ;
----  mkV2V : V -> Prep -> Prep -> V2V ;
----  mkVA  : V -> VA ;
----  mkV2A : V -> Prep -> V2A ;
----  mkVQ  : V -> VQ ;
----  mkV2Q : V -> Prep -> V2Q ;
----
----  mkAS  : A -> AS ;
----  mkA2S : A -> Prep -> A2S ;
----  mkAV  : A -> AV ;
----  mkA2V : A -> Prep -> A2V ;
----
------ Notice: Categories $V0, AS, A2S, AV, A2V$ are just $A$.
------ $V0$ is just $V$; the second argument is treated as adverb.
----
----  V0 : Type ;
----  AS, A2S, AV, A2V : Type ;
----
------.
------2 Definitions of paradigms
------
------ The definitions should not bother the user of the API. So they are
------ hidden from the document.
----
----  Gender = MorphoTel.Gender ; 
----  Number = MorphoTel.Number ;
----  Case = MorphoTel.Case ;
----  human = Masc ; 
----  nonhuman = Neutr ;
----  masculine = Masc ;
----  feminine = Fem ;
----  singular = Sg ;
----  plural = Pl ;
----  nominative = Nom ;
----  genitive = Gen ;
----
----  Preposition : Type = Str ; -- obsolete
----
----  regN = \ray -> 
----    let rays = add_s ray
----     in
----       mk2N ray rays ;
----
----
----  add_s : Str -> Str = \w -> case w of {
----    _ + ("io" | "oo")                         => w + "s" ;   -- radio, bamboo
----    _ + ("s" | "z" | "x" | "sh" | "ch" | "o") => w + "es" ;  -- bus, hero
----    _ + ("a" | "o" | "u" | "e") + "y"  => w + "s" ;   -- boy
----    x + "y"                            => x + "ies" ; -- fly
----    _                                  => w + "s"     -- car
----    } ;
----
----  mk2N = \man,men -> 
----    let mens = case last men of {
----      "s" => men + "'" ;
----      _   => men + "'s"
----      }
----    in
----    mk4N man men (man + "'s") mens ;
----
----  mk4N = \man,men,man's,men's -> 
----    mkNoun man man's men men's ** {g = Neutr ; lock_N = <>} ;
----
----  genderN g man = {s = man.s ; g = g ; lock_N = <>} ;
----
----  compoundN s n = {s = \\x,y => s ++ n.s ! x ! y ; g=n.g ; lock_N = <>} ;
----
----  mkPN = overload {
----    mkPN : Str -> PN = regPN ;
----    mkPN : N -> PN = nounPN
----  } ;
----
----
----  mkN2 = \n,p -> n ** {lock_N2 = <> ; c2 = p.s} ;
----  regN2 n = mkN2 (regN n) (mkPrep "of") ;
----  mkN3 = \n,p,q -> n ** {lock_N3 = <> ; c2 = p.s ; c3 = q.s} ;
----
------3 Relational common noun phrases
------
------ In some cases, you may want to make a complex $CN$ into a
------ relational noun (e.g. "the old town hall of").
----
----  cnN2 : CN -> Prep -> N2 ;
----  cnN3 : CN -> Prep -> Prep -> N3 ;
----
------ This is obsolete.
----  cnN2 = \n,p -> n ** {lock_N2 = <> ; c2 = p.s} ;
----  cnN3 = \n,p,q -> n ** {lock_N3 = <> ; c2 = p.s ; c3 = q.s} ;
----
----  regPN n = regGenPN n human ;
----  regGenPN n g = nameReg n g ** {g = g ; lock_PN = <>} ;
----  nounPN n = {s = n.s ! singular ; g = n.g ; lock_PN = <>} ;
----
----  mk2A a b = mkAdjective a a a b ** {lock_A = <>} ;
----  regA a = regADeg a ** {lock_A = <>} ;
----
----  mkA2 a p = a ** {c2 = p.s ; lock_A2 = <>} ;
----
----  ADeg = A ; ----
----
----  mkADeg a b c d = mkAdjective a b c d ** {lock_A = <>} ;
----
----  regADeg happy = 
----    let
----      happ = init happy ;
----      y    = last happy ;
----      happie = case y of {
----        "y" => happ + "ie" ;
----        "e" => happy ;
----        _   => happy + "e"
----        } ;
----      happily : Str = case happy of {
----        _ + "y" => happ + "ily" ;
----        _ + "ll" => happy + "y" ;
----        _   => happy + "ly"
----        } ;
----    in mkADeg happy (happie + "r") (happie + "st") happily ;
----
----  duplADeg fat = 
----    mkADeg fat 
----    (fat + last fat + "er") (fat + last fat + "est") (fat + "ly") ;
----
----  compoundADeg a =
----    let ad = (a.s ! AAdj Posit) 
----    in mkADeg ad ("more" ++ ad) ("most" ++ ad) (a.s ! AAdv) ;
----
----  adegA a = a ;
----
----  mkAdv x = ss x ** {lock_Adv = <>} ;
----  mkAdV x = ss x ** {lock_AdV = <>} ;
----  mkAdA x = ss x ** {lock_AdA = <>} ;
----
----  mkPrep p = ss p ** {lock_Prep = <>} ;
----  noPrep = mkPrep [] ;
----
----  mk5V a b c d e = mkVerb a b c d e ** {s1 = [] ; lock_V = <>} ;
----
----  regV cry = 
----    let
----      cr = init cry ;
----      y  = last cry ;
----      cries = (regN cry).s ! Pl ! Nom ; -- !
----      crie  = init cries ;
----      cried = case last crie of {
----        "e" => crie + "d" ;
----        _   => crie + "ed"
----        } ;
----      crying = case y of {
----        "e" => case last cr of {
----           "e" => cry + "ing" ; 
----           _ => cr + "ing" 
----           } ;
----        _   => cry + "ing"
----        }
----    in mk5V cry cries cried cried crying ;
----
----  reg2V fit fitted =
----   let fitt = Predef.tk 2 fitted ;
----   in mk5V fit (fit + "s") (fitt + "ed") (fitt + "ed") (fitt + "ing") ;
----
----  regDuplV fit = 
----    case last fit of {
----      ("a" | "e" | "i" | "o" | "u" | "y") => 
----        Predef.error (["final duplication makes no sense for"] ++ fit) ;
----      t =>
----       let fitt = fit + t in
----       mk5V fit (fit + "s") (fitt + "ed") (fitt + "ed") (fitt + "ing")
----      } ;
----
----  irregV x y z = let reg = (regV x).s in
----    mk5V x (reg ! VPres) y z (reg ! VPresPart) ** {s1 = [] ; lock_V = <>} ;
----
----  irreg4V x y z w = let reg = (regV x).s in
----    mk5V x (reg ! VPres) y z w ** {s1 = [] ; lock_V = <>} ;
----
----  irregDuplV fit y z = 
----    let 
----      fitting = (regDuplV fit).s ! VPresPart
----    in
----    mk5V fit (fit + "s") y z fitting ;
----
----  partV v p = verbPart v p ** {lock_V = <>} ;
----  reflV v = {s = v.s ; part = v.part ; lock_V = v.lock_V ; isRefl = True} ;
----
----  prepV2 v p = v ** {s = v.s ; s1 = v.s1 ; c2 = p.s ; lock_V2 = <>} ;
----  dirV2 v = prepV2 v noPrep ;
----
----  mkV3 v p q = v ** {s = v.s ; s1 = v.s1 ; c2 = p.s ; c3 = q.s ; lock_V3 = <>} ;
----  dirV3 v p = mkV3 v noPrep p ;
----  dirdirV3 v = dirV3 v noPrep ;
----
----  mkVS  v = v ** {lock_VS = <>} ;
----  mkVV  v = {
----    s = table {VVF vf => v.s ! vf ; _ => variants {}} ; 
----    isAux = False ; lock_VV = <>
----    } ;
----  mkVQ  v = v ** {lock_VQ = <>} ;
----
----  V0 : Type = V ;
------  V2S, V2V, V2Q : Type = V2 ;
----  AS, A2S, AV : Type = A ;
----  A2V : Type = A2 ;
----
----  mkV0  v = v ** {lock_V = <>} ;
----  mkV2S v p = prepV2 v p ** {lock_V2S = <>} ;
----  mkV2V v p t = prepV2 v p ** {isAux = False ; lock_V2V = <>} ;
----  mkVA  v = v ** {lock_VA = <>} ;
----  mkV2A v p = prepV2 v p ** {lock_V2A = <>} ;
----  mkV2Q v p = prepV2 v p ** {lock_V2Q = <>} ;
----
----  mkAS  v = v ** {lock_A = <>} ;
----  mkA2S v p = mkA2 v p ** {lock_A = <>} ;
----  mkAV  v = v ** {lock_A = <>} ;
----  mkA2V v p = mkA2 v p ** {lock_A2 = <>} ;
----
----
------ pre-overload API and overload definitions
----
----  mk4N : (man,men,man's,men's : Str) -> N ;
----  regN : Str -> N ;
----  mk2N : (man,men : Str) -> N ;
----  genderN : Gender -> N -> N ;
----  compoundN : Str -> N -> N ;
----
----  mkN = overload {
----    mkN : (man,men,man's,men's : Str) -> N = mk4N ;
----    mkN : Str -> N = regN ;
----    mkN : (man,men : Str) -> N = mk2N ;
----    mkN : Gender -> N -> N = genderN ;
----    mkN : Str -> N -> N = compoundN
----    } ;
----
----
----  mk2A : (free,freely : Str) -> A ;
----  regA : Str -> A ;
----
----  mkA = overload {
----    mkA : Str -> A = regA ;
----    mkA : (fat,fatter : Str) -> A = \fat,fatter -> 
----      mkAdjective fat fatter (init fatter + "st") (fat + "ly") ** {lock_A = <>} ;
----    mkA : (good,better,best,well : Str) -> A = \a,b,c,d ->
----      mkAdjective a b c d  ** {lock_A = <>}
----    } ;
----
----  compoundA = compoundADeg ;
----
----
----  mk5V : (go, goes, went, gone, going : Str) -> V ;
----  regV : (cry : Str) -> V ;
----  reg2V : (stop, stopped : Str) -> V;
----  irregV : (drink, drank, drunk  : Str) -> V ;
----  irreg4V : (run, ran, run, running  : Str) -> V ;
----
----  -- Use reg2V instead
----  regDuplV : Str -> V ;
----  -- Use irreg4V instead
----  irregDuplV : (get,   got,   gotten : Str) -> V ;
----
----  mkV = overload {
----    mkV : (cry : Str) -> V = regV ;
----    mkV : (stop, stopped : Str) -> V = reg2V ;
----    mkV : (drink, drank, drunk  : Str) -> V = irregV ;
----    mkV : (run, ran, run, running  : Str) -> V = irreg4V ;
----    mkV : (go, goes, went, gone, going : Str) -> V = mk5V
----  };
----
----  prepV2 : V -> Prep -> V2 ;
----  dirV2 : V -> V2 ;
----
----  mkV2 = overload {
----    mkV2  : V -> Prep -> V2 = prepV2;
----    mkV2  : V -> V2 = dirV2
----  }; 
----
----
-------- obsolete
----
------ Comparison adjectives may two more forms. 
----
----  ADeg : Type ;
----
----  mkADeg : (good,better,best,well : Str) -> ADeg ;
----
------ The regular pattern recognizes two common variations: 
------ "-e" ("rude" - "ruder" - "rudest") and
------ "-y" ("happy - happier - happiest - happily")
----
----  regADeg : Str -> ADeg ;      -- long, longer, longest
----
------ However, the duplication of the final consonant is nor predicted,
------ but a separate pattern is used:
----
----  duplADeg : Str -> ADeg ;      -- fat, fatter, fattest
----
------ If comparison is formed by "more", "most", as in general for
------ long adjective, the following pattern is used:
----
----  compoundADeg : A -> ADeg ; -- -/more/most ridiculous
----
------ From a given $ADeg$, it is possible to get back to $A$.
----
----  adegA : ADeg -> A ;
----
----
----  regPN    : Str -> PN ;          
----  regGenPN : Str -> Gender -> PN ;     -- John, John's
----
------ Sometimes you can reuse a common noun as a proper name, e.g. "Bank".
----
----  nounPN : N -> PN ;
----
----
----
}
