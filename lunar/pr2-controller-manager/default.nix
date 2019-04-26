
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-mechanism-msgs, pr2-hardware-interface, pluginlib, pr2-description, cmake-modules, pr2-controller-interface, pr2-mechanism-diagnostics, realtime-tools, catkin, sensor-msgs, rosparam, rostest, rospy, diagnostic-msgs, roscpp, pr2-mechanism-model }:
buildRosPackage {
  pname = "ros-lunar-pr2-controller-manager";
  version = "1.8.18";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_mechanism-release/archive/release/lunar/pr2_controller_manager/1.8.18-0.tar.gz;
    sha256 = "d5bc6ee60f01c74b379dfce4627189d28feaf284104990446ad9d9da37e35b67";
  };

  buildInputs = [ pr2-mechanism-msgs pr2-hardware-interface pluginlib cmake-modules pr2-controller-interface pr2-mechanism-diagnostics realtime-tools sensor-msgs pr2-description rostest diagnostic-msgs roscpp pr2-mechanism-model ];
  propagatedBuildInputs = [ pr2-mechanism-msgs pr2-hardware-interface pluginlib pr2-controller-interface pr2-description pr2-mechanism-diagnostics realtime-tools rosparam sensor-msgs rospy diagnostic-msgs roscpp pr2-mechanism-model ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The controller manager (CM) package provides the infrastructure to run controllers in a hard realtime loop.'';
    #license = lib.licenses.BSD;
  };
}