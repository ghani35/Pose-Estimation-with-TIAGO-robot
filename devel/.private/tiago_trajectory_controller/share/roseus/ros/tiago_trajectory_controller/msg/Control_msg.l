;; Auto-generated. Do not edit!


(when (boundp 'tiago_trajectory_controller::Control_msg)
  (if (not (find-package "TIAGO_TRAJECTORY_CONTROLLER"))
    (make-package "TIAGO_TRAJECTORY_CONTROLLER"))
  (shadow 'Control_msg (find-package "TIAGO_TRAJECTORY_CONTROLLER")))
(unless (find-package "TIAGO_TRAJECTORY_CONTROLLER::CONTROL_MSG")
  (make-package "TIAGO_TRAJECTORY_CONTROLLER::CONTROL_MSG"))

(in-package "ROS")
;;//! \htmlinclude Control_msg.msg.html


(defclass tiago_trajectory_controller::Control_msg
  :super ros::object
  :slots (_gesture ))

(defmethod tiago_trajectory_controller::Control_msg
  (:init
   (&key
    ((:gesture __gesture) "")
    )
   (send-super :init)
   (setq _gesture (string __gesture))
   self)
  (:gesture
   (&optional __gesture)
   (if __gesture (setq _gesture __gesture)) _gesture)
  (:serialization-length
   ()
   (+
    ;; string _gesture
    4 (length _gesture)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _gesture
       (write-long (length _gesture) s) (princ _gesture s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _gesture
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _gesture (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get tiago_trajectory_controller::Control_msg :md5sum-) "61f2a41b9e73483e6fa26641a58eaf74")
(setf (get tiago_trajectory_controller::Control_msg :datatype-) "tiago_trajectory_controller/Control_msg")
(setf (get tiago_trajectory_controller::Control_msg :definition-)
      "string gesture

")



(provide :tiago_trajectory_controller/Control_msg "61f2a41b9e73483e6fa26641a58eaf74")


