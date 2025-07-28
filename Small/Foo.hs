{-# LANGUAGE TemplateHaskell #-}

module Small.Foo where

import Small.Dep (depString)
import Language.Haskell.TH

myString :: String
myString = $(litE (StringL ("foo" ++ depString)))
