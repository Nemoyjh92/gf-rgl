<<<<<<< HEAD
incomplete concrete ExtendFunctor of Extend = Cat ** open Grammar in {

lincat
  RNP = Grammar.NP ;
  RNPList = Grammar.ListNP ;

  X = {s : Str} ; -- for words that are difficult to classify, mainly for MorphoDict

lin
  BaseVPS = variants {} ;
  ConsVPS = variants {} ;
  BaseVPI = variants {} ;
  ConsVPI = variants {} ;
  BaseVPS2 = variants {} ;
  ConsVPS2 = variants {} ;
  BaseVPI2 = variants {} ;
  ConsVPI2 = variants {} ;

  GenNP = variants {} ;     -- NP -> Quant ; -- this man's
  GenIP = variants {} ;     -- IP -> IQuant ; -- whose
  GenRP = variants {} ;     -- Num -> CN -> RP ; -- whose car
  GenModNP num np cn = DetCN (DetQuant DefArt num) (AdvCN cn (PrepNP possess_Prep np)) ;     -- this man's car(s) ; DEFAULT the car of this man
  GenModIP = variants {} ;     -- Num -> IP -> CN -> IP ; -- whose car(s)
  CompBareCN cn = CompCN cn ; -- (is) teacher ; DEFAULT is a teacher
  StrandQuestSlash = QuestSlash ; -- whom does John live with ; DEFAULT with whom does John live
  StrandRelSlash = RelSlash ; -- that he lives in ; DEFAULT in which he lives
  EmptyRelSlash = RelSlash IdRP ; -- he lives in ; DEFAULT in which he lives
  MkVPS vp = variants {} ;     -- Temp -> Pol -> VP -> VPS ; -- hasn't slept
  ConjVPS = variants {} ;     -- Conj -> [VPS] -> VPS ; -- has walked and won't sleep
  PredVPS = variants {} ;     -- NP -> VPS -> S ; -- has walked and won't sleep
  RelVPS = variants {} ;      -- RP -> VPS -> RS ; -- which won't sleep
  MkVPI vp = variants {} ;     -- Temp -> Pol -> VP -> VPI ; -- to sleep / hasn't slept
  ConjVPI = variants {} ;     -- Conj -> [VPI] -> VPI ; -- has walked and won't sleep
  ComplVPIVV = variants {} ;     -- VV -> VPI -> VP ; -- want to sleep and to walk
  MkVPS2 = variants {} ;     --     : Temp -> Pol -> VPSlash -> VPS2 ;  -- has loved
  ConjVPS2 = variants {} ;     --   : Conj -> [VPS2] -> VPS2 ;          -- has loved and now hates
  ComplVPS2 = variants {} ;     --  : VPS2 -> NP -> VPS ;               -- has loved and now hates that person
  ReflVPS2 = variants {} ;      --  : VPS2 -> RNP -> VPS ;              -- have loved and now hate myself and my car
  MkVPI2 = variants {} ;     --     : Ant  -> Pol -> VPSlash -> VPI2 ;  -- to have loved
  ConjVPI2 = variants {} ;     --   : Conj -> [VPI2] -> VPI2 ;          -- to love and have hated
  ComplVPI2 = variants {} ;     --  : VPI2 -> NP -> VPI ;               -- to love and hate that person
  ProDrop pro = pro ;     -- am tired ; DEFAULT I am tired (no pro drop)
  ICompAP = variants {} ;     -- AP -> IComp ; -- "how old"
  IAdvAdv = variants {} ;     -- Adv -> IAdv ; -- "how often"
  CompIQuant iquant = CompIP (IdetIP (IdetQuant iquant NumSg)) ;  -- which (is it) [agreement to NP] ; DEFAULT which [no agreement]
  PrepCN prep cn = PrepNP prep (MassNP cn) ;     -- Prep -> CN -> Adv ; -- by accident [Prep + CN without article] ; DEFAULT CN as mass term
  FocusObj = variants {} ;     -- NP -> SSlash -> Utt ; -- her I love
  FocusAdv = variants {} ;     -- Adv -> S -> Utt ; -- today I will sleep
  FocusAdV = variants {} ;     -- AdV -> S -> Utt ; -- never will I sleep
  FocusAP = variants {} ;     -- AP -> NP -> Utt ; -- green was the tree
  EmbedPresPart = variants {} ;     -- VP -> SC ; -- looking at Mary (is fun)
  PassVPSlash = variants {} ;     -- VPSlash -> VP ; -- be forced to sleep
  PassAgentVPSlash = variants {} ;     -- VPSlash -> NP -> VP ; -- be begged by her to go
  PastPartAP = variants {} ;     -- VPSlash -> AP ; -- lost (opportunity) ; (opportunity) lost in space
  PastPartAgentAP = variants {} ;     -- VPSlash -> NP -> AP ; -- (opportunity) lost by the company
  NominalizeVPSlashNP = variants {} ;     -- VPSlash -> NP -> NP ;
  ProgrVPSlash = variants {} ;            -- VPSlash -> VPSlash ;
  A2VPSlash = variants {} ;           -- A2 -> VPSlash ;
  N2VPSlash = variants {} ;           -- N2 -> VPSlash ;
  ExistsNP = ExistNP ;     -- NP -> Cl ; -- there exists a number / there exist numbers
  ExistCN cn = ExistNP (DetCN (DetQuant IndefArt NumSg) cn) ;
  ExistMassCN cn = ExistNP (MassNP cn) ;
  ExistPluralCN cn = ExistNP (DetCN (DetQuant IndefArt NumPl) cn) ;
  AdvIsNP adv np = PredVP np (UseComp (CompAdv adv)) ;  -- here is the tree / here are the trees ; DEFAULT the tree is  here
  AdvIsNPAP adv np ap = PredVP np (AdvVP (UseComp (CompAP ap)) adv) ; -- here are the instructions documented ; DEFAULT the instructions are documented here
  PurposeVP = variants {} ;     -- VP -> Adv ; -- to become happy
  ComplBareVS = ComplVS ;     -- VS -> S -> VP ; -- say she runs ; DEFAULT say that she runs
  SlashBareV2S = SlashV2S ;     -- V2S -> S -> VPSlash ; -- answer (to him) it is good ; DEFAULT answer that it is good
  ComplDirectVS vs utt = AdvVP (UseV <lin V vs : V>) (lin Adv {s = ":" ++ quoted utt.s}) ; -- DEFAULT complement added as Adv in quotes
  ComplDirectVQ vq utt = AdvVP (UseV <lin V vq : V>) (lin Adv {s = ":" ++ quoted utt.s}) ; -- DEFAULT complement added as Adv in quotes
  FrontComplDirectVS = variants {} ; -- NP -> VS -> Utt -> Cl ;      -- "I am here", she said
  FrontComplDirectVQ  = variants {} ; -- NP -> VQ -> Utt -> Cl ;      -- "where", she asked
  PredAPVP ap vp = ImpersCl (UseComp (CompAP (SentAP ap (EmbedVP vp)))) ; -- DEFAULT it is (good to walk)
  PredIAdvVP iadv vp = QuestIAdv iadv (GenericCl vp) ; -- DEFAULT how does one walk
  EmbedSSlash = variants {} ; -- SSlash -> SC ; -- what we did (was fun)
  AdjAsCN = variants {} ;     -- AP -> CN ; -- a green one ; en grön (Swe)
  AdjAsNP = variants {} ;     -- AP -> NP ; -- green (is good)
  ReflRNP = variants {} ;     -- VPSlash -> RNP -> VP ; -- love my family and myself
  ReflPron = variants {} ;     -- RNP ; -- myself
  ReflPoss = variants {} ;     -- Num -> CN -> RNP ; -- my car(s)
  PredetRNP = variants {} ;     -- Predet -> RNP -> RNP ; -- all my brothers
  ConjRNP = variants {} ;     -- Conj -> RNPList -> RNP ; -- my family, John and myself
  Base_rr_RNP = variants {} ;     -- RNP -> RNP -> RNPList ; -- my family, myself
  Base_nr_RNP = variants {} ;     -- NP -> RNP -> RNPList ; -- John, myself
  Base_rn_RNP = variants {} ;     -- RNP -> NP -> RNPList ; -- myself, John
  Cons_rr_RNP = variants {} ;     -- RNP -> RNPList -> RNPList ; -- my family, myself, John
  Cons_nr_RNP = variants {} ;     -- NP -> RNPList -> RNPList ; -- John, my family, myself
  ReflPossPron = PossPron he_Pron ;  -- : Quant ;  -- Swe sin,sitt,sina
  ComplGenVV = variants {} ;     -- VV -> Ant -> Pol -> VP -> VP ; -- want not to have slept
  ComplSlashPartLast = ComplSlash ;
  --SlashV2V = variants {} ;     -- V2V -> Ant -> Pol -> VPS -> VPSlash ; -- force (her) not to have slept
  CompoundN = variants {} ;     -- N -> N -> N ; -- control system / controls system / control-system
  CompoundAP = variants {} ;     -- N -> A -> AP ; -- language independent / language-independent
  GerundCN = variants {} ;     -- VP -> CN ; -- publishing of the document (can get a determiner)
  GerundNP = variants {} ;     -- VP -> NP ; -- publishing the document (by nature definite)
  GerundAdv = variants {} ;     -- VP -> Adv ; -- publishing the document (prepositionless adverb)
  WithoutVP = variants {} ;     -- VP -> Adv ; -- without publishing the document
  ByVP = variants {} ;     -- VP -> Adv ; -- by publishing the document
  InOrderToVP = variants {} ;     -- VP -> Adv ; -- (in order) to publish the document
  ApposNP = variants {} ;     -- NP -> NP -> NP ; -- Mr Macron, the president of France,
  AdAdV = variants {} ;     -- AdA -> AdV -> AdV ; -- almost always
  UttAdV = variants {} ;     -- AdV -> Utt ; -- always(!)
  PositAdVAdj = variants {} ;     -- A -> AdV ; -- (that she) positively (sleeps)
  CompS = variants {} ;     -- S -> Comp ; -- (the fact is) that she sleeps
  CompQS = variants {} ;     -- QS -> Comp ; -- (the question is) who sleeps
  CompVP = variants {} ;     -- Ant -> Pol -> VP -> Comp ; -- (she is) to go

  DetNPMasc = DetNP ;
  DetNPFem = DetNP ;
  SubjRelNP = RelNP ;
  UseComp_estar = UseComp ; -- DEFAULT UseComp
  iFem_Pron = i_Pron ; -- DEFAULT I (masc)
  youFem_Pron = youSg_Pron ; -- DEFAULT you (masc)
  weFem_Pron = we_Pron ;  -- DEFAULT we (masc)
  youPlFem_Pron = youPl_Pron ;  -- DEFAULT you plural (masc)
  theyFem_Pron = they_Pron ;  -- DEFAULT they (masc)
  youPolFem_Pron = youPol_Pron ;  -- DEFAULT you polite (masc)
  youPolPl_Pron = youPl_Pron ;  -- DEFAULT you plural (masc)
  youPolPlFem_Pron = youPl_Pron ;  -- DEFAULT you plural (masc)
  UncontractedNeg = variants {} ; -- do not, etc, as opposed to don't
  UttAccNP = UttNP ; -- him (accusative) ; DEFAULT he
  UttDatNP np = UttAccNP (lin NP np) ; -- him(dative) ; DEFAULT he
  UttAccIP = UttIP ; -- whom (accusative) ; DEFAULT who
  UttDatIP ip = UttAccIP (lin IP ip) ; -- whom (dative) ; DEFAULT who
  UttVPShort = UttVP ; -- have fun, as opposed to "to have fun" ; DEFAULT UttVP

  SQuestVPS = variants {} ; -- : NP   -> VPS -> QS ;         -- has she walked
  QuestVPS = variants {} ; --  : IP   -> VPS -> QS ;         -- who has walked

-- these will probably not need language-specific implementations
  ExistS t p np = UseCl t p (ExistNP np) ;
  ExistNPQS t p np = UseQCl t p (QuestCl (ExistNP np)) ;
  ExistIPQS t p np = UseQCl t p (ExistIP np) ;

lincat
  X = {s : Str} ;

lin
  CardCNCard = variants {} ;

oper
  quoted : Str -> Str = \s -> "\"" ++ s ++ "\"" ; ---- TODO bind ; move to Prelude?

}
=======
incomplete concrete ExtendFunctor of Extend = Cat ** open Grammar in {

lincat
  RNP = Grammar.NP ;
  RNPList = Grammar.ListNP ;

  X = {s : Str} ; -- for words that are difficult to classify, mainly for MorphoDict

lin
  BaseVPS = variants {} ;
  ConsVPS = variants {} ;
  BaseVPI = variants {} ;
  ConsVPI = variants {} ;
  BaseVPS2 = variants {} ;
  ConsVPS2 = variants {} ;
  BaseVPI2 = variants {} ;
  ConsVPI2 = variants {} ;

  GenNP = variants {} ;     -- NP -> Quant ; -- this man's
  GenIP = variants {} ;     -- IP -> IQuant ; -- whose
  GenRP = variants {} ;     -- Num -> CN -> RP ; -- whose car
  GenModNP num np cn = DetCN (DetQuant DefArt num) (AdvCN cn (PrepNP possess_Prep np)) ;     -- this man's car(s) ; DEFAULT the car of this man
  GenModIP = variants {} ;     -- Num -> IP -> CN -> IP ; -- whose car(s)
  CompBareCN cn = CompCN cn ; -- (is) teacher ; DEFAULT is a teacher
  StrandQuestSlash = QuestSlash ; -- whom does John live with ; DEFAULT with whom does John live
  StrandRelSlash = RelSlash ; -- that he lives in ; DEFAULT in which he lives
  EmptyRelSlash = RelSlash IdRP ; -- he lives in ; DEFAULT in which he lives
  MkVPS vp = variants {} ;     -- Temp -> Pol -> VP -> VPS ; -- hasn't slept
  ConjVPS = variants {} ;     -- Conj -> [VPS] -> VPS ; -- has walked and won't sleep
  PredVPS = variants {} ;     -- NP -> VPS -> S ; -- has walked and won't sleep
  RelVPS = variants {} ;      -- RP -> VPS -> RS ; -- which won't sleep
  MkVPI vp = variants {} ;     -- Temp -> Pol -> VP -> VPI ; -- to sleep / hasn't slept
  ConjVPI = variants {} ;     -- Conj -> [VPI] -> VPI ; -- has walked and won't sleep
  ComplVPIVV = variants {} ;     -- VV -> VPI -> VP ; -- want to sleep and to walk
  MkVPS2 = variants {} ;     --     : Temp -> Pol -> VPSlash -> VPS2 ;  -- has loved
  ConjVPS2 = variants {} ;     --   : Conj -> [VPS2] -> VPS2 ;          -- has loved and now hates
  ComplVPS2 = variants {} ;     --  : VPS2 -> NP -> VPS ;               -- has loved and now hates that person
  ReflVPS2 = variants {} ;      --  : VPS2 -> RNP -> VPS ;              -- have loved and now hate myself and my car
  MkVPI2 = variants {} ;     --     : Ant  -> Pol -> VPSlash -> VPI2 ;  -- to have loved
  ConjVPI2 = variants {} ;     --   : Conj -> [VPI2] -> VPI2 ;          -- to love and have hated
  ComplVPI2 = variants {} ;     --  : VPI2 -> NP -> VPI ;               -- to love and hate that person
  ProDrop pro = pro ;     -- am tired ; DEFAULT I am tired (no pro drop)
  ICompAP = variants {} ;     -- AP -> IComp ; -- "how old"
  IAdvAdv = variants {} ;     -- Adv -> IAdv ; -- "how often"
  CompIQuant iquant = CompIP (IdetIP (IdetQuant iquant NumSg)) ;  -- which (is it) [agreement to NP] ; DEFAULT which [no agreement]
  PrepCN prep cn = PrepNP prep (MassNP cn) ;     -- Prep -> CN -> Adv ; -- by accident [Prep + CN without article] ; DEFAULT CN as mass term
  FocusObj = variants {} ;     -- NP -> SSlash -> Utt ; -- her I love
  FocusAdv = variants {} ;     -- Adv -> S -> Utt ; -- today I will sleep
  FocusAdV = variants {} ;     -- AdV -> S -> Utt ; -- never will I sleep
  FocusAP = variants {} ;     -- AP -> NP -> Utt ; -- green was the tree
  EmbedPresPart = variants {} ;     -- VP -> SC ; -- looking at Mary (is fun)
  PassVPSlash = variants {} ;     -- VPSlash -> VP ; -- be forced to sleep
  PassAgentVPSlash = variants {} ;     -- VPSlash -> NP -> VP ; -- be begged by her to go
  PastPartAP = variants {} ;     -- VPSlash -> AP ; -- lost (opportunity) ; (opportunity) lost in space
  PastPartAgentAP = variants {} ;     -- VPSlash -> NP -> AP ; -- (opportunity) lost by the company
  NominalizeVPSlashNP = variants {} ;     -- VPSlash -> NP -> NP ;
  ProgrVPSlash = variants {} ;            -- VPSlash -> VPSlash ;
  A2VPSlash = variants {} ;           -- A2 -> VPSlash ;
  N2VPSlash = variants {} ;           -- N2 -> VPSlash ;
  ExistsNP = ExistNP ;     -- NP -> Cl ; -- there exists a number / there exist numbers
  ExistCN cn = ExistNP (DetCN (DetQuant IndefArt NumSg) cn) ;
  ExistMassCN cn = ExistNP (MassNP cn) ;
  ExistPluralCN cn = ExistNP (DetCN (DetQuant IndefArt NumPl) cn) ;
  AdvIsNP adv np = PredVP np (UseComp (CompAdv adv)) ;  -- here is the tree / here are the trees ; DEFAULT the tree is  here
  AdvIsNPAP adv np ap = PredVP np (AdvVP (UseComp (CompAP ap)) adv) ; -- here are the instructions documented ; DEFAULT the instructions are documented here
  PurposeVP = variants {} ;     -- VP -> Adv ; -- to become happy
  ComplBareVS = ComplVS ;     -- VS -> S -> VP ; -- say she runs ; DEFAULT say that she runs
  SlashBareV2S = SlashV2S ;     -- V2S -> S -> VPSlash ; -- answer (to him) it is good ; DEFAULT answer that it is good
  ComplDirectVS vs utt = AdvVP (UseV <lin V vs : V>) (lin Adv {s = ":" ++ quoted utt.s}) ; -- DEFAULT complement added as Adv in quotes
  ComplDirectVQ vq utt = AdvVP (UseV <lin V vq : V>) (lin Adv {s = ":" ++ quoted utt.s}) ; -- DEFAULT complement added as Adv in quotes
  FrontComplDirectVS = variants {} ; -- NP -> VS -> Utt -> Cl ;      -- "I am here", she said
  FrontComplDirectVQ  = variants {} ; -- NP -> VQ -> Utt -> Cl ;      -- "where", she asked
  PredAPVP ap vp = ImpersCl (UseComp (CompAP (SentAP ap (EmbedVP vp)))) ; -- DEFAULT it is (good to walk)
  PredIAdvVP iadv vp = QuestIAdv iadv (GenericCl vp) ; -- DEFAULT how does one walk
  EmbedSSlash = variants {} ; -- SSlash -> SC ; -- what we did (was fun)
  AdjAsCN = variants {} ;     -- AP -> CN ; -- a green one ; en grön (Swe)
  AdjAsNP = variants {} ;     -- AP -> NP ; -- green (is good)
  ReflRNP = variants {} ;     -- VPSlash -> RNP -> VP ; -- love my family and myself
  ReflPron = variants {} ;     -- RNP ; -- myself
  ReflPoss = variants {} ;     -- Num -> CN -> RNP ; -- my car(s)
  PredetRNP = variants {} ;     -- Predet -> RNP -> RNP ; -- all my brothers
  ConjRNP = variants {} ;     -- Conj -> RNPList -> RNP ; -- my family, John and myself
  Base_rr_RNP = variants {} ;     -- RNP -> RNP -> RNPList ; -- my family, myself
  Base_nr_RNP = variants {} ;     -- NP -> RNP -> RNPList ; -- John, myself
  Base_rn_RNP = variants {} ;     -- RNP -> NP -> RNPList ; -- myself, John
  Cons_rr_RNP = variants {} ;     -- RNP -> RNPList -> RNPList ; -- my family, myself, John
  Cons_nr_RNP = variants {} ;     -- NP -> RNPList -> RNPList ; -- John, my family, myself
  ReflPossPron = PossPron he_Pron ;  -- : Quant ;  -- Swe sin,sitt,sina
  ComplGenVV = variants {} ;     -- VV -> Ant -> Pol -> VP -> VP ; -- want not to have slept
  ComplSlashPartLast = ComplSlash ;
  --SlashV2V = variants {} ;     -- V2V -> Ant -> Pol -> VPS -> VPSlash ; -- force (her) not to have slept
  CompoundN = variants {} ;     -- N -> N -> N ; -- control system / controls system / control-system
  CompoundAP = variants {} ;     -- N -> A -> AP ; -- language independent / language-independent
  GerundCN = variants {} ;     -- VP -> CN ; -- publishing of the document (can get a determiner)
  GerundNP = variants {} ;     -- VP -> NP ; -- publishing the document (by nature definite)
  GerundAdv = variants {} ;     -- VP -> Adv ; -- publishing the document (prepositionless adverb)
  WithoutVP = variants {} ;     -- VP -> Adv ; -- without publishing the document
  ByVP = variants {} ;     -- VP -> Adv ; -- by publishing the document
  InOrderToVP = variants {} ;     -- VP -> Adv ; -- (in order) to publish the document
  ApposNP = variants {} ;     -- NP -> NP -> NP ; -- Mr Macron, the president of France,
  AdAdV = variants {} ;     -- AdA -> AdV -> AdV ; -- almost always
  UttAdV = variants {} ;     -- AdV -> Utt ; -- always(!)
  PositAdVAdj = variants {} ;     -- A -> AdV ; -- (that she) positively (sleeps)
  CompS = variants {} ;     -- S -> Comp ; -- (the fact is) that she sleeps
  CompQS = variants {} ;     -- QS -> Comp ; -- (the question is) who sleeps
  CompVP = variants {} ;     -- Ant -> Pol -> VP -> Comp ; -- (she is) to go

  DetNPMasc = DetNP ;
  DetNPFem = DetNP ;
  SubjRelNP = RelNP ;
  UseComp_estar = UseComp ; -- DEFAULT UseComp
  iFem_Pron = i_Pron ; -- DEFAULT I (masc)
  youFem_Pron = youSg_Pron ; -- DEFAULT you (masc)
  weFem_Pron = we_Pron ;  -- DEFAULT we (masc)
  youPlFem_Pron = youPl_Pron ;  -- DEFAULT you plural (masc)
  theyFem_Pron = they_Pron ;  -- DEFAULT they (masc)
  theyNeutr_Pron = they_Pron ;  -- DEFAULT they (masc)
  youPolFem_Pron = youPol_Pron ;  -- DEFAULT you polite (masc)
  youPolPl_Pron = youPl_Pron ;  -- DEFAULT you plural (masc)
  youPolPlFem_Pron = youPl_Pron ;  -- DEFAULT you plural (masc)
  UncontractedNeg = variants {} ; -- do not, etc, as opposed to don't
  UttAccNP = UttNP ; -- him (accusative) ; DEFAULT he
  UttDatNP np = UttAccNP (lin NP np) ; -- him(dative) ; DEFAULT he
  UttAccIP = UttIP ; -- whom (accusative) ; DEFAULT who
  UttDatIP ip = UttAccIP (lin IP ip) ; -- whom (dative) ; DEFAULT who
  UttVPShort = UttVP ; -- have fun, as opposed to "to have fun" ; DEFAULT UttVP

  SQuestVPS = variants {} ; -- : NP   -> VPS -> QS ;         -- has she walked
  QuestVPS = variants {} ; --  : IP   -> VPS -> QS ;         -- who has walked

-- these will probably not need language-specific implementations
  ExistS t p np = UseCl t p (ExistNP np) ;
  ExistNPQS t p np = UseQCl t p (QuestCl (ExistNP np)) ;
  ExistIPQS t p np = UseQCl t p (ExistIP np) ;

lincat
  X = {s : Str} ;

lin
  CardCNCard = variants {} ;

oper
  quoted : Str -> Str = \s -> "\"" ++ s ++ "\"" ; ---- TODO bind ; move to Prelude?

}
>>>>>>> b17d353994fb9fad892e92c5fe50f956900efb29
