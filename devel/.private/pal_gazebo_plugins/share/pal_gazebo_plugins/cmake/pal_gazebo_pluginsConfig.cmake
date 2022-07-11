# generated from catkin/cmake/template/pkgConfig.cmake.in

# append elements to a list and remove existing duplicates from the list
# copied from catkin/cmake/list_append_deduplicate.cmake to keep pkgConfig
# self contained
macro(_list_append_deduplicate listname)
  if(NOT "${ARGN}" STREQUAL "")
    if(${listname})
      list(REMOVE_ITEM ${listname} ${ARGN})
    endif()
    list(APPEND ${listname} ${ARGN})
  endif()
endmacro()

# append elements to a list if they are not already in the list
# copied from catkin/cmake/list_append_unique.cmake to keep pkgConfig
# self contained
macro(_list_append_unique listname)
  foreach(_item ${ARGN})
    list(FIND ${listname} ${_item} _index)
    if(_index EQUAL -1)
      list(APPEND ${listname} ${_item})
    endif()
  endforeach()
endmacro()

# pack a list of libraries with optional build configuration keywords
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_pack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  set(_argn ${ARGN})
  list(LENGTH _argn _count)
  set(_index 0)
  while(${_index} LESS ${_count})
    list(GET _argn ${_index} lib)
    if("${lib}" MATCHES "^(debug|optimized|general)$")
      math(EXPR _index "${_index} + 1")
      if(${_index} EQUAL ${_count})
        message(FATAL_ERROR "_pack_libraries_with_build_configuration() the list of libraries '${ARGN}' ends with '${lib}' which is a build configuration keyword and must be followed by a library")
      endif()
      list(GET _argn ${_index} library)
      list(APPEND ${VAR} "${lib}${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}${library}")
    else()
      list(APPEND ${VAR} "${lib}")
    endif()
    math(EXPR _index "${_index} + 1")
  endwhile()
endmacro()

# unpack a list of libraries with optional build configuration keyword prefixes
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_unpack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  foreach(lib ${ARGN})
    string(REGEX REPLACE "^(debug|optimized|general)${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}(.+)$" "\\1;\\2" lib "${lib}")
    list(APPEND ${VAR} "${lib}")
  endforeach()
endmacro()


if(pal_gazebo_plugins_CONFIG_INCLUDED)
  return()
endif()
set(pal_gazebo_plugins_CONFIG_INCLUDED TRUE)

# set variables for source/devel/install prefixes
if("TRUE" STREQUAL "TRUE")
  set(pal_gazebo_plugins_SOURCE_PREFIX /home/ghani/tiago_public_ws/src/pal_gazebo_plugins)
  set(pal_gazebo_plugins_DEVEL_PREFIX /home/ghani/tiago_public_ws/devel/.private/pal_gazebo_plugins)
  set(pal_gazebo_plugins_INSTALL_PREFIX "")
  set(pal_gazebo_plugins_PREFIX ${pal_gazebo_plugins_DEVEL_PREFIX})
else()
  set(pal_gazebo_plugins_SOURCE_PREFIX "")
  set(pal_gazebo_plugins_DEVEL_PREFIX "")
  set(pal_gazebo_plugins_INSTALL_PREFIX /home/ghani/tiago_public_ws/install)
  set(pal_gazebo_plugins_PREFIX ${pal_gazebo_plugins_INSTALL_PREFIX})
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "WARNING: package 'pal_gazebo_plugins' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  message("${_msg}")
endif()

# flag project as catkin-based to distinguish if a find_package()-ed project is a catkin project
set(pal_gazebo_plugins_FOUND_CATKIN_PROJECT TRUE)

