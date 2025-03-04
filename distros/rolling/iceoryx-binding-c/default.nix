
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, iceoryx-hoofs, iceoryx-posh }:
buildRosPackage {
  pname = "ros-rolling-iceoryx-binding-c";
  version = "2.0.5-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/iceoryx-release/archive/release/rolling/iceoryx_binding_c/2.0.5-5.tar.gz";
    name = "2.0.5-5.tar.gz";
    sha256 = "fe5e5b0284eec1c021790bdc66eb096d1f30dc631c32a46048392dc228992d8f";
  };

  buildType = "cmake";
  buildInputs = [ cmake iceoryx-hoofs iceoryx-posh ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Eclipse iceoryx inter-process-communication (IPC) middleware C-Language Binding";
    license = with lib.licenses; [ asl20 ];
  };
}
