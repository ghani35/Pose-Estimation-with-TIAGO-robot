;; Auto-generated. Do not edit!


(when (boundp 'pal_walking_msgs::Sit)
  (if (not (find-package "PAL_WALKING_MSGS"))
    (make-package "PAL_WALKING_MSGS"))
  (shadow 'Sit (find-package "PAL_WALKING_MSGS")))
(unless (find-package "PAL_WALKING_MSGS::SIT")
  (make-package "PAL_WALKING_MSGS::SIT"))
(unless (find-package "PAL_WALKING_MSGS::SITREQUEST")
  (make-package "PAL_WALKING_MSGS::SITREQUEST"))
(unless (find-package "PAL_WALKING_MSGS::SITRESPONSE")
  (make-package "PAL_WALKING_MSGS::SITRESPONSE"))

(in-package "ROS")





(defclass pal_walking_msgs::SitRequest
  :super ros::object
  :slots (_down _weight_threshold ))

(defmethod pal_walking_msgs::SitRequest
  (:init
   (&key
    ((:down __down) nil)
    ((:weight_threshold __weight_threshold) 0.0)
    )
   (send-super :init)
   (setq _down __down)
   (setq _weight_threshold (float __weight_threshold))
   self)
  (:down
   (&optional __down)
   (if __down (setq _down __down)) _down)
  (:weight_threshold
   (&optional __weight_threshold)
   (if __weight_threshold (setq _weight_threshold __weight_threshold)) _weight_threshold)
  (:serialization-length
   ()
   (+
    ;; bool _down
    1
    ;; float64 _weight_threshold
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _down
       (if _down (write-byte -1 s) (write-byte 0 s))
     ;; float64 _weight_threshold
       (sys::poke _weight_threshold (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _down
     (setq _down (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _weight_threshold
     (setq _weight_threshold (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass pal_walking_msgs::SitResponse
  :super ros::object
  :slots ())

(defmethod pal_walking_msgs::SitResponse
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

(defclass pal_walking_msgs::Sit
  :super ros::object
  :slots ())

(setf (get pal_walking_msgs::Sit :md5sum-) "ad6dfe9fa0ab9703a36ca371cf15816f")
(setf (get pal_walking_msgs::Sit :datatype-) "pal_walking_msgs/Sit")
(setf (get pal_walking_msgs::Sit :request) pal_walking_msgs::SitRequest)
(setf (get pal_walking_msgs::Sit :response) pal_walking_msgs::SitResponse)

(defmethod pal_walking_msgs::SitRequest
  (:response () (instance pal_walking_msgs::SitResponse :init)))

(setf (get pal_walking_msgs::SitRequest :md5sum-) "ad6dfe9fa0ab9703a36ca371cf15816f")
(setf (get pal_walking_msgs::SitRequest :datatype-) "pal_walking_msgs/SitRequest")
(setf (get pal_walking_msgs::SitRequest :definition-)
      "# This service requests that the robot lifts one foot at a specified height
# The parameters are the side and the height

bool    down
float64 weight_threshold
---

")

(setf (get pal_walking_msgs::SitResponse :md5sum-) "ad6dfe9fa0ab9703a36ca371cf15816f")
(setf (get pal_walking_msgs::SitResponse :datatype-) "pal_walking_msgs/SitResponse")
(setf (get pal_walking_msgs::SitResponse :definition-)
      "# This service requests that the robot lifts one foot at a specified height
# The parameters are the side and the height

bool    down
float64 weight_threshold
---

")



(provide :pal_walking_msgs/Sit "ad6dfe9fa0ab9703a36ca371cf15816f")


