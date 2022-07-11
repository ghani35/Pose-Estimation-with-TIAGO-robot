# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "dynamic_introspection: 5 messages, 0 services")

set(MSG_I_FLAGS "-Idynamic_introspection:/home/ghani/tiago_public_ws/src/dynamic_introspection/msg;-Ivisualization_msgs:/opt/ros/melodic/share/visualization_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(dynamic_introspection_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/IntrospectionMsg.msg" NAME_WE)
add_custom_target(_dynamic_introspection_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dynamic_introspection" "/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/IntrospectionMsg.msg" "visualization_msgs/Marker:std_msgs/ColorRGBA:dynamic_introspection/IntParameter:geometry_msgs/Vector3:dynamic_introspection/DoubleParameter:geometry_msgs/Pose:dynamic_introspection/BoolParameter:visualization_msgs/MarkerArray:std_msgs/Header:dynamic_introspection/MarkerParameter:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/BoolParameter.msg" NAME_WE)
add_custom_target(_dynamic_introspection_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dynamic_introspection" "/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/BoolParameter.msg" ""
)

get_filename_component(_filename "/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/DoubleParameter.msg" NAME_WE)
add_custom_target(_dynamic_introspection_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dynamic_introspection" "/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/DoubleParameter.msg" ""
)

get_filename_component(_filename "/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/MarkerParameter.msg" NAME_WE)
add_custom_target(_dynamic_introspection_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dynamic_introspection" "/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/MarkerParameter.msg" "visualization_msgs/Marker:std_msgs/ColorRGBA:geometry_msgs/Vector3:geometry_msgs/Pose:visualization_msgs/MarkerArray:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/IntParameter.msg" NAME_WE)
add_custom_target(_dynamic_introspection_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dynamic_introspection" "/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/IntParameter.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(dynamic_introspection
  "/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/IntParameter.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dynamic_introspection
)
_generate_msg_cpp(dynamic_introspection
  "/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/BoolParameter.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dynamic_introspection
)
_generate_msg_cpp(dynamic_introspection
  "/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/DoubleParameter.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dynamic_introspection
)
_generate_msg_cpp(dynamic_introspection
  "/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/MarkerParameter.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/visualization_msgs/cmake/../msg/MarkerArray.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dynamic_introspection
)
_generate_msg_cpp(dynamic_introspection
  "/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/IntrospectionMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/IntParameter.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/DoubleParameter.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/BoolParameter.msg;/opt/ros/melodic/share/visualization_msgs/cmake/../msg/MarkerArray.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/MarkerParameter.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dynamic_introspection
)

### Generating Services

### Generating Module File
_generate_module_cpp(dynamic_introspection
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dynamic_introspection
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(dynamic_introspection_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(dynamic_introspection_generate_messages dynamic_introspection_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/IntrospectionMsg.msg" NAME_WE)
add_dependencies(dynamic_introspection_generate_messages_cpp _dynamic_introspection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/BoolParameter.msg" NAME_WE)
add_dependencies(dynamic_introspection_generate_messages_cpp _dynamic_introspection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/DoubleParameter.msg" NAME_WE)
add_dependencies(dynamic_introspection_generate_messages_cpp _dynamic_introspection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/MarkerParameter.msg" NAME_WE)
add_dependencies(dynamic_introspection_generate_messages_cpp _dynamic_introspection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/IntParameter.msg" NAME_WE)
add_dependencies(dynamic_introspection_generate_messages_cpp _dynamic_introspection_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dynamic_introspection_gencpp)
add_dependencies(dynamic_introspection_gencpp dynamic_introspection_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dynamic_introspection_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(dynamic_introspection
  "/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/IntParameter.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dynamic_introspection
)
_generate_msg_eus(dynamic_introspection
  "/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/BoolParameter.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dynamic_introspection
)
_generate_msg_eus(dynamic_introspection
  "/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/DoubleParameter.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dynamic_introspection
)
_generate_msg_eus(dynamic_introspection
  "/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/MarkerParameter.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/visualization_msgs/cmake/../msg/MarkerArray.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dynamic_introspection
)
_generate_msg_eus(dynamic_introspection
  "/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/IntrospectionMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/IntParameter.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/DoubleParameter.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/BoolParameter.msg;/opt/ros/melodic/share/visualization_msgs/cmake/../msg/MarkerArray.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/MarkerParameter.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dynamic_introspection
)

### Generating Services

### Generating Module File
_generate_module_eus(dynamic_introspection
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dynamic_introspection
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(dynamic_introspection_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(dynamic_introspection_generate_messages dynamic_introspection_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/IntrospectionMsg.msg" NAME_WE)
add_dependencies(dynamic_introspection_generate_messages_eus _dynamic_introspection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/BoolParameter.msg" NAME_WE)
add_dependencies(dynamic_introspection_generate_messages_eus _dynamic_introspection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/DoubleParameter.msg" NAME_WE)
add_dependencies(dynamic_introspection_generate_messages_eus _dynamic_introspection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/MarkerParameter.msg" NAME_WE)
add_dependencies(dynamic_introspection_generate_messages_eus _dynamic_introspection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/IntParameter.msg" NAME_WE)
add_dependencies(dynamic_introspection_generate_messages_eus _dynamic_introspection_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dynamic_introspection_geneus)
add_dependencies(dynamic_introspection_geneus dynamic_introspection_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dynamic_introspection_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(dynamic_introspection
  "/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/IntParameter.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dynamic_introspection
)
_generate_msg_lisp(dynamic_introspection
  "/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/BoolParameter.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dynamic_introspection
)
_generate_msg_lisp(dynamic_introspection
  "/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/DoubleParameter.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dynamic_introspection
)
_generate_msg_lisp(dynamic_introspection
  "/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/MarkerParameter.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/visualization_msgs/cmake/../msg/MarkerArray.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dynamic_introspection
)
_generate_msg_lisp(dynamic_introspection
  "/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/IntrospectionMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/IntParameter.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/DoubleParameter.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/BoolParameter.msg;/opt/ros/melodic/share/visualization_msgs/cmake/../msg/MarkerArray.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/MarkerParameter.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dynamic_introspection
)

### Generating Services

### Generating Module File
_generate_module_lisp(dynamic_introspection
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dynamic_introspection
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(dynamic_introspection_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(dynamic_introspection_generate_messages dynamic_introspection_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/IntrospectionMsg.msg" NAME_WE)
add_dependencies(dynamic_introspection_generate_messages_lisp _dynamic_introspection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/BoolParameter.msg" NAME_WE)
add_dependencies(dynamic_introspection_generate_messages_lisp _dynamic_introspection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/DoubleParameter.msg" NAME_WE)
add_dependencies(dynamic_introspection_generate_messages_lisp _dynamic_introspection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/MarkerParameter.msg" NAME_WE)
add_dependencies(dynamic_introspection_generate_messages_lisp _dynamic_introspection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/IntParameter.msg" NAME_WE)
add_dependencies(dynamic_introspection_generate_messages_lisp _dynamic_introspection_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dynamic_introspection_genlisp)
add_dependencies(dynamic_introspection_genlisp dynamic_introspection_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dynamic_introspection_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(dynamic_introspection
  "/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/IntParameter.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dynamic_introspection
)
_generate_msg_nodejs(dynamic_introspection
  "/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/BoolParameter.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dynamic_introspection
)
_generate_msg_nodejs(dynamic_introspection
  "/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/DoubleParameter.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dynamic_introspection
)
_generate_msg_nodejs(dynamic_introspection
  "/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/MarkerParameter.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/visualization_msgs/cmake/../msg/MarkerArray.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dynamic_introspection
)
_generate_msg_nodejs(dynamic_introspection
  "/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/IntrospectionMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/IntParameter.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/DoubleParameter.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/BoolParameter.msg;/opt/ros/melodic/share/visualization_msgs/cmake/../msg/MarkerArray.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/MarkerParameter.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dynamic_introspection
)

### Generating Services

### Generating Module File
_generate_module_nodejs(dynamic_introspection
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dynamic_introspection
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(dynamic_introspection_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(dynamic_introspection_generate_messages dynamic_introspection_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/IntrospectionMsg.msg" NAME_WE)
add_dependencies(dynamic_introspection_generate_messages_nodejs _dynamic_introspection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/BoolParameter.msg" NAME_WE)
add_dependencies(dynamic_introspection_generate_messages_nodejs _dynamic_introspection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/DoubleParameter.msg" NAME_WE)
add_dependencies(dynamic_introspection_generate_messages_nodejs _dynamic_introspection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/MarkerParameter.msg" NAME_WE)
add_dependencies(dynamic_introspection_generate_messages_nodejs _dynamic_introspection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/IntParameter.msg" NAME_WE)
add_dependencies(dynamic_introspection_generate_messages_nodejs _dynamic_introspection_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dynamic_introspection_gennodejs)
add_dependencies(dynamic_introspection_gennodejs dynamic_introspection_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dynamic_introspection_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(dynamic_introspection
  "/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/IntParameter.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dynamic_introspection
)
_generate_msg_py(dynamic_introspection
  "/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/BoolParameter.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dynamic_introspection
)
_generate_msg_py(dynamic_introspection
  "/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/DoubleParameter.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dynamic_introspection
)
_generate_msg_py(dynamic_introspection
  "/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/MarkerParameter.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/visualization_msgs/cmake/../msg/MarkerArray.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dynamic_introspection
)
_generate_msg_py(dynamic_introspection
  "/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/IntrospectionMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/IntParameter.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/DoubleParameter.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/BoolParameter.msg;/opt/ros/melodic/share/visualization_msgs/cmake/../msg/MarkerArray.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/MarkerParameter.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dynamic_introspection
)

### Generating Services

### Generating Module File
_generate_module_py(dynamic_introspection
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dynamic_introspection
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(dynamic_introspection_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(dynamic_introspection_generate_messages dynamic_introspection_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/IntrospectionMsg.msg" NAME_WE)
add_dependencies(dynamic_introspection_generate_messages_py _dynamic_introspection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/BoolParameter.msg" NAME_WE)
add_dependencies(dynamic_introspection_generate_messages_py _dynamic_introspection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/DoubleParameter.msg" NAME_WE)
add_dependencies(dynamic_introspection_generate_messages_py _dynamic_introspection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/MarkerParameter.msg" NAME_WE)
add_dependencies(dynamic_introspection_generate_messages_py _dynamic_introspection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/src/dynamic_introspection/msg/IntParameter.msg" NAME_WE)
add_dependencies(dynamic_introspection_generate_messages_py _dynamic_introspection_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dynamic_introspection_genpy)
add_dependencies(dynamic_introspection_genpy dynamic_introspection_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dynamic_introspection_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dynamic_introspection)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dynamic_introspection
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET visualization_msgs_generate_messages_cpp)
  add_dependencies(dynamic_introspection_generate_messages_cpp visualization_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dynamic_introspection)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dynamic_introspection
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET visualization_msgs_generate_messages_eus)
  add_dependencies(dynamic_introspection_generate_messages_eus visualization_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dynamic_introspection)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dynamic_introspection
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET visualization_msgs_generate_messages_lisp)
  add_dependencies(dynamic_introspection_generate_messages_lisp visualization_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dynamic_introspection)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dynamic_introspection
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET visualization_msgs_generate_messages_nodejs)
  add_dependencies(dynamic_introspection_generate_messages_nodejs visualization_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dynamic_introspection)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dynamic_introspection\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dynamic_introspection
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET visualization_msgs_generate_messages_py)
  add_dependencies(dynamic_introspection_generate_messages_py visualization_msgs_generate_messages_py)
endif()
