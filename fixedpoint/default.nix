{ stdenv, meson, ninja, pkg-config, ldc, fetchgit,
}:
stdenv.mkDerivation
{
    name = "fixedpoint";
    version = "0.1.3";
    srcs = [ 
        (fetchgit {
            url = "https://github.com/m3m0ry/fixedpoint.git";
            rev = "205189404f86c6f6f3f78a32cc4e78dc88732589";
            sha256 = "WhJup8xxr4QHA2DfphZFXmaT6BeW1LM3UV1EwDeMtcE=";
            name = "fixedpoint";
        })
        ./package-files
    ];
    sourceRoot = "fixedpoint";

    mesonBuildType="debugoptimized";
    mesonFlags="-Ddefault_library=static";

    nativeBuildInputs = [ meson ninja ldc pkg-config];

    prePatch = ''
        cp ../package-files/* .
    '';
}
