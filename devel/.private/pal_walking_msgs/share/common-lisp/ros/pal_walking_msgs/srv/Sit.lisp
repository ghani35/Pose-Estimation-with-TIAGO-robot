; Auto-generated. Do not edit!


(cl:in-package pal_walking_msgs-srv)


;//! \htmlinclude Sit-request.msg.html

(cl:defclass <Sit-request> (roslisp-msg-protocol:ros-message)
  ((down
    :reader down
    :initarg :down
    :type cl:boolean
    :initform cl:nil)
   (weight_threshold
    :reader weight_threshold
    :initarg :weight_threshold
    :type cl:float
    :initform 0.0))
)

(cl:defclass Sit-request (<Sit-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Sit-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Sit-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_walking_msgs-srv:<Sit-request> is deprecated: use pal_walking_msgs-srv:Sit-request instead.")))

(cl:ensure-generic-function 'down-val :lambda-list '(m))
(cl:defmethod down-val ((m <Sit-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_walking_msgs-srv:down-val is deprecated.  Use pal_walking_msgs-srv:down instead.")
  (down m))

(cl:ensure-generic-function 'weight_threshold-val :lambda-list '(m))
(cl:defmethod weight_threshold-val ((m <Sit-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_walking_msgs-srv:weight_threshold-val is deprecated.  Use pal_walking_msgs-srv:weight_threshold instead.")
  (weight_threshold m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Sit-request>) ostream)
  "Serializes a message object of type '<Sit-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'down) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'weight_threshold))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Sit-request>) istream)
  "Deserializes a message object of type '<Sit-request>"
    (cl:setf (cl:slot-value msg 'down) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'weight_threshold) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Sit-request>)))
  "Returns string type for a service object of type '<Sit-request>"
  "pal_walking_msgs/SitRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Sit-request)))
  "Returns string type for a service object of type 'Sit-request"
  "pal_walking_msgs/SitRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Sit-request>)))
  "Returns md5sum for a message object of type '<Sit-request>"
  "ad6dfe9fa0ab9703a36ca371cf15816f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Sit-request)))
  "Returns md5sum for a message object of type 'Sit-request"
  "ad6dfe9fa0ab9703a36ca371cf15816f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Sit-request>)))
  "Returns full string definition for message of type '<Sit-request>"
  (cl:format cl:nil "# This service requests that the robot lifts one foot at a specified height~%# The parameters are the side and the height~%~%bool    down~%float64 weight_threshold~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Sit-request)))
  "Returns full string definition for message of type 'Sit-request"
  (cl:format cl:nil "# This service requests that the robot lifts one foot at a specified height~%# The parameters are the side and the height~%~%bool    down~%float64 weight_threshold~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Sit-request>))
  (cl:+ 0
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Sit-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Sit-request
    (cl:cons ':down (down msg))
    (cl:cons ':weight_threshold (weight_threshold msg))
))
;//! \htmlinclude Sit-response.msg.html

(cl:defclass <Sit-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Sit-response (<Sit-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Sit-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Sit-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_walking_msgs-srv:<Sit-response> is deprecated: use pal_walking_msgs-srv:Sit-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Sit-response>) ostream)
  "Serializes a message object of type '<Sit-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Sit-response>) istream)
  "Deserializes a message object of type '<Sit-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Sit-response>)))
  "Returns string type for a service object of type '<Sit-response>"
  "pal_walking_msgs/SitResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Sit-response)))
  "Returns string type for a service object of type 'Sit-response"
  "pal_walking_msgs/SitResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Sit-response>)))
  "Returns md5sum for a message object of type '<Sit-response>"
  "ad6dfe9fa0ab9703a36ca371cf15816f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Sit-response)))
  "Returns md5sum for a message object of type 'Sit-response"
  "ad6dfe9fa0ab9703a36ca371cf15816f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Sit-response>)))
  "Returns full string definition for message of type '<Sit-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Sit-response)))
  "Returns full string definition for message of type 'Sit-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Sit-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Sit-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Sit-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Sit)))
  'Sit-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Sit)))
  'Sit-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Sit)))
  "Returns string type for a service object of type '<Sit>"
  "pal_walking_msgs/Sit")