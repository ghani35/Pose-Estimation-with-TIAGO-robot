; Auto-generated. Do not edit!


(cl:in-package pal_walking_msgs-srv)


;//! \htmlinclude MoveHipFeet-request.msg.html

(cl:defclass <MoveHipFeet-request> (roslisp-msg-protocol:ros-message)
  ((hip_poses
    :reader hip_poses
    :initarg :hip_poses
    :type geometry_msgs-msg:PoseArray
    :initform (cl:make-instance 'geometry_msgs-msg:PoseArray))
   (left_foot_poses
    :reader left_foot_poses
    :initarg :left_foot_poses
    :type geometry_msgs-msg:PoseArray
    :initform (cl:make-instance 'geometry_msgs-msg:PoseArray))
   (right_foot_poses
    :reader right_foot_poses
    :initarg :right_foot_poses
    :type geometry_msgs-msg:PoseArray
    :initform (cl:make-instance 'geometry_msgs-msg:PoseArray))
   (times_after_previous
    :reader times_after_previous
    :initarg :times_after_previous
    :type (cl:vector cl:real)
   :initform (cl:make-array 0 :element-type 'cl:real :initial-element 0)))
)

(cl:defclass MoveHipFeet-request (<MoveHipFeet-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveHipFeet-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveHipFeet-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_walking_msgs-srv:<MoveHipFeet-request> is deprecated: use pal_walking_msgs-srv:MoveHipFeet-request instead.")))

(cl:ensure-generic-function 'hip_poses-val :lambda-list '(m))
(cl:defmethod hip_poses-val ((m <MoveHipFeet-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_walking_msgs-srv:hip_poses-val is deprecated.  Use pal_walking_msgs-srv:hip_poses instead.")
  (hip_poses m))

(cl:ensure-generic-function 'left_foot_poses-val :lambda-list '(m))
(cl:defmethod left_foot_poses-val ((m <MoveHipFeet-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_walking_msgs-srv:left_foot_poses-val is deprecated.  Use pal_walking_msgs-srv:left_foot_poses instead.")
  (left_foot_poses m))

(cl:ensure-generic-function 'right_foot_poses-val :lambda-list '(m))
(cl:defmethod right_foot_poses-val ((m <MoveHipFeet-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_walking_msgs-srv:right_foot_poses-val is deprecated.  Use pal_walking_msgs-srv:right_foot_poses instead.")
  (right_foot_poses m))

(cl:ensure-generic-function 'times_after_previous-val :lambda-list '(m))
(cl:defmethod times_after_previous-val ((m <MoveHipFeet-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_walking_msgs-srv:times_after_previous-val is deprecated.  Use pal_walking_msgs-srv:times_after_previous instead.")
  (times_after_previous m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveHipFeet-request>) ostream)
  "Serializes a message object of type '<MoveHipFeet-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'hip_poses) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_foot_poses) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_foot_poses) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'times_after_previous))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__sec (cl:floor ele))
        (__nsec (cl:round (cl:* 1e9 (cl:- ele (cl:floor ele))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream)))
   (cl:slot-value msg 'times_after_previous))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveHipFeet-request>) istream)
  "Deserializes a message object of type '<MoveHipFeet-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'hip_poses) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_foot_poses) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_foot_poses) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'times_after_previous) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'times_after_previous)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveHipFeet-request>)))
  "Returns string type for a service object of type '<MoveHipFeet-request>"
  "pal_walking_msgs/MoveHipFeetRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveHipFeet-request)))
  "Returns string type for a service object of type 'MoveHipFeet-request"
  "pal_walking_msgs/MoveHipFeetRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveHipFeet-request>)))
  "Returns md5sum for a message object of type '<MoveHipFeet-request>"
  "2ee43076f2da7aab2dbbf598a7709593")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveHipFeet-request)))
  "Returns md5sum for a message object of type 'MoveHipFeet-request"
  "2ee43076f2da7aab2dbbf598a7709593")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveHipFeet-request>)))
  "Returns full string definition for message of type '<MoveHipFeet-request>"
  (cl:format cl:nil "# This service requests that the robot move the hip and feet in cartesian space~%# The parameters are the waypoints and time to reach that poses~%~%geometry_msgs/PoseArray hip_poses~%~%geometry_msgs/PoseArray left_foot_poses~%~%geometry_msgs/PoseArray right_foot_poses~%~%duration[]              times_after_previous~%~%================================================================================~%MSG: geometry_msgs/PoseArray~%# An array of poses with a header for global reference.~%~%Header header~%~%Pose[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveHipFeet-request)))
  "Returns full string definition for message of type 'MoveHipFeet-request"
  (cl:format cl:nil "# This service requests that the robot move the hip and feet in cartesian space~%# The parameters are the waypoints and time to reach that poses~%~%geometry_msgs/PoseArray hip_poses~%~%geometry_msgs/PoseArray left_foot_poses~%~%geometry_msgs/PoseArray right_foot_poses~%~%duration[]              times_after_previous~%~%================================================================================~%MSG: geometry_msgs/PoseArray~%# An array of poses with a header for global reference.~%~%Header header~%~%Pose[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveHipFeet-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'hip_poses))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_foot_poses))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_foot_poses))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'times_after_previous) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveHipFeet-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveHipFeet-request
    (cl:cons ':hip_poses (hip_poses msg))
    (cl:cons ':left_foot_poses (left_foot_poses msg))
    (cl:cons ':right_foot_poses (right_foot_poses msg))
    (cl:cons ':times_after_previous (times_after_previous msg))
))
;//! \htmlinclude MoveHipFeet-response.msg.html

(cl:defclass <MoveHipFeet-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass MoveHipFeet-response (<MoveHipFeet-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveHipFeet-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveHipFeet-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_walking_msgs-srv:<MoveHipFeet-response> is deprecated: use pal_walking_msgs-srv:MoveHipFeet-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveHipFeet-response>) ostream)
  "Serializes a message object of type '<MoveHipFeet-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveHipFeet-response>) istream)
  "Deserializes a message object of type '<MoveHipFeet-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveHipFeet-response>)))
  "Returns string type for a service object of type '<MoveHipFeet-response>"
  "pal_walking_msgs/MoveHipFeetResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveHipFeet-response)))
  "Returns string type for a service object of type 'MoveHipFeet-response"
  "pal_walking_msgs/MoveHipFeetResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveHipFeet-response>)))
  "Returns md5sum for a message object of type '<MoveHipFeet-response>"
  "2ee43076f2da7aab2dbbf598a7709593")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveHipFeet-response)))
  "Returns md5sum for a message object of type 'MoveHipFeet-response"
  "2ee43076f2da7aab2dbbf598a7709593")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveHipFeet-response>)))
  "Returns full string definition for message of type '<MoveHipFeet-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveHipFeet-response)))
  "Returns full string definition for message of type 'MoveHipFeet-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveHipFeet-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveHipFeet-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveHipFeet-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MoveHipFeet)))
  'MoveHipFeet-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MoveHipFeet)))
  'MoveHipFeet-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveHipFeet)))
  "Returns string type for a service object of type '<MoveHipFeet>"
  "pal_walking_msgs/MoveHipFeet")