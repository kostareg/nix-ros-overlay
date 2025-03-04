
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-license, ecl-type-traits }:
buildRosPackage {
  pname = "ros-jazzy-ecl-math";
  version = "1.2.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_core-release/archive/release/jazzy/ecl_math/1.2.1-5.tar.gz";
    name = "1.2.1-5.tar.gz";
    sha256 = "c47b40df69608d69b60b7f74bda4da224fef2c829c22bf4e2901947543c803dc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ecl-build ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ecl-license ecl-type-traits ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "This package provides simple support to cmath, filling in holes
    or redefining in a c++ formulation where desirable.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
