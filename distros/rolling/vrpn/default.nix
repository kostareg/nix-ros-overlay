
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cmake }:
buildRosPackage {
  pname = "ros-rolling-vrpn";
  version = "7.35.0-r20";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vrpn-release/archive/release/rolling/vrpn/7.35.0-20.tar.gz";
    name = "7.35.0-20.tar.gz";
    sha256 = "831455c11c3016a4ef652ebd8c24ece8af87af59ef879e357a4847017b05e571";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ ament-cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The VRPN is a library and set of servers that interfaces with virtual-reality systems, such as VICON, OptiTrack, and others.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
