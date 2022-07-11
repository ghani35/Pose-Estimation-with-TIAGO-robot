;; Auto-generated. Do not edit!


(when (boundp 'tiago_opencv_tutorial::valueMatrix)
  (if (not (find-package "TIAGO_OPENCV_TUTORIAL"))
    (make-package "TIAGO_OPENCV_TUTORIAL"))
  (shadow 'valueMatrix (find-package "TIAGO_OPENCV_TUTORIAL")))
(unless (find-package "TIAGO_OPENCV_TUTORIAL::VALUEMATRIX")
  (make-package "TIAGO_OPENCV_TUTORIAL::VALUEMATRIX"))

(in-package "ROS")
;;//! \htmlinclude valueMatrix.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tiago_opencv_tutorial::valueMatrix
  :super ros::object
  :slots (_header _value _tick _option ))

(defmethod tiago_opencv_tutorial::valueMatrix
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:value __value) 0.0)
    ((:tick __tick) nil)
    ((:option __option) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _value (float __value))
   (setq _tick __tick)
   (setq _option (string __option))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:tick
   (&optional __tick)
   (if __tick (setq _tick __tick)) _tick)
  (:option
   (&optional __option)
   (if __option (setq _option __option)) _option)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _value
    4
    ;; bool _tick
    1
    ;; string _option
    4 (length _option)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _value
       (sys::poke _value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _tick
       (if _tick (write-byte -1 s) (write-byte 0 s))
     ;; string _option
       (write-long (length _option) s) (princ _option s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _value
     (setq _value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _tick
     (setq _tick (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _option
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _option (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get tiago_opencv_tutorial::valueMatrix :md5sum-) "bc1cd923f6f816fbd3a3ec5219a648ae")
(setf (get tiago_opencv_tutorial::valueMatrix :datatype-) "tiago_opencv_tutorial/valueMatrix")
(setf (get tiago_opencv_tutorial::valueMatrix :definition-)
      "Header header

float32 value

bool tick

string option
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



(provide :tiago_opencv_tutorial/valueMatrix "bc1cd923f6f816fbd3a3ec5219a648ae")


