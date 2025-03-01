import MkExxTable
import System.Process(system)
import System.FilePath((</>),(<.>))
import Data.Char
import Data.List
import qualified Data.Map as M
import Text.Printf
import Config (loadLangsFrom, LangInfo (..))
import qualified Config

type Cats = [(String,String,String)]
type Rules = [(String,String,String)]

-- the file generated
outfile :: FilePath
outfile = "index.txt"

-- the languages.csv config file
configFile :: FilePath
configFile = ".." </> ".." </> Config.configFile

-- the language in which revealed examples are shown
revealedLang :: String
revealedLang = "Eng"

-- | This function puts together a txt2tags file which is then converted to HTML by the Makefile
main :: IO ()
main = do
  langs <- loadLangsFrom configFile >>= return . filter langSynopsis
  cs1 <- getCats commonAPI
  cs2 <- getCats catAPI
  let cs = sortCats (cs1 ++ cs2)
  writeFile outfile "GF Resource Grammar Library: Synopsis"
  space
  append "%!Encoding:utf-8"
  append "%!postproc(html): '#divreveal'  '<div class=reveal>'"
  append "%!postproc(html): '#divpopup'  '<div class=popup>'"
  append "%!postproc(html): '#ediv'  '</div>'"
  append "%!postproc(html): '#UL'  '<ul>'"
  append "%!postproc(html): '#EUL'  '</ul>'"
  append "%!postproc(html): '#LI'  '<li>'"
  append "%!postproc(html): '#LParadigms'  '<a name=\"RParadigms\"></a>'"
  append ("%!postproc(html): '#LANGUAGE_COUNT'  '" ++ show (length langs) ++ "'")
  append ("%!postproc(html): '#LANGUAGES'  '" ++ intercalate ", " (map langName langs) ++ ".'")
  delimit $ addToolTips cs
  include "intro.txt"
  space
  title "Categories"
  space
  link "Source 1:" commonAPI
  space
  link "Source 2:" catAPI
  space
  stitle "A hierarchic view"
  space
  include "categories-intro.txt"
  stitle "Explanations"
  space
  delimit $ mkCatTable cs
  space
  title "Syntax Rules and Structural Words"
  space
  link "Source 1:" syntaxAPI
  space
  link "Source 2:" structuralAPI
  space
  apiExx <- getApiExx (apiExxFiles langs)
  rs <- getRules apiExx syntaxAPI
  rs2 <- getRules apiExx structuralAPI
  let rss = rs ++ rs2
  delimit $ mkSplitTables True apiExx cs rss
  space
--  title "Structural Words"
--  space
--  link "Source:" structuralAPI
--  space
--  rs <- rulesTable False cs structuralAPI
--  delimit rs
  space
  title "Lexical Paradigms"
  append "#LParadigms"
  mapM_ (putParadigms cs) (paradigmFiles langs)
  space
  include "additional.txt"
  space
  include "browse.txt"
  space
  title "An Example of Usage"
  space
  include "example.txt"
  space
  title "Table of Contents"
  space
  append "%%toc"
  space

addToolTips :: Cats -> [String]
addToolTips = map f
  where f (n,e,_) = "%!postproc(html): '(?i)(HREF=\"#" ++ n ++ "\")( TITLE=\"[^\"]*\")?'  '\\1 TITLE=\"" ++ e' ++ "\"'"
           where e' = n ++ if null e then "" else " - " ++ e

getCats :: FilePath -> IO Cats
getCats file = do
  ss <- readFile file >>= return . lines
  return $ getrs [] ss
 where
   getrs rs ss = case ss of
     ('-':'-':'.':_):_ -> reverse rs
     [] -> reverse rs
     ('-':'-':_):ss2 -> getrs rs ss2
     s:ss2 -> case words s of
       cat:";":"--":exp -> getrs ((cat,unwords expl, unwords (tail ex)):rs) ss2 where
         (expl,ex) = span (/="e.g.") exp
       _ -> getrs rs ss2

rulesTable :: ApiExx -> Bool -> Cats -> FilePath -> IO [String]
rulesTable aexx hasEx cs file = do
  rs <- getRules aexx file
  return $ mkTable hasEx aexx cs rs


