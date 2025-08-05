{-# LANGUAGE ForeignFunctionInterface #-}

module Small.Dep where

foreign import ccall "foreign_fun" c_foreign_fun :: IO ()

myHFoo :: IO ()
myHFoo = c_foreign_fun

depString :: String
depString = "bar"

