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
|ResTam      |ParamTam, ResTam              |ParamTam contains variable aspects of words (e.g. Gender, Mood etc.), ResTam contains the operations (opers) required to create morphological functions (e.g. RegNoun for a function that makes regular nouns, and IrrNoun for irregular nouns)                                     |
|ParadigmsTam|ParadigmsTam                  |ParadigmsTam encapsulates (overloads) the morphological functions from ResTam into one mk* (e.g. mkN for 'make Noun' that encapsulates RegNoun and IrrNoun) for API users to write application grammars with                                                                  |
|ExtraTam    |NA                            |Removed in a previous version                                                                          |
|SyntaxTam   |SentenceTam                   |                                                                                                       |
|GrammarTam  |GrammarTam                    |Contains syntactic combination rules from NounTam, VerbTam, AdjectiveTam, AdverbTam and so on.         |
|LexiconTam  |LexiconTam                    |Contains some Tamil words currently written using English transliteration                              |
|LangTam     |LangTam                       |Combines GrammarTam with LexiconTam                                                                    |
|AllTam      |AllTam                        |Combines LangTam with ExtendTam                                                                        |


## Publications

None

## References used

- A Grammar of Modern Tamil, 1993, Thomas Lehmann
This is the main grammatical resource that was referred to. Page references in the library and in this readme refer to this book unless specifically stated otherwise.

## Implementation information

### 13th August 2022

A conjugation table for verbs and an inference table for nouns have been implemented. A basic DetCN function taking a determiner and a common noun to combine to a noun phrase has also been implemented, with one determiner ("this_Quant") and one noun ("house_N") in use. Use the command "gr -cat=NP" to generate the tree.

### 8th December 2022

Added Parameters to ParamTam based on the below reference of variable and inherent features for Nouns and Verbs. Notable changes include renaming the Gender feature to a combined Person-Number-Gender feature called PNG. Verb table under ResTam has been edited accordingly.

## A reference of variable and inherent features

- Noun (N): Nouns are marked for case and there are 9 cases total, including Nominative (p. 25), Accusative (p. 27), Dative (p. 30), Benefactive (p. 35), Instrumental (p. 36), Sociative (p. 37), Locative (p. 39), Ablative (p. 41), Genitive (p. 42). Pages 46-47 give Noun paradigm tables.

- Noun Phrases (NP): Has grammatical relations (syntactic functions) like subject, direct object, indirect object etc.. Lehmann's grammar focuses on the subject and transitive clauses on page 180. Note that case marking is not necessarily an indicator that the NP is a subject (see section 1.14 of Lehmann). Only agreement is an indicator of the subject relation, and it codes agreement with respect to Person, Number, and where appropriate, Gender and Status.

- Verbs (V): Finite verbs are inflected for Mood (Imperative, Indicative, Optative). Indicative verbs are inflected for the categories of Tense and Number, Person, Gender (these last 3 are bundled together as person-number-gender suffixes [p. 60]). Non-finite and nominalized verb forms are inflected for tense in some cases, and for the relational category which indicates subordinate or nominal status of the verb (p. 48)

- Auxiliary Verbs: All auxiliary verbs in Tamil are lexical verbs which have been grammaticalized, i.e. their lexical meaning has been replaced by a grammatical one (p. 194). Through auxiliary verbs, we can realise the following grammmatical categories periphrastically -- Aspect, Mood, Passive voice, Causation, Negative polarity, and Attitude.

- Adjectives: There are simple and derived adjectives (p. 131-134). Most adjectives are derived, with only a subset of words using the simple adjectival suffix (p. 133). Adjectives are the only lexical category that cannot cooccur with clitics of whatever type (p. 134).

- Adjectival clauses: p. 135 

- Adverbs: There are simple and derived adverbs (p. 135-145). Like adjectives, most adverbs are derived, with only a subset of words being simple adverbs (p. 136-138). The situation with derived adverbs is more complex, with Lehmann analysing the role of the derivative suffix --aaka/aay across several pages (p. 140-145) before giving a summary (p. 146).

## Syntax

- Verbal Noun ("Kumar must come"): P. 300 

- Relative Clauses: Pp. 287-94, 349-56