{-# LANGUAGE TemplateHaskell #-}

module CPPDep.Foreign where

foreign import ccall "foreign_fun" c_foreign_fun :: IO ()
