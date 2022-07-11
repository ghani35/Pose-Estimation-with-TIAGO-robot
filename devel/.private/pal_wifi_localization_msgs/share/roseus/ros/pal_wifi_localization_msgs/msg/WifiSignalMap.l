;; Auto-generated. Do not edit!


(when (boundp 'pal_wifi_localization_msgs::WifiSignalMap)
  (if (not (find-package "PAL_WIFI_LOCALIZATION_MSGS"))
    (make-package "PAL_WIFI_LOCALIZATION_MSGS"))
  (shadow 'WifiSignalMap (find-package "PAL_WIFI_LOCALIZATION_MSGS")))
(unless (find-package "PAL_WIFI_LOCALIZATION_MSGS::WIFISIGNALMAP")
  (make-package "PAL_WIFI_LOCALIZATION_MSGS::WIFISIGNALMAP"))

(in-package "ROS")
;;//! \htmlinclude WifiSignalMap.msg.html
(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pal_wifi_localization_msgs::WifiSignalMap
  :super ros::object
  :slots (_header _info _sectors _data ))

(defmethod pal_wifi_localization_msgs::WifiSignalMap
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:info __info) (instance nav_msgs::MapMetaData :init))
    ((:sectors __sectors) 0)
    ((:data __data) (let (r) (dotimes (i 0) (push (instance pal_wifi_localization_msgs::WifiSignalList :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _info __info)
   (setq _sectors (round __sectors))
   (setq _data __data)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:info
   (&rest __info)
   (if (keywordp (car __info))
       (send* _info __info)
     (progn
       (if __info (setq _info (car __info)))
       _info)))
  (:sectors
   (&optional __sectors)
   (if __sectors (setq _sectors __sectors)) _sectors)
  (:data
   (&rest __data)
   (if (keywordp (car __data))
       (send* _data __data)
     (progn
       (if __data (setq _data (car __data)))
       _data)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; nav_msgs/MapMetaData _info
    (send _info :serialization-length)
    ;; uint32 _sectors
    4
    ;; pal_wifi_localization_msgs/WifiSignalList[] _data
    (apply #'+ (send-all _data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; nav_msgs/MapMetaData _info
       (send _info :serialize s)
     ;; uint32 _sectors
       (write-long _sectors s)
     ;; pal_wifi_localization_msgs/WifiSignalList[] _data
     (write-long (length _data) s)
     (dolist (elem _data)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; nav_msgs/MapMetaData _info
     (send _info :deserialize buf ptr-) (incf ptr- (send _info :serialization-length))
   ;; uint32 _sectors
     (setq _sectors (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; pal_wifi_localization_msgs/WifiSignalList[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (let (r) (dotimes (i n) (push (instance pal_wifi_localization_msgs::WifiSignalList :init) r)) r))
     (dolist (elem- _data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get pal_wifi_localization_msgs::WifiSignalMap :md5sum-) "5083f884f6a479bea709736f39c4131f")
(setf (get pal_wifi_localization_msgs::WifiSignalMap :datatype-) "pal_wifi_localization_msgs/WifiSignalMap")
(setf (get pal_wifi_localization_msgs::WifiSignalMap :definition-)
      "# This represents a 2-D grid map, in which each cell represents the signal strenght models of detected wifi networks.

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



(provide :pal_wifi_localization_msgs/WifiSignalMap "5083f884f6a479bea709736f39c4131f")


