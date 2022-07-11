;; Auto-generated. Do not edit!


(when (boundp 'pal_walking_msgs::MoveHipFeet)
  (if (not (find-package "PAL_WALKING_MSGS"))
    (make-package "PAL_WALKING_MSGS"))
  (shadow 'MoveHipFeet (find-package "PAL_WALKING_MSGS")))
(unless (find-package "PAL_WALKING_MSGS::MOVEHIPFEET")
  (make-package "PAL_WALKING_MSGS::MOVEHIPFEET"))
(unless (find-package "PAL_WALKING_MSGS::MOVEHIPFEETREQUEST")
  (make-package "PAL_WALKING_MSGS::MOVEHIPFEETREQUEST"))
(unless (find-package "PAL_WALKING_MSGS::MOVEHIPFEETRESPONSE")
  (make-package "PAL_WALKING_MSGS::MOVEHIPFEETRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass pal_walking_msgs::MoveHipFeetRequest
  :super ros::object
  :slots (_hip_poses _left_foot_poses _right_foot_poses _times_after_previous ))

(defmethod pal_walking_msgs::MoveHipFeetRequest
  (:init
   (&key
    ((:hip_poses __hip_poses) (instance geometry_msgs::PoseArray :init))
    ((:left_foot_poses __left_foot_poses) (instance geometry_msgs::PoseArray :init))
    ((:right_foot_poses __right_foot_poses) (instance geometry_msgs::PoseArray :init))
    ((:times_after_previous __times_after_previous) (let (r) (dotimes (i 0) (push (instance ros::time :init) r)) r))
    )
   (send-super :init)
   (setq _hip_poses __hip_poses)
   (setq _left_foot_poses __left_foot_poses)
   (setq _right_foot_poses __right_foot_poses)
   (setq _times_after_previous __times_after_previous)
   self)
  (:hip_poses
   (&rest __hip_poses)
   (if (keywordp (car __hip_poses))
       (send* _hip_poses __hip_poses)
     (progn
       (if __hip_poses (setq _hip_poses (car __hip_poses)))
       _hip_poses)))
  (:left_foot_poses
   (&rest __left_foot_poses)
   (if (keywordp (car __left_foot_poses))
       (send* _left_foot_poses __left_foot_poses)
     (progn
       (if __left_foot_poses (setq _left_foot_poses (car __left_foot_poses)))
       _left_foot_poses)))
  (:right_foot_poses
   (&rest __right_foot_poses)
   (if (keywordp (car __right_foot_poses))
       (send* _right_foot_poses __right_foot_poses)
     (progn
       (if __right_foot_poses (setq _right_foot_poses (car __right_foot_poses)))
       _right_foot_poses)))
  (:times_after_previous
   (&optional __times_after_previous)
   (if __times_after_previous (setq _times_after_previous __times_after_previous)) _times_after_previous)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseArray _hip_poses
    (send _hip_poses :serialization-length)
    ;; geometry_msgs/PoseArray _left_foot_poses
    (send _left_foot_poses :serialization-length)
    ;; geometry_msgs/PoseArray _right_foot_poses
    (send _right_foot_poses :serialization-length)
    ;; duration[] _times_after_previous
    (* 8    (length _times_after_previous)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseArray _hip_poses
       (send _hip_poses :serialize s)
     ;; geometry_msgs/PoseArray _left_foot_poses
       (send _left_foot_poses :serialize s)
     ;; geometry_msgs/PoseArray _right_foot_poses
       (send _right_foot_poses :serialize s)
     ;; duration[] _times_after_previous
     (write-long (length _times_after_previous) s)
     (dotimes (i (length _times_after_previous))
       (write-long (send (elt _times_after_previous i) :sec) s) (write-long (send (elt _times_after_previous i) :nsec) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseArray _hip_poses
     (send _hip_poses :deserialize buf ptr-) (incf ptr- (send _hip_poses :serialization-length))
   ;; geometry_msgs/PoseArray _left_foot_poses
     (send _left_foot_poses :deserialize buf ptr-) (incf ptr- (send _left_foot_poses :serialization-length))
   ;; geometry_msgs/PoseArray _right_foot_poses
     (send _right_foot_poses :deserialize buf ptr-) (incf ptr- (send _right_foot_poses :serialization-length))
   ;; duration[] _times_after_previous
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _times_after_previous (let (r) (dotimes (i n) (push (instance ros::time :init) r)) r))
     (dolist (elem- _times_after_previous)
     (send elem- :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send elem- :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass pal_walking_msgs::MoveHipFeetResponse
  :super ros::object
  :slots ())

(defmethod pal_walking_msgs::MoveHipFeetResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass pal_walking_msgs::MoveHipFeet
  :super ros::object
  :slots ())

(setf (get pal_walking_msgs::MoveHipFeet :md5sum-) "2ee43076f2da7aab2dbbf598a7709593")
(setf (get pal_walking_msgs::MoveHipFeet :datatype-) "pal_walking_msgs/MoveHipFeet")
(setf (get pal_walking_msgs::MoveHipFeet :request) pal_walking_msgs::MoveHipFeetRequest)
(setf (get pal_walking_msgs::MoveHipFeet :response) pal_walking_msgs::MoveHipFeetResponse)

(defmethod pal_walking_msgs::MoveHipFeetRequest
  (:response () (instance pal_walking_msgs::MoveHipFeetResponse :init)))

(setf (get pal_walking_msgs::MoveHipFeetRequest :md5sum-) "2ee43076f2da7aab2dbbf598a7709593")
(setf (get pal_walking_msgs::MoveHipFeetRequest :datatype-) "pal_walking_msgs/MoveHipFeetRequest")
(setf (get pal_walking_msgs::MoveHipFeetRequest :definition-)
      "# This service requests that the robot move the hip and feet in cartesian space
# The parameters are the waypoints and time to reach that poses

geometry_msgs/PoseArray hip_poses

geometry_msgs/PoseArray left_foot_poses

geometry_msgs/PoseArray right_foot_poses

duration[]              times_after_previous

================================================================================
MSG: geometry_msgs/PoseArray
# An array of poses with a header for global reference.

Header header

Pose[] poses

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
---

")

(setf (get pal_walking_msgs::MoveHipFeetResponse :md5sum-) "2ee43076f2da7aab2dbbf598a7709593")
(setf (get pal_walking_msgs::MoveHipFeetResponse :datatype-) "pal_walking_msgs/MoveHipFeetResponse")
(setf (get pal_walking_msgs::MoveHipFeetResponse :definition-)
      "# This service requests that the robot move the hip and feet in cartesian space
# The parameters are the waypoints and time to reach that poses

geometry_msgs/PoseArray hip_poses

geometry_msgs/PoseArray left_foot_poses

geometry_msgs/PoseArray right_foot_poses

duration[]              times_after_previous

================================================================================
MSG: geometry_msgs/PoseArray
# An array of poses with a header for global reference.

Header header

Pose[] poses

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
---

")



(provide :pal_walking_msgs/MoveHipFeet "2ee43076f2da7aab2dbbf598a7709593")


