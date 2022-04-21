{ stdenv, deimos-zeromq, zeromq, meson, ninja, pkg-config, ldc, fetchgit,
  mir-core, mir-cpuid, mir-algorithm
}:
stdenv.mkDerivation
{
    name = "mir-ion";
    version = "1.0.33";
    src = fetchgit {
        url = "https://github.com/libmir/mir-ion";
        rev = "ec28d7e51d859896ef8ef923db6da5f3ed97bf9d";
        sha256 = "/r8o4qPLWGlECMp8GD0jmi1hr3t+IqVqrw7KnsKMU4c=";
        name = "mir-ion";
    };

    mesonBuildType="debugoptimized";
    mesonFlags="-Ddefault_library=both";

    nativeBuildInputs = [ meson ninja ldc pkg-config];
    propagatedBuildInputs = [ mir-core mir-cpuid mir-algorithm ];
}