if(NOT "/home/ghani/tiago_public_ws/src/pal_gazebo_plugins/include;/usr/include;/usr/include/gazebo-9;/usr/include/bullet;/usr/include/simbody;/usr/include/sdformat-6.0;/usr/include/ignition/math4;/usr/include/OGRE/;/usr/include/OGRE/Terrain/;/usr/include/OGRE/Paging/;/usr/include/ignition/transport4;/usr/include/ignition/msgs1;/usr/include/ignition/common1;/usr/include/ignition/fuel_tools1 " STREQUAL " ")
  set(pal_gazebo_plugins_INCLUDE_DIRS "")
  set(_include_dirs "/home/ghani/tiago_public_ws/src/pal_gazebo_plugins/include;/usr/include;/usr/include/gazebo-9;/usr/include/bullet;/usr/include/simbody;/usr/include/sdformat-6.0;/usr/include/ignition/math4;/usr/include/OGRE/;/usr/include/OGRE/Terrain/;/usr/include/OGRE/Paging/;/usr/include/ignition/transport4;/usr/include/ignition/msgs1;/usr/include/ignition/common1;/usr/include/ignition/fuel_tools1")
  if(NOT " " STREQUAL " ")
    set(_report "Check the issue tracker '' and consider creating a ticket if the problem has not been reported yet.")
  elseif(NOT " " STREQUAL " ")
    set(_report "Check the website '' for information and consider reporting the problem.")
  else()
    set(_report "Report the problem to the maintainer 'Adolfo Rodriguez Tsouroukdissian <adolfo.rodriguez@pal-robotics.com>, Luca Marchionni <luca.marchionni@pal-robotics.com>' and request to fix the problem.")
  endif()
  foreach(idir ${_include_dirs})
    if(IS_ABSOLUTE ${idir} AND IS_DIRECTORY ${idir})
      set(include ${idir})
    elseif("${idir} " STREQUAL "include ")
      get_filename_component(include "${pal_gazebo_plugins_DIR}/../../../include" ABSOLUTE)
      if(NOT IS_DIRECTORY ${include})
        message(FATAL_ERROR "Project 'pal_gazebo_plugins' specifies '${idir}' as an include dir, which is not found.  It does not exist in '${include}'.  ${_report}")
      endif()
    else()
      message(FATAL_ERROR "Project 'pal_gazebo_plugins' specifies '${idir}' as an include dir, which is not found.  It does neither exist as an absolute directory nor in '/home/ghani/tiago_public_ws/src/pal_gazebo_plugins/${idir}'.  ${_report}")
    endif()
    _list_append_unique(pal_gazebo_plugins_INCLUDE_DIRS ${include})
  endforeach()
endif()

