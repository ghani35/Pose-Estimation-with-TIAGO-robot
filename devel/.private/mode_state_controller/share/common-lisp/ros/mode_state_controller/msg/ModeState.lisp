; Auto-generated. Do not edit!


(cl:in-package mode_state_controller-msg)


;//! \htmlinclude ModeState.msg.html

(cl:defclass <ModeState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (name
    :reader name
    :initarg :name
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (mode
    :reader mode
    :initarg :mode
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass ModeState (<ModeState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ModeState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ModeState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mode_state_controller-msg:<ModeState> is deprecated: use mode_state_controller-msg:ModeState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ModeState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mode_state_controller-msg:header-val is deprecated.  Use mode_state_controller-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <ModeState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mode_state_controller-msg:name-val is deprecated.  Use mode_state_controller-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <ModeState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mode_state_controller-msg:mode-val is deprecated.  Use mode_state_controller-msg:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ModeState>)))
    "Constants for message type '<ModeState>"
  '((:BEGIN . -1)
    (:MODE_POSITION . 0)
    (:MODE_VELOCITY . 1)
    (:MODE_EFFORT . 2)
    (:NOMODE . 3)
    (:EMERGENCY_STOP . 4)
    (:SWITCHING . 5)
    (:ERROR . 6))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ModeState)))
    "Constants for message type 'ModeState"
  '((:BEGIN . -1)
    (:MODE_POSITION . 0)
    (:MODE_VELOCITY . 1)
    (:MODE_EFFORT . 2)
    (:NOMODE . 3)
    (:EMERGENCY_STOP . 4)
    (:SWITCHING . 5)
    (:ERROR . 6))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ModeState>) ostream)
  "Serializes a message object of type '<ModeState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'name))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'mode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'mode))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ModeState>) istream)
  "Deserializes a message object of type '<ModeState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'name) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'name)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'mode) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'mode)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ModeState>)))
  "Returns string type for a message object of type '<ModeState>"
  "mode_state_controller/ModeState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ModeState)))
  "Returns string type for a message object of type 'ModeState"
  "mode_state_controller/ModeState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ModeState>)))
  "Returns md5sum for a message object of type '<ModeState>"
  "1876cce35893829a3c52c7fd8f021768")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ModeState)))
  "Returns md5sum for a message object of type 'ModeState"
  "1876cce35893829a3c52c7fd8f021768")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ModeState>)))
  "Returns full string definition for message of type '<ModeState>"
  (cl:format cl:nil "int32 BEGIN = -1~%int32 MODE_POSITION = 0~%int32 MODE_VELOCITY = 1~%int32 MODE_EFFORT = 2~%int32 NOMODE = 3~%int32 EMERGENCY_STOP = 4~%int32 SWITCHING = 5~%int32 ERROR = 6~%Header header~%~%string[] name~%int32[] mode~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ModeState)))
  "Returns full string definition for message of type 'ModeState"
  (cl:format cl:nil "int32 BEGIN = -1~%int32 MODE_POSITION = 0~%int32 MODE_VELOCITY = 1~%int32 MODE_EFFORT = 2~%int32 NOMODE = 3~%int32 EMERGENCY_STOP = 4~%int32 SWITCHING = 5~%int32 ERROR = 6~%Header header~%~%string[] name~%int32[] mode~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ModeState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'name) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'mode) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ModeState>))
  "Converts a ROS message object to a list"
  (cl:list 'ModeState
    (cl:cons ':header (header msg))
    (cl:cons ':name (name msg))
    (cl:cons ':mode (mode msg))
))
