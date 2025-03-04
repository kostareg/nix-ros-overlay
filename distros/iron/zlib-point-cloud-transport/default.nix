
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, pluginlib, point-cloud-interfaces, point-cloud-transport, rclcpp, zlib }:
buildRosPackage {
  pname = "ros-iron-zlib-point-cloud-transport";
  version = "2.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport_plugins-release/archive/release/iron/zlib_point_cloud_transport/2.0.5-1.tar.gz";
    name = "2.0.5-1.tar.gz";
    sha256 = "1b0b28d0135a868b7e9b37de2d4df32370eae4b3f2f0fbdf19f524260ce458bb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ pluginlib point-cloud-interfaces point-cloud-transport rclcpp zlib ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "zlib_point_cloud_transport provides a plugin to point_cloud_transport for sending point clouds
    encoded with zlib";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
