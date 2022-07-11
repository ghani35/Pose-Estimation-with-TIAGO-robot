;; Auto-generated. Do not edit!


(when (boundp 'pal_walking_msgs::WalkingStep)
  (if (not (find-package "PAL_WALKING_MSGS"))
    (make-package "PAL_WALKING_MSGS"))
  (shadow 'WalkingStep (find-package "PAL_WALKING_MSGS")))
(unless (find-package "PAL_WALKING_MSGS::WALKINGSTEP")
  (make-package "PAL_WALKING_MSGS::WALKINGSTEP"))

(in-package "ROS")
;;//! \htmlinclude WalkingStep.msg.html
(if (not (find-package "HUMANOID_NAV_MSGS"))
  (ros::roseus-add-msgs "humanoid_nav_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pal_walking_msgs::WalkingStep
  :super ros::object
  :slots (_header _step_target _step_duration _step_list_size ))

(defmethod pal_walking_msgs::WalkingStep
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:step_target __step_target) (instance humanoid_nav_msgs::StepTarget :init))
    ((:step_duration __step_duration) (instance std_msgs::Duration :init))
    ((:step_list_size __step_list_size) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _step_target __step_target)
   (setq _step_duration __step_duration)
   (setq _step_list_size (round __step_list_size))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:step_target
   (&rest __step_target)
   (if (keywordp (car __step_target))
       (send* _step_target __step_target)
     (progn
       (if __step_target (setq _step_target (car __step_target)))
       _step_target)))
  (:step_duration
   (&rest __step_duration)
   (if (keywordp (car __step_duration))
       (send* _step_duration __step_duration)
     (progn
       (if __step_duration (setq _step_duration (car __step_duration)))
       _step_duration)))
  (:step_list_size
   (&optional __step_list_size)
   (if __step_list_size (setq _step_list_size __step_list_size)) _step_list_size)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; humanoid_nav_msgs/StepTarget _step_target
    (send _step_target :serialization-length)
    ;; std_msgs/Duration _step_duration
    (send _step_duration :serialization-length)
    ;; int32 _step_list_size
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; humanoid_nav_msgs/StepTarget _step_target
       (send _step_target :serialize s)
     ;; std_msgs/Duration _step_duration
       (send _step_duration :serialize s)
     ;; int32 _step_list_size
       (write-long _step_list_size s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; humanoid_nav_msgs/StepTarget _step_target
     (send _step_target :deserialize buf ptr-) (incf ptr- (send _step_target :serialization-length))
   ;; std_msgs/Duration _step_duration
     (send _step_duration :deserialize buf ptr-) (incf ptr- (send _step_duration :serialization-length))
   ;; int32 _step_list_size
     (setq _step_list_size (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get pal_walking_msgs::WalkingStep :md5sum-) "71c9b6abe3794dbf1d1e8705aadecb82")
(setf (get pal_walking_msgs::WalkingStep :datatype-) "pal_walking_msgs/WalkingStep")
(setf (get pal_walking_msgs::WalkingStep :definition-)
      "# Data about walking step being executed

Header header

humanoid_nav_msgs/StepTarget step_target

std_msgs/Duration           step_duration

int32  step_list_size

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
MSG: humanoid_nav_msgs/StepTarget
# Target for a single stepping motion of a humanoid's leg

geometry_msgs/Pose2D pose   # step pose as relative offset to last leg
uint8 leg                   # which leg to use (left/right, see below)

uint8 right=0               # right leg constant
uint8 left=1                # left leg constant

================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta

================================================================================
MSG: std_msgs/Duration
duration data

")



(provide :pal_walking_msgs/WalkingStep "71c9b6abe3794dbf1d1e8705aadecb82")


