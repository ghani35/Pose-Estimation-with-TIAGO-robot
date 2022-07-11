;; Auto-generated. Do not edit!


(when (boundp 'pal_wifi_localization_msgs::WifiSignalList)
  (if (not (find-package "PAL_WIFI_LOCALIZATION_MSGS"))
    (make-package "PAL_WIFI_LOCALIZATION_MSGS"))
  (shadow 'WifiSignalList (find-package "PAL_WIFI_LOCALIZATION_MSGS")))
(unless (find-package "PAL_WIFI_LOCALIZATION_MSGS::WIFISIGNALLIST")
  (make-package "PAL_WIFI_LOCALIZATION_MSGS::WIFISIGNALLIST"))

(in-package "ROS")
;;//! \htmlinclude WifiSignalList.msg.html


(defclass pal_wifi_localization_msgs::WifiSignalList
  :super ros::object
  :slots (_networks _start_time _end_time ))

(defmethod pal_wifi_localization_msgs::WifiSignalList
  (:init
   (&key
    ((:networks __networks) (let (r) (dotimes (i 0) (push (instance pal_wifi_localization_msgs::WifiSignal :init) r)) r))
    ((:start_time __start_time) (instance ros::time :init))
    ((:end_time __end_time) (instance ros::time :init))
    )
   (send-super :init)
   (setq _networks __networks)
   (setq _start_time __start_time)
   (setq _end_time __end_time)
   self)
  (:networks
   (&rest __networks)
   (if (keywordp (car __networks))
       (send* _networks __networks)
     (progn
       (if __networks (setq _networks (car __networks)))
       _networks)))
  (:start_time
   (&optional __start_time)
   (if __start_time (setq _start_time __start_time)) _start_time)
  (:end_time
   (&optional __end_time)
   (if __end_time (setq _end_time __end_time)) _end_time)
  (:serialization-length
   ()
   (+
    ;; pal_wifi_localization_msgs/WifiSignal[] _networks
    (apply #'+ (send-all _networks :serialization-length)) 4
    ;; time _start_time
    8
    ;; time _end_time
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; pal_wifi_localization_msgs/WifiSignal[] _networks
     (write-long (length _networks) s)
     (dolist (elem _networks)
       (send elem :serialize s)
       )
     ;; time _start_time
       (write-long (send _start_time :sec) s) (write-long (send _start_time :nsec) s)
     ;; time _end_time
       (write-long (send _end_time :sec) s) (write-long (send _end_time :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; pal_wifi_localization_msgs/WifiSignal[] _networks
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _networks (let (r) (dotimes (i n) (push (instance pal_wifi_localization_msgs::WifiSignal :init) r)) r))
     (dolist (elem- _networks)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; time _start_time
     (send _start_time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _start_time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; time _end_time
     (send _end_time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _end_time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get pal_wifi_localization_msgs::WifiSignalList :md5sum-) "7e7cf55cfdfea3ed97058d9184eceb4c")
(setf (get pal_wifi_localization_msgs::WifiSignalList :datatype-) "pal_wifi_localization_msgs/WifiSignalList")
(setf (get pal_wifi_localization_msgs::WifiSignalList :definition-)
      "#list of wifi signal models learnt in a specific place

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



(provide :pal_wifi_localization_msgs/WifiSignalList "7e7cf55cfdfea3ed97058d9184eceb4c")


