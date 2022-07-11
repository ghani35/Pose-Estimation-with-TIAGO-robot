;; Auto-generated. Do not edit!


(when (boundp 'tf_lookup::Subscription)
  (if (not (find-package "TF_LOOKUP"))
    (make-package "TF_LOOKUP"))
  (shadow 'Subscription (find-package "TF_LOOKUP")))
(unless (find-package "TF_LOOKUP::SUBSCRIPTION")
  (make-package "TF_LOOKUP::SUBSCRIPTION"))

(in-package "ROS")
;;//! \htmlinclude Subscription.msg.html


(defclass tf_lookup::Subscription
  :super ros::object
  :slots (_target _source ))

(defmethod tf_lookup::Subscription
  (:init
   (&key
    ((:target __target) "")
    ((:source __source) "")
    )
   (send-super :init)
   (setq _target (string __target))
   (setq _source (string __source))
   self)
  (:target
   (&optional __target)
   (if __target (setq _target __target)) _target)
  (:source
   (&optional __source)
   (if __source (setq _source __source)) _source)
  (:serialization-length
   ()
   (+
    ;; string _target
    4 (length _target)
    ;; string _source
    4 (length _source)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _target
       (write-long (length _target) s) (princ _target s)
     ;; string _source
       (write-long (length _source) s) (princ _source s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _target
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _target (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _source
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _source (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get tf_lookup::Subscription :md5sum-) "2f26b645cf5988fb447dd948d42f673d")
(setf (get tf_lookup::Subscription :datatype-) "tf_lookup/Subscription")
(setf (get tf_lookup::Subscription :definition-)
      "string target
string source

")



(provide :tf_lookup/Subscription "2f26b645cf5988fb447dd948d42f673d")


