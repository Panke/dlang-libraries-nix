{ stdenv, deimos-zeromq, zeromq, meson, ninja, pkg-config, ldc, fetchgit, mir-core }:
stdenv.mkDerivation 
{
    name = "mir-cpuid";
    version = "1.2.7";
    src = fetchgit {
        url = "https://github.com/libmir/mir-cpuid";
        rev = "v1.2.7";
        sha256 = "09a564iszgy52cj1d2zdvl1b4pa5ahqv11jajv1fx3nyag2h1fgw";
        name = "mir-cpuid";
    };
    
    mesonBuildType="debugoptimized";
    mesonFlags="-Ddefault_library=static";

    nativeBuildInputs = [ meson ninja ldc pkg-config ];
    propagatedBuildInputs = [ mir-core ];
}
