;; Auto-generated. Do not edit!


(when (boundp 'pal_statistics_msgs::Statistics)
  (if (not (find-package "PAL_STATISTICS_MSGS"))
    (make-package "PAL_STATISTICS_MSGS"))
  (shadow 'Statistics (find-package "PAL_STATISTICS_MSGS")))
(unless (find-package "PAL_STATISTICS_MSGS::STATISTICS")
  (make-package "PAL_STATISTICS_MSGS::STATISTICS"))

(in-package "ROS")
;;//! \htmlinclude Statistics.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pal_statistics_msgs::Statistics
  :super ros::object
  :slots (_header _statistics ))

(defmethod pal_statistics_msgs::Statistics
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:statistics __statistics) (let (r) (dotimes (i 0) (push (instance pal_statistics_msgs::Statistic :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _statistics __statistics)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:statistics
   (&rest __statistics)
   (if (keywordp (car __statistics))
       (send* _statistics __statistics)
     (progn
       (if __statistics (setq _statistics (car __statistics)))
       _statistics)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; pal_statistics_msgs/Statistic[] _statistics
    (apply #'+ (send-all _statistics :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; pal_statistics_msgs/Statistic[] _statistics
     (write-long (length _statistics) s)
     (dolist (elem _statistics)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; pal_statistics_msgs/Statistic[] _statistics
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _statistics (let (r) (dotimes (i n) (push (instance pal_statistics_msgs::Statistic :init) r)) r))
     (dolist (elem- _statistics)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get pal_statistics_msgs::Statistics :md5sum-) "3f331753b5cb45fe4c2ecf2b2c5f78ac")
(setf (get pal_statistics_msgs::Statistics :datatype-) "pal_statistics_msgs/Statistics")
(setf (get pal_statistics_msgs::Statistics :definition-)
      "# header
Header header

# Statistics
Statistic[] statistics

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
MSG: pal_statistics_msgs/Statistic
string name
float64 value

")



(provide :pal_statistics_msgs/Statistics "3f331753b5cb45fe4c2ecf2b2c5f78ac")


