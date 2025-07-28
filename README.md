This project demonstrates a linking error that appears only on Windows.

The interaction is between C++ source files and template haskell.

Condition 1: Module 1 imports a foreign symbol.
Condition 2: The foreign symbol is defined in a '.cpp' file (not '.c'). The '.cpp' source file is included in the package via c-sources or cxx-sources.
Condition 3: Module 2 imports some definition from Module 1. Module 2 contains template haskell.

Presumably, while generating the TH code for Module 2, it tries to link in Module 1 but can't find the foreign symbol from the .cpp file.

It appears in GHCs 9.8.4-9.12.2 (and perhaps others).
It appears in cabal-installs 3.10.3-3.16.0.0 (and perhaps others).

Build with `cabal build Small`

```
Building library for Small-0.0.0...
[1 of 2] Compiling Small.Dep        ( Small\Dep.hs, C:\a\windows_link_error\windows_link_error\dist-newstyle\build\x86_64-windows\ghc-9.12.2\Small-0.0.0\build\Small\Dep.o )
[2 of 2] Compiling Small.Foo        ( Small\Foo.hs, C:\a\windows_link_error\windows_link_error\dist-newstyle\build\x86_64-windows\ghc-9.12.2\Small-0.0.0\build\Small\Foo.o )
ghc-9.12.2.exe:  | C:\a\windows_link_error\windows_link_error\dist-newstyle\build\x86_64-windows\ghc-9.12.2\Small-0.0.0\build\Small\Dep.o: unknown symbol `foreign_fun'
ghc-9.12.2.exe: Could not load Object Code C:\a\windows_link_error\windows_link_error\dist-newstyle\build\x86_64-windows\ghc-9.12.2\Small-0.0.0\build\Small\Dep.o.
```

The build itself is producible via the github action workflow in this repo. Example run here:
https://github.com/asivitz/windows_link_error/actions/runs/16530471509/job/46754351821
