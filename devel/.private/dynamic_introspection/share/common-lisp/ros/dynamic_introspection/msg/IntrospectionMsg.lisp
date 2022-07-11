; Auto-generated. Do not edit!


(cl:in-package dynamic_introspection-msg)


;//! \htmlinclude IntrospectionMsg.msg.html

(cl:defclass <IntrospectionMsg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (bools
    :reader bools
    :initarg :bools
    :type (cl:vector dynamic_introspection-msg:BoolParameter)
   :initform (cl:make-array 0 :element-type 'dynamic_introspection-msg:BoolParameter :initial-element (cl:make-instance 'dynamic_introspection-msg:BoolParameter)))
   (doubles
    :reader doubles
    :initarg :doubles
    :type (cl:vector dynamic_introspection-msg:DoubleParameter)
   :initform (cl:make-array 0 :element-type 'dynamic_introspection-msg:DoubleParameter :initial-element (cl:make-instance 'dynamic_introspection-msg:DoubleParameter)))
   (ints
    :reader ints
    :initarg :ints
    :type (cl:vector dynamic_introspection-msg:IntParameter)
   :initform (cl:make-array 0 :element-type 'dynamic_introspection-msg:IntParameter :initial-element (cl:make-instance 'dynamic_introspection-msg:IntParameter)))
   (markers
    :reader markers
    :initarg :markers
    :type (cl:vector dynamic_introspection-msg:MarkerParameter)
   :initform (cl:make-array 0 :element-type 'dynamic_introspection-msg:MarkerParameter :initial-element (cl:make-instance 'dynamic_introspection-msg:MarkerParameter))))
)

