;; Auto-generated. Do not edit!


(when (boundp 'pal_walking_msgs::SMStatus)
  (if (not (find-package "PAL_WALKING_MSGS"))
    (make-package "PAL_WALKING_MSGS"))
  (shadow 'SMStatus (find-package "PAL_WALKING_MSGS")))
(unless (find-package "PAL_WALKING_MSGS::SMSTATUS")
  (make-package "PAL_WALKING_MSGS::SMSTATUS"))

(in-package "ROS")
;;//! \htmlinclude SMStatus.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*RIGHT*" (find-package "PAL_WALKING_MSGS::SMSTATUS"))
(shadow '*RIGHT* (find-package "PAL_WALKING_MSGS::SMSTATUS"))
(defconstant pal_walking_msgs::SMStatus::*RIGHT* 1)
(intern "*LEFT*" (find-package "PAL_WALKING_MSGS::SMSTATUS"))
(shadow '*LEFT* (find-package "PAL_WALKING_MSGS::SMSTATUS"))
(defconstant pal_walking_msgs::SMStatus::*LEFT* 0)
(defclass pal_walking_msgs::SMStatus
  :super ros::object
  :slots (_left_foot_pose _right_foot_pose _stance_foot_side _future_swing_landing_pose _future_swing_side ))

(defmethod pal_walking_msgs::SMStatus
  (:init
   (&key
    ((:left_foot_pose __left_foot_pose) (instance geometry_msgs::Pose :init))
    ((:right_foot_pose __right_foot_pose) (instance geometry_msgs::Pose :init))
    ((:stance_foot_side __stance_foot_side) 0)
    ((:future_swing_landing_pose __future_swing_landing_pose) (instance geometry_msgs::Pose :init))
    ((:future_swing_side __future_swing_side) 0)
    )
   (send-super :init)
   (setq _left_foot_pose __left_foot_pose)
   (setq _right_foot_pose __right_foot_pose)
   (setq _stance_foot_side (round __stance_foot_side))
   (setq _future_swing_landing_pose __future_swing_landing_pose)
   (setq _future_swing_side (round __future_swing_side))
   self)
  (:left_foot_pose
   (&rest __left_foot_pose)
   (if (keywordp (car __left_foot_pose))
       (send* _left_foot_pose __left_foot_pose)
     (progn
       (if __left_foot_pose (setq _left_foot_pose (car __left_foot_pose)))
       _left_foot_pose)))
  (:right_foot_pose
   (&rest __right_foot_pose)
   (if (keywordp (car __right_foot_pose))
       (send* _right_foot_pose __right_foot_pose)
     (progn
       (if __right_foot_pose (setq _right_foot_pose (car __right_foot_pose)))
       _right_foot_pose)))
  (:stance_foot_side
   (&optional __stance_foot_side)
   (if __stance_foot_side (setq _stance_foot_side __stance_foot_side)) _stance_foot_side)
  (:future_swing_landing_pose
   (&rest __future_swing_landing_pose)
   (if (keywordp (car __future_swing_landing_pose))
       (send* _future_swing_landing_pose __future_swing_landing_pose)
     (progn
       (if __future_swing_landing_pose (setq _future_swing_landing_pose (car __future_swing_landing_pose)))
       _future_swing_landing_pose)))
  (:future_swing_side
   (&optional __future_swing_side)
   (if __future_swing_side (setq _future_swing_side __future_swing_side)) _future_swing_side)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _left_foot_pose
    (send _left_foot_pose :serialization-length)
    ;; geometry_msgs/Pose _right_foot_pose
    (send _right_foot_pose :serialization-length)
    ;; uint8 _stance_foot_side
    1
    ;; geometry_msgs/Pose _future_swing_landing_pose
    (send _future_swing_landing_pose :serialization-length)
    ;; uint8 _future_swing_side
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _left_foot_pose
       (send _left_foot_pose :serialize s)
     ;; geometry_msgs/Pose _right_foot_pose
       (send _right_foot_pose :serialize s)
     ;; uint8 _stance_foot_side
       (write-byte _stance_foot_side s)
     ;; geometry_msgs/Pose _future_swing_landing_pose
       (send _future_swing_landing_pose :serialize s)
     ;; uint8 _future_swing_side
       (write-byte _future_swing_side s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _left_foot_pose
     (send _left_foot_pose :deserialize buf ptr-) (incf ptr- (send _left_foot_pose :serialization-length))
   ;; geometry_msgs/Pose _right_foot_pose
     (send _right_foot_pose :deserialize buf ptr-) (incf ptr- (send _right_foot_pose :serialization-length))
   ;; uint8 _stance_foot_side
     (setq _stance_foot_side (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; geometry_msgs/Pose _future_swing_landing_pose
     (send _future_swing_landing_pose :deserialize buf ptr-) (incf ptr- (send _future_swing_landing_pose :serialization-length))
   ;; uint8 _future_swing_side
     (setq _future_swing_side (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get pal_walking_msgs::SMStatus :md5sum-) "c7b8f29539d1ef0f23de0a00992a911c")
(setf (get pal_walking_msgs::SMStatus :datatype-) "pal_walking_msgs/SMStatus")
(setf (get pal_walking_msgs::SMStatus :definition-)
      "geometry_msgs/Pose left_foot_pose
geometry_msgs/Pose right_foot_pose
uint8 stance_foot_side

geometry_msgs/Pose future_swing_landing_pose
uint8 future_swing_side

uint8 right=1               # right leg constant
uint8 left=0                # left leg constant

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :pal_walking_msgs/SMStatus "c7b8f29539d1ef0f23de0a00992a911c")


