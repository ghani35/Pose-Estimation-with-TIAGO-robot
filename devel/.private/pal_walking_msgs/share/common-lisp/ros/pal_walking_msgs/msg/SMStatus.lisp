; Auto-generated. Do not edit!


(cl:in-package pal_walking_msgs-msg)


;//! \htmlinclude SMStatus.msg.html

(cl:defclass <SMStatus> (roslisp-msg-protocol:ros-message)
  ((left_foot_pose
    :reader left_foot_pose
    :initarg :left_foot_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (right_foot_pose
    :reader right_foot_pose
    :initarg :right_foot_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (stance_foot_side
    :reader stance_foot_side
    :initarg :stance_foot_side
    :type cl:fixnum
    :initform 0)
   (future_swing_landing_pose
    :reader future_swing_landing_pose
    :initarg :future_swing_landing_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (future_swing_side
    :reader future_swing_side
    :initarg :future_swing_side
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SMStatus (<SMStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SMStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SMStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_walking_msgs-msg:<SMStatus> is deprecated: use pal_walking_msgs-msg:SMStatus instead.")))

(cl:ensure-generic-function 'left_foot_pose-val :lambda-list '(m))
(cl:defmethod left_foot_pose-val ((m <SMStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_walking_msgs-msg:left_foot_pose-val is deprecated.  Use pal_walking_msgs-msg:left_foot_pose instead.")
  (left_foot_pose m))

(cl:ensure-generic-function 'right_foot_pose-val :lambda-list '(m))
(cl:defmethod right_foot_pose-val ((m <SMStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_walking_msgs-msg:right_foot_pose-val is deprecated.  Use pal_walking_msgs-msg:right_foot_pose instead.")
  (right_foot_pose m))

(cl:ensure-generic-function 'stance_foot_side-val :lambda-list '(m))
(cl:defmethod stance_foot_side-val ((m <SMStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_walking_msgs-msg:stance_foot_side-val is deprecated.  Use pal_walking_msgs-msg:stance_foot_side instead.")
  (stance_foot_side m))

(cl:ensure-generic-function 'future_swing_landing_pose-val :lambda-list '(m))
(cl:defmethod future_swing_landing_pose-val ((m <SMStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_walking_msgs-msg:future_swing_landing_pose-val is deprecated.  Use pal_walking_msgs-msg:future_swing_landing_pose instead.")
  (future_swing_landing_pose m))

(cl:ensure-generic-function 'future_swing_side-val :lambda-list '(m))
(cl:defmethod future_swing_side-val ((m <SMStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_walking_msgs-msg:future_swing_side-val is deprecated.  Use pal_walking_msgs-msg:future_swing_side instead.")
  (future_swing_side m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SMStatus>)))
    "Constants for message type '<SMStatus>"
  '((:RIGHT . 1)
    (:LEFT . 0))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SMStatus)))
    "Constants for message type 'SMStatus"
  '((:RIGHT . 1)
    (:LEFT . 0))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SMStatus>) ostream)
  "Serializes a message object of type '<SMStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_foot_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_foot_pose) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stance_foot_side)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'future_swing_landing_pose) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'future_swing_side)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SMStatus>) istream)
  "Deserializes a message object of type '<SMStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_foot_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_foot_pose) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stance_foot_side)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'future_swing_landing_pose) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'future_swing_side)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SMStatus>)))
  "Returns string type for a message object of type '<SMStatus>"
  "pal_walking_msgs/SMStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SMStatus)))
  "Returns string type for a message object of type 'SMStatus"
  "pal_walking_msgs/SMStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SMStatus>)))
  "Returns md5sum for a message object of type '<SMStatus>"
  "c7b8f29539d1ef0f23de0a00992a911c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SMStatus)))
  "Returns md5sum for a message object of type 'SMStatus"
  "c7b8f29539d1ef0f23de0a00992a911c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SMStatus>)))
  "Returns full string definition for message of type '<SMStatus>"
  (cl:format cl:nil "geometry_msgs/Pose left_foot_pose~%geometry_msgs/Pose right_foot_pose~%uint8 stance_foot_side~%~%geometry_msgs/Pose future_swing_landing_pose~%uint8 future_swing_side~%~%uint8 right=1               # right leg constant~%uint8 left=0                # left leg constant~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SMStatus)))
  "Returns full string definition for message of type 'SMStatus"
  (cl:format cl:nil "geometry_msgs/Pose left_foot_pose~%geometry_msgs/Pose right_foot_pose~%uint8 stance_foot_side~%~%geometry_msgs/Pose future_swing_landing_pose~%uint8 future_swing_side~%~%uint8 right=1               # right leg constant~%uint8 left=0                # left leg constant~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SMStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_foot_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_foot_pose))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'future_swing_landing_pose))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SMStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'SMStatus
    (cl:cons ':left_foot_pose (left_foot_pose msg))
    (cl:cons ':right_foot_pose (right_foot_pose msg))
    (cl:cons ':stance_foot_side (stance_foot_side msg))
    (cl:cons ':future_swing_landing_pose (future_swing_landing_pose msg))
    (cl:cons ':future_swing_side (future_swing_side msg))
))
