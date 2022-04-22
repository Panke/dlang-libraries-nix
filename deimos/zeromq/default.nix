{ stdenv, zeromq, meson, ninja, pkg-config, ldc, fetchgit }:
    stdenv.mkDerivation 
    {
        name = "deimos-zeromq";
        version = "v6.1.2+zmq-4-3-2";
        srcs = [ 
            (fetchgit {
                url = "https://github.com/D-Programming-Deimos/ZeroMQ";
                rev = "baec33b5444d52ebe82d8c454f6a81467bf16e5f";
                sha256 = "03bpjjlqdrhi6pqy1hq84mag758v23l4a27wc89ncalxm4albkzy";
                name = "ZeroMQ";
            })
            ./package-files
        ];

        mesonBuildType="debugoptimized";
        mesonFlags="-Ddefault_library=static";

        sourceRoot = "ZeroMQ";
        nativeBuildInputs = [ meson ninja ldc pkg-config ];
        propagatedBuildInputs = [ zeromq ];
        prePatch = ''
            cp ../package-files/* .
        '';
    }
