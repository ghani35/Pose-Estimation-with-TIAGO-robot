; Auto-generated. Do not edit!


(cl:in-package tiago_trajectory_controller-msg)


;//! \htmlinclude Control_msg.msg.html

(cl:defclass <Control_msg> (roslisp-msg-protocol:ros-message)
  ((gesture
    :reader gesture
    :initarg :gesture
    :type cl:string
    :initform ""))
)

(cl:defclass Control_msg (<Control_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Control_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Control_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tiago_trajectory_controller-msg:<Control_msg> is deprecated: use tiago_trajectory_controller-msg:Control_msg instead.")))

(cl:ensure-generic-function 'gesture-val :lambda-list '(m))
(cl:defmethod gesture-val ((m <Control_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tiago_trajectory_controller-msg:gesture-val is deprecated.  Use tiago_trajectory_controller-msg:gesture instead.")
  (gesture m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Control_msg>) ostream)
  "Serializes a message object of type '<Control_msg>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'gesture))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'gesture))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Control_msg>) istream)
  "Deserializes a message object of type '<Control_msg>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gesture) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'gesture) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Control_msg>)))
  "Returns string type for a message object of type '<Control_msg>"
  "tiago_trajectory_controller/Control_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Control_msg)))
  "Returns string type for a message object of type 'Control_msg"
  "tiago_trajectory_controller/Control_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Control_msg>)))
  "Returns md5sum for a message object of type '<Control_msg>"
  "61f2a41b9e73483e6fa26641a58eaf74")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Control_msg)))
  "Returns md5sum for a message object of type 'Control_msg"
  "61f2a41b9e73483e6fa26641a58eaf74")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Control_msg>)))
  "Returns full string definition for message of type '<Control_msg>"
  (cl:format cl:nil "string gesture~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Control_msg)))
  "Returns full string definition for message of type 'Control_msg"
  (cl:format cl:nil "string gesture~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Control_msg>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'gesture))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Control_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'Control_msg
    (cl:cons ':gesture (gesture msg))
))
