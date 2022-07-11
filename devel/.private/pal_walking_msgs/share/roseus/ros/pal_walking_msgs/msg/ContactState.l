;; Auto-generated. Do not edit!


(when (boundp 'pal_walking_msgs::ContactState)
  (if (not (find-package "PAL_WALKING_MSGS"))
    (make-package "PAL_WALKING_MSGS"))
  (shadow 'ContactState (find-package "PAL_WALKING_MSGS")))
(unless (find-package "PAL_WALKING_MSGS::CONTACTSTATE")
  (make-package "PAL_WALKING_MSGS::CONTACTSTATE"))

(in-package "ROS")
;;//! \htmlinclude ContactState.msg.html


(intern "*TYPE_DS*" (find-package "PAL_WALKING_MSGS::CONTACTSTATE"))
(shadow '*TYPE_DS* (find-package "PAL_WALKING_MSGS::CONTACTSTATE"))
(defconstant pal_walking_msgs::ContactState::*TYPE_DS* 0)
(intern "*TYPE_LSS*" (find-package "PAL_WALKING_MSGS::CONTACTSTATE"))
(shadow '*TYPE_LSS* (find-package "PAL_WALKING_MSGS::CONTACTSTATE"))
(defconstant pal_walking_msgs::ContactState::*TYPE_LSS* 1)
(intern "*TYPE_RSS*" (find-package "PAL_WALKING_MSGS::CONTACTSTATE"))
(shadow '*TYPE_RSS* (find-package "PAL_WALKING_MSGS::CONTACTSTATE"))
(defconstant pal_walking_msgs::ContactState::*TYPE_RSS* 2)
(defclass pal_walking_msgs::ContactState
  :super ros::object
  :slots (_type ))

(defmethod pal_walking_msgs::ContactState
  (:init
   (&key
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _type (round __type))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; uint8 _type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _type
       (write-byte _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get pal_walking_msgs::ContactState :md5sum-) "62c8194a0947d63a7094b91a2e31813f")
(setf (get pal_walking_msgs::ContactState :datatype-) "pal_walking_msgs/ContactState")
(setf (get pal_walking_msgs::ContactState :definition-)
      "uint8 TYPE_DS=0
uint8 TYPE_LSS=1
uint8 TYPE_RSS=2
uint8 type

")



(provide :pal_walking_msgs/ContactState "62c8194a0947d63a7094b91a2e31813f")


