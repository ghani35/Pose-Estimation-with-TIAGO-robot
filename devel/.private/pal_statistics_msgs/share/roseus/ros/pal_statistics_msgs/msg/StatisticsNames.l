;; Auto-generated. Do not edit!


(when (boundp 'pal_statistics_msgs::StatisticsNames)
  (if (not (find-package "PAL_STATISTICS_MSGS"))
    (make-package "PAL_STATISTICS_MSGS"))
  (shadow 'StatisticsNames (find-package "PAL_STATISTICS_MSGS")))
(unless (find-package "PAL_STATISTICS_MSGS::STATISTICSNAMES")
  (make-package "PAL_STATISTICS_MSGS::STATISTICSNAMES"))

(in-package "ROS")
;;//! \htmlinclude StatisticsNames.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pal_statistics_msgs::StatisticsNames
  :super ros::object
  :slots (_header _names _names_version ))

(defmethod pal_statistics_msgs::StatisticsNames
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:names __names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:names_version __names_version) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _names __names)
   (setq _names_version (round __names_version))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:names
   (&optional __names)
   (if __names (setq _names __names)) _names)
  (:names_version
   (&optional __names_version)
   (if __names_version (setq _names_version __names_version)) _names_version)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string[] _names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _names)) 4
    ;; uint32 _names_version
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string[] _names
     (write-long (length _names) s)
     (dolist (elem _names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; uint32 _names_version
       (write-long _names_version s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string[] _names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; uint32 _names_version
     (setq _names_version (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get pal_statistics_msgs::StatisticsNames :md5sum-) "bece3d42a81d5c50cd68f110cf17bf55")
(setf (get pal_statistics_msgs::StatisticsNames :datatype-) "pal_statistics_msgs/StatisticsNames")
(setf (get pal_statistics_msgs::StatisticsNames :definition-)
      "# header
Header header

# Statistics names
string[] names
uint32 names_version #This is increased each time names change

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



(provide :pal_statistics_msgs/StatisticsNames "bece3d42a81d5c50cd68f110cf17bf55")


