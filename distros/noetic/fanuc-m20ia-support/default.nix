
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fanuc-driver, fanuc-resources, industrial-robot-client, joint-state-publisher-gui, robot-state-publisher, roslaunch, rviz, xacro }:
buildRosPackage {
  pname = "ros-noetic-fanuc-m20ia-support";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/fanuc-release/archive/release/noetic/fanuc_m20ia_support/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "2ff5a4b59c7e8442a44ad28c01dfefb6cbb4d1dd2a6d36b2da071cd2a53eab09";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ fanuc-driver fanuc-resources industrial-robot-client joint-state-publisher-gui robot-state-publisher rviz xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "<p>
      ROS-Industrial support for the Fanuc M-20iA / ARC Mate 120iC (and variants).
    </p>
    <p>
      This package contains configuration data, 3D models and launch files
      for Fanuc M-20iA / ARC Mate 120iC manipulators. This currently includes
      the base model and /10L.
    </p>
    <p><b>Specifications</b>:</p>
    <ul>
      <li>M-20iA - &quot;Cable integrated J3 Arm&quot;</li>
      <li>M-20iA/10L - &quot;Cable integrated J3 Arm&quot;</li>
    </ul>
    <p>
      Joint limits and maximum joint velocities are based on the information in
      the <em>FANUC Robot ARC Mate 120iC, FANUC Robot M-20iA Mechanical Unit
      Operator's Manual</em> version <em>B-82874EN/06</em>. All urdfs are based
      on the default motion and joint velocity limits, unless noted otherwise
      (ie: no support for high speed joints, extended / limited motion ranges
      or other options).
    </p>
    <p>
      Before using any of the configuration files and / or meshes included
      in this package, be sure to check they are correct for the particular
      robot model and configuration you intend to use them with.
    </p>
    <p><b>Contributors</b>:</p>
    <p>
      This support package has received contributions from: Joe Spanier (M-20iA/10L).
    </p>";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
