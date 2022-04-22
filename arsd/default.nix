{ stdenv, meson, ninja, pkg-config, ldc, fetchgit,
}:
stdenv.mkDerivation
{
    name = "arsd";
    version = "10.8.2";
    srcs = [ 
        (fetchgit {
            url = "https://github.com/adamdruppe/arsd";
            rev = "79b630e5474e42f44a412a3502d9496df359da73";
            sha256 = "g78uwUxZ2Uio0ocNpwZj5h7kWHhcIcU4xcWLytGOnnc=";
            name = "arsd";
        })
        ./package-files
    ];
    sourceRoot = "arsd";

    mesonBuildType="debugoptimized";
    mesonFlags="-Ddefault_library=static";

    nativeBuildInputs = [ meson ninja ldc pkg-config];

    prePatch = ''
        cp ../package-files/* .
    '';
}
