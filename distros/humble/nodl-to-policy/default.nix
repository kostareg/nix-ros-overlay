
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-lint-auto, ament-mypy, ament-pep257, ament-pycodestyle, nodl-python, python3Packages, ros-testing, ros2cli, ros2nodl, ros2run, sros2, test-msgs }:
buildRosPackage {
  pname = "ros-humble-nodl-to-policy";
  version = "1.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nodl_to_policy-release/archive/release/humble/nodl_to_policy/1.0.0-3.tar.gz";
    name = "1.0.0-3.tar.gz";
    sha256 = "ef142075c1fc652466ec1265c312d791169a832f5287a39513df272ce58b1967";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-lint-auto ament-mypy ament-pep257 ament-pycodestyle python3Packages.pytest python3Packages.pytest-mock ros-testing test-msgs ];
  propagatedBuildInputs = [ nodl-python python3Packages.argcomplete python3Packages.lxml ros2cli ros2nodl ros2run sros2 ];

  meta = {
    description = "Package to generate a ROS 2 Access Control Policy from the NoDL description of a ROS system";
    license = with lib.licenses; [ asl20 ];
  };
}
