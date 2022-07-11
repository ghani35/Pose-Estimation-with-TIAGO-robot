# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "realtime_tools;hardware_interface;pluginlib;controller_interface;sensor_msgs;pal_hardware_interfaces".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-ltemperature_sensor_controller".split(';') if "-ltemperature_sensor_controller" != "" else []
PROJECT_NAME = "temperature_sensor_controller"
PROJECT_SPACE_DIR = "/home/ghani/tiago_public_ws/install"
PROJECT_VERSION = "0.4.6"
