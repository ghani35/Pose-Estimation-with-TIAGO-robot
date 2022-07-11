# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "play_motion_msgs: 8 messages, 2 services")

set(MSG_I_FLAGS "-Iplay_motion_msgs:/home/ghani/tiago_public_ws/src/play_motion/play_motion_msgs/msg;-Iplay_motion_msgs:/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg;-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(play_motion_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionGoal.msg" NAME_WE)
add_custom_target(_play_motion_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "play_motion_msgs" "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionGoal.msg" ""
)

get_filename_component(_filename "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionAction.msg" NAME_WE)
add_custom_target(_play_motion_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "play_motion_msgs" "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionAction.msg" "actionlib_msgs/GoalID:play_motion_msgs/PlayMotionGoal:play_motion_msgs/PlayMotionFeedback:actionlib_msgs/GoalStatus:play_motion_msgs/PlayMotionActionFeedback:play_motion_msgs/PlayMotionResult:std_msgs/Header:play_motion_msgs/PlayMotionActionGoal:play_motion_msgs/PlayMotionActionResult"
)

get_filename_component(_filename "/home/ghani/tiago_public_ws/src/play_motion/play_motion_msgs/msg/MotionInfo.msg" NAME_WE)
add_custom_target(_play_motion_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "play_motion_msgs" "/home/ghani/tiago_public_ws/src/play_motion/play_motion_msgs/msg/MotionInfo.msg" ""
)

get_filename_component(_filename "/home/ghani/tiago_public_ws/src/play_motion/play_motion_msgs/srv/IsAlreadyThere.srv" NAME_WE)
add_custom_target(_play_motion_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "play_motion_msgs" "/home/ghani/tiago_public_ws/src/play_motion/play_motion_msgs/srv/IsAlreadyThere.srv" ""
)

get_filename_component(_filename "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionActionFeedback.msg" NAME_WE)
add_custom_target(_play_motion_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "play_motion_msgs" "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionActionFeedback.msg" "actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:play_motion_msgs/PlayMotionFeedback:std_msgs/Header"
)

get_filename_component(_filename "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionFeedback.msg" NAME_WE)
add_custom_target(_play_motion_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "play_motion_msgs" "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionFeedback.msg" ""
)

get_filename_component(_filename "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionActionGoal.msg" NAME_WE)
add_custom_target(_play_motion_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "play_motion_msgs" "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionActionGoal.msg" "actionlib_msgs/GoalID:play_motion_msgs/PlayMotionGoal:std_msgs/Header"
)

get_filename_component(_filename "/home/ghani/tiago_public_ws/src/play_motion/play_motion_msgs/srv/ListMotions.srv" NAME_WE)
add_custom_target(_play_motion_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "play_motion_msgs" "/home/ghani/tiago_public_ws/src/play_motion/play_motion_msgs/srv/ListMotions.srv" "play_motion_msgs/MotionInfo"
)

get_filename_component(_filename "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionResult.msg" NAME_WE)
add_custom_target(_play_motion_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "play_motion_msgs" "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionResult.msg" ""
)

get_filename_component(_filename "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionActionResult.msg" NAME_WE)
add_custom_target(_play_motion_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "play_motion_msgs" "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionActionResult.msg" "actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:play_motion_msgs/PlayMotionResult:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(play_motion_msgs
  "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/play_motion_msgs
)
_generate_msg_cpp(play_motion_msgs
  "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionGoal.msg;/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionActionFeedback.msg;/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionActionGoal.msg;/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/play_motion_msgs
)
_generate_msg_cpp(play_motion_msgs
  "/home/ghani/tiago_public_ws/src/play_motion/play_motion_msgs/msg/MotionInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/play_motion_msgs
)
_generate_msg_cpp(play_motion_msgs
  "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/play_motion_msgs
)
_generate_msg_cpp(play_motion_msgs
  "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/play_motion_msgs
)
_generate_msg_cpp(play_motion_msgs
  "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/play_motion_msgs
)
_generate_msg_cpp(play_motion_msgs
  "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/play_motion_msgs
)
_generate_msg_cpp(play_motion_msgs
  "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/play_motion_msgs
)

### Generating Services
_generate_srv_cpp(play_motion_msgs
  "/home/ghani/tiago_public_ws/src/play_motion/play_motion_msgs/srv/ListMotions.srv"
  "${MSG_I_FLAGS}"
  "/home/ghani/tiago_public_ws/src/play_motion/play_motion_msgs/msg/MotionInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/play_motion_msgs
)
_generate_srv_cpp(play_motion_msgs
  "/home/ghani/tiago_public_ws/src/play_motion/play_motion_msgs/srv/IsAlreadyThere.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/play_motion_msgs
)

