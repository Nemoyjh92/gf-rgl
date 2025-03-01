--# -path=.:prelude

--1 Basic Latin Lexicon.

-- Aarne Ranta pre 2013, Herbert Lange 2013

-- This lexicon implements all the words in the abstract Lexicon.
-- For each entry a source is given, either a printed dictionary or
-- a link to an online source. The two used printed dictionaries are
-- Langescheidts Schulwörterbuch Lateinisch 17. Edition 1984 (shorter:
-- Langenscheidts) and Der kleine Stowasser 3. Edition 1991 (shorter:
-- Stowasser)

concrete LexiconLat of Lexicon = CatLat ** open 
  ParadigmsLat,
  (R = ResLat),
  IrregLat,
  StructuralLat,
  NounLat,
  AdjectiveLat,
  VerbLat,
  Prelude,
  ExtraLat
  in {

flags 
  optimize=values ;
  coding = utf8;
lin
  airplane_N = mkN "aeroplanum" ; -- -i n. (http://la.wikipedia.org/wiki/A%C3%ABroplanum / Pons)
  answer_V2S = mkV2S ( mkV "respondere" ) Dat_Prep ; -- -spondeo, -spondi, -sponsum 2 (Langenscheidts) alicui; ad, contra, adversus aliquid (Stowasser)
  apartment_N = mkN "domicilium" ; -- -i n. (Langenscheidts)
  apple_N = mkN "malum" ; -- -i n. (Langenscheidts)
  art_N = mkN "ars" "artis" feminine ; -- Ranta; artis f. (Langenscheidts)
  ask_V2Q = mkV2Q ( mkV "rogare" ) Acc_Prep ; -- rogo 1 (Langenscheidts) aliquem aliquid (Stowasser)
  baby_N = mkN "infans" "infantis" masculine ;  -- Ranta; -antis m./f. (Langenscheidts)
  bad_A = mkA "malus" ; -- Ranta; peior, pessimus 3 (Langenscheidts)
  bank_N = mkN "argentaria" ; -- -ae f. (http://la.wikipedia.org/wiki/Argentaria / Pons)
  beautiful_A = mkA "pulcher" ; -- -chra, -chrum (Langenscheidts)
  become_VA = mkVA (mkV "fieri")  ; -- fio, factus (Langenscheidts)
  beer_N = mkN ( "cervisia" ) ; -- Ranta; -ae f. (http://la.wikipedia.org/wiki/Cervisia / Pons)
  beg_V2V = mkV2V ( mkV "petere" "peto" "petivi" "petitum" ) "ab" False ; -- peto, -tivi/tii, -titum 3 (Langenscheidts) ab aliquo (Stowasser)
  big_A = mkA "magnus" ; -- Ranta; maior, maximus 3 (Langenscheidts)
  bike_N = mkN "birota" ; -- -ae f. (http://la.wikipedia.org/wiki/Birota / Pons)
  bird_N = mkN "avis" "avis" feminine ; -- Ranta; -is f. (Langenscheidts)
  black_A = mkA "niger" ;  -- Ranta; -gra, -grum (Langenscheidts)
  blue_A = mkA "caerulus" ; -- 3 (Langenscheidts)
  boat_N = mkN "navicula" ; -- -ae f. (Langenscheidts)
  book_N = mkN "liber"; -- Ranta; -bri m. (Langenscheidts)
  boot_N = mkN "calceus" ; -- -i m. (Langenscheidts)
  boss_N = mkN "dux" "ducis" masculine  ; -- ducis m./f. (Langenscheidts)
  boy_N = mkN "puer" "pueri" masculine ; -- -eri m. (Langenscheidts)
  bread_N = mkN "panis" "panis" masculine ; -- -is m./n. (Langenscheidts)
  break_V2 = mkV2 ( mkV "rumpere" "rumpo" "rupi" "ruptum" ) ; -- Ranta; 3 (Langenscheidts) aliquem (Bayer-Lindauer 110)
  broad_A = mkA "latus" ; -- 3 (Langenscheidts)
  brother_N2 = mkN2 ( mkN "frater" "fratris" masculine ) Gen_Prep; -- -tris m. (Langenscheidts) alicuius (Bayer-Lindauer 125.2)
  brown_A = mkA "fulvus" ; -- 3 (Langenscheidts)
  butter_N = mkN "butyrum" ; -- -i n. (http://la.wikipedia.org/wiki/Butyrum / Pons)
  buy_V2 = mkV2 (mkV "emere") ; -- emo, emi, emptum 3 (Langenscheidts) (Stowasser) ab, de aliquo (Stowasser)
  -- Trying to work with Machina ++ photographica
  camera_N = ResLat.useCNasN (AdjCN (PositA (mkA "photographicus") ) (UseN (mkN "machina" ) ) )  ; -- (http://la.wikipedia.org/wiki/Machina_photographica / Pons)
  cap_N = mkN "galerus" ; -- -i m. (Langenscheidts)
  car_N = mkN "autoreada" ; -- -ae f. (Pons / http://la.wikipedia.org/wiki/Autocinetum)
  carpet_N = mkN "stragulum" ; -- -i n. (Pons / http://la.wikipedia.org/wiki/Teges_pavimenti)
  cat_N = mkN "feles" "felis" feminine ; -- -is f. (Langenscheidts) 
  ceiling_N = mkN "tegimentum" ; -- -i n. (Langenscheidts)
  chair_N = mkN "sedes" "sedis" feminine; -- -is f. (Langenscheidts)
  cheese_N = mkN "caseus" ; -- -i m. (Langenscheidts)
  child_N = mkN "proles" "prolis" feminine ; -- -is f. (Langenscheidts)
  church_N = mkN "ecclesia" ; -- -ae f. (Langenscheidts)
  city_N = mkN "urbs" "urbis" feminine; -- Ranta; urbis f. (Langenscheidts)
  clean_A = mkA "lautus" ; -- 3 (Langenscheidts)
  clever_A = mkA "callidus" ; -- 3 (Langenscheidts)
  close_V2 = mkV2 (mkV "claudere") ; -- claudo, clasi, clausum 3 (Langenscheidts) aliquem (Bayer-Lindauer 110)
  coat_N = mkN "pallium" ; -- -i n. (Langenscheidts)
  cold_A = mkA "frigidus" ; -- 3 (Langenscheidts)
  come_V = mkV "venire" ; -- veno, veni, ventum 4 (Langenscheidts)
  computer_N = mkN "computatrum" ; -- -i n. (http://la.wikipedia.org/wiki/Computatrum / Pons)
  country_N = mkN "terra" ; -- -ae f. (Langenscheidts)
  cousin_N = mkN "consobrinus" ; -- -i/-ae m./f. (Langenscheidts)
  cow_N = mkN "bos" "bovis" masculine ; -- bovis (gen. pl. boum, dat./abl. pl. bobus/bubus) m./f. (Langenscheidts)
  die_V = mkV "mori" "mortuus" "morturus"; -- morior, mortuus sum, morturus (Langenscheidts)
  dirty_A = mkA "sordidus" ; -- 3 (Langenscheidts)

  distance_N3 = mkN3 (mkN "distantia") from_Prep to_Prep ; -- -ae f. (Langenscheidts) ab, ad aliquem; alicuius; aliquem (???)
  doctor_N = mkN "medicus" ; -- -i m. (Langenscheidts)
  dog_N = mkN "canis" "canis" masculine  ; -- -is m./f. (Langenscheidts)
  door_N = mkN "porta" ; -- -ae f. (Langenscheidts)
  drink_V2 = mkV2 (mkV "bibere") ; -- bibo, potum 3 (Langenscheidts) aliquem (Bayer-Lindauer 110)
  easy_A2V = mkA2V (mkA "facilis" "facile" ) for_Prep ; -- -e sup -illimus (Langenscheidts)
  eat_V2 = mkV2 (mkV "cenare") ; -- ceno 1 (Langenscheidts) aliquem (Bayer-Lindauer 110)
  empty_A = mkA "vacuus" ; -- 3 (Langenscheidts)
  enemy_N = mkN "hostis" "hostis" masculine ; -- -is m./f. (Langenscheidts)
  factory_N = mkN "officina" ; -- -ae f. (Langenscheidts)
  father_N2 = mkN2 (mkN "pater" "patris" masculine ) Gen_Prep ; -- -tris m. gen pl -um (Langenscheidts) alicuius (Bayer-Lindauer 125.2)
  fear_VS = mkVS (mkV "timere") ; -- timeo, timui, --- 2 (Langenscheidts)
  find_V2 = mkV2 (mkV "reperire") ; -- reperio, repperi, repertum 4 (Langenscheidts) aliquem
  fish_N = mkN "piscis" "piscis" masculine ; -- -is m. (Langenscheidts)
  floor_N = mkN "pavimentum" ; -- -i n. (Langenscheidts)
  forget_V2 = mkV2 (mkV "oblivisci" "obliviscor" "oblitus" ) ; -- obliscor, oblitus sum 3 (Langenscheidts)
  fridge_N = mkN "frigidarium" ; -- --i n. (Pons / http://la.wikipedia.org/wiki/Armarium_frigidarium)
  friend_N = mkN "amicus" ; -- -i/-ae m./f. (Langenscheidts)
  fruit_N = mkN "fructus" "fructus" masculine; -- -us m. (Langenscheidts)
  fun_AV = mkAV (mkA "iocosus") ; -- 3 (Langenscheidts)
  garden_N = mkN "hortus" ; -- -i m. (Langenscheidts)
  girl_N = mkN "puella" ; -- -ae f. (Langenscheidts)
  glove_N = mkN "caestus" "caestus" masculine ; --us m. (Langenscheidts)
  gold_N = mkN "aurum" ; -- Ranta; -i n. (Langenscheidts)
  good_A = mkA "bonus" ; -- Ranta; 3 comp melior, -us; sup optimus 3; adv bene
  go_V = IrregLat.go_V ; -- eo, i(v)i, itum (Langenscheidts)
  green_A = mkA "viridis" "viride"; -- -e (Langenscheidts)
  harbour_N = mkN "portus" "portus" masculine ; -- -us m. (Langenscheidts)
  hate_V2 = mkV2 IrregLat.hate_V Acc_Prep ; -- odi, osurus/odivi (Langenscheidts)
  hat_N = mkN "petasus" ; -- -i m. (Langenscheidts)
  hear_V2 = mkV2 (mkV "audire") ; -- 4 (Langenscheidts)
  hill_N = mkN "collis" "collis" masculine ; -- -is m. (Langenscheidts)
  hope_VS = mkVS (mkV "sperare") ; -- 1 (Langenscheidts)
  horse_N = mkN "equus" ; -- -i m. (Langenscheidts)
  hot_A = mkA "calidus" ; -- 3 (Langenscheidts) 
  house_N = mkN "domus" "domus" feminine ; -- -us f. (Langenscheidts)
  important_A = mkA "gravis" "grave"; -- -e (Langenscheidts)
  industry_N = mkN "industria" ; -- -ae f. (http://la.wikipedia.org/wiki/Industria / Pons)
  iron_N = mkN "ferrum" ; -- -i m. (Langenscheidts)
  king_N = mkN "rex" "regis" masculine; -- regis m. (Langenscheidts)
  know_V2 = mkV2 (mkV "scire") ; -- scio, scivi/scii, scitum 4 (Langenscheidts)
  know_VQ = mkV "scire" ;
  know_VS = mkVS ( mkV "scire" );
  lake_N = mkN "lacus" "lacus" masculine; -- -us m. (Langenscheidts)
  lamp_N = mkN "lucerna" ; -- -ae f. (Langenscheidts)
  learn_V2 = mkV2 (mkV "discere" "disco" "didici") ; -- disco, didici, - 3 (-isc-?) (Langenscheidts)
  leather_N = mkN "scortum" ; -- -i n. (Langenscheidts)
  leave_V2 = mkV2 (mkV "relinquere" "relinquo" "relinqui" "relictum") ; -- relinquo, relinqui, relictum 3 (Langenscheidts)
  like_V2 = mkV2 ( IrregLat.want_V ) ; -- vello, velli (volsi, vulsi), vulsum 3 (Langenscheidts)
  listen_V2 = mkV2 (mkV "auscultare") ; -- ausculto 1 (Langenscheidts)
  live_V = mkV "vivere" "vivo" "vixi" "victurus" ; -- vivo, vixi, victurus 3 (Langenscheidts)
  long_A = mkA "longus" ; -- 3 (Langenscheidts)
  lose_V2 = mkV2 (mkV "amittere") ; -- amitto, amissi, amissum 3 (Langenscheidts)
  love_N = mkN "amor" "amoris" masculine ; -- Ranta; -oris m. (Langenscheidts)
  love_V2 = mkV2 "amare" ; -- Ranta; amo 1 (Langenscheidts)
  man_N = mkN "vir" "viri" masculine ; -- viri m. (Langenscheidts)
  -- Category not yet implemented
  married_A2 = mkA2 (mkA "coniunctus") to_Prep; -- 3 (http://www.perseus.tufts.edu/hopper/text?doc=Perseus:text:1999.04.0060:entry=coniunctus&highlight=married)
  meat_N = mkN "carnis" "carnis" feminine ; -- -is f. (Langenscheidts)
  milk_N = mkN "lac" "lactis" neuter ; -- -- lactis n. (Langenscheidts)
  moon_N = mkN "luna" ; -- -ae f. (Langenscheidts)
  mother_N2 = mkN2 ( mkN "mater" "matris" feminine ) Gen_Prep ; -- matris f. (Langenscheidts)
  mountain_N = mkN "mons" "montis" masculine ; -- montis m. (Langenscheidts)
  music_N = mkN "musica" ; -- -ae f. L..
  narrow_A = mkA "angustus" ; -- 3 (Langenscheidts)
  new_A = mkA "novus" ; -- 3 (Langenscheidts)
  newspaper_N = mkN "diurnum" ; -- -i n. (Pons)
  oil_N = mkN "oleum" ; -- -i n. (Langenscheidts)
  old_A = mkA "vetus" "veteris"; -- (Langenscheidts)
  open_V2 = mkV2 (mkV "aperire") ; -- aperio, aperui, apertum 4 (Langenscheidts)
  paint_V2A = mkV2A (mkV "pingere" "pingo" "pinxi" "pictum" ) Acc_Prep ; -- pingo, pinxi, pictum 3 (Langenscheidts)
  paper_N = mkN "charta" ; -- -ae f. (http://la.wikipedia.org/wiki/Charta / Pons)
  paris_PN = mkPN (mkN "Lutetia") singular ; -- -ae f. (http://la.wikipedia.org/wiki/Lutetia)
  peace_N = mkN "pax" "pacis" feminine ; -- pacis f. (Langenscheidts)
  pen_N = mkN "stilus" ; -- -i m. (Langenscheidts)
  planet_N = mkN "planeta" ; -- -ae m. (http://la.wikipedia.org/wiki/Planeta)
  plastic_N = mkN "plastica" "plasticae" feminine ; -- -ae f. (http://la.wikipedia.org/wiki/Plasticum)
  play_V2 = mkV2 (mkV "ludere") ; -- ludo, lusi, lusum 3 (Langenscheidts)
  policeman_N = mkN "custos" "custodis" masculine ; -- -odis m./f. (Langenscheidts)
  priest_N = mkN "sacerdos" "sacerdotis" masculine ; -- -dotis m./f. (Langenscheidts)
  probable_AS = mkAS (mkA "verisimilis" "verisimile") ; -- -e (Langenscheidts)
  queen_N = mkN "regina" ; -- -ae f. (Langenscheidts)
  radio_N = mkN "radiophonum" ; -- -i n. (Pons / http://la.wikipedia.org/wiki/Radiophonia)
  rain_V0 = mkV0 ( IrregLat.rain_V ) ; -- (Langenscheidts)
  read_V2 = mkV2 (mkV "legere" "lego" "legi" "lectum") ; -- lego, legi, lectum 3 (Langenscheidts)
  red_A = mkA "ruber" ; -- rubra, rubrum (Langenscheidts)
  religion_N = mkN "religio" "religionis" feminine ; -- -onis f. (Langenscheidts)
  restaurant_N = mkN "taberna" ; -- -ae f. (Langenscheidts)
  river_N = mkN "fluvius" ; -- -i m. (Langenscheidts)
  rock_N = mkN "saxum" ; -- -i n. (Langenscheidts)
  roof_N = mkN "tectum" ; -- -i n. (Langenscheidts)
  rubber_N = mkN "cummis" "cummis" feminine ; -- -is f. Der kleine Stowasser
  run_V = mkV "currere" ; -- curro, cucurri, cursum 3 (Langenscheidts)
  say_VS = mkVS (mkV "dicere" "dico" "dixi" "dictum") ; -- dico, dixi, dictum 3 (Langenscheidts)
  school_N = mkN "schola" ; -- -ae f. (Langenscheidts)
  -- Irregular
  science_N = pluralN (mkN "litera" ) ; -- only pl. (Langenscheidts)
  sea_N = mkN "mare" "maris" neuter ; -- -is n. (Langenscheidts)
  seek_V2 = mkV2 (mkV "quaerere" "quaero" "quaesivi" "quaesitum" ) ; -- quaero, quaesivi, quaesitum 3 (Langenscheidts)
  see_V2 = mkV2 (mkV "videre") ; -- video, vidi, visum 2 (Langenscheidts)
  sell_V3 = mkV3 ( mkV "vendere" "vendo" "vendidi" "venditum" ) Acc_Prep Dat_Prep ; -- vendo, vendidi, venditum 3 (Langenscheidts)
  send_V3 = mkV3 ( mkV "mittere" "mitto" "misi" "missum" ) Acc_Prep Dat_Prep ; -- mitto, misi, missum 3 (Langenscheidts)
  sheep_N = mkN "ovis" "ovis" feminine ; -- -is f. (Langenscheidts)
  ship_N = mkN "navis" "navis" feminine ; -- -is f. acc. -em (-im) abl meist -i (Langenscheidts)
  shirt_N = mkN "tunica" ; -- -ae f. (Langenscheidts)
  shoe_N = boot_N ;
  shop_N = mkN "institorium" ; -- -i n. (Langenscheidts)
  short_A = mkA "brevis" "breve" ; -- -e (Langenscheidts)
  silver_N = mkN "argentum" ; -- -i n. (Langenscheidts)
  sister_N = mkN "soror" "sororis" feminine; -- -oris f. (Langenscheidts)
--  sleep_V = mkV "dormio" "dormivi" "dormitus" "dormire" ; -- Ranta; 
  sleep_V = mkV "dormire" ; -- 4 (Langenscheidts)
  small_A = mkA "parvus" ; -- 3 (Langenscheidts)
  snake_N = mkN "serpens" "serpentis" masculine ; -- -entis m./f. (Langenscheidts)
  sock_N = mkN "impile" "impilis" masculine ; -- -is n. (Pons)
  speak_V2 = mkV2 (mkV "loqui" "loquor" "locutus" ) ; -- loquor, locutus sum 3 (Langenscheidts)
  star_N = mkN "stella" ; -- -ae f. (Langenscheidts)
  steel_N = mkN "chalybs" "chalybis" masculine ; -- chalybis m. (Langenscheidts)
  stone_N = mkN "lapis" "lapidis" masculine ; -- -idis m. (Langenscheidts)
  stove_N = mkN "fornax" "formacis" feminine ; -- -acis f. (Langenscheidts)
  student_N = mkN "discipulus"; -- -i/-ae m./f. (Langenscheidts)
  stupid_A = mkA "stultus" ; -- 3 (Langenscheidts)
  sun_N = mkN "sol" "solis" masculine ; -- solis m. (Langenscheidts)
  switch8off_V2 = mkV2 (mkV "accendere") ; -- -cendo, -cendi, -censum 3 (Langenscheidts)
  switch8on_V2 = mkV2 (mkV "extinguere" ); -- -ingo, -inxi, -inctum 3 (Langenscheidts)
  table_N = mkN "mensa" ; -- -ae f. (Langenscheidts)
  talk_V3 = mkV3 ( lin V speak_V2 ) Dat_Prep Acc_Prep ;
  teacher_N = mkN "magister" "magistri" masculine ; -- -tri m. (Langenscheidts)
  teach_V2 = mkV2 (mkV "docere") ; -- doceo, docui, doctum 2 (Langenscheidts)
  television_N = mkN "televisio" "televisionis" feminine ; -- -onis f. (Pons)
  thick_A = mkA "crassus" ; -- 3 (Langenscheidts)
  thin_A = mkA "tenuis" "tenue" ; -- -e (Langenscheidts)
  train_N = mkN "hamaxostichus" ; -- -i m. (http://la.wikipedia.org/wiki/Hamaxostichus)
  travel_V = ResLat.useVPasV ( ComplSlash ( SlashV2a ( mkV2 "facere" ) ) ( DetCN ( DetQuant IndefArt NumSg ) ( UseN ( mkN "iter" "itineris" neuter ) ) ) ) ; -- facio, feci, factum 3
  tree_N = mkN "arbor" "arboris" feminine ; -- -oris f.
  -- Not even in English implemented
---- trousers_N = mkN "trousers" ;
  ugly_A = mkA "foedus" ; -- 3 (Langenscheidts)
  understand_V2 = mkV2 (mkV "intellegere") ; -- intellego, intellexi, intellectum 3 (Langenscheidts)
  university_N = mkN "universitas" "universitatis" feminine ; -- -atis f. (http://la.wikipedia.org/wiki/Universitas) and (Langenscheidts)
  village_N = mkN "vicus" ; -- -i m. (Langenscheidts)
  wait_V2 = mkV2 (mkV "exspectare") ; -- 1 (Langenscheidts)
  walk_V = mkV "vadere" "vadio" "vasi"; -- 3 (Langenscheidts)
  warm_A = mkA "calidus" ; -- 3 (Langenscheidts)
  war_N = mkN "bellum" ; -- -i m. (Langenscheidts)
  watch_V2 = mkV2 (mkV "spectare") ; -- 1 (Langenscheidts)
  water_N = mkN "aqua" ; -- -ae f. (Langenscheidts)
  white_A = mkA "albus" ; -- 3 (Langenscheidts)
  window_N = mkN "fenestra" ; -- -ae f. (Langenscheidts)
  wine_N = mkN "vinum" ; -- -i n. (Langenscheidts)
  win_V2 = mkV2 (mkV "vincere" "vinco" "vinxi" "victum") ; -- vinco, vici, victum 3 (Langenscheidts)
  woman_N = mkN "femina" ; -- -ae f. (Langenscheidts)
  wonder_VQ = mkVQ (mkV "mirari") ; -- 1 (Langenscheidts)
  wood_N = mkN "lignum" ; -- -i n. (Langenscheidts)
  write_V2 = mkV2 (mkV "scribere") ; -- scribo, scripsi, scriptum 3 (Langenscheidts)
  yellow_A = mkA "flavus" ; -- 3 (Langenscheidts)
  young_A = mkA "adulescens" "adulescentis"; -- -entis (Langenscheidts)

  do_V2 = mkV2 (mkV "agere") ; -- ago, egi, actum 3 (Langenscheidts)
  now_Adv = mkAdv "nunc" ; -- (Langenscheidts)
  already_Adv = mkAdv "iam" ; -- (Langenscheidts)
  song_N = mkN "carmen" "carminis" neuter ; -- -inis n. (Langenscheidts)
  add_V3 = mkV3 ( mkV "addere" "addo" "addidi" "additum" ) Acc_Prep to_Prep ; -- addo, addidi, additum 3 (Langenscheidts)
  number_N = mkN "numerus" ; -- -i m.
  put_V2 = mkV2 (mkV "ponere" "pono" "posui" "positum" ) ; -- pono, posui, positum 3 (Langenscheidts)
  stop_V = mkV "sistere" "sisto" "steti" "statum" ; -- sisto, stiti/steti, statum 3 (Langenscheidts)
  jump_V = mkV "saltare" ; -- 1 (Langenscheidts)

  left_Ord = lin Ord { s = \\g,n,c => (mkA "sinister").s ! R.Posit ! R.Ag g n c } ; -- -tra, -trum (Langenscheidts)
  right_Ord = lin Ord { s = \\g,n,c => (mkA "dexter").s ! R.Posit ! R.Ag g n c } ; -- -t(e)ra, -t(e)rum (Langenscheidts)
  far_Adv = mkAdv "longe" ; -- (Langenscheidts)
  correct_A = mkA "rectus" ; -- 3 (Langenscheidts)
  dry_A = mkA "aridus" ; -- 3 (Langenscheidts)
  dull_A = mkA "bardus" ; -- 3 (Langenscheidts) u. (http://www.perseus.tufts.edu/hopper/text?doc=Perseus:text:1999.04.0060:entry=bardus&highlight=dull)
  full_A = mkA "plenus" ; -- 3 (Langenscheidts)
  heavy_A = mkA "gravis" "grave" ; -- -e (Langenscheidts)
  near_A = mkA "propinquus" ; -- 3 (comp. durch propior, -ius sup. durch proximus 3) (Langenscheidts)
  rotten_A = mkA "perditus" ; -- 3 (Langenscheidts)
  round_A = mkA "rotundus" ; -- 3 (Langenscheidts)
  sharp_A = mkA "acer" "acris" ; -- acris, acre (Langenscheidts)
  smooth_A = mkA "lubricus" ; -- 3 (Langenscheidts)
  straight_A = mkA "rectus" ; -- 3 (Langenscheidts)
  wet_A = mkA "umidus" ; -- 3 (Langenscheidts)
  wide_A = mkA "vastus" ; -- 3 (Langenscheidts)
  animal_N = mkN "animal" "animalis" neuter ; -- -alis n. (Langenscheidts)
  ashes_N = mkN "cinis" "cineris" masculine ; -- -eris m. (Langenscheidts) & Bayer-Lindauer 33 1.2 
  back_N = mkN "tergum" ; -- -i n. (Langenscheidts)
  bark_N = mkN "cortex" "corticis" masculine ; -- -icis m./(f.) (Langenscheidts)
  belly_N = mkN "venter" "ventris" masculine ; -- -tris m. (Langenscheidts)
  blood_N = mkN "sanguis" "sanguinis" masculine ; -- -inis m. (Langenscheidts)
  bone_N = mkN "os" "ossis" neuter ; -- ossis n. (Langenscheidts)
  breast_N = mkN "pectus""pectoris" neuter ; -- pectoris n. (Langenscheidts)
  cloud_N = mkN "nubes" "nubis" feminine ; -- -is f. (Langenscheidts)
  day_N = mkN "dies" "diei" masculine ; -- -ei m./f. (Langenscheidts)
  dust_N = mkN "pulvis" "pulveris" masculine;  -- -veris m. (Langenscheidts)
  ear_N = mkN "auris" "auris" feminine; -- -is f. (Langenscheidts)
  earth_N = mkN "terra" ; -- -ae f. (Langenscheidts)
  egg_N = mkN "ovum" ; -- -i n. (Langenscheidts)
  eye_N = mkN "oculus" ; -- -i m. (Langenscheidts)
  fat_N = mkN "omentum" ; -- -i n. (Langenscheidts)
  feather_N = mkN "penna" ; -- -ae f. (Langenscheidts)
  fingernail_N = mkN "unguis" "unguis" masculine ; -- -is m. (Langenscheidts)
  fire_N = mkN "ignis" "ignis" masculine; -- -is m. (Langenscheidts)
  flower_N = mkN "flos" "floris" masculine ; -- floris m. (Langenscheidts)
  fog_N = mkN "nebula" ; -- -ae f. (Langenscheidts)
  foot_N = mkN "pes" "pedis" masculine ; -- pedis m. (Langenscheidts)
  forest_N = mkN "silva" ; -- -ae f. (Langenscheidts)
  grass_N = mkN "gramen" "graminis" neuter ; -- -inis n. (Langenscheidts)
  guts_N = mkN "intestinum" ; -- -i n. (Langenscheidts)
  hair_N = mkN "capillus" ; -- -i m. (Langenscheidts)
  hand_N = mkN "manus" "manus" feminine ; -- -us f. (Langenscheidts)
  head_N = mkN "caput" "capitis" neuter ; -- -itis n. (Langenscheidts)
  heart_N = mkN "cor" "cordis" neuter; -- cordis n. (Langenscheidts)
  horn_N = mkN "cornus" "cornus" neuter ; -- -us n. (Langenscheidts)
  husband_N = mkN "maritus" ; -- -i m. (Langenscheidts)
  ice_N = mkN "glacies" "glaciei" feminine ; -- -ei f. (Langenscheidts)
  knee_N = mkN "genu" "genus" neuter ; -- -us n. (Langenscheidts)
  leaf_N = mkN "folium" ; -- -i n. (Langenscheidts)
  leg_N = bone_N ;
  liver_N = mkN "iecur" "iecoris" neuter ; -- iecoris/iocineris n. (Langenscheidts)
  louse_N = mkN "pedis" "pedis" masculine ; -- -is m./f. (Langenscheidts)
  mouth_N = mkN "os" "oris" neuter ; -- oris n. (Langenscheidts)
  name_N = mkN "nomen" "nominis" neuter ; -- -inis n. (Langenscheidts)
  neck_N = mkN "cervix" "cervicis" feminine ; -- -icis f. (meist pl.) (Langenscheidts)
  night_N = mkN "nox" "noctis" feminine ; -- noctis f. (Langenscheidts)
  nose_N = mkN "nasus" ; -- -i m./n. (Langenscheidts)
  person_N = mkN "persona" ; -- -ae f. (Langenscheidts)
  rain_N = mkN "pluvia" ; -- -ae f. (Langenscheidts)
  road_N = mkN "via" ; -- -ae f. (Langenscheidts)
  root_N = mkN "radix" "radicis" feminine ; -- -icis f. (Langenscheidts)
  rope_N = mkN "funis" "funis" masculine ; -- -is m.(/f.) (Langenscheidts)
  salt_N = mkN "sal" "salis" masculine ; -- salis m./n. (Langenscheidts)
  sand_N = mkN "arena" ; -- -ae f. (Langenscheidts)
  seed_N = mkN "semen" "seminis" neuter ; -- -inis n. (Langenscheidts)
  skin_N = mkN "cutis" "cutis" feminine ; -- -is f. (Langenscheidts)
  sky_N = mkN "caelum" ; -- -i n. (Langenscheidts)
  smoke_N = mkN "fumus" ; -- -i m. (Langenscheidts)
  snow_N = mkN "nix" "nivis" feminine ; -- nivis (gen. pl. -ium) f. (Langenscheidts)
  stick_N = mkN "baculus" ; -- -i n./m.
  tail_N = mkN "cauda" ; -- -ae f. (Langenscheidts)
  tongue_N = mkN "lingua" ; -- -ae f. (Langenscheidts)
  tooth_N = mkN "dens" "dentis" masculine; -- dentis m. (Langenscheidts)
  wife_N = mkN "mulier" "mulieris" feminine; -- -eris f. (Langenscheidts)
  wind_N = mkN "ventus" ; --  -i m. (Langenscheidts)
  wing_N = mkN "ala" ; -- -ae f. (Langenscheidts)
  worm_N = mkN "vermis" "vermis" masculine ; -- -is m. (Langenscheidts)
  year_N = mkN "annus" ; -- -i m. (Langenscheidts)
  blow_V = mkV "flare" ; -- flo 1 (Langenscheidts)
  breathe_V = mkV "spirare" ; -- spiro 1 (Langenscheidts)
  burn_V = mkV "ardere" ; -- ardeo, arsi, arsum 2 (Langenscheidts)
  dig_V = mkV "fodere" "fodio" "fodi" "fossum" ; -- fodio, fodi, fossum 3 (Langenscheidts)
  fall_V = mkV "caedere" "caedo" "cecidi" "caesum" ; -- caedo, cecidi, caesum 3 (Langenscheidts)
  float_V = mkV "fluitere" ; -- fluito 1 (Langenscheidts)
  flow_V = mkV "fluere" "fluo" "fluxi" "fluctum" ; -- fluo, fluxi, fluxum 3 (Langenscheidts)
  fly_V = mkV "volare" ; -- volo 1 (Langenscheidts)
  freeze_V = mkV "gelare" ; -- gelo 1 (Langenscheidts)
  -- Category not yet implemented
  give_V3 = mkV3 (mkV "donare" ) from_Prep to_Prep ;
  laugh_V = mkV "ridere" ; -- rideo, -si, -sum 2 (Langenscheidts)
  lie_V = mkV "iacere" ; -- iaceo, iacui, - 2 (Langenscheidts)
  play_V = mkV "ludere" ; -- ludo, -si, -sum 3 (Langenscheidts)
  sew_V = mkV "serere" "sero" "sevi" "satum" ; -- sero, sevi, satum 3 (Langenscheidts)
  sing_V = mkV "cantare" ; -- canto 1 (Langenscheidts)
  sit_V = mkV "sedere" ; -- sedeo, sedi, sessum 2 (Langenscheidts)
  smell_V = mkV "olere" ; -- oleo, -ui, - 2 (Langenscheidts)
  spit_V = mkV "spuere" "spuo" "spui" "sputum" ; -- spuo, -ui, -utum 3 (Langenscheidts)
  stand_V = mkV "stare" ; -- sto, steti, staturus, statum 1 (Langenscheidts)
  swell_V = mkV "intumescere" "intumesco" "intumui" ; -- intumesco, -mui, - 3 (Langenscheidts)
  swim_V = mkV "natare" ; -- nato 1 (Langenscheidts)
  think_V = mkV "cogitare" ; -- cogito 1 (Langenscheidts)
  turn_V = mkV "vertere" ; -- verso 1 (Langenscheidts)
  vomit_V = mkV "vomere" "vomo" "vomui" "vomitum" ; -- vomo, -ui, -itum 3 (Langenscheidts)

  bite_V2 = mkV2 "mordere" ; -- mordeo, momordi, morsum 2 (Langenscheidts)
  count_V2 = mkV2 (mkV "numerare") ; -- numero 1 (Langenscheidts)
  cut_V2 = mkV2 (mkV "secare" ) ; -- seco, secui, sectum, secaturus 1 (Langenscheidts)
  fear_V2 = mkV2 (mkV "timere") ; -- timeo, ui, - 2 (Langenscheidts)
  fight_V2 = mkV2 (mkV "pugnare" ) ; -- pugno 1 (Langenscheidts)
  hit_V2 = mkV2 ( mkV "ferire" ) ; -- ferio, -, - 4 (Langenscheidts)
  hold_V2 = mkV2 ( mkV "tenere" ) ; -- teneo, tenui, tentum 2 (Langenscheidts)
  hunt_V2 = mkV2 (mkV "agitare") ; -- agito 1 (Langenscheidts)
  kill_V2 = mkV2 (mkV "necare") ; -- neco 1 (Langenscheidts)
  pull_V2 = mkV2 (mkV "trahere" "traho" "traxi" "tractum" ) ; -- traho, traxi, tractum 3 (Langenscheidts)
  push_V2 = mkV2 (mkV "premere" "premo" "pressi" "pressum" ) ; -- premo, pressi, pressum 3 (Langenscheidts)
  rub_V2 = mkV2 (mkV "radere" "rado" "rasi" "rasum" ) ; -- raso, -si, -sum 3 (Langenscheidts)
  scratch_V2 = mkV2 (mkV "scalpere" "scalpo" "scalpsi" "scalptum" ) ; -- scalpo, -psi, -ptum 3 (Langenscheidts)
  split_V2 = mkV2 ( mkV "scindere" "scindo" "scidi" "scissum" ) ; -- scindo, -idi, -issum 3 (Langenscheidts)
  squeeze_V2 = mkV2 (mkV "premere" "premo" "pressi" "pressum" ) ; -- premo, pressi, pressum 3 (Langenscheidts) 
  stab_V2 = mkV2 (mkV "transfigere" "transfigo" "transfixi" "transfixum") ; -- -figo, -fixi, fixum 3 (Langenscheidts)
  suck_V2 = mkV2 (mkV "fellare") ; -- fel(l)o 1 (Langenscheidts)
  throw_V2 = mkV2 (mkV "iacere" "iacio" "ieci" "iactum" ) ; -- iacio, ieci, iactum 3 (Langenscheidts)
  tie_V2 = mkV2 (mkV "vincire") ; -- vincio, vinxi, vinctum 4 (Langenscheidts)
  wash_V2 = mkV2 (mkV "lavare") ; -- lavo, lavi, lautum (lotum)/lavatum 1 (Langenscheidts)
  wipe_V2 = mkV2 (mkV "detergere") ; -- detergeo, -tersi, -tersum 2/ detergo, -, - 3 (Langenscheidts)

----  other_A = mkA "other" ;

  grammar_N = mkN "grammatica" ; -- -ae/-orum f./n. (http://la.wikipedia.org/wiki/Grammatica) and (Langenscheidts)
  language_N = mkN "lingua" ; -- -ae f. (Langenscheidts)
  rule_N = mkN "regula" ; -- -ae f. (Langenscheidts)

-- added 4/6/2007
    john_PN = mkPN (mkN "Iohannes") singular ; -- (http://en.wikipedia.org/wiki/John_(given_name))
    question_N = mkN "rogatio" "rogationis" feminine; -- -onis f. (Langenscheidts)
    ready_A = mkA "paratus" ; -- 3 (Langenscheidts)
    reason_N = mkN "causa" ; -- -ae f. (Langenscheidts)
    today_Adv = mkAdv "hodie" ; -- (Langenscheidts)
    uncertain_A = mkA "incertus" ; -- 3 (Langenscheidts)

    alas_Interj = ss "eheu" ;
}
