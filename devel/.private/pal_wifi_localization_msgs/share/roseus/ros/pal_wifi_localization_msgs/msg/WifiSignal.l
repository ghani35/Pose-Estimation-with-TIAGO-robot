;; Auto-generated. Do not edit!


(when (boundp 'pal_wifi_localization_msgs::WifiSignal)
  (if (not (find-package "PAL_WIFI_LOCALIZATION_MSGS"))
    (make-package "PAL_WIFI_LOCALIZATION_MSGS"))
  (shadow 'WifiSignal (find-package "PAL_WIFI_LOCALIZATION_MSGS")))
(unless (find-package "PAL_WIFI_LOCALIZATION_MSGS::WIFISIGNAL")
  (make-package "PAL_WIFI_LOCALIZATION_MSGS::WIFISIGNAL"))

(in-package "ROS")
;;//! \htmlinclude WifiSignal.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pal_wifi_localization_msgs::WifiSignal
  :super ros::object
  :slots (_id _mean _std_dev ))

(defmethod pal_wifi_localization_msgs::WifiSignal
  (:init
   (&key
    ((:id __id) (instance std_msgs::String :init))
    ((:mean __mean) 0.0)
    ((:std_dev __std_dev) 0.0)
    )
   (send-super :init)
   (setq _id __id)
   (setq _mean (float __mean))
   (setq _std_dev (float __std_dev))
   self)
  (:id
   (&rest __id)
   (if (keywordp (car __id))
       (send* _id __id)
     (progn
       (if __id (setq _id (car __id)))
       _id)))
  (:mean
   (&optional __mean)
   (if __mean (setq _mean __mean)) _mean)
  (:std_dev
   (&optional __std_dev)
   (if __std_dev (setq _std_dev __std_dev)) _std_dev)
  (:serialization-length
   ()
   (+
    ;; std_msgs/String _id
    (send _id :serialization-length)
    ;; float32 _mean
    4
    ;; float32 _std_dev
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/String _id
       (send _id :serialize s)
     ;; float32 _mean
       (sys::poke _mean (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _std_dev
       (sys::poke _std_dev (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/String _id
     (send _id :deserialize buf ptr-) (incf ptr- (send _id :serialization-length))
   ;; float32 _mean
     (setq _mean (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _std_dev
     (setq _std_dev (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get pal_wifi_localization_msgs::WifiSignal :md5sum-) "d6a79c360f114b44aaa8b522b2621591")
(setf (get pal_wifi_localization_msgs::WifiSignal :datatype-) "pal_wifi_localization_msgs/WifiSignal")
(setf (get pal_wifi_localization_msgs::WifiSignal :definition-)
      "## Contains data relative to the learnt model of a wifi signal strenght in a specific location

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



(provide :pal_wifi_localization_msgs/WifiSignal "d6a79c360f114b44aaa8b522b2621591")


