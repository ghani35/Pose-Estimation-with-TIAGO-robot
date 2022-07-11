; Auto-generated. Do not edit!


(cl:in-package pal_statistics_msgs-msg)


;//! \htmlinclude StatisticsValues.msg.html

(cl:defclass <StatisticsValues> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (values
    :reader values
    :initarg :values
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (names_version
    :reader names_version
    :initarg :names_version
    :type cl:integer
    :initform 0))
)

(cl:defclass StatisticsValues (<StatisticsValues>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StatisticsValues>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StatisticsValues)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_statistics_msgs-msg:<StatisticsValues> is deprecated: use pal_statistics_msgs-msg:StatisticsValues instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <StatisticsValues>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_statistics_msgs-msg:header-val is deprecated.  Use pal_statistics_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'values-val :lambda-list '(m))
(cl:defmethod values-val ((m <StatisticsValues>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_statistics_msgs-msg:values-val is deprecated.  Use pal_statistics_msgs-msg:values instead.")
  (values m))

(cl:ensure-generic-function 'names_version-val :lambda-list '(m))
(cl:defmethod names_version-val ((m <StatisticsValues>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_statistics_msgs-msg:names_version-val is deprecated.  Use pal_statistics_msgs-msg:names_version instead.")
  (names_version m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StatisticsValues>) ostream)
  "Serializes a message object of type '<StatisticsValues>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'values))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'values))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'names_version)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'names_version)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'names_version)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'names_version)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StatisticsValues>) istream)
  "Deserializes a message object of type '<StatisticsValues>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'values) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'values)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'names_version)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'names_version)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'names_version)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'names_version)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StatisticsValues>)))
  "Returns string type for a message object of type '<StatisticsValues>"
  "pal_statistics_msgs/StatisticsValues")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StatisticsValues)))
  "Returns string type for a message object of type 'StatisticsValues"
  "pal_statistics_msgs/StatisticsValues")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StatisticsValues>)))
  "Returns md5sum for a message object of type '<StatisticsValues>"
  "44646896ace86f96c24fbb63054eeee8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StatisticsValues)))
  "Returns md5sum for a message object of type 'StatisticsValues"
  "44646896ace86f96c24fbb63054eeee8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StatisticsValues>)))
  "Returns full string definition for message of type '<StatisticsValues>"
  (cl:format cl:nil "# header~%Header header~%~%# Statistics~%float64[] values~%uint32 names_version # The values vector corresponds to the name vector with the same name~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StatisticsValues)))
  "Returns full string definition for message of type 'StatisticsValues"
  (cl:format cl:nil "# header~%Header header~%~%# Statistics~%float64[] values~%uint32 names_version # The values vector corresponds to the name vector with the same name~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StatisticsValues>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'values) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StatisticsValues>))
  "Converts a ROS message object to a list"
  (cl:list 'StatisticsValues
    (cl:cons ':header (header msg))
    (cl:cons ':values (values msg))
    (cl:cons ':names_version (names_version msg))
))
