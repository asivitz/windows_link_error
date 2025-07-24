This project demonstrates a linking error that appears only on Windows.

The interaction between the dear-imgui library (perhaps because it uses inline-c?) and template haskell.

```
Building library for Small-0.0.0...
[1 of 2] Compiling Small.Dep        ( Small\Dep.hs, dist-newstyle\build\x86_64-windows\ghc-9.12.2\Small-0.0.0\build\Small\Dep.o )
[2 of 2] Compiling Small.Foo        ( Small\Foo.hs, dist-newstyle\build\x86_64-windows\ghc-9.12.2\Small-0.0.0\build\Small\Foo.o )
ghc-9.12.2.exe:  | C:\cabal\store\ghc-9.12.2-4764\dear-imgui-2.3.1-bd63b2bcf21f74ceee07ad4287471a895a69c5f5\lib\libHSdear-imgui-2.3.1-bd63b2bcf21f74ceee07ad4287471a895a69c5f5.a: unknown symbol `_ZN24ImFontGlyphRangesBuilder9AddRangesEPKt'
ghc-9.12.2.exe:  | C:\cabal\store\ghc-9.12.2-4764\dear-imgui-2.3.1-bd63b2bcf21f74ceee07ad4287471a895a69c5f5\lib\libHSdear-imgui-2.3.1-bd63b2bcf21f74ceee07ad4287471a895a69c5f5.a: unknown symbol `_ZN8ImVectorIjED2Ev'
ghc-9.12.2.exe:  | C:\cabal\store\ghc-9.12.2-4764\dear-imgui-2.3.1-bd63b2bcf21f74ceee07ad4287471a895a69c5f5\lib\libHSdear-imgui-2.3.1-bd63b2bcf21f74ceee07ad4287471a895a69c5f5.a: unknown symbol `_ZN5ImGui15StyleColorsDarkEP10ImGuiStyle'
ghc-9.12.2.exe:  | C:\cabal\store\ghc-9.12.2-4764\dear-imgui-2.3.1-bd63b2bcf21f74ceee07ad4287471a895a69c5f5\lib\libHSdear-imgui-2.3.1-bd63b2bcf21f74ceee07ad4287471a895a69c5f5.a: unknown symbol `_ZN5ImGui13CreateContextEP11ImFontAtlas'
ghc-9.12.2.exe:  | C:\a\windows_link_error\windows_link_error\dist-newstyle\build\x86_64-windows\ghc-9.12.2\Small-0.0.0\build\Small\Dep.o: unknown symbol `inline_c_DearImGui_Raw_24'
ghc-9.12.2.exe: Could not load Object Code C:\a\windows_link_error\windows_link_error\dist-newstyle\build\x86_64-windows\ghc-9.12.2\Small-0.0.0\build\Small\Dep.o.
<no location info>: error:
Error: [Cabal-7125]
```

The build itself is producible via the github action workflow in this repo. Example run here:
https://github.com/asivitz/windows_link_error/actions/runs/16507606349/job/46682139384
