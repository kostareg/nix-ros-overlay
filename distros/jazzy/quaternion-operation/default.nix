
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-gtest, eigen, geometry-msgs, ouxt-lint-common, rclcpp, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-quaternion-operation";
  version = "0.0.7-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/quaternion_operation-release/archive/release/jazzy/quaternion_operation/0.0.7-5.tar.gz";
    name = "0.0.7-5.tar.gz";
    sha256 = "f57a8ffbdb10ad9e65cc31c4ea4ba52b79728e7a42fea07b53186cef9a61355e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ouxt-lint-common ];
  propagatedBuildInputs = [ ament-cmake-auto eigen geometry-msgs rclcpp tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The quaternion_operation package";
    license = with lib.licenses; [ asl20 ];
  };
}
