
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cpp-common, message-generation, message-runtime, pkg-config, rosconsole, roscpp-serialization, roscpp-traits, rosgraph-msgs, roslang, rostime, std-msgs, xmlrpcpp }:
buildRosPackage {
  pname = "ros-noetic-roscpp";
  version = "1.17.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/roscpp/1.17.0-1.tar.gz";
    name = "1.17.0-1.tar.gz";
    sha256 = "534b45dd2132523dd2ff52d9611eab5d545fff3b87997c9f7aaa301d15d2e73c";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation pkg-config roslang ];
  propagatedBuildInputs = [ boost cpp-common message-runtime rosconsole roscpp-serialization roscpp-traits rosgraph-msgs rostime std-msgs xmlrpcpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "roscpp is a C++ implementation of ROS. It provides
    a <a href=\"http://wiki.ros.org/Client%20Libraries\">client
    library</a> that enables C++ programmers to quickly interface with
    ROS <a href=\"http://ros.org/wiki/Topics\">Topics</a>,
    <a href=\"http://ros.org/wiki/Services\">Services</a>,
    and <a href=\"http://ros.org/wiki/Parameter Server\">Parameters</a>.

    roscpp is the most widely used ROS client library and is designed to
    be the high-performance library for ROS.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
