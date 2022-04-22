{ stdenv, deimos-zeromq, zeromq, meson, ninja, pkg-config, ldc, fetchgit }:
stdenv.mkDerivation 
{
    name = "mir-core";
    version = "1.1.103";
    src = fetchgit {
        url = "https://github.com/libmir/mir-core";
        rev = "v1.1.103";
        sha256 = "1qi058wvq2fqn0j2z1v7a6dcrz2js7zlc9z4jkab7z67fsklpd83";
        name = "mir-core";
    };

    mesonBuildType="debugoptimized";
    mesonFlags="-Ddefault_library=static";

    nativeBuildInputs = [ meson ninja ldc pkg-config ];
}
