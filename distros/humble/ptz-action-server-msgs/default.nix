
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-ptz-action-server-msgs";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/ptz_action_server-release/archive/release/humble/ptz_action_server_msgs/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "faa59a6ee6a7db721f6233d17dcde5bc9214d22bc4a39cc0a6403638a516413f";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-default-generators ];
  propagatedBuildInputs = [ action-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ rosidl-default-generators ];

  meta = {
    description = "Messages for controlling Pan-Tilt and Pan-Tilt-Zoom devices";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
