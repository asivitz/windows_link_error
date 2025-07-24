{-# LANGUAGE TemplateHaskell #-}

module Small.Foo where

import Small.Dep (frag)
import Vulkan.Utils.ShaderQQ.GLSL.Glslang (compileShaderQ)

compiled = $(compileShaderQ Nothing "frag" Nothing frag)
