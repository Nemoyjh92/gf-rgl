<<<<<<< HEAD
--1 Lang: a Test Module for the Resource Grammar

abstract NguniChunk =
  NguniGrammar,
  Backward[ComplV2,ComplV3],
  ExtraExt,
  NounExt,
  VerbExt,
  -- MonoLexAbs,
  PChunk,
  Symbol - [Symb]
  -- ,Construction  --- could be compiled here, but not in concretes, as they call Syntax and Grammar
  -- ,Documentation  --# notpresent
  -- ,Markup - [stringMark]
  ** {
  flags startcat=Phr ;
  } ;
=======
--1 Lang: a Test Module for the Resource Grammar

abstract NguniChunk =
  NguniGrammar,
  Backward[ComplV2,ComplV3],
  ExtraExt,
  NounExt,
  RelativeExt,
  VerbExt,
  PhraseExt,
  -- MonoLexAbs,
  PChunk,
  Symbol - [Symb]
  -- ,Construction  --- could be compiled here, but not in concretes, as they call Syntax and Grammar
  -- ,Documentation  --# notpresent
  -- ,Markup - [stringMark]
  ** {
  flags startcat=Phr ;
  } ;
>>>>>>> b17d353994fb9fad892e92c5fe50f956900efb29
