
resource ParamTam = ParamX ** open Prelude in {

--------------------------------------------------------------------------------
-- Phonology

--oper
--  v : pattern Str = #("a"|"e"|"i"|"o"|"u") ;

--  diphthong : pattern Str = #("ai"|"au"|"oi") ;

--  c : pattern Str = #("m"|"n"|"ny"|"ng"
--                     |"p"|"b"|"t"|"d"|"k"|"g"
--                     |"s"|"z"|"c"|"j"|"sy"
--                     |"f"|"v"|"kh"|"gh"|"h"
--                     |"l"|"r"
--                     |"w"|"y") ;

--  -- not sure if needed anywhere, this is just my standard helper function.
--  voiced : Str -> Str = \s -> case s of {
--    "k" => "g" ; "t" => "d" ; "p" => "b" ;
--    "s" => "z" ; "c" => "j" ; "kh" => "gh" ;
--    _   => s } ;

--------------------------------------------------------------------------------
-- Morphophonology

--  prefix : Prefix -> Str -> Str = \p -> case p of {
--    Meng => prefixMeng ;
--    Ber  => prefixBer
--    } ;

--  prefixMeng : Str -> Str = \makan -> case makan of {

--    ? + ? + ? => "menge" + makan ;

--    (#v|"g"|"h") + _
--      => "meng" + makan ; -- prefix meng: e.g. meng+atur
--    "k" + enal
--      => "meng" + enal ; -- replace k with meng

--    "b" + _
--      => "mem" + makan ; -- prefix mem: e.g. mem+beli
--    ("p"|"f") + ikir
--      => "mem" + ikir ; -- replace p/f with mem

--    ("j"|"c"|"z"|"d") + _
--      => "men" + makan ; -- prefix men: e.g. men+jadi
--    "t" + ipu
--      => "men" + ipu ; -- replace t with men

--    "s" + alak
--      => "meny" + alak ; -- replace s with meny

--    ("r"|"l"|"w"|"y"|"m"|"n"|"ny"|"ng") + _
--      => "me" + makan ; -- prefix me

--    -- We can throw an error
--    -- _ => Predef.error "Not a valid verb root" ;

--    -- or we can let it pass with some default allomorph
--    _ => "meng" + makan
--    } ;

--  prefixBer : Str -> Str = \jalan -> case jalan of {
--    -- Exception
--    "ajar" => "belajar" ;

--    -- Drop the r
--    (#c  + "er" + _  -- be+kerja
--    |"r" + _ )       -- be+rehat
--      => "be" + jalan ;

--    -- Default allomorph: ber
--    _ => "ber" + jalan
--    } ;

--------------------------------------------------------------------------------
-- Nouns

  param
     -- Number = Already available from ParamX.gf under "common" folder
    Case = Nom | Acc | Dat | Soc | Gen | Instr | Loc | Abl ; --(p. 46-47)
--------------------------------------------------------------------------------
-- Numerals

--param
--  DForm = Indep | Attrib ;

--  CardOrd = NOrd | NCard ;

  NumType = NoNum Number | IsNumber ;

--oper
--  isNum : NumType -> Bool = \nt -> case nt of {
--    NoNum _ => False ;
--    _       => True
--    } ;

--  toNum : NumType -> Number = \nt -> case nt of {
--    NoNum n => n ;
--    _       => Sg
--    } ;
--------------------------------------------------------------------------------
-- Adjectives

--param
--  AForm = TODOAdj ;

--------------------------------------------------------------------------------
-- Prepositions
--param
--  PrepType = DirObj | EmptyPrep | OtherPrep ;


--------------------------------------------------------------------------------
-- Adverbs

--------------------------------------------------------------------------------
-- Verbs
  param
    --Tense = Already available from ParamX.gf under "common" folder
    PNG = s1 | s2 | sm3 | sf3 | sn3 | smf3 | pl3 | pl3 | plmf3 | pln3 ; -- PNG stands for Person-Number-Gender. s = singular, pl = plural, m = male, f = female, n = neuter
    -- VForm = VF Person Number | VFP3 Number Gender ; --*
    Mood = Imp | Ind | Opt ; -- *Imperative (commands), Indicative (statements or questions), Optative (wishes or choices) (pg. 54)
    

  

--------------------------------------------------------------------------------
-- Clauses

--param

-- ClType = Statement | PolarQuestion | WhQuestion | Subord ;

--}
}
