# Software-Architecture-Assignment
## Description
This is a ros architecture to exploit open-source human pose-estimation to teleoperate robots trought uper-body movements. the movements used in this assignment are: 
* rise_hand
* reach_floor
* wave
this is the scheme of the high level architectue: 

![image](https://user-images.githubusercontent.com/91313196/178319382-9fd768a9-c97d-4b8e-a436-5b38cbcc1724.png)


**Recognize gestures** is devolped based on opencv and Mediapipe, it allows the robot to detect the correct movment of the person based 
on the angles of the landmarks. the script of this node is **wabcam.py**

once the gesture is correctly detected, a specific trajectory is send to the robot controller by the node **run_motion_python_node.py**,
the trajectories are hard-coded in the yaml file **tiago_motion.yaml**.

## Instructions for running the simulation
1- Install Ubnutu 18.04 with ROS and TIAGO, by following this documentation [install](http://wiki.ros.org/Robots/TIAGo/Tutorials/Installation/InstallUbuntuAndROS)

2- clone the repository
```bash
git clone https://github.com/ghani35/Software-Architecture-Assignment.git 
```
3- source your workspace 
```
source ./devel/setup.bash
```
4- run roscore
```
roscore 
```
5- Build the workspace
```
catkin build -DCATKIN_ENABLE_TESTING=0 -j $(expr `nproc` / 2)
```
5- run the Gazebo simulation of Tiago 
```
 roslaunch tiago_gazebo tiago_gazebo.launch public_sim:=true robot:=steel world:=empty
```
6- run the first node Gesture detector  **webcam.py**, this will open the camera of your computer, and show you the landmarks
```
cd /home/<username>/tiago_public_ws/Software-Architecture-Assignment/src/tiago_tutorials/tiago_trajectory_controller/src/webcam.py
```
```
rosrun tiago_trajectory_controller webcam.py
```
7- run the second node **run_motion_python_node.py**, this node send the desired trajectory to tiago after a correct detection of the gesture
```
cd /home/<username>/tiago_public_ws/Software-Architecture-Assignment/src/play_motion/play_motion/scripts/run_motion_python_node.py
```
```
rosrun play_motion run_motion_python_node.py
```
8- The communication between **webcam.py** and **run_motion_python_node.py** is done through publish/subscribe 
the topic name is **/webcam_coordinates**, if you want to check the published messages you can run this command (this is not mondatory)
```
rostopic echo /webcam_coordinates 
```
 