set(libraries "gazebo_ros_forcetorque;gazebo_pal_hand;gazebo_wifi_ap;gazebo_underactuated_finger;BulletSoftBody;BulletDynamics;BulletCollision;LinearMath;/usr/lib/x86_64-linux-gnu/libSimTKsimbody.so;/usr/lib/x86_64-linux-gnu/libSimTKmath.so;/usr/lib/x86_64-linux-gnu/libSimTKcommon.so;/usr/lib/x86_64-linux-gnu/liblapack.so;/usr/lib/x86_64-linux-gnu/libblas.so;pthread;rt;dl;m;/usr/lib/x86_64-linux-gnu/libgazebo.so;/usr/lib/x86_64-linux-gnu/libgazebo_client.so;/usr/lib/x86_64-linux-gnu/libgazebo_gui.so;/usr/lib/x86_64-linux-gnu/libgazebo_sensors.so;/usr/lib/x86_64-linux-gnu/libgazebo_rendering.so;/usr/lib/x86_64-linux-gnu/libgazebo_physics.so;/usr/lib/x86_64-linux-gnu/libgazebo_ode.so;/usr/lib/x86_64-linux-gnu/libgazebo_transport.so;/usr/lib/x86_64-linux-gnu/libgazebo_msgs.so;/usr/lib/x86_64-linux-gnu/libgazebo_util.so;/usr/lib/x86_64-linux-gnu/libgazebo_common.so;/usr/lib/x86_64-linux-gnu/libgazebo_gimpact.so;/usr/lib/x86_64-linux-gnu/libgazebo_opcode.so;/usr/lib/x86_64-linux-gnu/libgazebo_opende_ou.so;/usr/lib/x86_64-linux-gnu/libboost_signals.so;/usr/lib/x86_64-linux-gnu/libboost_filesystem.so;/usr/lib/x86_64-linux-gnu/libboost_program_options.so;/usr/lib/x86_64-linux-gnu/libboost_regex.so;/usr/lib/x86_64-linux-gnu/libboost_iostreams.so;/usr/lib/x86_64-linux-gnu/libprotobuf.so;/usr/lib/x86_64-linux-gnu/libsdformat.so;optimized;/usr/lib/x86_64-linux-gnu/libOgreMain.so;debug;/usr/lib/x86_64-linux-gnu/libOgreMain.so;optimized;/usr/lib/x86_64-linux-gnu/libOgreTerrain.so;debug;/usr/lib/x86_64-linux-gnu/libOgreTerrain.so;optimized;/usr/lib/x86_64-linux-gnu/libOgrePaging.so;debug;/usr/lib/x86_64-linux-gnu/libOgrePaging.so;/usr/lib/x86_64-linux-gnu/libignition-math4.so.4.0.0;/usr/lib/x86_64-linux-gnu/libignition-transport4.so.4.0.0;/usr/lib/x86_64-linux-gnu/libignition-msgs1.so.1.0.0;/usr/lib/x86_64-linux-gnu/libignition-common1.so.1.0.1;/usr/lib/x86_64-linux-gnu/libignition-fuel_tools1.so.1.0.0;/usr/lib/x86_64-linux-gnu/libboost_thread.so;-lpthread;/usr/lib/x86_64-linux-gnu/libboost_chrono.so;/usr/lib/x86_64-linux-gnu/libboost_system.so;/usr/lib/x86_64-linux-gnu/libboost_date_time.so;/usr/lib/x86_64-linux-gnu/libboost_atomic.so")
foreach(library ${libraries})
  # keep build configuration keywords, target names and absolute libraries as-is
  if("${library}" MATCHES "^(debug|optimized|general)$")
    list(APPEND pal_gazebo_plugins_LIBRARIES ${library})
  elseif(${library} MATCHES "^-l")
    list(APPEND pal_gazebo_plugins_LIBRARIES ${library})
  elseif(${library} MATCHES "^-")
    # This is a linker flag/option (like -pthread)
    # There's no standard variable for these, so create an interface library to hold it
    if(NOT pal_gazebo_plugins_NUM_DUMMY_TARGETS)
      set(pal_gazebo_plugins_NUM_DUMMY_TARGETS 0)
    endif()
    # Make sure the target name is unique
    set(interface_target_name "catkin::pal_gazebo_plugins::wrapped-linker-option${pal_gazebo_plugins_NUM_DUMMY_TARGETS}")
    while(TARGET "${interface_target_name}")
      math(EXPR pal_gazebo_plugins_NUM_DUMMY_TARGETS "${pal_gazebo_plugins_NUM_DUMMY_TARGETS}+1")
      set(interface_target_name "catkin::pal_gazebo_plugins::wrapped-linker-option${pal_gazebo_plugins_NUM_DUMMY_TARGETS}")
    endwhile()
    add_library("${interface_target_name}" INTERFACE IMPORTED)
    if("${CMAKE_VERSION}" VERSION_LESS "3.13.0")
      set_property(
        TARGET
        "${interface_target_name}"
        APPEND PROPERTY
        INTERFACE_LINK_LIBRARIES "${library}")
    else()
      target_link_options("${interface_target_name}" INTERFACE "${library}")
    endif()
    list(APPEND pal_gazebo_plugins_LIBRARIES "${interface_target_name}")
  elseif(TARGET ${library})
    list(APPEND pal_gazebo_plugins_LIBRARIES ${library})
  elseif(IS_ABSOLUTE ${library})
    list(APPEND pal_gazebo_plugins_LIBRARIES ${library})
  else()
    set(lib_path "")
    set(lib "${library}-NOTFOUND")
    # since the path where the library is found is returned we have to iterate over the paths manually
    foreach(path /home/ghani/tiago_public_ws/devel/.private/pal_gazebo_plugins/lib;/home/ghani/tiago_public_ws/devel/lib;/opt/ros/melodic/lib)
      find_library(lib ${library}
        PATHS ${path}
        NO_DEFAULT_PATH NO_CMAKE_FIND_ROOT_PATH)
      if(lib)
        set(lib_path ${path})
        break()
      endif()
    endforeach()
    if(lib)
      _list_append_unique(pal_gazebo_plugins_LIBRARY_DIRS ${lib_path})
      list(APPEND pal_gazebo_plugins_LIBRARIES ${lib})
    else()
      # as a fall back for non-catkin libraries try to search globally
      find_library(lib ${library})
      if(NOT lib)
        message(FATAL_ERROR "Project '${PROJECT_NAME}' tried to find library '${library}'.  The library is neither a target nor built/installed properly.  Did you compile project 'pal_gazebo_plugins'?  Did you find_package() it before the subdirectory containing its code is included?")
      endif()
      list(APPEND pal_gazebo_plugins_LIBRARIES ${lib})
    endif()
  endif()
