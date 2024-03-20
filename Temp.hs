-- module Main where

module Main where

import Control.Monad (void)

combineLists :: [a] -> [a] -> [a]
combineLists = (++)

displayMsgHelper :: String -> String -> String
displayMsgHelper m s = putStrLn m'
  where
    m' = case m of
      ""  -> "Error: no message supplied by " ++ s
      " " -> "Maybe Error: only a space supplied by " ++ s
      _   -> m

displayMsg :: String -> String -> IO ()
displayMsg msg sender = displayMsgHelper msg sender

getUserInputHelper :: IO() -> String
getUserInputHelper = return userInput
  where
    userInput <- getLine

getUserInput :: String -> String
getUserInput userQuery = do
  displayMsg userQuery
  let userOutput = getUserInputHelper
  return userOutput

getStringFromStringList :: [String] -> String
getStringFromStringList [] = ""
getStringFromStringList = concat

-- getMsg takes a Subject, Verb, and Predicate to form a message which must have these
getMsg :: String -> String -> String -> String
getMsg s v p = getStringFromStringList [s, " ", v, " ", p]

sayHello :: IO ()
sayHello = do
  let greeting = "Hi"
  let aSpace = " "
  let aPeriod = "."
  let aComma = ","
  let msg1 = "sayHello says hello to you."
  displayMsg msg1
  let msg2 = "What is your first name? "
  let msg3 = "What is your last name?"
  let firstName = getUserInput msg2
  let lastName = getUserInput msg3
  let pre = combineLists greeting aComma
  let sub = combineLists $ combineLists firstName aSpace lastName
  let preAndSub = combineLists $ combineLists pre aSpace sub
  let verb = combineLists aSpace "nice to meet"
  let predicate = combineLists aSpace "you"
  let greetingMsg = getMsg preAndSub verb predicate
  displayMsg greetingMsg
