
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-cob-srvs";
  version = "2.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_common-release/archive/release/humble/cob_srvs/2.7.9-1.tar.gz";
    name = "2.7.9-1.tar.gz";
    sha256 = "80f9372180b3d1bca14f9d1ddc175a6e02e7181774b37468acdac33ae43995d8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''This Package contains Care-O-bot specific service definitions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
