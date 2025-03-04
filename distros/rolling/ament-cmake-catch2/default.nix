
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-catch2";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake_catch2-release/archive/release/rolling/ament_cmake_catch2/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "1bae056fa7fa91f1e0215fee3d9b9a97afa5d414dec2e14d3febf8459b294a74";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  propagatedBuildInputs = [ ament-cmake-test ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ];

  meta = {
    description = "Allows integrating catch2 tests in the ament buildsystem with CMake";
    license = with lib.licenses; [ asl20 ];
  };
}
