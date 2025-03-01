--concrete QuestionTel of Question = CatTel ** open ResTel, Prelude in {
----
----  flags optimize=all_subs ;
----
----  lin
----
----    QuestCl cl = {
----      s = \\t,a,p => 
----            let cls = cl.s ! t ! a ! p 
----            in table {
----              QDir   => cls ! OQuest ;
----              QIndir => "if" ++ cls ! ODir
----              } ---- "whether" in ExtTel
----      } ;
----
----    QuestVP qp vp = 
----      let cl = mkClause (qp.s ! Nom) (agrP3 qp.n) vp
----      in {s = \\t,a,b,_ => cl.s ! t ! a ! b ! ODir} ;
----
----    QuestSlash ip slash = 
----      mkQuestion (ss (slash.c2 ++ ip.s ! Acc)) slash ;
----      --- stranding in ExratTel 
----
----    QuestIAdv iadv cl = mkQuestion iadv cl ;
----
----    QuestIComp icomp np = 
----      mkQuestion icomp (mkClause (np.s ! Nom) np.a (predAux auxBe)) ;
----
----
----    PrepIP p ip = {s = p.s ++ ip.s ! Acc} ;
----
----    AdvIP ip adv = {
----      s = \\c => ip.s ! c ++ adv.s ;
----      n = ip.n
----      } ;
---- 
----    IdetCN idet cn = {
----      s = \\c => idet.s ++ cn.s ! idet.n ! c ; 
----      n = idet.n
----      } ;
----
----    IdetIP idet = {
----      s = \\c => idet.s ; 
----      n = idet.n
----      } ;
----
----    IdetQuant idet num = {
----      s = idet.s ! num.n ++ num.s ; 
----      n = num.n
----      } ;
----
----    CompIAdv a = a ;
----    CompIP p = ss (p.s ! Nom) ;
----
--}
