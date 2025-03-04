
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, flexbe-core, flexbe-input, flexbe-mirror, flexbe-msgs, flexbe-onboard, flexbe-states, flexbe-testing, flexbe-widget }:
buildRosPackage {
  pname = "ros-humble-flexbe-behavior-engine";
  version = "2.3.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/flexbe_behavior_engine-release/archive/release/humble/flexbe_behavior_engine/2.3.5-1.tar.gz";
    name = "2.3.5-1.tar.gz";
    sha256 = "fa67872c2495eca26ceff1f13e1bf379325dead22202f207525445a5db869dce";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ flexbe-core flexbe-input flexbe-mirror flexbe-msgs flexbe-onboard flexbe-states flexbe-testing flexbe-widget ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A meta-package to aggregate all the FlexBE packages";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
