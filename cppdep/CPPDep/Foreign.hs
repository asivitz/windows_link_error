{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE QuasiQuotes #-}

module CPPDep.Foreign where

import Control.Monad.IO.Class
import qualified Language.C.Inline as C

C.include "foo.h"

hfoo :: (MonadIO m) => m ()
hfoo = liftIO $
  [C.exp| void { foo(); } |]
