
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, controller-manager, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, ros-environment, webots-ros2-driver }:
buildRosPackage {
  pname = "ros-rolling-webots-ros2-control";
  version = "2025.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/rolling/webots_ros2_control/2025.0.0-1.tar.gz";
    name = "2025.0.0-1.tar.gz";
    sha256 = "f3248f0c9f2833043fffff0d3097577b9f70b3f799563e024a6918b14a16225f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ controller-manager hardware-interface pluginlib rclcpp rclcpp-lifecycle webots-ros2-driver ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ros2_control plugin for Webots";
    license = with lib.licenses; [ asl20 ];
  };
}
