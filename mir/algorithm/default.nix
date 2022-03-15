{ stdenv, deimos-zeromq, zeromq, meson, ninja, pkg-config, ldc, fetchgit,
  mir-core, mir-cpuid
}:
stdenv.mkDerivation 
{
    name = "mir-algorithm";
    version = "3.12.18";
    src = fetchgit {
        url = "https://github.com/libmir/mir-algorithm";
        rev = "v3.12.18";
        sha256 = "0a1z7s4ybml220hka7fn4jzcj7gd41l2gbkbkqmryxr2x6hrl68p";
        name = "mir-algorithm";
    };

    mesonBuildType="debugoptimized";
    mesonFlags="-Ddefault_library=both";

    nativeBuildInputs = [ meson ninja ldc pkg-config ];
    propagatedBuildInputs = [ mir-core mir-cpuid ];
}
