
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gen-version-h, ament-cmake-gmock, ament-cmake-gtest, backward-ros, generate-parameter-library, launch-ros, launch-testing-ament-cmake, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, trajectory-msgs, urdf }:
buildRosPackage {
  pname = "ros-rolling-joint-limits";
  version = "4.26.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/rolling/joint_limits/4.26.0-1.tar.gz";
    name = "4.26.0-1.tar.gz";
    sha256 = "de6463208ce851cbc72509c357dfdb83afa3300d0f2370c50add08fe43aa2fbd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gen-version-h ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest generate-parameter-library launch-ros launch-testing-ament-cmake ];
  propagatedBuildInputs = [ backward-ros pluginlib rclcpp rclcpp-lifecycle realtime-tools trajectory-msgs urdf ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gen-version-h ];

  meta = {
    description = "Package with interfaces for handling of joint limits in controllers or in hardware. The package also implements Saturation Joint Limiter for position-velocity-acceleration set and other individual interfaces.";
    license = with lib.licenses; [ asl20 ];
  };
}
