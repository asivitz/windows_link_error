{-# LANGUAGE TemplateHaskell #-}

module Small.Foo where

import Small.Dep (frag)
import Language.Haskell.TH
-- import Vulkan.Utils.ShaderQQ.GLSL.Glslang (compileShaderQ)

-- compiled = $(compileShaderQ Nothing "frag" Nothing frag)

answer :: Int
answer = $(litE (IntegerL (6 * 7)))  -- evaluates to 42 at compile time
