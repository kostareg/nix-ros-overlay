
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-gtest, ament-lint-auto, ament-lint-common, eigen, eigen3-cmake-module, rclcpp, sensor-msgs, tf2, tf2-ros, tf2-ros-py }:
buildRosPackage {
  pname = "ros-humble-tf2-sensor-msgs";
  version = "0.25.12-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/humble/tf2_sensor_msgs/0.25.12-1.tar.gz";
    name = "0.25.12-1.tar.gz";
    sha256 = "da24c91a690d13de98c53296387ebf782ce6affa4336719f7d41a978880f0955";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common rclcpp ];
  propagatedBuildInputs = [ eigen eigen3-cmake-module sensor-msgs tf2 tf2-ros tf2-ros-py ];
  nativeBuildInputs = [ ament-cmake-auto eigen3-cmake-module ];

  meta = {
    description = "Small lib to transform sensor_msgs with tf. Most notably, PointCloud2";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
