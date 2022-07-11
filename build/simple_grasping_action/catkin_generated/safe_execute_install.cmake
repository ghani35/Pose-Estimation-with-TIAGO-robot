execute_process(COMMAND "/home/ghani/tiago_public_ws/build/simple_grasping_action/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/ghani/tiago_public_ws/build/simple_grasping_action/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
