;; Auto-generated. Do not edit!


(when (boundp 'pal_wifi_localization_msgs::GetWifiMap)
  (if (not (find-package "PAL_WIFI_LOCALIZATION_MSGS"))
    (make-package "PAL_WIFI_LOCALIZATION_MSGS"))
  (shadow 'GetWifiMap (find-package "PAL_WIFI_LOCALIZATION_MSGS")))
(unless (find-package "PAL_WIFI_LOCALIZATION_MSGS::GETWIFIMAP")
  (make-package "PAL_WIFI_LOCALIZATION_MSGS::GETWIFIMAP"))
(unless (find-package "PAL_WIFI_LOCALIZATION_MSGS::GETWIFIMAPREQUEST")
  (make-package "PAL_WIFI_LOCALIZATION_MSGS::GETWIFIMAPREQUEST"))
(unless (find-package "PAL_WIFI_LOCALIZATION_MSGS::GETWIFIMAPRESPONSE")
  (make-package "PAL_WIFI_LOCALIZATION_MSGS::GETWIFIMAPRESPONSE"))

(in-package "ROS")





(defclass pal_wifi_localization_msgs::GetWifiMapRequest
  :super ros::object
  :slots ())

(defmethod pal_wifi_localization_msgs::GetWifiMapRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass pal_wifi_localization_msgs::GetWifiMapResponse
  :super ros::object
  :slots (_map ))

(defmethod pal_wifi_localization_msgs::GetWifiMapResponse
  (:init
   (&key
    ((:map __map) (instance pal_wifi_localization_msgs::WifiSignalMap :init))
    )
   (send-super :init)
   (setq _map __map)
   self)
  (:map
   (&rest __map)
   (if (keywordp (car __map))
       (send* _map __map)
     (progn
       (if __map (setq _map (car __map)))
       _map)))
  (:serialization-length
   ()
   (+
    ;; pal_wifi_localization_msgs/WifiSignalMap _map
    (send _map :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; pal_wifi_localization_msgs/WifiSignalMap _map
       (send _map :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; pal_wifi_localization_msgs/WifiSignalMap _map
     (send _map :deserialize buf ptr-) (incf ptr- (send _map :serialization-length))
   ;;
   self)
  )

(defclass pal_wifi_localization_msgs::GetWifiMap
  :super ros::object
  :slots ())

(setf (get pal_wifi_localization_msgs::GetWifiMap :md5sum-) "4273c0e2a4f41c0c71c07a4fee60fcee")
(setf (get pal_wifi_localization_msgs::GetWifiMap :datatype-) "pal_wifi_localization_msgs/GetWifiMap")
(setf (get pal_wifi_localization_msgs::GetWifiMap :request) pal_wifi_localization_msgs::GetWifiMapRequest)
(setf (get pal_wifi_localization_msgs::GetWifiMap :response) pal_wifi_localization_msgs::GetWifiMapResponse)

(defmethod pal_wifi_localization_msgs::GetWifiMapRequest
  (:response () (instance pal_wifi_localization_msgs::GetWifiMapResponse :init)))

(setf (get pal_wifi_localization_msgs::GetWifiMapRequest :md5sum-) "4273c0e2a4f41c0c71c07a4fee60fcee")
(setf (get pal_wifi_localization_msgs::GetWifiMapRequest :datatype-) "pal_wifi_localization_msgs/GetWifiMapRequest")
(setf (get pal_wifi_localization_msgs::GetWifiMapRequest :definition-)
      "# Get the map as a wifi_map
---
pal_wifi_localization_msgs/WifiSignalMap map


================================================================================
MSG: pal_wifi_localization_msgs/WifiSignalMap
# This represents a 2-D grid map, in which each cell represents the signal strenght models of detected wifi networks.

Header header 

#MetaData for the map
nav_msgs/MapMetaData info

# Define the number of sectors to be used on wifi maps that include orientation info.
uint32 sectors

# The map data, in row-major order, starting with (0,0).  Wifi signal strenght models
# are gaussian probability distribution functions defined by mean and standard deviation value.
WifiSignalList[] data


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
MSG: nav_msgs/MapMetaData
# This hold basic information about the characterists of the OccupancyGrid

# The time at which the map was loaded
time map_load_time
# The map resolution [m/cell]
float32 resolution
# Map width [cells]
uint32 width
# Map height [cells]
uint32 height
# The origin of the map [m, m, rad].  This is the real-world pose of the
# cell (0,0) in the map.
geometry_msgs/Pose origin
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
MSG: pal_wifi_localization_msgs/WifiSignalList
#list of wifi signal models learnt in a specific place

WifiSignal[] networks

time start_time
time end_time

================================================================================
MSG: pal_wifi_localization_msgs/WifiSignal
## Contains data relative to the learnt model of a wifi signal strenght in a specific location

# network id
std_msgs/String id

#Signal is represented through  a gaussian pdf.
#The signal strenght is measured in dB

float32  mean
float32  std_dev



================================================================================
MSG: std_msgs/String
string data
")

(setf (get pal_wifi_localization_msgs::GetWifiMapResponse :md5sum-) "4273c0e2a4f41c0c71c07a4fee60fcee")
(setf (get pal_wifi_localization_msgs::GetWifiMapResponse :datatype-) "pal_wifi_localization_msgs/GetWifiMapResponse")
(setf (get pal_wifi_localization_msgs::GetWifiMapResponse :definition-)
      "# Get the map as a wifi_map
---
pal_wifi_localization_msgs/WifiSignalMap map


================================================================================
MSG: pal_wifi_localization_msgs/WifiSignalMap
# This represents a 2-D grid map, in which each cell represents the signal strenght models of detected wifi networks.

Header header 

#MetaData for the map
nav_msgs/MapMetaData info

# Define the number of sectors to be used on wifi maps that include orientation info.
uint32 sectors

# The map data, in row-major order, starting with (0,0).  Wifi signal strenght models
# are gaussian probability distribution functions defined by mean and standard deviation value.
WifiSignalList[] data


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
MSG: nav_msgs/MapMetaData
# This hold basic information about the characterists of the OccupancyGrid

# The time at which the map was loaded
time map_load_time
# The map resolution [m/cell]
float32 resolution
# Map width [cells]
uint32 width
# Map height [cells]
uint32 height
# The origin of the map [m, m, rad].  This is the real-world pose of the
# cell (0,0) in the map.
geometry_msgs/Pose origin
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
MSG: pal_wifi_localization_msgs/WifiSignalList
#list of wifi signal models learnt in a specific place

WifiSignal[] networks

time start_time
time end_time

================================================================================
MSG: pal_wifi_localization_msgs/WifiSignal
## Contains data relative to the learnt model of a wifi signal strenght in a specific location

# network id
std_msgs/String id

#Signal is represented through  a gaussian pdf.
#The signal strenght is measured in dB

float32  mean
float32  std_dev



================================================================================
MSG: std_msgs/String
string data
")



(provide :pal_wifi_localization_msgs/GetWifiMap "4273c0e2a4f41c0c71c07a4fee60fcee")