getRules :: ApiExx -> FilePath -> IO Rules
getRules aexx file = do
  ss <- readFileC (coding file) file >>= return . filter (not . hiddenLine) . lines
  return $ getrs [] ss
 where
   getrs rs ss = case ss of
     ('-':'-':'.':_):_ -> reverse rs
     [] -> reverse rs
     ('-':'-':_):ss2 -> getrs rs ss2
     s:ss2 -> case words s of
       _:_:"overload":_ -> getrs rs ss2
       _:":":_ -> getrs (rule s:rs) ss2
       _ -> getrs rs ss2
   rule s = (name, typ, ex)
       where
         ws = takeWhile (flip notElem ["--#", "--:", "="]) $ words s
         name = head ws
         (t,e) = span (/="--") (tail ws)
         typ = unwords $ filtype (drop 1 t)
         filtype = filter (/=";")
         ex = if null e then "" else unwords $ unnumber $ drop 1 e
         unnumber e = case e of
           n:ws | last n == '.' && not (null (init n)) && all isDigit (init n) -> ws
           _ -> e

putParadigms :: Cats -> (String, FilePath) -> IO ()
putParadigms cs (lang,file) = do
  stitle ("Paradigms for " ++ lang)
  space
  link "source" file
  space
  rs <- rulesTable M.empty False cs file
  space
  delimit rs
  space

inChunks :: Int -> ([a] -> [String]) -> [a] -> [String]
inChunks i f = concat . intersperse ["\n\n"] . map f . chunks i where
  chunks _ [] = []
  chunks i xs = x : chunks i y where (x,y) = splitAt i xs

-- Makes one table per result category.
-- Adds a subsection header for each table.
mkSplitTables :: Bool -> ApiExx -> Cats -> Rules -> [String]
mkSplitTables hasEx aexx cs = concatMap t . addLexicalCats cs . sortRules
  where t (c, xs) = [subtitle c expl, "\n"] ++ tableOrLink
         where
           expl = case [e | (n,e,_) <- cs, n == c] of
                        []  -> ""
                        e:_ -> e
           tableOrLink = if null xs then parad else mkTable hasEx aexx cs xs
           parad = [
             "Lexical category, constructors given in",
             "[lexical paradigms #RParadigms]."
             ]

