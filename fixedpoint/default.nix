{ stdenv, meson, ninja, pkg-config, ldc, fetchgit,
}:
stdenv.mkDerivation
{
    name = "fixedpoint";
    version = "0.1.3";
    srcs = [ 
        (fetchgit {
            url = "https://github.com/panke/fixedpoint.git";
            rev = "763cdfcee36f933d62e65140225890464b9a4d56";
            sha256 = "fEGe9WntJg6b+b6FAswKaGxb3elfoeVdtCmWR9IK5I4=";
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
