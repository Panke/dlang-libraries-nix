{
  description = "Packaged libraries for the D programming language";
  outputs = { self, nixpkgs }:
  let
    overlay_ = self: super: {
      deimos-zeromq = self.callPackage ./deimos/zeromq {};
      zmqd = self.callPackage ./zmqd {};
      mir-core = self.callPackage ./mir/core {};
      mir-cpuid = self.callPackage ./mir/cpuid {};
      mir-algorithm = self.callPackage ./mir/algorithm {};
      mir-ion = self.callPackage ./mir/ion {};
      arsd = self.callPackage ./arsd {};
      fixedpoint = self.callPackage ./fixedpoint {};
    };
    pkgs = import nixpkgs { system = "x86_64-linux"; overlays = [ overlay_ ]; };
  in
  rec {
    overlay.x86_64-linux = overlay_;
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

