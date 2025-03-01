--# -path=.:alltenses:prelude

resource CombinatorsSpa = Combinators - [appCN, appCNc] with 
  (Cat = CatSpa),
  (Structural = StructuralSpa),
  (Noun = NounSpa),
  (Constructors = ConstructorsSpa) ** 
{
oper
appCN : CN -> NP -> NP
       = \cn,x -> mkNP the_Art (PossNP cn x) ;
appCNc : CN -> [NP] -> NP
       = \cn,xs -> let np : NP = mkNP and_Conj xs
                   in mkNP the_Art (PossNP cn np) ; 
}
