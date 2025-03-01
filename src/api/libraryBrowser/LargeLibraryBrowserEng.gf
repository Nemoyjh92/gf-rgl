--# -path=.:../../translator

concrete LargeLibraryBrowserEng of LargeLibraryBrowser = 
  GrammarEng,
  DictionaryEng -
  [
    above_Prep,after_Prep,all_Predet,almost_AdA,almost_AdN,although_Subj,always_AdV,and_Conj,at_least_AdN,because_Subj,before_Prep,behind_Prep,
    between_Prep,both7and_DConj,but_PConj,during_Prep,either7or_DConj,every_Det,everybody_NP,everything_NP,everywhere_Adv,except_Prep,few_Det,
    for_Prep,from_Prep,have_V2,he_Pron,here_Adv,how8many_IDet,how_IAdv,i_Pron,if_Subj,in_Prep,it_Pron,many_Det,much_Det,must_VV,no_Quant,nobody_NP,
    nothing_NP,on_Prep,only_Predet,or_Conj,please_Voc,quite_Adv,she_Pron,so_AdA,somebody_NP,something_NP,somewhere_Adv,that_Quant,that_Subj,
    there_Adv,they_Pron,this_Quant,through_Prep,to_Prep,too_AdA,under_Prep,very_AdA,want_VV,we_Pron,whatPl_IP,whatSg_IP,when_IAdv,when_Subj,
    where_IAdv,which_IQuant,whoPl_IP,whoSg_IP,why_IAdv,with_Prep,without_Prep,youPl_Pron,youPol_Pron,youSg_Pron
  ]
  ** open (S = SyntaxEng) in {
  
  lin
    i_NP = S.i_NP ;
    you_NP = S.you_NP ;
    he_NP = S.he_NP ;
    she_NP = S.she_NP ;
    we_NP = S.we_NP ;
    youPl_NP = S.youPl_NP ;
    youPol_NP = S.youPol_NP ;
    they_NP = S.they_NP ;

    a_Det = S.mkDet S.a_Quant ;
    the_Det = S.mkDet S.the_Quant ;
    aPl_Det = S.mkDet S.a_Quant S.plNum ;
    thePl_Det = S.mkDet S.the_Quant S.plNum ;
}

