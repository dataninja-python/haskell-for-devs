module Main where

import qualified MyLib (someFunc)
import qualified Interview.Anagram as Ana

main :: IO ()
main = do
  putStrLn "Hello, Haskell!"
  MyLib.someFunc
  let str1 = "hello"
  let str2 = "hi"
  let str3 = "olleh"
  Ana.isAnagram str1 str2
  Ana.isAnagram str1 str3

