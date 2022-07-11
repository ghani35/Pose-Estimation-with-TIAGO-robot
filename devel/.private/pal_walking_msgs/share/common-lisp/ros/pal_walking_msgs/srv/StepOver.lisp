; Auto-generated. Do not edit!


(cl:in-package pal_walking_msgs-srv)


;//! \htmlinclude StepOver-request.msg.html

(cl:defclass <StepOver-request> (roslisp-msg-protocol:ros-message)
  ((step_length
    :reader step_length
    :initarg :step_length
    :type cl:float
    :initform 0.0)
   (step_time
    :reader step_time
    :initarg :step_time
    :type cl:float
    :initform 0.0)
   (step_height
    :reader step_height
    :initarg :step_height
    :type cl:float
    :initform 0.0)
   (z_lipm
    :reader z_lipm
    :initarg :z_lipm
    :type cl:float
    :initform 0.0))
)

(cl:defclass StepOver-request (<StepOver-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StepOver-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StepOver-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_walking_msgs-srv:<StepOver-request> is deprecated: use pal_walking_msgs-srv:StepOver-request instead.")))

(cl:ensure-generic-function 'step_length-val :lambda-list '(m))
(cl:defmethod step_length-val ((m <StepOver-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_walking_msgs-srv:step_length-val is deprecated.  Use pal_walking_msgs-srv:step_length instead.")
  (step_length m))

(cl:ensure-generic-function 'step_time-val :lambda-list '(m))
(cl:defmethod step_time-val ((m <StepOver-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_walking_msgs-srv:step_time-val is deprecated.  Use pal_walking_msgs-srv:step_time instead.")
  (step_time m))

(cl:ensure-generic-function 'step_height-val :lambda-list '(m))
(cl:defmethod step_height-val ((m <StepOver-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_walking_msgs-srv:step_height-val is deprecated.  Use pal_walking_msgs-srv:step_height instead.")
  (step_height m))

(cl:ensure-generic-function 'z_lipm-val :lambda-list '(m))
(cl:defmethod z_lipm-val ((m <StepOver-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_walking_msgs-srv:z_lipm-val is deprecated.  Use pal_walking_msgs-srv:z_lipm instead.")
  (z_lipm m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StepOver-request>) ostream)
  "Serializes a message object of type '<StepOver-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'step_length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'step_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'step_height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'z_lipm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StepOver-request>) istream)
  "Deserializes a message object of type '<StepOver-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'step_length) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'step_time) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'step_height) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z_lipm) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StepOver-request>)))
  "Returns string type for a service object of type '<StepOver-request>"
  "pal_walking_msgs/StepOverRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StepOver-request)))
  "Returns string type for a service object of type 'StepOver-request"
  "pal_walking_msgs/StepOverRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StepOver-request>)))
  "Returns md5sum for a message object of type '<StepOver-request>"
  "b3759907c1da99fedab7db53a18a936b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StepOver-request)))
  "Returns md5sum for a message object of type 'StepOver-request"
  "b3759907c1da99fedab7db53a18a936b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StepOver-request>)))
  "Returns full string definition for message of type '<StepOver-request>"
  (cl:format cl:nil "# This service requests that the robot step over an obstacle~%# The parameters specify parameters for modifying the step~%~%float64   step_length~%float64   step_time~%float64   step_height~%float64   z_lipm~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StepOver-request)))
  "Returns full string definition for message of type 'StepOver-request"
  (cl:format cl:nil "# This service requests that the robot step over an obstacle~%# The parameters specify parameters for modifying the step~%~%float64   step_length~%float64   step_time~%float64   step_height~%float64   z_lipm~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StepOver-request>))
  (cl:+ 0
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StepOver-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StepOver-request
    (cl:cons ':step_length (step_length msg))
    (cl:cons ':step_time (step_time msg))
    (cl:cons ':step_height (step_height msg))
    (cl:cons ':z_lipm (z_lipm msg))
))
;//! \htmlinclude StepOver-response.msg.html

(cl:defclass <StepOver-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform ""))
)

(cl:defclass StepOver-response (<StepOver-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StepOver-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StepOver-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_walking_msgs-srv:<StepOver-response> is deprecated: use pal_walking_msgs-srv:StepOver-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <StepOver-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_walking_msgs-srv:result-val is deprecated.  Use pal_walking_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StepOver-response>) ostream)
  "Serializes a message object of type '<StepOver-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StepOver-response>) istream)
  "Deserializes a message object of type '<StepOver-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'result) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StepOver-response>)))
  "Returns string type for a service object of type '<StepOver-response>"
  "pal_walking_msgs/StepOverResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StepOver-response)))
  "Returns string type for a service object of type 'StepOver-response"
  "pal_walking_msgs/StepOverResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StepOver-response>)))
  "Returns md5sum for a message object of type '<StepOver-response>"
  "b3759907c1da99fedab7db53a18a936b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StepOver-response)))
  "Returns md5sum for a message object of type 'StepOver-response"
  "b3759907c1da99fedab7db53a18a936b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StepOver-response>)))
  "Returns full string definition for message of type '<StepOver-response>"
  (cl:format cl:nil "~%string    result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StepOver-response)))
  "Returns full string definition for message of type 'StepOver-response"
  (cl:format cl:nil "~%string    result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StepOver-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StepOver-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StepOver-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StepOver)))
  'StepOver-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StepOver)))
  'StepOver-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StepOver)))
  "Returns string type for a service object of type '<StepOver>"
  "pal_walking_msgs/StepOver")