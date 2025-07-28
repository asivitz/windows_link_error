module Small.Dep where

import GHC.Ptr (nullPtr)

foreign import ccall "foreign_fun" c_foreign_fun :: IO ()

depString :: String
depString = "bar"

myHFoo :: IO ()
myHFoo = c_foreign_fun
