
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, moveit-simple-controller-manager }:
buildRosPackage {
  pname = "ros-humble-moveit-plugins";
  version = "2.5.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/humble/moveit_plugins/2.5.8-1.tar.gz";
    name = "2.5.8-1.tar.gz";
    sha256 = "58411342f51fe846db5c8b5d92e7bf803b3f6def3d41d86784a666f3580b6f11";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ moveit-simple-controller-manager ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Metapackage for MoveIt plugins.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
