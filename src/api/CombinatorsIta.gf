--# -path=.:alltenses:prelude

resource CombinatorsIta = Combinators - [appCN, appCNc] with 
  (Cat = CatIta),
  (Structural = StructuralIta),
  (Noun = NounIta),
  (Constructors = ConstructorsIta) ** 
{
oper
appCN : CN -> NP -> NP
       = \cn,x -> mkNP the_Art (PossNP cn x) ;
appCNc : CN -> [NP] -> NP
       = \cn,xs -> let np : NP = mkNP and_Conj xs
                   in mkNP the_Art (PossNP cn np) ; 
}
