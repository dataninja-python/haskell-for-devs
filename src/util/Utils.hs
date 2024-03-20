module Util.Utils (reverseString) where

reverseString :: String -> String
reverseString str = reverseString' str []

reverseString' :: String -> String -> String
reverseString' [] acc = acc -- base case: input string empty, return accumulator
reverseString' (x:xs) acc = reverseString' xs (x:acc)