{ lib, craneLib, rust-args, vl-workspace }:
craneLib.buildPackage (rust-args // {
  pname = "vectorlink-worker";
  version = "0.1.0";
  cargoArtifacts = vl-workspace;
  cargoExtraArgs = "-p vectorlink-worker";
  installArtifacts = false;
})