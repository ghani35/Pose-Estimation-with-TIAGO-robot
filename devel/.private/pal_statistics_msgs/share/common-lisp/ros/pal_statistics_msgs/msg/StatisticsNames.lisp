; Auto-generated. Do not edit!


(cl:in-package pal_statistics_msgs-msg)


;//! \htmlinclude StatisticsNames.msg.html

(cl:defclass <StatisticsNames> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (names
    :reader names
    :initarg :names
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (names_version
    :reader names_version
    :initarg :names_version
    :type cl:integer
    :initform 0))
)

(cl:defclass StatisticsNames (<StatisticsNames>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StatisticsNames>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StatisticsNames)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_statistics_msgs-msg:<StatisticsNames> is deprecated: use pal_statistics_msgs-msg:StatisticsNames instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <StatisticsNames>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_statistics_msgs-msg:header-val is deprecated.  Use pal_statistics_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'names-val :lambda-list '(m))
(cl:defmethod names-val ((m <StatisticsNames>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_statistics_msgs-msg:names-val is deprecated.  Use pal_statistics_msgs-msg:names instead.")
  (names m))

(cl:ensure-generic-function 'names_version-val :lambda-list '(m))
(cl:defmethod names_version-val ((m <StatisticsNames>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_statistics_msgs-msg:names_version-val is deprecated.  Use pal_statistics_msgs-msg:names_version instead.")
  (names_version m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StatisticsNames>) ostream)
  "Serializes a message object of type '<StatisticsNames>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'names))))
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
   (cl:slot-value msg 'names))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'names_version)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'names_version)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'names_version)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'names_version)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StatisticsNames>) istream)
  "Deserializes a message object of type '<StatisticsNames>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'names) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'names)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'names_version)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'names_version)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'names_version)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'names_version)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StatisticsNames>)))
  "Returns string type for a message object of type '<StatisticsNames>"
  "pal_statistics_msgs/StatisticsNames")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StatisticsNames)))
  "Returns string type for a message object of type 'StatisticsNames"
  "pal_statistics_msgs/StatisticsNames")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StatisticsNames>)))
  "Returns md5sum for a message object of type '<StatisticsNames>"
  "bece3d42a81d5c50cd68f110cf17bf55")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StatisticsNames)))
  "Returns md5sum for a message object of type 'StatisticsNames"
  "bece3d42a81d5c50cd68f110cf17bf55")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StatisticsNames>)))
  "Returns full string definition for message of type '<StatisticsNames>"
  (cl:format cl:nil "# header~%Header header~%~%# Statistics names~%string[] names~%uint32 names_version #This is increased each time names change~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StatisticsNames)))
  "Returns full string definition for message of type 'StatisticsNames"
  (cl:format cl:nil "# header~%Header header~%~%# Statistics names~%string[] names~%uint32 names_version #This is increased each time names change~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StatisticsNames>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StatisticsNames>))
  "Converts a ROS message object to a list"
  (cl:list 'StatisticsNames
    (cl:cons ':header (header msg))
    (cl:cons ':names (names msg))
    (cl:cons ':names_version (names_version msg))
))
