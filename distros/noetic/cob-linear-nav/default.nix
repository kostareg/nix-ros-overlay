
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, angles, catkin, cob-srvs, geometry-msgs, move-base-msgs, nav-msgs, roscpp, tf }:
buildRosPackage {
  pname = "ros-noetic-cob-linear-nav";
  version = "0.6.15-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_navigation-release/archive/release/noetic/cob_linear_nav/0.6.15-1.tar.gz";
    name = "0.6.15-1.tar.gz";
    sha256 = "f6aae4b360f63f541d35a6c6bdba68c84a02e2a1d0db08df367dfc4884d57885";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib angles cob-srvs geometry-msgs move-base-msgs nav-msgs roscpp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "cob_linear_nav provides a simple navigation instrument driving on a linear path from current position to goal without any planning or obstacle avoidance capabilites.
    Obstacle avoidance should be carried out in other package, e.g. <a href=\"http://ros.org/wiki/cob_collision_velocity_filter\">cob_collision_velocity_filter</a>.";
    license = with lib.licenses; [ asl20 ];
  };
}
