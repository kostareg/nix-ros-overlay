
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-gtest, ament-lint-auto, ament-lint-cmake, assimp, boost, console-bridge-vendor, eigen, eigen-stl-containers, eigen3-cmake-module, fcl, geometry-msgs, octomap, pkg-config, qhull, random-numbers, rclcpp, resource-retriever, rosidl-default-generators, rosidl-default-runtime, shape-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-geometric-shapes";
  version = "2.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometric_shapes-release/archive/release/rolling/geometric_shapes/2.3.2-1.tar.gz";
    name = "2.3.2-1.tar.gz";
    sha256 = "43e3baa3eb91bfe9a60971b265c8e983742c431a567ee5379dbe90b9a2176146";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config rosidl-default-generators ];
  checkInputs = [ ament-cmake-copyright ament-cmake-gtest ament-lint-auto ament-lint-cmake ];
  propagatedBuildInputs = [ assimp boost console-bridge-vendor eigen eigen-stl-containers eigen3-cmake-module fcl geometry-msgs octomap qhull random-numbers rclcpp resource-retriever rosidl-default-runtime shape-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module rosidl-default-generators ];

  meta = {
    description = "This package contains generic definitions of geometric shapes and bodies.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
