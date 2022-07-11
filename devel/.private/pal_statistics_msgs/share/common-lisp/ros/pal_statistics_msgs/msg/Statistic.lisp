; Auto-generated. Do not edit!


(cl:in-package pal_statistics_msgs-msg)


;//! \htmlinclude Statistic.msg.html

(cl:defclass <Statistic> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (value
    :reader value
    :initarg :value
    :type cl:float
    :initform 0.0))
)

(cl:defclass Statistic (<Statistic>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Statistic>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Statistic)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_statistics_msgs-msg:<Statistic> is deprecated: use pal_statistics_msgs-msg:Statistic instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Statistic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_statistics_msgs-msg:name-val is deprecated.  Use pal_statistics_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <Statistic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_statistics_msgs-msg:value-val is deprecated.  Use pal_statistics_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Statistic>) ostream)
  "Serializes a message object of type '<Statistic>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Statistic>) istream)
  "Deserializes a message object of type '<Statistic>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'value) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Statistic>)))
  "Returns string type for a message object of type '<Statistic>"
  "pal_statistics_msgs/Statistic")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Statistic)))
  "Returns string type for a message object of type 'Statistic"
  "pal_statistics_msgs/Statistic")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Statistic>)))
  "Returns md5sum for a message object of type '<Statistic>"
  "d8512f27253c0f65f928a67c329cd658")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Statistic)))
  "Returns md5sum for a message object of type 'Statistic"
  "d8512f27253c0f65f928a67c329cd658")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Statistic>)))
  "Returns full string definition for message of type '<Statistic>"
  (cl:format cl:nil "string name~%float64 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Statistic)))
  "Returns full string definition for message of type 'Statistic"
  (cl:format cl:nil "string name~%float64 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Statistic>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Statistic>))
  "Converts a ROS message object to a list"
  (cl:list 'Statistic
    (cl:cons ':name (name msg))
    (cl:cons ':value (value msg))
))
