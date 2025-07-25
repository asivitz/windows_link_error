{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE QuasiQuotes #-}

module CPPDep.Foreign where

import Control.Monad.IO.Class
import qualified Language.C.Inline.Cpp as Cpp
-- import qualified Language.C.Inline as C

Cpp.include "foo.h"

hfoo :: (MonadIO m) => m ()
hfoo = liftIO $
  [Cpp.exp| void { foo(); } |]
