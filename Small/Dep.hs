module Small.Dep where

import qualified DearImGui.Raw as Raw
import GHC.Ptr (nullPtr)

depString :: String
depString = "bar"

myBegin :: IO Bool
myBegin = Raw.begin nullPtr (Just nullPtr) Nothing