mkTable :: Bool -> ApiExx -> Cats -> Rules -> [String]
mkTable hasEx aexx cs = inChunks chsize (\rs -> header : map (unwords . row) rs)
 where
  chsize = 1000
  header = if hasEx then "|| Function  | Type  | Example  |"
                    else "|| Function  | Type  | Explanation |"
  row (name,typ,ex) =
         let ntyp = mkIdent (name ++ " : " ++ typ) in
         if hasEx then ["|", name', "|", typ', "|", ex' ntyp, "|"]
                  else ["|", name', "|", typ', "|", expl ntyp, "|"]
   where
     name' = ttf name
     typ' = showTyp cs typ
     ex' typ = let ex0 = if null ex then itf (takeWhile (/='_') name) else ex in
           case M.lookup typ aexx of
             Just es -> mkExample es ex0
             _ -> itf ex0
     expl typ = if null ex then itf "-" else itf ex

-- make an example with hover-popup translations
mkExample :: M.Map String String -> String -> String
mkExample es ex = unwords [
  "#divreveal",
  itf (maybe ex (mkEx revealedLang) (M.lookup revealedLang es)),
  "#divpopup",
  "#UL",
  unwords ["#LI" ++ e | e <- prApiEx es],
  "#EUL",
  "#ediv",
  "#ediv"
  ]

-- makes mkUtt : QS -> Utt to mkUtt-QS-Utt
mkIdent :: String -> String
mkIdent = concatMap unspec where
  unspec c = case c of
    ' ' -> ""
    '>' -> ""
    '(' -> ""
    ')' -> ""
    ':' -> "-"
    _   -> [c]

mkCatTable :: Cats -> [String]
mkCatTable cs = inChunks chsize (\rs -> header ++ map mk1 rs) cs
 where
  header = ["|| Category  | Explanation  | Example  |"]
  chsize = 1000
  mk1 (name,expl,ex) = unwords ["|", showCat cs name, "|", expl, "|", typo ex, "|"]
  typo ex = if take 1 ex == "\"" then itf (init (tail ex)) else ex

srcPath :: FilePath -> FilePath
srcPath = ((</>) "../../src")

commonAPI = srcPath "abstract/Common.gf"
catAPI    = srcPath "abstract/Cat.gf"
syntaxAPI = srcPath "api/Constructors.gf"
structuralAPI = srcPath "abstract/Structural.gf"

-- all languages shown (a copy of this list appears in Makefile)
apiExxFiles :: [LangInfo] -> [FilePath]
apiExxFiles langs =
  [ "api-examples-" ++ (langCode lang) ++ ".txt"
  | lang <- langs
  ]

paradigmFiles :: [LangInfo] -> [(String,FilePath)]
paradigmFiles langs =
  [ (langName lang, srcPath $ printf "%s/Paradigms%s.gf" (langDir lang) (langCode lang))
  | lang <- langs
  ]

-- | Split a string at given character, similar to words
splitOn :: (Char -> Bool) -> String -> [String]
splitOn _ "" = []
splitOn f s = takeWhile (not.f) s : splitOn f rest
  where
    rest = case dropWhile (not.f) s of
      "" -> []
      _:xs -> xs

append s = appendFile outfile ('\n':s)
title s = append $ "=" ++ s ++ "="
stitle s = append $ "==" ++ s ++ "=="
include s = append $ "%!include: " ++ s
space = append "\n"
delimit ss = mapM_ append ss
link s f = append $ s ++ " [``" ++ f ++ "`` " ++ f ++ "]"

ttf s = "``" ++ s ++ "``"
itf s = "//" ++ s ++ "//"

hiddenLine :: String -> Bool
hiddenLine s = case reverse (words s) of
  "--%":_ -> True
  _ -> False

-----------------

-- sort category synopsis by category, retain one table
sortCats :: Cats -> Cats
sortCats = sortBy compareCat
  where compareCat (n1,_,_) (n2,_,_) = compare n1 n2

-- sort function synopsis by category, into separate tables
sortRules :: Rules -> [Rules]
sortRules = groupBy sameCat . sortBy compareRules
  where sameCat r1 r2 = resultCat r1 == resultCat r2
        compareRules r1@(n1,_,_) r2@(n2,_,_)
            = compare (resultCat r1,n1) (resultCat r2,n2)

addLexicalCats :: Cats -> [Rules] -> [(String,Rules)]
addLexicalCats cs rss =
    map head $ groupBy fstEq $ sortBy (\x y -> compare (fst x) (fst y)) $
           [ (resultCat r, rs) | rs@(r:_) <- rss] ++ [(n,[]) | (n,_,_) <- cs]
  where fstEq p1 p2 = fst p1 == fst p2

resultCat :: (String,String,String) -> String
resultCat (_,t,_) = last (words t)

subtitle :: String -> String -> String
subtitle cat expl = "==" ++ cat ++ e ++ "==" ++ "[" ++ cat ++ "]"
  where e = if null expl then "" else " - " ++ expl

showCat :: Cats -> String -> String
showCat cs cat = "[" ++ cat ++ " #" ++ cat ++ "]"

showTyp :: Cats -> String -> String
showTyp cs = unwords . map f . words
  where f s | head s == '(' && last s == ')' && isCat c
                = "(" ++ showCat cs c ++ ")"
            | isCat s = showCat cs s
            | otherwise = ttf s
         where c = init (tail s)
        isCat cat = cat `notElem` ["Str","Int"]
                    && all (\c -> isAlphaNum c || c == '\'') cat
                    && isUpper (head cat)

-- to work around GHC 6.12 file input
readFileC :: String -> FilePath -> IO String
readFileC cod file = do
  let tmp = file <.> "tmp"
  case cod of
    "utf8" -> readFile file
    _ -> do
      system $ "iconv -f " ++ cod ++ " -t UTF-8 " ++ file ++ " >" ++ tmp
      readFile tmp

-- 'intelligently' determine the coding of a file
---- AR 5/6/2016: now utf8 is used for all languages except Bul, where no characters are shown in documentation anyway
coding :: FilePath -> String
coding file = case language file of
  "Bul" -> "CP1251" --- "ISO-8859-1"
  _     -> "utf8"
  where
    language = reverse . take 3 . drop 3 . reverse
