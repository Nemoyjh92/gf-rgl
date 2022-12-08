# Tamil

## Language info

- English name: Tamil
- Autonym: தமிழ்
- ISO code: Tam

## History

This tamil resource grammar library was started on 13th August 2022. It was copied from the Malay resource grammar library with all bodies commented out.

## Author(s)

Created and maintained by Nemo, 2022

## Program Structure

While each resource grammar has similarities in structure, e.g. sharing a ResLang.gf module, resource grammars have evolved such that grammars that were built later have a different structure from earlier grammars such as English. This Tamil resource grammar was copied over in 2022 or so, and has the following structure, compared with the 2011 book "Grammatical Framework: Programming with Multilingual Grammars", specifically pages 14 and 15, are highlighted:

|2011 book   | Tamil RGL                    |Notes|
|------------|------------------------------|-----|
|ParadigmsTam|ParamTam, ResTam, ParadigmsTam|ParamTam contains variable aspects of words (e.g. Gender, Mood etc.), ResTam contains the operations (opers) required to create morphological functions (e.g. RegNoun for a function that makes regular nouns, and IrrNoun for irregular nouns), and ParadigmsTam encapsulates (overloads) the morphological functions from ResTam into one mk* (e.g. mkN for 'make Noun' that encapsulates RegNoun and IrrNoun) for API users to write application grammars with|
|ExtraTam    |NA                            |Removed in a previous version                                                                          |
|SyntaxTam   |SentenceTam                   |                                                                                                       |
|GrammarTam  |GrammarTam                    |Contains syntactic combination rules from NounTam, VerbTam, AdjectiveTam, AdverbTam and so on.         |
|LexiconTam  |LexiconTam                    |Contains some Tamil words currently written using English transliteration                              |
|LangTam     |LangTam                       |Combines GrammarTam with LexiconTam                                                                    |
|AllTam      |AllTam                        |Combines LangTam with ExtendTam                                                                        |


## Publications

None

## Implementation information

### 13th August 2022

A conjugation table for verbs and an inference table for nouns have been implemented. A basic DetCN function taking a determiner and a common noun to combine to a noun phrase has also been implemented, with one determiner ("this_Quant") and one noun ("house_N") in use. Use the command "gr -cat=NP" to generate the tree.
