{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE QuasiQuotes #-}

module CPPDep.Foreign where

import Control.Monad.IO.Class
import qualified Language.C.Inline as C

foreign import ccall "foreign_fun" c_foreign_fun :: IO ()
