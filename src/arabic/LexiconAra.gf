--# -path=.:prelude
--
concrete LexiconAra of Lexicon = CatAra ** open
  ParadigmsAra,
  ResAra,
  Prelude in {

flags
  optimize=values ;  coding=utf8 ;

  lin

  airplane_N   = sdfN "طءر" "فاعِلة" Fem NoHum ;
  answer_V2S   = mkV2S (v3 "جوب") ;
  apartment_N  = brkN "شقّ" "فِعّة" "فِعَل" Fem NoHum ;
  apple_N      = sdfN "تفح" "فِعّالة" Fem NoHum ;
  art_N        = brkN "فنن" "فَعّ" "فُعُول" Masc NoHum ;
  ask_V2Q      = dirV2 (regV "يَسءَل") ;
--  ask_V2Q      = dirV2 (v1 "سءل" a a) ;
  baby_N       = brkN "طفل" "فِعل" "أَفعَال" Masc Hum;
  bad_A        = sndA "سوء" "فَيِّع" ;
  bank_N       = brkN "بنك" "فَعل" "فُعُول" Masc NoHum ;
  beautiful_A  = sndA "جمل" "فَعِيل" ;
  become_VA    = mkVA (v4 "صبح") ;
  beer_N       = sdfN "بير" "فِعلة" Fem NoHum ;
  beg_V2V      = mkV2V (mkVV (v5 "وسل")) noPrep ;
  big_A        = sndA "كبر" "فَعِيل" ;
  bike_N       = sdfN "درج" "فَعّالة" Fem NoHum ;
  bird_N       = brkN "طير" "فَعل" "فُعُول" Masc NoHum;
  black_A      = clrA "سود" ;
  blue_A       = clrA "زرق" ;
  boat_N       = brkN "قرب" "فاعِل" "فَواعِل" Masc NoHum ;
  book_N       = brkN "كتب" "فِعَال" "فُعُل" Masc NoHum ;
  boot_N       = sdfN "جزم" "فَعلة" Fem NoHum ;
  boss_N       = sdmN "دور" "مُفِيع" Masc Hum ;
  --boss_N       = brkN "دور" "مُفِيع" "مُفَعَاء" Masc Hum ;
  boy_N        = brkN "صبي" "فَعِل" "فُعلان" Masc Hum ;
  bread_N      = brkN "خبز" "فُعل" "أَفعَال" Masc NoHum ;
  break_V2     = dirV2 (regV "يَكسُر") ;
--  break_V2     = dirV2 (v1 "كسر" a u) ;
  broad_A      = sndA "وسع" "فاعِل" ;
  brother_N2   = mkN2 (brkN "ءخو" "فَع" "فِعلة" Masc Hum) ; --FIXME dual
  brown_A      = sndA "بني" "فُعِّل";
  butter_N     = sdfN "سبد" "فُعلة" Fem NoHum ;
  buy_V2       = dirV2 (v8 "شري") ;
  camera_N     = sdfN "كمر" "فاعِيلا" Fem NoHum ; -- |Alö taSwIr
  cap_N        = sdfN "قبع" "فُعَّلة" Fem NoHum ; --qalnUsö
  car_N        = sdfN "سير" "فَعّالة" Fem NoHum ;
  carpet_N     = sdfN "سجد" "فَعّالة" Fem NoHum ;
  cat_N        = brkN "هرّ" "فِعّ" "فِعَلَة" Fem NoHum ;
  ceiling_N    = brkN "سقف" "فَعل" "أَفعُل" Masc NoHum ;
  chair_N      = brkN "كرس" "فُعلِي" "فَعَالِي" Masc NoHum ;
  cheese_N     = brkN "جبن" "فُعلة" "أَفعَال" Fem NoHum ;
  child_N      = brkN "ولد" "فَعَل" "أَفعَال" Masc Hum ;
  church_N     = brkN "كنس" "فَعِيلة" "فَعَاٱِل" Fem Hum ;
  city_N       = brkN "مدن" "فَعِيلة" "فُعُل" Fem NoHum ;
  clean_A      = sndA "نظف" "فَعِيل" ;
  clever_A     = sndA "جهد" "مُفتَعِل" ;
  close_V2     = dirV2 (v4 "غلق") ;
  coat_N       = brkN "عطف" "مِفعَل" "مَفاعِل" Masc NoHum ;
  cold_A       = sndA "برد" "فاعِل" ;
  come_V       = v1 "جيء" a i ; --check
  computer_N   = brkN "حسب" "فاعُول" "فَواعِيل" Masc NoHum ;
  country_N    = brkN "بلد" "فَعَل" "فِعَال" Masc NoHum ;
  cousin_N     = brkN "قرب" "فَعِيل" "أَفعِلاء" Masc Hum ; -- (<bn / bnt) (cam[ö] / xAl[ö])
  cow_N        = sdfN "بقر" "فَعلة" Fem NoHum ;
  die_V        = v1 "موت" a u ; --check
  dirty_A      = sndA "وسخ" "فَعِل" ;
  distance_N3  = mkN3 (sdfN "سوف" "مَفاعة" Fem NoHum) "مِن" "إِلَى" ;
  doctor_N     = brkN "طبب" "فَعِيل" "أَفِعّاء" Masc Hum ;
  dog_N        = brkN "كلب" "فَعل" "فِعَال" Masc NoHum ;
  door_N       = brkN "بوب" "فاع" "أَفعَال" Masc NoHum ;
  drink_V2     = dirV2 (regV "شَرِب") ;
--  drink_V2     = dirV2 (v1 "شرب" i a) ;
  easy_A2V     = mkA2 (sndA "سهل" "فَعل") liPrep ;
  eat_V2       = dirV2 (mkV "ءكل" FormI) ;
  empty_A      = sndA "فرغ" "فاعِل" ;
  enemy_N      = brkN "عدو" "فَعُلّ" "أَفعَاء" Masc Hum ;
  factory_N    = brkN "صنع" "مَفعَل" "مَفاعِل" Masc NoHum ;
  father_N2    = mkN2 (brkN "ءب" "فَع" "أَفعَاء" Masc Hum);
  fear_VS      = mkVS (v1 "خشي" i a );
  find_V2      = dirV2 (v1 "وجد" a i ) ;
  fish_N       = brkN "سمك" "فَعَلة" "أَفعَال" Fem NoHum ;
  floor_N      = brkN "ءرض" "فَعل" "فَعَالِي" Fem NoHum;
  forget_V2    = dirV2 (v1 "نسي" i a ) ;
  fridge_N     = sdfN "برد" "فَعّال" Masc NoHum ;
  friend_N     = brkN "صدق" "فَعِيل" "أَفعِلاء" Masc Hum ; --SadIqö
  fruit_N      = brkN "فكه" "فاعِلة" "فَواعِل" Fem NoHum ;
  fun_AV       = sndA "متع" "مُفعِل" ;
  garden_N     = brkN "حدق" "فَعِيلة" "فَعَاٱِل" Fem NoHum ;
  girl_N       = brkN "بنت" "فِعل" "فَعَال" Fem Hum ;
  glove_N      = sdfN "قفز" "فُعّال" Masc NoHum ;
  gold_N       = sdfN "ذهب" "فَعَل" Masc NoHum ;
  good_A       = sndA "جود" "فَيِّع" ; -- Hasan, HisAn
  go_V         = regV "يَذهَب" ;
--  go_V         = v1 "ذهب" a a ;
  green_A      = clrA "خضر" ;
  harbour_N    = brkN "رفء" "مَفعَل" "مَفاعِل" Masc NoHum ; --mInA', marsaY
  hate_V2      = dirV2 (regV "كَرِه") ;
  hat_N        = sdfN "قبع" "فُعَّلة" Fem NoHum ;
--  have_V2      = dirV2 (v1 "ملك" a i) ;
  hear_V2      = dirV2 (regV "سَمِع") ;
--  hear_V2      = dirV2 (v1 "سمع" i a) ;
  hill_N       = brkN "هضب" "فَعلة" "فِعَال" Fem NoHum ; --tallö, rAbiyö
  hope_VS      = mkVS (v1 "رجو" a u) ; --check
  horse_N      = brkN "حصن" "فِعَال" "أَفعِلة" Masc NoHum ;
  hot_A        = sndA "سخن" "فاعِل" ; --HAr
  house_N      = brkN "بيت" "فَعل" "فُعُول" Masc NoHum ; --manzil
  important_A  = sndA "هيم" "فاعّ" ;
  industry_N   = sdfN "صنع" "فِعَالة" Fem NoHum ;
  iron_N       = brkN "حدد" "فَعِيل" "فَعَائِل" Masc NoHum ;
  king_N       = brkN "ملك" "فَعِل" "فُعُول" Masc Hum ;
  know_V2      = dirV2 (regV "عَرِف") ;
  know_VS      = mkVS (regV "عَرِف") ; -- or with ع ل م?
  lake_N       = sdfN "بحر" "فُعَيلة" Fem NoHum ;
  lamp_N       = brkN "صبح" "مِفعَال" "مَفاعِيل" Masc NoHum ; --qanDIl, fAnUs
  learn_V2     = dirV2 (v5 "علم") ;
  leather_N    = brkN "جلد" "فِعل" "فُعُول" Masc NoHum ;
  leave_V2     = dirV2 (regV "يَترُك") ;
--  leave_V2     = dirV2 (v1 "ترك" a u) ;
  like_V2      = dirV2 (regV "هَوِي") ;
--  like_V2      = dirV2 (v1 "هوي" i a) ; --check
  listen_V2    = mkV2 (v8 "سمع") "إِلَى" ;
  live_V       = v1 "عيش" a i ; --check
  long_A       = sndA "طول" "فَعِيل" ;
  lose_V2      = dirV2 (regV "خَسِر") ; --Dayyac, >aDAc
--  lose_V2      = dirV2 (v1 "خسر" i a) ; --Dayyac, >aDAc
  love_N       = brkN "حبّ" "فُعّ" "فُعّ" Masc NoHum ; -- no plur
  love_V2      = dirV2 (v1 "حبّ" a i) ;
  man_N        = brkN "رجل" "فَعُل" "فِعَال" Masc Hum ;
  married_A2   = mkA2 (sndA "زوج" "مُتَفَعِّل") "مِن" ;
  meat_N       = brkN "لحم" "فَعلة" "فُعُول" Masc NoHum ;
  milk_N       = brkN "حلب" "فَعِيل" "فَعِيل" Masc NoHum ; --no plur
  moon_N       = brkN "قمر" "فَعَل" "أَفعَال" Masc NoHum ;
  mother_N2    = mkN2 (mkN "أُمّ" "أُمَّات" Fem Hum) ;
  mountain_N   = brkN "جبل" "فَعَل" "فِعَال" Masc NoHum ;
  music_N      = mkN (reg "مُوسِيقَى" "مُوسِيقَى") Fem NoHum ; --no plur
  narrow_A     = sndA "ضيق" "فَعِّل" ;
  new_A        = mkA "جدد" "فَعِيل" "فُعُل" ;
  newspaper_N  = brkN "صحف" "فَعِيلة" "فُعُل" Fem NoHum ;
  oil_N        = brkN "زيت" "فَعل" "فُعُول" Masc NoHum ;
  old_A        = sndA "قدم" "فَعِيل" ;
  open_V2      = dirV2 (regV "يَفتَح") ;
--  open_V2      = dirV2 (v1 "فتح" a a ) ;
  paint_V2A    = dirV2 (regV "يَدهَن" ) ;
--  paint_V2A    = mkV2A (v1 "دهن" a a ) [] ;
  paper_N      = brkN "ورق" "فَعَلة" "أَفعَال" Fem NoHum ;
  paris_PN     = mkPN "بارِيس" Fem NoHum  ;
  peace_N      = brkN "سلم" "فَعَال" "فَعَال" Masc NoHum; --no plur
  pen_N        = brkN "قلم" "فَعَل" "أَفعَال" Masc NoHum;
  planet_N     = mkN (reg "كَوكَب" "كَواكِب") Masc NoHum ; -- quadriconsonantal
  plastic_N    = mkN (sndf "بلاستِيك") Masc NoHum ;
  play_V2      = dirV2 (regV "لَعِب") ;
--  play_V2      = dirV2 (v1 "لعب" i a) ;
  policeman_N  = sdmN "شرط" "فِعلِي" Masc Hum ;
  priest_N     = brkN "قسّ" "فِعِّيل" "أَفِعّة" Masc Hum ;
  probable_AS  = mkAS (sndA "مكن" "مُفعِل") ;
  queen_N      = sdfN "ملك" "فَعِلة" Fem Hum ;
  radio_N      = mkN (sndf "راديُو") Masc NoHum ;
  rain_V0      = mkV0 (regV "يَمطُر") ;
--  rain_V0      = mkV0 (v1 "مطر" a u) ;
  read_V2      = dirV2 (regV "يَقرَء") ;
--  read_V2      = dirV2 (v1 "قرء" a a ) ;
  red_A        = clrA "حمر" ;
  religion_N   = brkN "دين" "فِعل" "أَفعَال" Masc NoHum ;
  restaurant_N = brkN "طعم" "مَفعَل" "مَفاعِل" Masc NoHum ;
  river_N      = brkN "نهر" "فَعل" "أَفعَال" Masc NoHum ;
  rock_N       = brkN "صخر" "فَعلة" "فُعُول" Fem NoHum ;
  roof_N       = brkN "سطح" "فَعل" "أَفعُل" Masc NoHum ;
  rubber_N     = brkN "مطط" "فَعَّال" "فَعَّال" Masc NoHum ; -- no hum
  run_V        = regV "يَركُض" ;
--  run_V        = v1 "ركض" a u ;
  say_VS       = mkVS (v1 "قول" a u) ; --check
  school_N     = brkN "درس" "مَفعَلة" "مَفاعِل" Fem NoHum ;
  science_N    = brkN "علم" "فِعل" "فُعُول" Masc NoHum ;
  sea_N        = brkN "بحر" "فَعل" "فُعُول" Masc NoHum ;
  seek_V2      = dirV2 (regV "يَطلُب") ;
--  seek_V2      = dirV2 (v1 "طلب" a u) ;
  see_V2       = dirV2 (v1 "رءي" a a) ;
  sell_V3      = dirdirV3 (v1 "بيع" a i) ; --check
  send_V3      = dirdirV3 (v4 "رسل")  ;
  sheep_N      = brkN "خرف" "فَعُول" "فِعَال" Masc NoHum ;
  ship_N       = brkN "سفن" "فَعِيلة" "فُعُل" Fem NoHum ;
  shirt_N      = brkN "قمص" "فَعِيل" "فُعلان" Masc NoHum ;
  shoe_N       = brkN "حذو" "فِعَاء" "أَفعِية" Masc NoHum ;
  shop_N       = brkN "تجر" "مَفعَل" "مَفاعِل" Masc NoHum ;
  short_A      = sndA "قصر" "فَعِيل" ;
  silver_N     = brkN "فضض" "فِعَّة" "فِعَل" Fem NoHum ;
  sister_N     = brkN "ءخو" "فُعت" "فَعَوَات" Fem Hum ; --FIXME
  sleep_V      = v1 "نوم" i a ; --check
  small_A      = sndA "صغر" "فَعِيل" ;
  snake_N      = sdfN "حيّ" "فَعَّة" Fem NoHum ;
  sock_N       = brkN "جرب" "فَوعَل" "فَواعِل" Masc NoHum ;
  speak_V2     = dirV2 (v5 "كلم") ;
  star_N       = brkN "نجم" "فَعل" "فُعُول" Masc NoHum ; --najmö
  steel_N      = brkN "فلذ" "فُوعَال" "فَواعِل" Masc NoHum ;
  stone_N      = brkN "حجر" "فَعَل" "أَفعَال" Masc NoHum ;
  stove_N      = brkN "وقد" "مَفعِل" "مَفاعِل" Masc NoHum ;
  student_N    = brkN "طلب" "فاعِل" "فُعّال" Masc Hum ; --tilmI*
  stupid_A     = clrA "بله" ;
  sun_N        = brkN "شمس" "فَعل" "فُعُول" Fem NoHum ;
  switch8off_V2 = dirV2 (v4 "طفء") ;
  switch8on_V2 = dirV2 (v4 "شعل") ;
  table_N      = sdfN "طول" "فاعِلة" Fem NoHum ;
  talk_V3      = mkV3 (v5 "حدث") liPrep (mkPrep "عَن") ;
  teacher_N    = sdmN "علم" "مُفَعِّل" Masc Hum ; --mucal~imö
  teach_V2     = dirV2 (v2 "علم") ;
  television_N = mkN (sndf "تِلِفِزيُون") Masc NoHum ;
  thick_A      = sndA "سمك" "فَعِيل" ;
  thin_A       = sndA "رفع" "فَعِيل" ;
  train_N      = sdfN "قطر" "فِعَال" Masc NoHum;
  travel_V     = v3 "سفر" ;
  tree_N       = brkN "شجر" "فَعلة" "أَفعَال" Fem NoHum ;
  ugly_A       = sndA "قبح" "فَعِيل" ;
  understand_V2 = dirV2 (regV "فَهِم") ;
--  understand_V2 = dirV2 (v1 "فهم" i a ) ;
  university_N = sdfN "جمع" "فاعِلة" Fem NoHum ;
  village_N    = brkN "قري" "فَعلة" "فُعَى" Fem NoHum ; --Daycö
  wait_V2      = dirV2 (v8 "نظر")  ;
  walk_V       = v1 "مشي" a i ; --check
  warm_A       = sndA "دفء" "فاعِل" ;
  war_N        = brkN "حرب" "فَعل" "فُعُول" Fem NoHum ;
  watch_V2     = dirV2 (v3 "شهد") ;
  water_N      = mkN (reg "ماء" "مِياه") Fem NoHum ; --"موه" "فاء" "فِياع" ??
  white_A      = clrA "بيض" ;
  window_N     = brkN "نفذ" "فاعِلة" "فَواعِل" Fem NoHum ; --$ub~Ak
  wine_N       = brkN "خمر" "فَعل" "فُعُول" Masc NoHum ;
  win_V2       = dirV2 (regV "رَبِح") ;
--  win_V2       = dirV2 (v1 "ربح" i a) ;
  woman_N      = mkN (reg "إِمرَأَة" "نِسوَة") Fem Hum ;
  wonder_VQ    = mkVQ (v6 "سءل") ;
  wood_N       = brkN "خشب" "فَعَل" "أَفعَال" Masc NoHum ;
  write_V2     = dirV2 (regV "يَكتُب") ;
--  write_V2     = dirV2 (v1 "كتب" a u) ;
  yellow_A     = clrA "صفر" ;
  young_A      = sndA "شبب" "فَاعّ" ;

  do_V2        = dirV2 (regV "يَفعَل") ;
--  do_V2        = dirV2 (v1 "فعل" a a ) ;
  now_Adv      = mkAdv "الآن" ;
  already_Adv  = mkAdv "سابِقاً" ;
  song_N       = brkN "غني" "أُفعِلَة" "أَفَاعِي" Fem NoHum ;
  add_V3       = dirV3 (regV "يَجمَع") "وَ" ;
--  add_V3       = dirV3 (v1 "جمع" a a) "وَ" ;
  number_N     = brkN "رقم" "فَعل" "أَفعَال" Masc NoHum ; --cadad
  put_V2       = dirV2 (v1 "وضع" a a );
  stop_V       = v5 "وقف" ;
  jump_V       = regV "يَقفِز" ;
--  jump_V       = v1 "قفز" a i ;

  left_Ord     = mkOrd "أَيسَر" "يُسرَى" One;
  right_Ord    = mkOrd "أَيمَن" "يُمنَى" One;

  far_Adv      = mkAdv "بَعِيداً" ;
  correct_A    = sndA "صحّ" "فَعِيل" ; -- TODO broken plural
  dry_A        = sndA "نشف" "فاعِل" ;
  dull_A       = sndA "بهت" "فاعِل" ;
  full_A       = sndA "ملء" "فَعِيل" ;
  heavy_A      = sndA "ثقل" "فَعِيل" ;
  near_A       = sndA "قرب" "فَعِيل" ;
  rotten_A     = sndA "فسد" "فاعِل" ;
  round_A      = sndA "دور" "مُفَعَّل" ;
  sharp_A      = sndA "حدّ" "فاعّ" ;
  smooth_A     = sndA "نعم" "فاعِل" ;
  straight_A   = sndA "قوم" "مُستَفِيع" ;
  wet_A        = sndA "رطب" "فَعِل" ;
  wide_A       = sndA "وسع" "فاعِل" ;

  animal_N     = sdfN "حيّ" "فَعَوان"           Masc NoHum ;
  ashes_N      = brkN "رمد" "فَعَال" "أَفعِلة"   Masc NoHum;
  back_N       = brkN "ظهر" "فَعل" "فُعُول"      Masc NoHum;
  bark_N       = brkN "نبح" "فَعل" "فُعَال"      Masc NoHum;
  belly_N      = brkN "بطن" "فَعل" "فُعُول"      Fem  NoHum;
  blood_N      = brkN "دم"  "فَع" "فِعَاء"       Masc NoHum;
  bone_N       = brkN "عظم" "فَعلة" "فِعَال"     Fem  NoHum;
  breast_N     = brkN "صدر" "فَعل" "فُعُول"      Masc NoHum;
  cloud_N      = brkN "غيم" "فَعلة" "فُعُول"     Fem  NoHum;
  day_N        = brkN "يوم" "فَعل" "أَفَّاع"     Masc NoHum;
  dust_N       = brkN "غبر" "فُعَال" "أَفعِلة"   Masc NoHum;
  ear_N        = brkN "ءذن" "فُعل" "أَفعَال"     Fem NoHum;
  earth_N      = brkN "ترب" "فُعلة" "فُعَل"     Fem NoHum;
  egg_N        = sdfN "بيض" "فَعلة"             Fem NoHum;
  eye_N        = brkN "عين" "فَعل" "فُعُول"      Fem NoHum;
  fat_N        = brkN "دهن" "فُعل" "فُعُول"      Masc NoHum ;
  feather_N    = sdfN "ريش" "فِعلة"             Fem NoHum;
  fingernail_N = brkN "ظفر" "فُعل" "أَفاعِل"    Masc NoHum;
  fire_N       = brkN "نور" "فاع" "فِيعَان"       Fem NoHum;
  flower_N     = brkN "زهر" "فَعلة" "فُعُول"     Fem NoHum;
  fog_N        = brkN "ضبب" "فَعَال" "فَعَال"     Masc NoHum; --no plural ?
  foot_N       = brkN "قدم" "فَعَل" "أَفعَال"    Fem NoHum;
  forest_N     = sdfN "غيب" "فاعة"              Fem NoHum;
  grass_N      = brkN "عشب" "فُعلة" "أَفعَال"    Fem NoHum;
  guts_N       = brkN "حشو" "فَعَا" "أَفعَاء"     Fem NoHum;
  hair_N       = sdfN "شعر" "فَعلة"             Fem NoHum ;
  hand_N       = brkN "يد"  "فَع" "أَفَاعِي"      Fem NoHum  ;
  head_N       = brkN "رءس" "فَعل" "فُعُول"      Masc NoHum;
  heart_N      = brkN "قلب" "فَعْل" "فُعُول"      Masc NoHum;
  horn_N       = brkN "قرن" "فَعل" "فُعُول"      Masc NoHum;
  husband_N    = brkN "زوج" "فَعل" "أَفعَال"     Masc NoHum;
  ice_N        = brkN "ثلج" "فَعل" "فُعُول"      Masc NoHum;
  knee_N       = brkN "ركب" "فُعلة" "فُعَل"     Fem NoHum;
  leaf_N       = brkN "ورق" "فَعَلة" "أَفعَال"   Fem NoHum;
  leg_N        = brkN "رجل" "فِعل" "أَفعُل"     Fem NoHum;
  liver_N      = brkN "كبد" "فَعِل" "أَفعَال"    Masc NoHum ;
  louse_N      = sdfN "قمل" "فَعلة"             Fem NoHum;
  mouth_N      = brkN "فوه" "فُعل" "أَفعَال"     Masc NoHum ;
  name_N       = brkN "ءسم" "فِعل" "فَعَالِي"     Masc NoHum;
  neck_N       = brkN "رقب" "فَعَلة" "فِعَال"    Fem NoHum;
  night_N      = brkN "ليل" "فَعلة" "فَعَالِي"    Fem NoHum;  --plural?
  nose_N       = brkN "ءنف" "فَعل" "فُعُول"      Masc NoHum;
  person_N     = brkN "شخص" "فَعل" "أَفعَال"     Masc Hum;
  question_N   = mkN "سؤال" ; ----IL
  rain_N       = brkN "مطر" "فَعَل" "أَفعَال"    Masc NoHum;
  road_N       = brkN "طرق" "فَعِيل" "فُعُل"     Fem NoHum;
  root_N       = brkN "جذر" "فَعل" "فُعُول"      Masc NoHum ;
  rope_N       = brkN "حبل" "فَعل" "فِعَال"      Masc NoHum;
  salt_N       = brkN "ملح" "فِعل" "أَفعَال"     Masc NoHum;
  sand_N       = brkN "رمل" "فَعل" "فِعَال"      Masc NoHum;
  seed_N       = brkN "بذر" "فَعل" "فُعُول"      Masc NoHum;
  skin_N       = brkN "جلد" "فِعل" "فُعُول"      Masc NoHum;
  sky_N        = sdfN "سمو" "فَعَاء"             Fem NoHum;
  smoke_N      = brkN "دخن" "فُعَال" "أَفعِلة"   Masc NoHum;
  snow_N       = brkN "ثلج" "فَعل" "فُعُول"      Masc NoHum;
  stick_N      = brkN "عصو" "فَعَا" "فِعِي"       Masc NoHum ; --"عصو"
  tail_N       = brkN "ذنب" "فَعَل" "أَفعَال"    Masc NoHum;
  tongue_N     = brkN "لسن" "فِعَال" "أَفعِلة"   Masc NoHum;
  tooth_N      = brkN "سنن" "فِعّ" "أَفعَال"     Masc NoHum ;
  wife_N       = sdfN "زوج" "فَعلة"             Fem Hum;
  wind_N       = brkN "ريح" "فِعل" "فِعَال"      Fem NoHum;
  wing_N       = brkN "جنح" "فَعَال" "أَفعِلة"   Masc NoHum ;
  worm_N       = brkN "دود" "فُعلة" "فِيعَان"     Fem NoHum ;
  year_N       = mkN  "سَنَة"  "سَنَوَات"       Fem NoHum   ;

  blow_V       = regV "يَنفُخ" ;
  breathe_V    = dirV2 (v5 "نفس") ;
  burn_V       = regV "يَحرِق" ;
  dig_V        = regV "يَحفِر" ;
  fall_V       = v1 "وقع" a a ;
  float_V      = v1 "عوم" a u ;
  flow_V       = v1 "سيل" a i ;
  fly_V        = v1 "طير" a i ;
  freeze_V     = v2 "جمد" ;
  give_V3      = dirdirV3 (v4 "عطي") ;
  laugh_V      =  regV "ضَحِك" ;
  lie_V        = regV "يَكذِب" ;
  play_V       = regV "لَعِب" ;
  sew_V        = v1 "خيط" a i ;
  sing_V       = v2 "غني" ;
  sit_V        = regV "يَقعُد" ;
  smell_V      = v1 "شمّ" i a ;
  spit_V       = regV "يَبصُق" ;
  stand_V      = v1 "وقف" a i ;
  swell_V      = v8 "نفخ" ;
  swim_V       = regV "يَسبَح" ;
  think_V      = v2 "فكر" ;
  turn_V       = regV "يَبرُم" ;
  vomit_V      = v5 "قيء" ;

  bite_V2      = dirV2 ( v1 "عضّ" a a ) ;
  count_V2     = dirV2 (v1 "عدّ" a u) ;
  cut_V2       = dirV2 (v1 "قصّ" a u) ;
  fear_V2      = dirV2 (v1 "خوف" i a) ;
  fight_V2     = dirV2 (v3 "قتل") ;
  hit_V2       = dirV2 (regV "يَضرِب" ) ;
  hold_V2      = dirV2 (regV "يَمسِك" ) ;
  hunt_V2      = dirV2 (v1 "صيد" a i) ;
  kill_V2      = dirV2 (regV "يَقتُل" ) ;
  pull_V2      = dirV2 (regV "يَسحَب") ;
  push_V2      = dirV2 (regV "يَدفَع" ) ;
  rub_V2       = dirV2 ( regV "يَفرُك" ) ;
  scratch_V2   = dirV2 (regV "يَخدِش" ) ;
  split_V2     = dirV2 ( v2 "قسم" ) ;
  squeeze_V2   = dirV2 (regV "يَعصِر" ) ;
  stab_V2      = dirV2 ( regV "يَطعُن" ) ;
  suck_V2      = dirV2 (v1 "مصّ" a u) ;
  throw_V2     = dirV2 (v1 "رمي" a i) ;
  tie_V2       = dirV2 (regV "يَربُط" ) ;
  wash_V2      = dirV2 ( regV "يَغسِل" ) ;
  wipe_V2      = dirV2 ( regV "يَمسَح" ) ;
--  other_A = sndA "ْتهر" ;
} ;
