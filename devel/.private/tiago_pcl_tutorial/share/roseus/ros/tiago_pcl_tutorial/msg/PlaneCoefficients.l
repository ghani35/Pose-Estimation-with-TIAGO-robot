;; Auto-generated. Do not edit!


(when (boundp 'tiago_pcl_tutorial::PlaneCoefficients)
  (if (not (find-package "TIAGO_PCL_TUTORIAL"))
    (make-package "TIAGO_PCL_TUTORIAL"))
  (shadow 'PlaneCoefficients (find-package "TIAGO_PCL_TUTORIAL")))
(unless (find-package "TIAGO_PCL_TUTORIAL::PLANECOEFFICIENTS")
  (make-package "TIAGO_PCL_TUTORIAL::PLANECOEFFICIENTS"))

(in-package "ROS")
;;//! \htmlinclude PlaneCoefficients.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tiago_pcl_tutorial::PlaneCoefficients
  :super ros::object
  :slots (_header _A _B _C _D ))

(defmethod tiago_pcl_tutorial::PlaneCoefficients
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:A __A) 0.0)
    ((:B __B) 0.0)
    ((:C __C) 0.0)
    ((:D __D) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _A (float __A))
   (setq _B (float __B))
   (setq _C (float __C))
   (setq _D (float __D))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:A
   (&optional __A)
   (if __A (setq _A __A)) _A)
  (:B
   (&optional __B)
   (if __B (setq _B __B)) _B)
  (:C
   (&optional __C)
   (if __C (setq _C __C)) _C)
  (:D
   (&optional __D)
   (if __D (setq _D __D)) _D)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _A
    8
    ;; float64 _B
    8
    ;; float64 _C
    8
    ;; float64 _D
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _A
       (sys::poke _A (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _B
       (sys::poke _B (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _C
       (sys::poke _C (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _D
       (sys::poke _D (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _A
     (setq _A (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _B
     (setq _B (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _C
     (setq _C (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _D
     (setq _D (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get tiago_pcl_tutorial::PlaneCoefficients :md5sum-) "3d4c9b5fdb3af7a139e7d73556e46d69")
(setf (get tiago_pcl_tutorial::PlaneCoefficients :datatype-) "tiago_pcl_tutorial/PlaneCoefficients")
(setf (get tiago_pcl_tutorial::PlaneCoefficients :definition-)
      "Header header
# 3D plane coefficients of the explicit equation AX + BY + CZ + D = 0
float64 A
float64 B
float64 C
float64 D

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



(provide :tiago_pcl_tutorial/PlaneCoefficients "3d4c9b5fdb3af7a139e7d73556e46d69")


