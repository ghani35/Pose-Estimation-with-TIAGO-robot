;; Auto-generated. Do not edit!


(when (boundp 'pal_walking_msgs::WalkingStatus)
  (if (not (find-package "PAL_WALKING_MSGS"))
    (make-package "PAL_WALKING_MSGS"))
  (shadow 'WalkingStatus (find-package "PAL_WALKING_MSGS")))
(unless (find-package "PAL_WALKING_MSGS::WALKINGSTATUS")
  (make-package "PAL_WALKING_MSGS::WALKINGSTATUS"))

(in-package "ROS")
;;//! \htmlinclude WalkingStatus.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pal_walking_msgs::WalkingStatus
  :super ros::object
  :slots (_header _hip_reference_pose _foot_reference_pose _zmp_reference ))

(defmethod pal_walking_msgs::WalkingStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:hip_reference_pose __hip_reference_pose) (instance geometry_msgs::Pose :init))
    ((:foot_reference_pose __foot_reference_pose) (let (r) (dotimes (i 2) (push (instance geometry_msgs::Pose :init) r)) r))
    ((:zmp_reference __zmp_reference) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _hip_reference_pose __hip_reference_pose)
   (setq _foot_reference_pose __foot_reference_pose)
   (setq _zmp_reference __zmp_reference)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:hip_reference_pose
   (&rest __hip_reference_pose)
   (if (keywordp (car __hip_reference_pose))
       (send* _hip_reference_pose __hip_reference_pose)
     (progn
       (if __hip_reference_pose (setq _hip_reference_pose (car __hip_reference_pose)))
       _hip_reference_pose)))
  (:foot_reference_pose
   (&rest __foot_reference_pose)
   (if (keywordp (car __foot_reference_pose))
       (send* _foot_reference_pose __foot_reference_pose)
     (progn
       (if __foot_reference_pose (setq _foot_reference_pose (car __foot_reference_pose)))
       _foot_reference_pose)))
  (:zmp_reference
   (&rest __zmp_reference)
   (if (keywordp (car __zmp_reference))
       (send* _zmp_reference __zmp_reference)
     (progn
       (if __zmp_reference (setq _zmp_reference (car __zmp_reference)))
       _zmp_reference)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Pose _hip_reference_pose
    (send _hip_reference_pose :serialization-length)
    ;; geometry_msgs/Pose[2] _foot_reference_pose
    (apply #'+ (send-all _foot_reference_pose :serialization-length))
    ;; geometry_msgs/Point _zmp_reference
    (send _zmp_reference :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Pose _hip_reference_pose
       (send _hip_reference_pose :serialize s)
     ;; geometry_msgs/Pose[2] _foot_reference_pose
     (dolist (elem _foot_reference_pose)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Point _zmp_reference
       (send _zmp_reference :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Pose _hip_reference_pose
     (send _hip_reference_pose :deserialize buf ptr-) (incf ptr- (send _hip_reference_pose :serialization-length))
   ;; geometry_msgs/Pose[2] _foot_reference_pose
   (dotimes (i 2)
     (send (elt _foot_reference_pose i) :deserialize buf ptr-) (incf ptr- (send (elt _foot_reference_pose i) :serialization-length))
     )
   ;; geometry_msgs/Point _zmp_reference
     (send _zmp_reference :deserialize buf ptr-) (incf ptr- (send _zmp_reference :serialization-length))
   ;;
   self)
  )

(setf (get pal_walking_msgs::WalkingStatus :md5sum-) "86de80b808fb27b3f11d218fa8d1c16e")
(setf (get pal_walking_msgs::WalkingStatus :datatype-) "pal_walking_msgs/WalkingStatus")
(setf (get pal_walking_msgs::WalkingStatus :definition-)
      "Header header

geometry_msgs/Pose    hip_reference_pose

geometry_msgs/Pose[2] foot_reference_pose

geometry_msgs/Point zmp_reference

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

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



(provide :pal_walking_msgs/WalkingStatus "86de80b808fb27b3f11d218fa8d1c16e")


