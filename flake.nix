{
  description = "Packaged libraries for the D programming language";
  outputs = { self, nixpkgs }:
  let
    overlay_ = final: prev: {
      deimos-zeromq = final.callPackage ./deimos/zeromq {};
      zmqd = final.callPackage ./zmqd {};
      mir-core = final.callPackage ./mir/core {};
      mir-cpuid = final.callPackage ./mir/cpuid {};
      mir-algorithm = final.callPackage ./mir/algorithm {};
      mir-ion = final.callPackage ./mir/ion {};
      arsd = final.callPackage ./arsd {};
      fixedpoint = final.callPackage ./fixedpoint {};
    };
    pkgs = import nixpkgs { system = "x86_64-linux"; overlays = [ overlay_ ]; };
  in
  rec {
    overlays.default = overlay_;
    packages.x86_64-linux =
    {
      deimos-zeromq = pkgs.deimos-zeromq;
      zmqd = pkgs.zmqd;
      mir-core = pkgs.mir-core;
      mir-cpuid = pkgs.mir-cpuid;
      mir-algorithm = pkgs.mir-algorithm;
      mir-ion = pkgs.mir-ion;
      arsd = pkgs.arsd;
      fixedpoint = pkgs.fixedpoint;
    };
  };
}