(cl:defclass IntrospectionMsg (<IntrospectionMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IntrospectionMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IntrospectionMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dynamic_introspection-msg:<IntrospectionMsg> is deprecated: use dynamic_introspection-msg:IntrospectionMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <IntrospectionMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamic_introspection-msg:header-val is deprecated.  Use dynamic_introspection-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'bools-val :lambda-list '(m))
(cl:defmethod bools-val ((m <IntrospectionMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamic_introspection-msg:bools-val is deprecated.  Use dynamic_introspection-msg:bools instead.")
  (bools m))

(cl:ensure-generic-function 'doubles-val :lambda-list '(m))
(cl:defmethod doubles-val ((m <IntrospectionMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamic_introspection-msg:doubles-val is deprecated.  Use dynamic_introspection-msg:doubles instead.")
  (doubles m))

(cl:ensure-generic-function 'ints-val :lambda-list '(m))
(cl:defmethod ints-val ((m <IntrospectionMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamic_introspection-msg:ints-val is deprecated.  Use dynamic_introspection-msg:ints instead.")
  (ints m))

(cl:ensure-generic-function 'markers-val :lambda-list '(m))
(cl:defmethod markers-val ((m <IntrospectionMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dynamic_introspection-msg:markers-val is deprecated.  Use dynamic_introspection-msg:markers instead.")
  (markers m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IntrospectionMsg>) ostream)
  "Serializes a message object of type '<IntrospectionMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'bools))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'bools))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'doubles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'doubles))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'ints))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'markers))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'markers))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IntrospectionMsg>) istream)
  "Deserializes a message object of type '<IntrospectionMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'bools) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'bools)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dynamic_introspection-msg:BoolParameter))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'doubles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'doubles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dynamic_introspection-msg:DoubleParameter))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dynamic_introspection-msg:IntParameter))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'markers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'markers)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dynamic_introspection-msg:MarkerParameter))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IntrospectionMsg>)))
  "Returns string type for a message object of type '<IntrospectionMsg>"
  "dynamic_introspection/IntrospectionMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IntrospectionMsg)))
  "Returns string type for a message object of type 'IntrospectionMsg"
  "dynamic_introspection/IntrospectionMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IntrospectionMsg>)))
  "Returns md5sum for a message object of type '<IntrospectionMsg>"
  "abf14c63c888d80e823c2b0710f2d3a3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IntrospectionMsg)))
  "Returns md5sum for a message object of type 'IntrospectionMsg"
  "abf14c63c888d80e823c2b0710f2d3a3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IntrospectionMsg>)))
  "Returns full string definition for message of type '<IntrospectionMsg>"
  (cl:format cl:nil "std_msgs/Header header~%BoolParameter[] bools~%DoubleParameter[] doubles~%IntParameter[] ints~%~%MarkerParameter[] markers~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: dynamic_introspection/BoolParameter~%string name~%bool value~%~%================================================================================~%MSG: dynamic_introspection/DoubleParameter~%string name~%float64 value~%~%================================================================================~%MSG: dynamic_introspection/IntParameter~%string name~%int32 value~%~%================================================================================~%MSG: dynamic_introspection/MarkerParameter~%string name~%visualization_msgs/MarkerArray value~%~%================================================================================~%MSG: visualization_msgs/MarkerArray~%Marker[] markers~%~%================================================================================~%MSG: visualization_msgs/Marker~%# See http://www.ros.org/wiki/rviz/DisplayTypes/Marker and http://www.ros.org/wiki/rviz/Tutorials/Markers%3A%20Basic%20Shapes for more information on using this message with rviz~%~%uint8 ARROW=0~%uint8 CUBE=1~%uint8 SPHERE=2~%uint8 CYLINDER=3~%uint8 LINE_STRIP=4~%uint8 LINE_LIST=5~%uint8 CUBE_LIST=6~%uint8 SPHERE_LIST=7~%uint8 POINTS=8~%uint8 TEXT_VIEW_FACING=9~%uint8 MESH_RESOURCE=10~%uint8 TRIANGLE_LIST=11~%~%uint8 ADD=0~%uint8 MODIFY=0~%uint8 DELETE=2~%uint8 DELETEALL=3~%~%Header header                        # header for time/frame information~%string ns                            # Namespace to place this object in... used in conjunction with id to create a unique name for the object~%int32 id 		                         # object ID useful in conjunction with the namespace for manipulating and deleting the object later~%int32 type 		                       # Type of object~%int32 action 	                       # 0 add/modify an object, 1 (deprecated), 2 deletes an object, 3 deletes all objects~%geometry_msgs/Pose pose                 # Pose of the object~%geometry_msgs/Vector3 scale             # Scale of the object 1,1,1 means default (usually 1 meter square)~%std_msgs/ColorRGBA color             # Color [0.0-1.0]~%duration lifetime                    # How long the object should last before being automatically deleted.  0 means forever~%bool frame_locked                    # If this marker should be frame-locked, i.e. retransformed into its frame every timestep~%~%#Only used if the type specified has some use for them (eg. POINTS, LINE_STRIP, ...)~%geometry_msgs/Point[] points~%#Only used if the type specified has some use for them (eg. POINTS, LINE_STRIP, ...)~%#number of colors must either be 0 or equal to the number of points~%#NOTE: alpha is not yet used~%std_msgs/ColorRGBA[] colors~%~%# NOTE: only used for text markers~%string text~%~%# NOTE: only used for MESH_RESOURCE markers~%string mesh_resource~%bool mesh_use_embedded_materials~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IntrospectionMsg)))
  "Returns full string definition for message of type 'IntrospectionMsg"
  (cl:format cl:nil "std_msgs/Header header~%BoolParameter[] bools~%DoubleParameter[] doubles~%IntParameter[] ints~%~%MarkerParameter[] markers~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: dynamic_introspection/BoolParameter~%string name~%bool value~%~%================================================================================~%MSG: dynamic_introspection/DoubleParameter~%string name~%float64 value~%~%================================================================================~%MSG: dynamic_introspection/IntParameter~%string name~%int32 value~%~%================================================================================~%MSG: dynamic_introspection/MarkerParameter~%string name~%visualization_msgs/MarkerArray value~%~%================================================================================~%MSG: visualization_msgs/MarkerArray~%Marker[] markers~%~%================================================================================~%MSG: visualization_msgs/Marker~%# See http://www.ros.org/wiki/rviz/DisplayTypes/Marker and http://www.ros.org/wiki/rviz/Tutorials/Markers%3A%20Basic%20Shapes for more information on using this message with rviz~%~%uint8 ARROW=0~%uint8 CUBE=1~%uint8 SPHERE=2~%uint8 CYLINDER=3~%uint8 LINE_STRIP=4~%uint8 LINE_LIST=5~%uint8 CUBE_LIST=6~%uint8 SPHERE_LIST=7~%uint8 POINTS=8~%uint8 TEXT_VIEW_FACING=9~%uint8 MESH_RESOURCE=10~%uint8 TRIANGLE_LIST=11~%~%uint8 ADD=0~%uint8 MODIFY=0~%uint8 DELETE=2~%uint8 DELETEALL=3~%~%Header header                        # header for time/frame information~%string ns                            # Namespace to place this object in... used in conjunction with id to create a unique name for the object~%int32 id 		                         # object ID useful in conjunction with the namespace for manipulating and deleting the object later~%int32 type 		                       # Type of object~%int32 action 	                       # 0 add/modify an object, 1 (deprecated), 2 deletes an object, 3 deletes all objects~%geometry_msgs/Pose pose                 # Pose of the object~%geometry_msgs/Vector3 scale             # Scale of the object 1,1,1 means default (usually 1 meter square)~%std_msgs/ColorRGBA color             # Color [0.0-1.0]~%duration lifetime                    # How long the object should last before being automatically deleted.  0 means forever~%bool frame_locked                    # If this marker should be frame-locked, i.e. retransformed into its frame every timestep~%~%#Only used if the type specified has some use for them (eg. POINTS, LINE_STRIP, ...)~%geometry_msgs/Point[] points~%#Only used if the type specified has some use for them (eg. POINTS, LINE_STRIP, ...)~%#number of colors must either be 0 or equal to the number of points~%#NOTE: alpha is not yet used~%std_msgs/ColorRGBA[] colors~%~%# NOTE: only used for text markers~%string text~%~%# NOTE: only used for MESH_RESOURCE markers~%string mesh_resource~%bool mesh_use_embedded_materials~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IntrospectionMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'bools) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'doubles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'markers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IntrospectionMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'IntrospectionMsg
    (cl:cons ':header (header msg))
    (cl:cons ':bools (bools msg))
    (cl:cons ':doubles (doubles msg))
    (cl:cons ':ints (ints msg))
    (cl:cons ':markers (markers msg))
))
