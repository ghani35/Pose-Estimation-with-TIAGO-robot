;; Auto-generated. Do not edit!


(when (boundp 'play_motion_msgs::IsAlreadyThere)
  (if (not (find-package "PLAY_MOTION_MSGS"))
    (make-package "PLAY_MOTION_MSGS"))
  (shadow 'IsAlreadyThere (find-package "PLAY_MOTION_MSGS")))
(unless (find-package "PLAY_MOTION_MSGS::ISALREADYTHERE")
  (make-package "PLAY_MOTION_MSGS::ISALREADYTHERE"))
(unless (find-package "PLAY_MOTION_MSGS::ISALREADYTHEREREQUEST")
  (make-package "PLAY_MOTION_MSGS::ISALREADYTHEREREQUEST"))
(unless (find-package "PLAY_MOTION_MSGS::ISALREADYTHERERESPONSE")
  (make-package "PLAY_MOTION_MSGS::ISALREADYTHERERESPONSE"))

(in-package "ROS")





(defclass play_motion_msgs::IsAlreadyThereRequest
  :super ros::object
  :slots (_motion_name _tolerance ))

(defmethod play_motion_msgs::IsAlreadyThereRequest
  (:init
   (&key
    ((:motion_name __motion_name) "")
    ((:tolerance __tolerance) 0.0)
    )
   (send-super :init)
   (setq _motion_name (string __motion_name))
   (setq _tolerance (float __tolerance))
   self)
  (:motion_name
   (&optional __motion_name)
   (if __motion_name (setq _motion_name __motion_name)) _motion_name)
  (:tolerance
   (&optional __tolerance)
   (if __tolerance (setq _tolerance __tolerance)) _tolerance)
  (:serialization-length
   ()
   (+
    ;; string _motion_name
    4 (length _motion_name)
    ;; float32 _tolerance
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _motion_name
       (write-long (length _motion_name) s) (princ _motion_name s)
     ;; float32 _tolerance
       (sys::poke _tolerance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _motion_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _motion_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _tolerance
     (setq _tolerance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass play_motion_msgs::IsAlreadyThereResponse
  :super ros::object
  :slots (_already_there ))

(defmethod play_motion_msgs::IsAlreadyThereResponse
  (:init
   (&key
    ((:already_there __already_there) nil)
    )
   (send-super :init)
   (setq _already_there __already_there)
   self)
  (:already_there
   (&optional __already_there)
   (if __already_there (setq _already_there __already_there)) _already_there)
  (:serialization-length
   ()
   (+
    ;; bool _already_there
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _already_there
       (if _already_there (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _already_there
     (setq _already_there (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass play_motion_msgs::IsAlreadyThere
  :super ros::object
  :slots ())

(setf (get play_motion_msgs::IsAlreadyThere :md5sum-) "7235124945b0db7b8593d4de73ead738")
(setf (get play_motion_msgs::IsAlreadyThere :datatype-) "play_motion_msgs/IsAlreadyThere")
(setf (get play_motion_msgs::IsAlreadyThere :request) play_motion_msgs::IsAlreadyThereRequest)
(setf (get play_motion_msgs::IsAlreadyThere :response) play_motion_msgs::IsAlreadyThereResponse)

(defmethod play_motion_msgs::IsAlreadyThereRequest
  (:response () (instance play_motion_msgs::IsAlreadyThereResponse :init)))

(setf (get play_motion_msgs::IsAlreadyThereRequest :md5sum-) "7235124945b0db7b8593d4de73ead738")
(setf (get play_motion_msgs::IsAlreadyThereRequest :datatype-) "play_motion_msgs/IsAlreadyThereRequest")
(setf (get play_motion_msgs::IsAlreadyThereRequest :definition-)
      "# Checks if the robot joint state matches the first
# point of a given motion
#
# Robot joint positions will be checked against the
# values found in the motion's first point, given a
# tolerance.
# Joints that are not targetted by the given motion
# will not be considered.

string motion_name
float32 tolerance   # in radians
---
bool already_there

")

(setf (get play_motion_msgs::IsAlreadyThereResponse :md5sum-) "7235124945b0db7b8593d4de73ead738")
(setf (get play_motion_msgs::IsAlreadyThereResponse :datatype-) "play_motion_msgs/IsAlreadyThereResponse")
(setf (get play_motion_msgs::IsAlreadyThereResponse :definition-)
      "# Checks if the robot joint state matches the first
# point of a given motion
#
# Robot joint positions will be checked against the
# values found in the motion's first point, given a
# tolerance.
# Joints that are not targetted by the given motion
# will not be considered.

string motion_name
float32 tolerance   # in radians
---
bool already_there

")



(provide :play_motion_msgs/IsAlreadyThere "7235124945b0db7b8593d4de73ead738")


