
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-black, ament-cmake-copyright, ament-cmake-lint-cmake, ament-cmake-mypy, ament-cmake-python, ament-cmake-uncrustify, ament-cmake-xmllint, ament-index-python, ament-lint-auto, geometry-msgs, leo-msgs, nav-msgs, python3Packages, rclcpp, rclcpp-components, rclpy, ros2cli, sensor-msgs, std-msgs, std-srvs, yaml-cpp }:
buildRosPackage {
  pname = "ros-humble-leo-fw";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_robot-release/archive/release/humble/leo_fw/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "f1bb02044b35653579c3454843051f9dd7acfdf8c1f428855aeebaf8a682c046";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python yaml-cpp ];
  checkInputs = [ ament-cmake-black ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-mypy ament-cmake-uncrustify ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ ament-index-python geometry-msgs leo-msgs nav-msgs python3Packages.dbus-python python3Packages.numpy python3Packages.pyyaml python3Packages.whichcraft rclcpp rclcpp-components rclpy ros2cli sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Binary releases of Leo Rover firmware and related utilities";
    license = with lib.licenses; [ mit ];
  };
}
