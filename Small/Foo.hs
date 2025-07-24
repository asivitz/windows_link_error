{-# LANGUAGE TemplateHaskell #-}

module Small.Foo where

import Small.Dep (frag)
import Language.Haskell.TH
-- import Vulkan.Utils.ShaderQQ.GLSL.Glslang (compileShaderQ)

-- compiled = $(compileShaderQ Nothing "frag" Nothing frag)

myString :: String
myString = $(litE (StringL ("foo" ++ frag)))
