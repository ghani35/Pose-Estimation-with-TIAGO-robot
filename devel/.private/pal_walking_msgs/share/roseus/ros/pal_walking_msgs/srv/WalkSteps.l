;; Auto-generated. Do not edit!


(when (boundp 'pal_walking_msgs::WalkSteps)
  (if (not (find-package "PAL_WALKING_MSGS"))
    (make-package "PAL_WALKING_MSGS"))
  (shadow 'WalkSteps (find-package "PAL_WALKING_MSGS")))
(unless (find-package "PAL_WALKING_MSGS::WALKSTEPS")
  (make-package "PAL_WALKING_MSGS::WALKSTEPS"))
(unless (find-package "PAL_WALKING_MSGS::WALKSTEPSREQUEST")
  (make-package "PAL_WALKING_MSGS::WALKSTEPSREQUEST"))
(unless (find-package "PAL_WALKING_MSGS::WALKSTEPSRESPONSE")
  (make-package "PAL_WALKING_MSGS::WALKSTEPSRESPONSE"))

(in-package "ROS")





(defclass pal_walking_msgs::WalkStepsRequest
  :super ros::object
  :slots (_nsteps _step_length _step_time ))

(defmethod pal_walking_msgs::WalkStepsRequest
  (:init
   (&key
    ((:nsteps __nsteps) 0)
    ((:step_length __step_length) 0.0)
    ((:step_time __step_time) 0.0)
    )
   (send-super :init)
   (setq _nsteps (round __nsteps))
   (setq _step_length (float __step_length))
   (setq _step_time (float __step_time))
   self)
  (:nsteps
   (&optional __nsteps)
   (if __nsteps (setq _nsteps __nsteps)) _nsteps)
  (:step_length
   (&optional __step_length)
   (if __step_length (setq _step_length __step_length)) _step_length)
  (:step_time
   (&optional __step_time)
   (if __step_time (setq _step_time __step_time)) _step_time)
  (:serialization-length
   ()
   (+
    ;; int32 _nsteps
    4
    ;; float64 _step_length
    8
    ;; float64 _step_time
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _nsteps
       (write-long _nsteps s)
     ;; float64 _step_length
       (sys::poke _step_length (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _step_time
       (sys::poke _step_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _nsteps
     (setq _nsteps (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _step_length
     (setq _step_length (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _step_time
     (setq _step_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass pal_walking_msgs::WalkStepsResponse
  :super ros::object
  :slots ())

(defmethod pal_walking_msgs::WalkStepsResponse
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

(defclass pal_walking_msgs::WalkSteps
  :super ros::object
  :slots ())

(setf (get pal_walking_msgs::WalkSteps :md5sum-) "58a83587aa65e3865f04c9ed9e7cdaaf")
(setf (get pal_walking_msgs::WalkSteps :datatype-) "pal_walking_msgs/WalkSteps")
(setf (get pal_walking_msgs::WalkSteps :request) pal_walking_msgs::WalkStepsRequest)
(setf (get pal_walking_msgs::WalkSteps :response) pal_walking_msgs::WalkStepsResponse)

(defmethod pal_walking_msgs::WalkStepsRequest
  (:response () (instance pal_walking_msgs::WalkStepsResponse :init)))

(setf (get pal_walking_msgs::WalkStepsRequest :md5sum-) "58a83587aa65e3865f04c9ed9e7cdaaf")
(setf (get pal_walking_msgs::WalkStepsRequest :datatype-) "pal_walking_msgs/WalkStepsRequest")
(setf (get pal_walking_msgs::WalkStepsRequest :definition-)
      "# This service requests that the robot walks
# The parameters specify how many steps to perform and the length of every step

int32     nsteps
float64   step_length
float64   step_time
---

")

(setf (get pal_walking_msgs::WalkStepsResponse :md5sum-) "58a83587aa65e3865f04c9ed9e7cdaaf")
(setf (get pal_walking_msgs::WalkStepsResponse :datatype-) "pal_walking_msgs/WalkStepsResponse")
(setf (get pal_walking_msgs::WalkStepsResponse :definition-)
      "# This service requests that the robot walks
# The parameters specify how many steps to perform and the length of every step

int32     nsteps
float64   step_length
float64   step_time
---

")



(provide :pal_walking_msgs/WalkSteps "58a83587aa65e3865f04c9ed9e7cdaaf")


