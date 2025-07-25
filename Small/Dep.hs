module Small.Dep where

import qualified DearImGui.Raw as Raw
import GHC.Ptr (nullPtr)

depString :: String
depString = "bar"

myEnd :: IO ()
myEnd = Raw.end

