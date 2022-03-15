{ stdenv, deimos-zeromq, zeromq, meson, ninja, pkg-config, ldc, fetchgit }:
    stdenv.mkDerivation 
    {
        name = "zmqd";
        version = "1.2.0";
        srcs = [ 
            (fetchgit {
                url = "https://github.com/kyllingstad/zmqd.git";
                rev = "v1.2.0";
                sha256 = "0g82wfxss5i386khl5yswlr02a96cll40d5488rdrmlxwzb9phjg";
                name = "zmqd";
            })
            ./package-files
        ];

        mesonBuildType="debugoptimized";
        mesonFlags="-Ddefault_library=both";
        
        sourceRoot = "zmqd";
        nativeBuildInputs = [ meson ninja ldc pkg-config ];
        propagatedBuildInputs = [ deimos-zeromq ];
        prePatch = ''
            cp ../package-files/* .
        '';
    }
