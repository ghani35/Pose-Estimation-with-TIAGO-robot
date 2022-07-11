;; Auto-generated. Do not edit!


(when (boundp 'play_motion_msgs::MotionInfo)
  (if (not (find-package "PLAY_MOTION_MSGS"))
    (make-package "PLAY_MOTION_MSGS"))
  (shadow 'MotionInfo (find-package "PLAY_MOTION_MSGS")))
(unless (find-package "PLAY_MOTION_MSGS::MOTIONINFO")
  (make-package "PLAY_MOTION_MSGS::MOTIONINFO"))

(in-package "ROS")
;;//! \htmlinclude MotionInfo.msg.html


(defclass play_motion_msgs::MotionInfo
  :super ros::object
  :slots (_name _joints _duration ))

(defmethod play_motion_msgs::MotionInfo
  (:init
   (&key
    ((:name __name) "")
    ((:joints __joints) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:duration __duration) (instance ros::time :init))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _joints __joints)
   (setq _duration __duration)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:joints
   (&optional __joints)
   (if __joints (setq _joints __joints)) _joints)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string[] _joints
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _joints)) 4
    ;; duration _duration
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string[] _joints
     (write-long (length _joints) s)
     (dolist (elem _joints)
       (write-long (length elem) s) (princ elem s)
       )
     ;; duration _duration
       (write-long (send _duration :sec) s) (write-long (send _duration :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _joints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joints (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _joints i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; duration _duration
     (send _duration :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _duration :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get play_motion_msgs::MotionInfo :md5sum-) "12fa5a438744c4ad98a7da64c759d1bd")
(setf (get play_motion_msgs::MotionInfo :datatype-) "play_motion_msgs/MotionInfo")
(setf (get play_motion_msgs::MotionInfo :definition-)
      "string name
string[] joints
duration duration

")



(provide :play_motion_msgs/MotionInfo "12fa5a438744c4ad98a7da64c759d1bd")


