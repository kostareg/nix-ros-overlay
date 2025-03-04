
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, libphidget22 }:
buildRosPackage {
  pname = "ros-humble-phidgets-api";
  version = "2.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/humble/phidgets_api/2.3.3-1.tar.gz";
    name = "2.3.3-1.tar.gz";
    sha256 = "0656b2b9b283f008a0ed03c64795d4615d24cdf31387b1bee19988fee18703b6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ libphidget22 ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "A C++ Wrapper for the Phidgets C API";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
