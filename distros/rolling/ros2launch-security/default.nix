
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, demo-nodes-py, launch-ros, nodl-python, python3Packages, ros2launch, sros2 }:
buildRosPackage {
  pname = "ros-rolling-ros2launch-security";
  version = "1.0.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2launch_security-release/archive/release/rolling/ros2launch_security/1.0.0-4.tar.gz";
    name = "1.0.0-4.tar.gz";
    sha256 = "62797dd0cc3f8b82353f5dec79404b9577bfbf67a20bd51db6031d9199fe4335";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 demo-nodes-py launch-ros python3Packages.pytest ros2launch sros2 ];
  propagatedBuildInputs = [ ament-index-python nodl-python ros2launch sros2 ];

  meta = {
    description = "Security extensions for ros2 launch";
    license = with lib.licenses; [ asl20 ];
  };
}
