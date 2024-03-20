module Interview.Anagram where

-- import qualified Util.Utils as Utility
{-
  Given two string s1 and s2, check if they're anagrams. Two strings are anagrams if they're made of the same
  characters with the same frequencies.
-}

isAnagram :: String -> String -> Bool
isAnagram s1 s2 = compareByChar (qsString s1) (qsString s2)

compareByChar :: String -> String -> Bool
compareByChar [] [] = True
compareByChar [] _ = False
compareByChar _ [] = False
compareByChar (x:xs) (y:ys) = x == y && compareByChar xs ys

-- sortString uses the quick sort approach to create a new string with the lower values first
qsString :: String-> String
qsString [] = []
qsString (x:xs) = qsString [y | y <- xs, y <= x] ++ [x] ++ qsString [y | y <- xs, y > x]