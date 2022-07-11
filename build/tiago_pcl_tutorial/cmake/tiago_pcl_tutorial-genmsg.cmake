# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "tiago_pcl_tutorial: 1 messages, 0 services")

set(MSG_I_FLAGS "-Itiago_pcl_tutorial:/home/ghani/tiago_public_ws/src/tiago_tutorials/tiago_pcl_tutorial/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(tiago_pcl_tutorial_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ghani/tiago_public_ws/src/tiago_tutorials/tiago_pcl_tutorial/msg/PlaneCoefficients.msg" NAME_WE)
add_custom_target(_tiago_pcl_tutorial_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tiago_pcl_tutorial" "/home/ghani/tiago_public_ws/src/tiago_tutorials/tiago_pcl_tutorial/msg/PlaneCoefficients.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(tiago_pcl_tutorial
  "/home/ghani/tiago_public_ws/src/tiago_tutorials/tiago_pcl_tutorial/msg/PlaneCoefficients.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tiago_pcl_tutorial
)

### Generating Services

### Generating Module File
_generate_module_cpp(tiago_pcl_tutorial
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tiago_pcl_tutorial
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(tiago_pcl_tutorial_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(tiago_pcl_tutorial_generate_messages tiago_pcl_tutorial_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ghani/tiago_public_ws/src/tiago_tutorials/tiago_pcl_tutorial/msg/PlaneCoefficients.msg" NAME_WE)
add_dependencies(tiago_pcl_tutorial_generate_messages_cpp _tiago_pcl_tutorial_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tiago_pcl_tutorial_gencpp)
add_dependencies(tiago_pcl_tutorial_gencpp tiago_pcl_tutorial_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tiago_pcl_tutorial_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(tiago_pcl_tutorial
  "/home/ghani/tiago_public_ws/src/tiago_tutorials/tiago_pcl_tutorial/msg/PlaneCoefficients.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tiago_pcl_tutorial
)

### Generating Services

### Generating Module File
_generate_module_eus(tiago_pcl_tutorial
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tiago_pcl_tutorial
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(tiago_pcl_tutorial_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(tiago_pcl_tutorial_generate_messages tiago_pcl_tutorial_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ghani/tiago_public_ws/src/tiago_tutorials/tiago_pcl_tutorial/msg/PlaneCoefficients.msg" NAME_WE)
add_dependencies(tiago_pcl_tutorial_generate_messages_eus _tiago_pcl_tutorial_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tiago_pcl_tutorial_geneus)
add_dependencies(tiago_pcl_tutorial_geneus tiago_pcl_tutorial_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tiago_pcl_tutorial_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(tiago_pcl_tutorial
  "/home/ghani/tiago_public_ws/src/tiago_tutorials/tiago_pcl_tutorial/msg/PlaneCoefficients.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tiago_pcl_tutorial
)

### Generating Services

### Generating Module File
_generate_module_lisp(tiago_pcl_tutorial
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tiago_pcl_tutorial
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(tiago_pcl_tutorial_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(tiago_pcl_tutorial_generate_messages tiago_pcl_tutorial_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ghani/tiago_public_ws/src/tiago_tutorials/tiago_pcl_tutorial/msg/PlaneCoefficients.msg" NAME_WE)
add_dependencies(tiago_pcl_tutorial_generate_messages_lisp _tiago_pcl_tutorial_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tiago_pcl_tutorial_genlisp)
add_dependencies(tiago_pcl_tutorial_genlisp tiago_pcl_tutorial_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tiago_pcl_tutorial_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(tiago_pcl_tutorial
  "/home/ghani/tiago_public_ws/src/tiago_tutorials/tiago_pcl_tutorial/msg/PlaneCoefficients.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tiago_pcl_tutorial
)

### Generating Services

### Generating Module File
_generate_module_nodejs(tiago_pcl_tutorial
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tiago_pcl_tutorial
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(tiago_pcl_tutorial_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(tiago_pcl_tutorial_generate_messages tiago_pcl_tutorial_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ghani/tiago_public_ws/src/tiago_tutorials/tiago_pcl_tutorial/msg/PlaneCoefficients.msg" NAME_WE)
add_dependencies(tiago_pcl_tutorial_generate_messages_nodejs _tiago_pcl_tutorial_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tiago_pcl_tutorial_gennodejs)
add_dependencies(tiago_pcl_tutorial_gennodejs tiago_pcl_tutorial_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tiago_pcl_tutorial_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(tiago_pcl_tutorial
  "/home/ghani/tiago_public_ws/src/tiago_tutorials/tiago_pcl_tutorial/msg/PlaneCoefficients.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tiago_pcl_tutorial
)

### Generating Services

### Generating Module File
_generate_module_py(tiago_pcl_tutorial
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tiago_pcl_tutorial
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(tiago_pcl_tutorial_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(tiago_pcl_tutorial_generate_messages tiago_pcl_tutorial_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ghani/tiago_public_ws/src/tiago_tutorials/tiago_pcl_tutorial/msg/PlaneCoefficients.msg" NAME_WE)
add_dependencies(tiago_pcl_tutorial_generate_messages_py _tiago_pcl_tutorial_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tiago_pcl_tutorial_genpy)
add_dependencies(tiago_pcl_tutorial_genpy tiago_pcl_tutorial_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tiago_pcl_tutorial_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tiago_pcl_tutorial)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tiago_pcl_tutorial
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(tiago_pcl_tutorial_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tiago_pcl_tutorial)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tiago_pcl_tutorial
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(tiago_pcl_tutorial_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tiago_pcl_tutorial)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tiago_pcl_tutorial
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(tiago_pcl_tutorial_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tiago_pcl_tutorial)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tiago_pcl_tutorial
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(tiago_pcl_tutorial_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tiago_pcl_tutorial)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tiago_pcl_tutorial\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tiago_pcl_tutorial
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(tiago_pcl_tutorial_generate_messages_py std_msgs_generate_messages_py)
endif()
