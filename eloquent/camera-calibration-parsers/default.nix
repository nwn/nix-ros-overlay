
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, yaml-cpp-vendor, ament-cmake-ros, ament-lint-common, ament-lint-auto, rclcpp, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-eloquent-camera-calibration-parsers";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_common-release/archive/release/eloquent/camera_calibration_parsers/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "24eea1fa9b673ddf21010c78cd6051dbe3898636a2ce578067e4c45cd5088ea5";
  };

  buildType = "ament_cmake";
  buildInputs = [ sensor-msgs yaml-cpp-vendor rclcpp ];
  checkInputs = [ ament-lint-common ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ sensor-msgs yaml-cpp-vendor rclcpp ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''camera_calibration_parsers contains routines for reading and writing camera calibration parameters.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}