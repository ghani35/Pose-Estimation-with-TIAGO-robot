# Software-Architecture-Assignment
## Description
This is a ros architecture to exploit open-source human pose-estimation to teleoperate robots trought uper-body movements. the movements used in this assignment are: 
* rise_hand
* reach_floor
* wave
this is the scheme of the high level architectue: 

Recognize gestures is devolped based on opencv and Mediapipe, it allows the robot to detect the correct movment of the person based 
on the angles of the landmarks. the path of this node is : (   )

once the gesture is correctly detected, a specific trajectory is send to the robot controller by the node (),
the trajectories are hard-coded in the yaml file (tiago_motion.yaml).

# Instructions for running the simulation
1- Install Ubnutu 18.04 with ROS and TIAGO, by following this documentation [install](http://wiki.ros.org/Robots/TIAGo/Tutorials/Installation/InstallUbuntuAndROS)

2- clone the repository
```bash
git clone https://github.com/ghani35/Software-Architecture-Assignment.git 
```
3- source your workspace 
 source ./devel/setup.bash

4- run roscore 
 roscore 

5- run the Gazebo simulation of Tiago 

6- run the first node Gesture detector  (webcam.py), this will open the camera of your computer, and show you the landmarks
cd path
ros run tiago_trajectory_controller webcam.py

7- run the second node (run_motion_python_node.py), this node send the desired trajectory to tiago after a correct detection of the gesture
 cd path 
 ros run ....

8- The communication between (webcam.py) and (run_motion_python_node.py) is done through publish/subscribe 
the topic name is /webcam_coordinates, if you want to check the published messages you can run this command (this is not mondatory)

rostopic echo /webcam_coordinates 

 


