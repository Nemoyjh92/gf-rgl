--# -path=.:../romance:../abstract:../common:../api:../prelude

concrete AllPor of AllPorAbs =
  LangPor,
  ExtendPor
  ** open ExtraPor, IrregPor
  in {} ;
