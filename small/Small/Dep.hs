module Small.Dep where

import CPPDep.Foreign (hfoo)
import GHC.Ptr (nullPtr)

depString :: String
depString = "bar"

myHFoo :: IO ()
myHFoo = hfoo
