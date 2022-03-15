This packages dlang libraries in such a way that they
are usable from pkg-config. To use overlay your version of 
nixpkgs with the overlay provided in `output.overlay.x86_64-linux`.

Compiler and build options are not configurable, but hardcoded
to ldc and meson's debugoptimized.
  