endforeach()

set(pal_gazebo_plugins_EXPORTED_TARGETS "")
# create dummy targets for exported code generation targets to make life of users easier
foreach(t ${pal_gazebo_plugins_EXPORTED_TARGETS})
  if(NOT TARGET ${t})
    add_custom_target(${t})
  endif()
endforeach()

set(depends "std_msgs;std_srvs;tf;pal_multirobot_msgs;roscpp;control_toolbox")
foreach(depend ${depends})
  string(REPLACE " " ";" depend_list ${depend})
  # the package name of the dependency must be kept in a unique variable so that it is not overwritten in recursive calls
  list(GET depend_list 0 pal_gazebo_plugins_dep)
  list(LENGTH depend_list count)
  if(${count} EQUAL 1)
    # simple dependencies must only be find_package()-ed once
    if(NOT ${pal_gazebo_plugins_dep}_FOUND)
      find_package(${pal_gazebo_plugins_dep} REQUIRED NO_MODULE)
    endif()
  else()
    # dependencies with components must be find_package()-ed again
    list(REMOVE_AT depend_list 0)
    find_package(${pal_gazebo_plugins_dep} REQUIRED NO_MODULE ${depend_list})
  endif()
  _list_append_unique(pal_gazebo_plugins_INCLUDE_DIRS ${${pal_gazebo_plugins_dep}_INCLUDE_DIRS})

  # merge build configuration keywords with library names to correctly deduplicate
  _pack_libraries_with_build_configuration(pal_gazebo_plugins_LIBRARIES ${pal_gazebo_plugins_LIBRARIES})
  _pack_libraries_with_build_configuration(_libraries ${${pal_gazebo_plugins_dep}_LIBRARIES})
  _list_append_deduplicate(pal_gazebo_plugins_LIBRARIES ${_libraries})
  # undo build configuration keyword merging after deduplication
  _unpack_libraries_with_build_configuration(pal_gazebo_plugins_LIBRARIES ${pal_gazebo_plugins_LIBRARIES})

  _list_append_unique(pal_gazebo_plugins_LIBRARY_DIRS ${${pal_gazebo_plugins_dep}_LIBRARY_DIRS})
  list(APPEND pal_gazebo_plugins_EXPORTED_TARGETS ${${pal_gazebo_plugins_dep}_EXPORTED_TARGETS})
endforeach()

set(pkg_cfg_extras "")
foreach(extra ${pkg_cfg_extras})
  if(NOT IS_ABSOLUTE ${extra})
    set(extra ${pal_gazebo_plugins_DIR}/${extra})
  endif()
  include(${extra})
endforeach()
