;; Auto-generated. Do not edit!


(when (boundp 'play_motion_msgs::ListMotions)
  (if (not (find-package "PLAY_MOTION_MSGS"))
    (make-package "PLAY_MOTION_MSGS"))
  (shadow 'ListMotions (find-package "PLAY_MOTION_MSGS")))
(unless (find-package "PLAY_MOTION_MSGS::LISTMOTIONS")
  (make-package "PLAY_MOTION_MSGS::LISTMOTIONS"))
(unless (find-package "PLAY_MOTION_MSGS::LISTMOTIONSREQUEST")
  (make-package "PLAY_MOTION_MSGS::LISTMOTIONSREQUEST"))
(unless (find-package "PLAY_MOTION_MSGS::LISTMOTIONSRESPONSE")
  (make-package "PLAY_MOTION_MSGS::LISTMOTIONSRESPONSE"))

(in-package "ROS")





(defclass play_motion_msgs::ListMotionsRequest
  :super ros::object
  :slots ())

(defmethod play_motion_msgs::ListMotionsRequest
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

(defclass play_motion_msgs::ListMotionsResponse
  :super ros::object
  :slots (_motions ))

(defmethod play_motion_msgs::ListMotionsResponse
  (:init
   (&key
    ((:motions __motions) (let (r) (dotimes (i 0) (push (instance play_motion_msgs::MotionInfo :init) r)) r))
    )
   (send-super :init)
   (setq _motions __motions)
   self)
  (:motions
   (&rest __motions)
   (if (keywordp (car __motions))
       (send* _motions __motions)
     (progn
       (if __motions (setq _motions (car __motions)))
       _motions)))
  (:serialization-length
   ()
   (+
    ;; play_motion_msgs/MotionInfo[] _motions
    (apply #'+ (send-all _motions :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; play_motion_msgs/MotionInfo[] _motions
     (write-long (length _motions) s)
     (dolist (elem _motions)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; play_motion_msgs/MotionInfo[] _motions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motions (let (r) (dotimes (i n) (push (instance play_motion_msgs::MotionInfo :init) r)) r))
     (dolist (elem- _motions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass play_motion_msgs::ListMotions
  :super ros::object
  :slots ())

(setf (get play_motion_msgs::ListMotions :md5sum-) "151d88e888f918ab21ebda2cef4dd23c")
(setf (get play_motion_msgs::ListMotions :datatype-) "play_motion_msgs/ListMotions")
(setf (get play_motion_msgs::ListMotions :request) play_motion_msgs::ListMotionsRequest)
(setf (get play_motion_msgs::ListMotions :response) play_motion_msgs::ListMotionsResponse)

(defmethod play_motion_msgs::ListMotionsRequest
  (:response () (instance play_motion_msgs::ListMotionsResponse :init)))

(setf (get play_motion_msgs::ListMotionsRequest :md5sum-) "151d88e888f918ab21ebda2cef4dd23c")
(setf (get play_motion_msgs::ListMotionsRequest :datatype-) "play_motion_msgs/ListMotionsRequest")
(setf (get play_motion_msgs::ListMotionsRequest :definition-)
      "# Returns the list of currently loaded motions that can be played by play_motion

---
MotionInfo[] motions

================================================================================
MSG: play_motion_msgs/MotionInfo
string name
string[] joints
duration duration
")

(setf (get play_motion_msgs::ListMotionsResponse :md5sum-) "151d88e888f918ab21ebda2cef4dd23c")
(setf (get play_motion_msgs::ListMotionsResponse :datatype-) "play_motion_msgs/ListMotionsResponse")
(setf (get play_motion_msgs::ListMotionsResponse :definition-)
      "# Returns the list of currently loaded motions that can be played by play_motion

---
MotionInfo[] motions

================================================================================
MSG: play_motion_msgs/MotionInfo
string name
string[] joints
duration duration
")



(provide :play_motion_msgs/ListMotions "151d88e888f918ab21ebda2cef4dd23c")


