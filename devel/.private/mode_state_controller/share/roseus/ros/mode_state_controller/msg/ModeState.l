;; Auto-generated. Do not edit!


(when (boundp 'mode_state_controller::ModeState)
  (if (not (find-package "MODE_STATE_CONTROLLER"))
    (make-package "MODE_STATE_CONTROLLER"))
  (shadow 'ModeState (find-package "MODE_STATE_CONTROLLER")))
(unless (find-package "MODE_STATE_CONTROLLER::MODESTATE")
  (make-package "MODE_STATE_CONTROLLER::MODESTATE"))

(in-package "ROS")
;;//! \htmlinclude ModeState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*BEGIN*" (find-package "MODE_STATE_CONTROLLER::MODESTATE"))
(shadow '*BEGIN* (find-package "MODE_STATE_CONTROLLER::MODESTATE"))
(defconstant mode_state_controller::ModeState::*BEGIN* -1)
(intern "*MODE_POSITION*" (find-package "MODE_STATE_CONTROLLER::MODESTATE"))
(shadow '*MODE_POSITION* (find-package "MODE_STATE_CONTROLLER::MODESTATE"))
(defconstant mode_state_controller::ModeState::*MODE_POSITION* 0)
(intern "*MODE_VELOCITY*" (find-package "MODE_STATE_CONTROLLER::MODESTATE"))
(shadow '*MODE_VELOCITY* (find-package "MODE_STATE_CONTROLLER::MODESTATE"))
(defconstant mode_state_controller::ModeState::*MODE_VELOCITY* 1)
(intern "*MODE_EFFORT*" (find-package "MODE_STATE_CONTROLLER::MODESTATE"))
(shadow '*MODE_EFFORT* (find-package "MODE_STATE_CONTROLLER::MODESTATE"))
(defconstant mode_state_controller::ModeState::*MODE_EFFORT* 2)
(intern "*NOMODE*" (find-package "MODE_STATE_CONTROLLER::MODESTATE"))
(shadow '*NOMODE* (find-package "MODE_STATE_CONTROLLER::MODESTATE"))
(defconstant mode_state_controller::ModeState::*NOMODE* 3)
(intern "*EMERGENCY_STOP*" (find-package "MODE_STATE_CONTROLLER::MODESTATE"))
(shadow '*EMERGENCY_STOP* (find-package "MODE_STATE_CONTROLLER::MODESTATE"))
(defconstant mode_state_controller::ModeState::*EMERGENCY_STOP* 4)
(intern "*SWITCHING*" (find-package "MODE_STATE_CONTROLLER::MODESTATE"))
(shadow '*SWITCHING* (find-package "MODE_STATE_CONTROLLER::MODESTATE"))
(defconstant mode_state_controller::ModeState::*SWITCHING* 5)
(intern "*ERROR*" (find-package "MODE_STATE_CONTROLLER::MODESTATE"))
(shadow '*ERROR* (find-package "MODE_STATE_CONTROLLER::MODESTATE"))
(defconstant mode_state_controller::ModeState::*ERROR* 6)
(defclass mode_state_controller::ModeState
  :super ros::object
  :slots (_header _name _mode ))

(defmethod mode_state_controller::ModeState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:name __name) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:mode __mode) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _header __header)
   (setq _name __name)
   (setq _mode __mode)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string[] _name
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _name)) 4
    ;; int32[] _mode
    (* 4    (length _mode)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string[] _name
     (write-long (length _name) s)
     (dolist (elem _name)
       (write-long (length elem) s) (princ elem s)
       )
     ;; int32[] _mode
     (write-long (length _mode) s)
     (dotimes (i (length _mode))
       (write-long (elt _mode i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string[] _name
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _name (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _name i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; int32[] _mode
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _mode (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _mode i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get mode_state_controller::ModeState :md5sum-) "1876cce35893829a3c52c7fd8f021768")
(setf (get mode_state_controller::ModeState :datatype-) "mode_state_controller/ModeState")
(setf (get mode_state_controller::ModeState :definition-)
      "int32 BEGIN = -1
int32 MODE_POSITION = 0
int32 MODE_VELOCITY = 1
int32 MODE_EFFORT = 2
int32 NOMODE = 3
int32 EMERGENCY_STOP = 4
int32 SWITCHING = 5
int32 ERROR = 6
Header header

string[] name
int32[] mode

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

")



(provide :mode_state_controller/ModeState "1876cce35893829a3c52c7fd8f021768")


