;; Auto-generated. Do not edit!


(when (boundp 'dynamic_introspection::IntrospectionMsg)
  (if (not (find-package "DYNAMIC_INTROSPECTION"))
    (make-package "DYNAMIC_INTROSPECTION"))
  (shadow 'IntrospectionMsg (find-package "DYNAMIC_INTROSPECTION")))
(unless (find-package "DYNAMIC_INTROSPECTION::INTROSPECTIONMSG")
  (make-package "DYNAMIC_INTROSPECTION::INTROSPECTIONMSG"))

(in-package "ROS")
;;//! \htmlinclude IntrospectionMsg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass dynamic_introspection::IntrospectionMsg
  :super ros::object
  :slots (_header _bools _doubles _ints _markers ))

(defmethod dynamic_introspection::IntrospectionMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:bools __bools) (let (r) (dotimes (i 0) (push (instance dynamic_introspection::BoolParameter :init) r)) r))
    ((:doubles __doubles) (let (r) (dotimes (i 0) (push (instance dynamic_introspection::DoubleParameter :init) r)) r))
    ((:ints __ints) (let (r) (dotimes (i 0) (push (instance dynamic_introspection::IntParameter :init) r)) r))
    ((:markers __markers) (let (r) (dotimes (i 0) (push (instance dynamic_introspection::MarkerParameter :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _bools __bools)
   (setq _doubles __doubles)
   (setq _ints __ints)
   (setq _markers __markers)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:bools
   (&rest __bools)
   (if (keywordp (car __bools))
       (send* _bools __bools)
     (progn
       (if __bools (setq _bools (car __bools)))
       _bools)))
  (:doubles
   (&rest __doubles)
   (if (keywordp (car __doubles))
       (send* _doubles __doubles)
     (progn
       (if __doubles (setq _doubles (car __doubles)))
       _doubles)))
  (:ints
   (&rest __ints)
   (if (keywordp (car __ints))
       (send* _ints __ints)
     (progn
       (if __ints (setq _ints (car __ints)))
       _ints)))
  (:markers
   (&rest __markers)
   (if (keywordp (car __markers))
       (send* _markers __markers)
     (progn
       (if __markers (setq _markers (car __markers)))
       _markers)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; dynamic_introspection/BoolParameter[] _bools
    (apply #'+ (send-all _bools :serialization-length)) 4
    ;; dynamic_introspection/DoubleParameter[] _doubles
    (apply #'+ (send-all _doubles :serialization-length)) 4
    ;; dynamic_introspection/IntParameter[] _ints
    (apply #'+ (send-all _ints :serialization-length)) 4
    ;; dynamic_introspection/MarkerParameter[] _markers
    (apply #'+ (send-all _markers :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; dynamic_introspection/BoolParameter[] _bools
     (write-long (length _bools) s)
     (dolist (elem _bools)
       (send elem :serialize s)
       )
     ;; dynamic_introspection/DoubleParameter[] _doubles
     (write-long (length _doubles) s)
     (dolist (elem _doubles)
       (send elem :serialize s)
       )
     ;; dynamic_introspection/IntParameter[] _ints
     (write-long (length _ints) s)
     (dolist (elem _ints)
       (send elem :serialize s)
       )
     ;; dynamic_introspection/MarkerParameter[] _markers
     (write-long (length _markers) s)
     (dolist (elem _markers)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; dynamic_introspection/BoolParameter[] _bools
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _bools (let (r) (dotimes (i n) (push (instance dynamic_introspection::BoolParameter :init) r)) r))
     (dolist (elem- _bools)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; dynamic_introspection/DoubleParameter[] _doubles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _doubles (let (r) (dotimes (i n) (push (instance dynamic_introspection::DoubleParameter :init) r)) r))
     (dolist (elem- _doubles)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; dynamic_introspection/IntParameter[] _ints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ints (let (r) (dotimes (i n) (push (instance dynamic_introspection::IntParameter :init) r)) r))
     (dolist (elem- _ints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; dynamic_introspection/MarkerParameter[] _markers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _markers (let (r) (dotimes (i n) (push (instance dynamic_introspection::MarkerParameter :init) r)) r))
     (dolist (elem- _markers)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get dynamic_introspection::IntrospectionMsg :md5sum-) "abf14c63c888d80e823c2b0710f2d3a3")
(setf (get dynamic_introspection::IntrospectionMsg :datatype-) "dynamic_introspection/IntrospectionMsg")
(setf (get dynamic_introspection::IntrospectionMsg :definition-)
      "std_msgs/Header header
BoolParameter[] bools
DoubleParameter[] doubles
IntParameter[] ints

MarkerParameter[] markers


================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: dynamic_introspection/BoolParameter
string name
bool value

================================================================================
MSG: dynamic_introspection/DoubleParameter
string name
float64 value

================================================================================
MSG: dynamic_introspection/IntParameter
string name
int32 value

================================================================================
MSG: dynamic_introspection/MarkerParameter
string name
visualization_msgs/MarkerArray value

================================================================================
MSG: visualization_msgs/MarkerArray
Marker[] markers

================================================================================
MSG: visualization_msgs/Marker
# See http://www.ros.org/wiki/rviz/DisplayTypes/Marker and http://www.ros.org/wiki/rviz/Tutorials/Markers%3A%20Basic%20Shapes for more information on using this message with rviz

uint8 ARROW=0
uint8 CUBE=1
uint8 SPHERE=2
uint8 CYLINDER=3
uint8 LINE_STRIP=4
uint8 LINE_LIST=5
uint8 CUBE_LIST=6
uint8 SPHERE_LIST=7
uint8 POINTS=8
uint8 TEXT_VIEW_FACING=9
uint8 MESH_RESOURCE=10
uint8 TRIANGLE_LIST=11

uint8 ADD=0
uint8 MODIFY=0
uint8 DELETE=2
uint8 DELETEALL=3

Header header                        # header for time/frame information
string ns                            # Namespace to place this object in... used in conjunction with id to create a unique name for the object
int32 id 		                         # object ID useful in conjunction with the namespace for manipulating and deleting the object later
int32 type 		                       # Type of object
int32 action 	                       # 0 add/modify an object, 1 (deprecated), 2 deletes an object, 3 deletes all objects
geometry_msgs/Pose pose                 # Pose of the object
geometry_msgs/Vector3 scale             # Scale of the object 1,1,1 means default (usually 1 meter square)
std_msgs/ColorRGBA color             # Color [0.0-1.0]
duration lifetime                    # How long the object should last before being automatically deleted.  0 means forever
bool frame_locked                    # If this marker should be frame-locked, i.e. retransformed into its frame every timestep

#Only used if the type specified has some use for them (eg. POINTS, LINE_STRIP, ...)
geometry_msgs/Point[] points
#Only used if the type specified has some use for them (eg. POINTS, LINE_STRIP, ...)
#number of colors must either be 0 or equal to the number of points
#NOTE: alpha is not yet used
std_msgs/ColorRGBA[] colors

# NOTE: only used for text markers
string text

# NOTE: only used for MESH_RESOURCE markers
string mesh_resource
bool mesh_use_embedded_materials

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a

")



(provide :dynamic_introspection/IntrospectionMsg "abf14c63c888d80e823c2b0710f2d3a3")


