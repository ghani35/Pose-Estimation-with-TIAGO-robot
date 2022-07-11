; Auto-generated. Do not edit!


(cl:in-package pal_walking_msgs-msg)


;//! \htmlinclude ContactState.msg.html

(cl:defclass <ContactState> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ContactState (<ContactState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ContactState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ContactState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_walking_msgs-msg:<ContactState> is deprecated: use pal_walking_msgs-msg:ContactState instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <ContactState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_walking_msgs-msg:type-val is deprecated.  Use pal_walking_msgs-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ContactState>)))
    "Constants for message type '<ContactState>"
  '((:TYPE_DS . 0)
    (:TYPE_LSS . 1)
    (:TYPE_RSS . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ContactState)))
    "Constants for message type 'ContactState"
  '((:TYPE_DS . 0)
    (:TYPE_LSS . 1)
    (:TYPE_RSS . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ContactState>) ostream)
  "Serializes a message object of type '<ContactState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ContactState>) istream)
  "Deserializes a message object of type '<ContactState>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ContactState>)))
  "Returns string type for a message object of type '<ContactState>"
  "pal_walking_msgs/ContactState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ContactState)))
  "Returns string type for a message object of type 'ContactState"
  "pal_walking_msgs/ContactState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ContactState>)))
  "Returns md5sum for a message object of type '<ContactState>"
  "62c8194a0947d63a7094b91a2e31813f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ContactState)))
  "Returns md5sum for a message object of type 'ContactState"
  "62c8194a0947d63a7094b91a2e31813f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ContactState>)))
  "Returns full string definition for message of type '<ContactState>"
  (cl:format cl:nil "uint8 TYPE_DS=0~%uint8 TYPE_LSS=1~%uint8 TYPE_RSS=2~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ContactState)))
  "Returns full string definition for message of type 'ContactState"
  (cl:format cl:nil "uint8 TYPE_DS=0~%uint8 TYPE_LSS=1~%uint8 TYPE_RSS=2~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ContactState>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ContactState>))
  "Converts a ROS message object to a list"
  (cl:list 'ContactState
    (cl:cons ':type (type msg))
))
