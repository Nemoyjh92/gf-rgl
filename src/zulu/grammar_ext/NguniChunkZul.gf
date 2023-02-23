<<<<<<< HEAD
--# -path=.:../abstract:../common:../api:../prelude

concrete NguniChunkZul of NguniChunk =
  NguniGrammarZul,
  BackwardZul[ComplV2,ComplV3],
  ExtraExtZul,
  NounExtZul,
  VerbExtZul,
  -- MonoLexZul,
  PChunkZul,
  SymbolZul - [Symb]
  -- TempZul
  -- ,ConstructionZul
  -- ,DocumentationZul --# notpresent
  -- ,MarkupZul - [stringMark]
  ** {



} ;
=======
--# -path=.:../abstract:../common:../api:../prelude

concrete NguniChunkZul of NguniChunk =
  NguniGrammarZul,
  BackwardZul[ComplV2,ComplV3],
  ExtraExtZul,
  NounExtZul,
  RelativeExtZul,
  VerbExtZul,
  PhraseExtZul,
  -- MonoLexZul,
  PChunkZul,
  SymbolZul - [Symb]
  -- TempZul
  -- ,ConstructionZul
  -- ,DocumentationZul --# notpresent
  -- ,MarkupZul - [stringMark]
  ** {



} ;
>>>>>>> b17d353994fb9fad892e92c5fe50f956900efb29
