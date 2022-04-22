{ stdenv, deimos-zeromq, zeromq, meson, ninja, pkg-config, ldc, fetchgit }:
    stdenv.mkDerivation 
    {
        name = "zmqd";
        version = "1.2.0";
        srcs = [ 
            (fetchgit {
                url = "https://github.com/kyllingstad/zmqd.git";
                rev = "bf886631786990b4466a4a6c6f61d54c480c8752"; # 1.2.0 with some fixes
                sha256 = "0cjk6f0aak35j6wjkswvxr4kicp2ichin73nv83wrbgm5mbl4l8l";
                name = "zmqd";
            })
            ./package-files
        ];

        mesonBuildType="debugoptimized";
        mesonFlags="-Ddefault_library=static";
        
        sourceRoot = "zmqd";
        nativeBuildInputs = [ meson ninja ldc pkg-config ];
        propagatedBuildInputs = [ deimos-zeromq ];
        prePatch = ''
            cp ../package-files/* .
        '';
    }
