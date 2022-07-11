;; Auto-generated. Do not edit!


(when (boundp 'pal_walking_msgs::StepOver)
  (if (not (find-package "PAL_WALKING_MSGS"))
    (make-package "PAL_WALKING_MSGS"))
  (shadow 'StepOver (find-package "PAL_WALKING_MSGS")))
(unless (find-package "PAL_WALKING_MSGS::STEPOVER")
  (make-package "PAL_WALKING_MSGS::STEPOVER"))
(unless (find-package "PAL_WALKING_MSGS::STEPOVERREQUEST")
  (make-package "PAL_WALKING_MSGS::STEPOVERREQUEST"))
(unless (find-package "PAL_WALKING_MSGS::STEPOVERRESPONSE")
  (make-package "PAL_WALKING_MSGS::STEPOVERRESPONSE"))

(in-package "ROS")





(defclass pal_walking_msgs::StepOverRequest
  :super ros::object
  :slots (_step_length _step_time _step_height _z_lipm ))

(defmethod pal_walking_msgs::StepOverRequest
  (:init
   (&key
    ((:step_length __step_length) 0.0)
    ((:step_time __step_time) 0.0)
    ((:step_height __step_height) 0.0)
    ((:z_lipm __z_lipm) 0.0)
    )
   (send-super :init)
   (setq _step_length (float __step_length))
   (setq _step_time (float __step_time))
   (setq _step_height (float __step_height))
   (setq _z_lipm (float __z_lipm))
   self)
  (:step_length
   (&optional __step_length)
   (if __step_length (setq _step_length __step_length)) _step_length)
  (:step_time
   (&optional __step_time)
   (if __step_time (setq _step_time __step_time)) _step_time)
  (:step_height
   (&optional __step_height)
   (if __step_height (setq _step_height __step_height)) _step_height)
  (:z_lipm
   (&optional __z_lipm)
   (if __z_lipm (setq _z_lipm __z_lipm)) _z_lipm)
  (:serialization-length
   ()
   (+
    ;; float64 _step_length
    8
    ;; float64 _step_time
    8
    ;; float64 _step_height
    8
    ;; float64 _z_lipm
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _step_length
       (sys::poke _step_length (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _step_time
       (sys::poke _step_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _step_height
       (sys::poke _step_height (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z_lipm
       (sys::poke _z_lipm (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _step_length
     (setq _step_length (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _step_time
     (setq _step_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _step_height
     (setq _step_height (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z_lipm
     (setq _z_lipm (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass pal_walking_msgs::StepOverResponse
  :super ros::object
  :slots (_result ))

(defmethod pal_walking_msgs::StepOverResponse
  (:init
   (&key
    ((:result __result) "")
    )
   (send-super :init)
   (setq _result (string __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; string _result
    4 (length _result)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _result
       (write-long (length _result) s) (princ _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _result
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass pal_walking_msgs::StepOver
  :super ros::object
  :slots ())

(setf (get pal_walking_msgs::StepOver :md5sum-) "b3759907c1da99fedab7db53a18a936b")
(setf (get pal_walking_msgs::StepOver :datatype-) "pal_walking_msgs/StepOver")
(setf (get pal_walking_msgs::StepOver :request) pal_walking_msgs::StepOverRequest)
(setf (get pal_walking_msgs::StepOver :response) pal_walking_msgs::StepOverResponse)

(defmethod pal_walking_msgs::StepOverRequest
  (:response () (instance pal_walking_msgs::StepOverResponse :init)))

(setf (get pal_walking_msgs::StepOverRequest :md5sum-) "b3759907c1da99fedab7db53a18a936b")
(setf (get pal_walking_msgs::StepOverRequest :datatype-) "pal_walking_msgs/StepOverRequest")
(setf (get pal_walking_msgs::StepOverRequest :definition-)
      "# This service requests that the robot step over an obstacle
# The parameters specify parameters for modifying the step

float64   step_length
float64   step_time
float64   step_height
float64   z_lipm

---

string    result

")

(setf (get pal_walking_msgs::StepOverResponse :md5sum-) "b3759907c1da99fedab7db53a18a936b")
(setf (get pal_walking_msgs::StepOverResponse :datatype-) "pal_walking_msgs/StepOverResponse")
(setf (get pal_walking_msgs::StepOverResponse :definition-)
      "# This service requests that the robot step over an obstacle
# The parameters specify parameters for modifying the step

float64   step_length
float64   step_time
float64   step_height
float64   z_lipm

---

string    result

")



(provide :pal_walking_msgs/StepOver "b3759907c1da99fedab7db53a18a936b")


