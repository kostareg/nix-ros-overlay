
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, beluga, catkin, geometry-msgs, nav-msgs, rostest, sensor-msgs, std-msgs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-beluga-ros";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/beluga-release/archive/release/noetic/beluga_ros/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "b6823989c07bd88504c957c5a584710927ab0d8a5aa138430dc4e83a136e45f6";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ beluga geometry-msgs nav-msgs sensor-msgs std-msgs tf2 tf2-eigen tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Utilities to interface ROS with Beluga.";
    license = with lib.licenses; [ asl20 ];
  };
}