### Generating Module File
_generate_module_cpp(play_motion_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/play_motion_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(play_motion_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(play_motion_msgs_generate_messages play_motion_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionGoal.msg" NAME_WE)
add_dependencies(play_motion_msgs_generate_messages_cpp _play_motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionAction.msg" NAME_WE)
add_dependencies(play_motion_msgs_generate_messages_cpp _play_motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/src/play_motion/play_motion_msgs/msg/MotionInfo.msg" NAME_WE)
add_dependencies(play_motion_msgs_generate_messages_cpp _play_motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/src/play_motion/play_motion_msgs/srv/IsAlreadyThere.srv" NAME_WE)
add_dependencies(play_motion_msgs_generate_messages_cpp _play_motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionActionFeedback.msg" NAME_WE)
add_dependencies(play_motion_msgs_generate_messages_cpp _play_motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionFeedback.msg" NAME_WE)
add_dependencies(play_motion_msgs_generate_messages_cpp _play_motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionActionGoal.msg" NAME_WE)
add_dependencies(play_motion_msgs_generate_messages_cpp _play_motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/src/play_motion/play_motion_msgs/srv/ListMotions.srv" NAME_WE)
add_dependencies(play_motion_msgs_generate_messages_cpp _play_motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionResult.msg" NAME_WE)
add_dependencies(play_motion_msgs_generate_messages_cpp _play_motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionActionResult.msg" NAME_WE)
add_dependencies(play_motion_msgs_generate_messages_cpp _play_motion_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(play_motion_msgs_gencpp)
add_dependencies(play_motion_msgs_gencpp play_motion_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS play_motion_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(play_motion_msgs
  "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/play_motion_msgs
)
_generate_msg_eus(play_motion_msgs
  "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionGoal.msg;/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionActionFeedback.msg;/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionActionGoal.msg;/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/play_motion_msgs
)
_generate_msg_eus(play_motion_msgs
  "/home/ghani/tiago_public_ws/src/play_motion/play_motion_msgs/msg/MotionInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/play_motion_msgs
)
_generate_msg_eus(play_motion_msgs
  "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/play_motion_msgs
)
_generate_msg_eus(play_motion_msgs
  "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/play_motion_msgs
)
_generate_msg_eus(play_motion_msgs
  "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/play_motion_msgs
)
_generate_msg_eus(play_motion_msgs
  "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/play_motion_msgs
)
_generate_msg_eus(play_motion_msgs
  "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/play_motion_msgs
)

### Generating Services
_generate_srv_eus(play_motion_msgs
  "/home/ghani/tiago_public_ws/src/play_motion/play_motion_msgs/srv/ListMotions.srv"
  "${MSG_I_FLAGS}"
  "/home/ghani/tiago_public_ws/src/play_motion/play_motion_msgs/msg/MotionInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/play_motion_msgs
)
_generate_srv_eus(play_motion_msgs
  "/home/ghani/tiago_public_ws/src/play_motion/play_motion_msgs/srv/IsAlreadyThere.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/play_motion_msgs
)

### Generating Module File
_generate_module_eus(play_motion_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/play_motion_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(play_motion_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(play_motion_msgs_generate_messages play_motion_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionGoal.msg" NAME_WE)
add_dependencies(play_motion_msgs_generate_messages_eus _play_motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionAction.msg" NAME_WE)
add_dependencies(play_motion_msgs_generate_messages_eus _play_motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/src/play_motion/play_motion_msgs/msg/MotionInfo.msg" NAME_WE)
add_dependencies(play_motion_msgs_generate_messages_eus _play_motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/src/play_motion/play_motion_msgs/srv/IsAlreadyThere.srv" NAME_WE)
add_dependencies(play_motion_msgs_generate_messages_eus _play_motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionActionFeedback.msg" NAME_WE)
add_dependencies(play_motion_msgs_generate_messages_eus _play_motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionFeedback.msg" NAME_WE)
add_dependencies(play_motion_msgs_generate_messages_eus _play_motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionActionGoal.msg" NAME_WE)
add_dependencies(play_motion_msgs_generate_messages_eus _play_motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/src/play_motion/play_motion_msgs/srv/ListMotions.srv" NAME_WE)
add_dependencies(play_motion_msgs_generate_messages_eus _play_motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionResult.msg" NAME_WE)
add_dependencies(play_motion_msgs_generate_messages_eus _play_motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionActionResult.msg" NAME_WE)
add_dependencies(play_motion_msgs_generate_messages_eus _play_motion_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(play_motion_msgs_geneus)
add_dependencies(play_motion_msgs_geneus play_motion_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS play_motion_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(play_motion_msgs
  "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/play_motion_msgs
)
_generate_msg_lisp(play_motion_msgs
  "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionGoal.msg;/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionActionFeedback.msg;/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionActionGoal.msg;/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/play_motion_msgs
)
_generate_msg_lisp(play_motion_msgs
  "/home/ghani/tiago_public_ws/src/play_motion/play_motion_msgs/msg/MotionInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/play_motion_msgs
)
_generate_msg_lisp(play_motion_msgs
  "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/play_motion_msgs
)
_generate_msg_lisp(play_motion_msgs
  "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/play_motion_msgs
)
_generate_msg_lisp(play_motion_msgs
  "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/play_motion_msgs
)
_generate_msg_lisp(play_motion_msgs
  "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/play_motion_msgs
)
_generate_msg_lisp(play_motion_msgs
  "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/play_motion_msgs
)

### Generating Services
_generate_srv_lisp(play_motion_msgs
  "/home/ghani/tiago_public_ws/src/play_motion/play_motion_msgs/srv/ListMotions.srv"
  "${MSG_I_FLAGS}"
  "/home/ghani/tiago_public_ws/src/play_motion/play_motion_msgs/msg/MotionInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/play_motion_msgs
)
_generate_srv_lisp(play_motion_msgs
  "/home/ghani/tiago_public_ws/src/play_motion/play_motion_msgs/srv/IsAlreadyThere.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/play_motion_msgs
)

### Generating Module File
_generate_module_lisp(play_motion_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/play_motion_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(play_motion_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(play_motion_msgs_generate_messages play_motion_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionGoal.msg" NAME_WE)
add_dependencies(play_motion_msgs_generate_messages_lisp _play_motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionAction.msg" NAME_WE)
add_dependencies(play_motion_msgs_generate_messages_lisp _play_motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/src/play_motion/play_motion_msgs/msg/MotionInfo.msg" NAME_WE)
add_dependencies(play_motion_msgs_generate_messages_lisp _play_motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/src/play_motion/play_motion_msgs/srv/IsAlreadyThere.srv" NAME_WE)
add_dependencies(play_motion_msgs_generate_messages_lisp _play_motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionActionFeedback.msg" NAME_WE)
add_dependencies(play_motion_msgs_generate_messages_lisp _play_motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionFeedback.msg" NAME_WE)
add_dependencies(play_motion_msgs_generate_messages_lisp _play_motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionActionGoal.msg" NAME_WE)
add_dependencies(play_motion_msgs_generate_messages_lisp _play_motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/src/play_motion/play_motion_msgs/srv/ListMotions.srv" NAME_WE)
add_dependencies(play_motion_msgs_generate_messages_lisp _play_motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionResult.msg" NAME_WE)
add_dependencies(play_motion_msgs_generate_messages_lisp _play_motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionActionResult.msg" NAME_WE)
add_dependencies(play_motion_msgs_generate_messages_lisp _play_motion_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(play_motion_msgs_genlisp)
add_dependencies(play_motion_msgs_genlisp play_motion_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS play_motion_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(play_motion_msgs
  "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/play_motion_msgs
)
_generate_msg_nodejs(play_motion_msgs
  "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionGoal.msg;/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionActionFeedback.msg;/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionActionGoal.msg;/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/play_motion_msgs
)
_generate_msg_nodejs(play_motion_msgs
  "/home/ghani/tiago_public_ws/src/play_motion/play_motion_msgs/msg/MotionInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/play_motion_msgs
)
_generate_msg_nodejs(play_motion_msgs
  "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/play_motion_msgs
)
_generate_msg_nodejs(play_motion_msgs
  "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/play_motion_msgs
)
_generate_msg_nodejs(play_motion_msgs
  "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/play_motion_msgs
)
_generate_msg_nodejs(play_motion_msgs
  "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/play_motion_msgs
)
_generate_msg_nodejs(play_motion_msgs
  "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/play_motion_msgs
)

### Generating Services
_generate_srv_nodejs(play_motion_msgs
  "/home/ghani/tiago_public_ws/src/play_motion/play_motion_msgs/srv/ListMotions.srv"
  "${MSG_I_FLAGS}"
  "/home/ghani/tiago_public_ws/src/play_motion/play_motion_msgs/msg/MotionInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/play_motion_msgs
)
_generate_srv_nodejs(play_motion_msgs
  "/home/ghani/tiago_public_ws/src/play_motion/play_motion_msgs/srv/IsAlreadyThere.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/play_motion_msgs
)

### Generating Module File
_generate_module_nodejs(play_motion_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/play_motion_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(play_motion_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(play_motion_msgs_generate_messages play_motion_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionGoal.msg" NAME_WE)
add_dependencies(play_motion_msgs_generate_messages_nodejs _play_motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionAction.msg" NAME_WE)
add_dependencies(play_motion_msgs_generate_messages_nodejs _play_motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/src/play_motion/play_motion_msgs/msg/MotionInfo.msg" NAME_WE)
add_dependencies(play_motion_msgs_generate_messages_nodejs _play_motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/src/play_motion/play_motion_msgs/srv/IsAlreadyThere.srv" NAME_WE)
add_dependencies(play_motion_msgs_generate_messages_nodejs _play_motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionActionFeedback.msg" NAME_WE)
add_dependencies(play_motion_msgs_generate_messages_nodejs _play_motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionFeedback.msg" NAME_WE)
add_dependencies(play_motion_msgs_generate_messages_nodejs _play_motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionActionGoal.msg" NAME_WE)
add_dependencies(play_motion_msgs_generate_messages_nodejs _play_motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/src/play_motion/play_motion_msgs/srv/ListMotions.srv" NAME_WE)
add_dependencies(play_motion_msgs_generate_messages_nodejs _play_motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionResult.msg" NAME_WE)
add_dependencies(play_motion_msgs_generate_messages_nodejs _play_motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionActionResult.msg" NAME_WE)
add_dependencies(play_motion_msgs_generate_messages_nodejs _play_motion_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(play_motion_msgs_gennodejs)
add_dependencies(play_motion_msgs_gennodejs play_motion_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS play_motion_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(play_motion_msgs
  "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/play_motion_msgs
)
_generate_msg_py(play_motion_msgs
  "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionGoal.msg;/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionActionFeedback.msg;/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionActionGoal.msg;/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/play_motion_msgs
)
_generate_msg_py(play_motion_msgs
  "/home/ghani/tiago_public_ws/src/play_motion/play_motion_msgs/msg/MotionInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/play_motion_msgs
)
_generate_msg_py(play_motion_msgs
  "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/play_motion_msgs
)
_generate_msg_py(play_motion_msgs
  "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/play_motion_msgs
)
_generate_msg_py(play_motion_msgs
  "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/play_motion_msgs
)
_generate_msg_py(play_motion_msgs
  "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/play_motion_msgs
)
_generate_msg_py(play_motion_msgs
  "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/play_motion_msgs
)

### Generating Services
_generate_srv_py(play_motion_msgs
  "/home/ghani/tiago_public_ws/src/play_motion/play_motion_msgs/srv/ListMotions.srv"
  "${MSG_I_FLAGS}"
  "/home/ghani/tiago_public_ws/src/play_motion/play_motion_msgs/msg/MotionInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/play_motion_msgs
)
_generate_srv_py(play_motion_msgs
  "/home/ghani/tiago_public_ws/src/play_motion/play_motion_msgs/srv/IsAlreadyThere.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/play_motion_msgs
)

### Generating Module File
_generate_module_py(play_motion_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/play_motion_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(play_motion_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(play_motion_msgs_generate_messages play_motion_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionGoal.msg" NAME_WE)
add_dependencies(play_motion_msgs_generate_messages_py _play_motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionAction.msg" NAME_WE)
add_dependencies(play_motion_msgs_generate_messages_py _play_motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/src/play_motion/play_motion_msgs/msg/MotionInfo.msg" NAME_WE)
add_dependencies(play_motion_msgs_generate_messages_py _play_motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/src/play_motion/play_motion_msgs/srv/IsAlreadyThere.srv" NAME_WE)
add_dependencies(play_motion_msgs_generate_messages_py _play_motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionActionFeedback.msg" NAME_WE)
add_dependencies(play_motion_msgs_generate_messages_py _play_motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionFeedback.msg" NAME_WE)
add_dependencies(play_motion_msgs_generate_messages_py _play_motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionActionGoal.msg" NAME_WE)
add_dependencies(play_motion_msgs_generate_messages_py _play_motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/src/play_motion/play_motion_msgs/srv/ListMotions.srv" NAME_WE)
add_dependencies(play_motion_msgs_generate_messages_py _play_motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionResult.msg" NAME_WE)
add_dependencies(play_motion_msgs_generate_messages_py _play_motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ghani/tiago_public_ws/devel/.private/play_motion_msgs/share/play_motion_msgs/msg/PlayMotionActionResult.msg" NAME_WE)
add_dependencies(play_motion_msgs_generate_messages_py _play_motion_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(play_motion_msgs_genpy)
add_dependencies(play_motion_msgs_genpy play_motion_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS play_motion_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/play_motion_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/play_motion_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(play_motion_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/play_motion_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/play_motion_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(play_motion_msgs_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/play_motion_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/play_motion_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(play_motion_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/play_motion_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/play_motion_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(play_motion_msgs_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/play_motion_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/play_motion_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/play_motion_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(play_motion_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
