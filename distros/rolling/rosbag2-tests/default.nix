
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-index-cpp, ament-lint-auto, ament-lint-common, rclcpp, rcpputils, ros2bag, rosbag2-compression, rosbag2-compression-zstd, rosbag2-cpp, rosbag2-interfaces, rosbag2-storage, rosbag2-storage-default-plugins, rosbag2-test-common, rosbag2-transport, std-msgs, test-msgs }:
buildRosPackage {
  pname = "ros-rolling-rosbag2-tests";
  version = "0.31.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/rosbag2_tests/0.31.0-1.tar.gz";
    name = "0.31.0-1.tar.gz";
    sha256 = "6be3f986d91fd29d2a5927832363621d4ab4050af34ae5fb5d516d544414fab8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common rclcpp rcpputils ros2bag rosbag2-compression rosbag2-compression-zstd rosbag2-cpp rosbag2-interfaces rosbag2-storage rosbag2-storage-default-plugins rosbag2-test-common rosbag2-transport std-msgs test-msgs ];
  propagatedBuildInputs = [ ament-index-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Tests package for rosbag2";
    license = with lib.licenses; [ asl20 ];
  };
}
