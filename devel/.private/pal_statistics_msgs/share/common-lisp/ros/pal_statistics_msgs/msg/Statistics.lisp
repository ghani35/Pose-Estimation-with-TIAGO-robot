; Auto-generated. Do not edit!


(cl:in-package pal_statistics_msgs-msg)


;//! \htmlinclude Statistics.msg.html

(cl:defclass <Statistics> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (statistics
    :reader statistics
    :initarg :statistics
    :type (cl:vector pal_statistics_msgs-msg:Statistic)
   :initform (cl:make-array 0 :element-type 'pal_statistics_msgs-msg:Statistic :initial-element (cl:make-instance 'pal_statistics_msgs-msg:Statistic))))
)

(cl:defclass Statistics (<Statistics>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Statistics>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Statistics)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_statistics_msgs-msg:<Statistics> is deprecated: use pal_statistics_msgs-msg:Statistics instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Statistics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_statistics_msgs-msg:header-val is deprecated.  Use pal_statistics_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'statistics-val :lambda-list '(m))
(cl:defmethod statistics-val ((m <Statistics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_statistics_msgs-msg:statistics-val is deprecated.  Use pal_statistics_msgs-msg:statistics instead.")
  (statistics m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Statistics>) ostream)
  "Serializes a message object of type '<Statistics>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'statistics))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'statistics))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Statistics>) istream)
  "Deserializes a message object of type '<Statistics>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'statistics) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'statistics)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pal_statistics_msgs-msg:Statistic))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Statistics>)))
  "Returns string type for a message object of type '<Statistics>"
  "pal_statistics_msgs/Statistics")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Statistics)))
  "Returns string type for a message object of type 'Statistics"
  "pal_statistics_msgs/Statistics")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Statistics>)))
  "Returns md5sum for a message object of type '<Statistics>"
  "3f331753b5cb45fe4c2ecf2b2c5f78ac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Statistics)))
  "Returns md5sum for a message object of type 'Statistics"
  "3f331753b5cb45fe4c2ecf2b2c5f78ac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Statistics>)))
  "Returns full string definition for message of type '<Statistics>"
  (cl:format cl:nil "# header~%Header header~%~%# Statistics~%Statistic[] statistics~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: pal_statistics_msgs/Statistic~%string name~%float64 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Statistics)))
  "Returns full string definition for message of type 'Statistics"
  (cl:format cl:nil "# header~%Header header~%~%# Statistics~%Statistic[] statistics~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: pal_statistics_msgs/Statistic~%string name~%float64 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Statistics>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'statistics) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Statistics>))
  "Converts a ROS message object to a list"
  (cl:list 'Statistics
    (cl:cons ':header (header msg))
    (cl:cons ':statistics (statistics msg))
))
