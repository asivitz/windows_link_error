module Small.Dep where

import Small.Foreign (c_foreign_fun)
import GHC.Ptr (nullPtr)

depString :: String
depString = "bar"

myHFoo :: IO ()
myHFoo = c_foreign_fun
