;; Auto-generated. Do not edit!


(when (boundp 'pal_statistics_msgs::StatisticsValues)
  (if (not (find-package "PAL_STATISTICS_MSGS"))
    (make-package "PAL_STATISTICS_MSGS"))
  (shadow 'StatisticsValues (find-package "PAL_STATISTICS_MSGS")))
(unless (find-package "PAL_STATISTICS_MSGS::STATISTICSVALUES")
  (make-package "PAL_STATISTICS_MSGS::STATISTICSVALUES"))

(in-package "ROS")
;;//! \htmlinclude StatisticsValues.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pal_statistics_msgs::StatisticsValues
  :super ros::object
  :slots (_header _values _names_version ))

(defmethod pal_statistics_msgs::StatisticsValues
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:values __values) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:names_version __names_version) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _values __values)
   (setq _names_version (round __names_version))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:values
   (&optional __values)
   (if __values (setq _values __values)) _values)
  (:names_version
   (&optional __names_version)
   (if __names_version (setq _names_version __names_version)) _names_version)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64[] _values
    (* 8    (length _values)) 4
    ;; uint32 _names_version
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64[] _values
     (write-long (length _values) s)
     (dotimes (i (length _values))
       (sys::poke (elt _values i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; uint32 _names_version
       (write-long _names_version s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64[] _values
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _values (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _values i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; uint32 _names_version
     (setq _names_version (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get pal_statistics_msgs::StatisticsValues :md5sum-) "44646896ace86f96c24fbb63054eeee8")
(setf (get pal_statistics_msgs::StatisticsValues :datatype-) "pal_statistics_msgs/StatisticsValues")
(setf (get pal_statistics_msgs::StatisticsValues :definition-)
      "# header
Header header

# Statistics
float64[] values
uint32 names_version # The values vector corresponds to the name vector with the same name

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

")



(provide :pal_statistics_msgs/StatisticsValues "44646896ace86f96c24fbb63054eeee8")


