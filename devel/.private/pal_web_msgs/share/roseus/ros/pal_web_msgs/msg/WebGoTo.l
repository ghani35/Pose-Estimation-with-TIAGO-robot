;; Auto-generated. Do not edit!


(when (boundp 'pal_web_msgs::WebGoTo)
  (if (not (find-package "PAL_WEB_MSGS"))
    (make-package "PAL_WEB_MSGS"))
  (shadow 'WebGoTo (find-package "PAL_WEB_MSGS")))
(unless (find-package "PAL_WEB_MSGS::WEBGOTO")
  (make-package "PAL_WEB_MSGS::WEBGOTO"))

(in-package "ROS")
;;//! \htmlinclude WebGoTo.msg.html


(intern "*IMAGE*" (find-package "PAL_WEB_MSGS::WEBGOTO"))
(shadow '*IMAGE* (find-package "PAL_WEB_MSGS::WEBGOTO"))
(defconstant pal_web_msgs::WebGoTo::*IMAGE* 0)
(intern "*VIDEO*" (find-package "PAL_WEB_MSGS::WEBGOTO"))
(shadow '*VIDEO* (find-package "PAL_WEB_MSGS::WEBGOTO"))
(defconstant pal_web_msgs::WebGoTo::*VIDEO* 1)
(intern "*URI*" (find-package "PAL_WEB_MSGS::WEBGOTO"))
(shadow '*URI* (find-package "PAL_WEB_MSGS::WEBGOTO"))
(defconstant pal_web_msgs::WebGoTo::*URI* 2)
(intern "*URL*" (find-package "PAL_WEB_MSGS::WEBGOTO"))
(shadow '*URL* (find-package "PAL_WEB_MSGS::WEBGOTO"))
(defconstant pal_web_msgs::WebGoTo::*URL* 3)
(intern "*TOUCH_PAGE*" (find-package "PAL_WEB_MSGS::WEBGOTO"))
(shadow '*TOUCH_PAGE* (find-package "PAL_WEB_MSGS::WEBGOTO"))
(defconstant pal_web_msgs::WebGoTo::*TOUCH_PAGE* 4)
(defclass pal_web_msgs::WebGoTo
  :super ros::object
  :slots (_type _value ))

(defmethod pal_web_msgs::WebGoTo
  (:init
   (&key
    ((:type __type) 0)
    ((:value __value) "")
    )
   (send-super :init)
   (setq _type (round __type))
   (setq _value (string __value))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; uint8 _type
    1
    ;; string _value
    4 (length _value)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _type
       (write-byte _type s)
     ;; string _value
       (write-long (length _value) s) (princ _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _value
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _value (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get pal_web_msgs::WebGoTo :md5sum-) "4f4b0500f7d0332daf037d4a463b0073")
(setf (get pal_web_msgs::WebGoTo :datatype-) "pal_web_msgs/WebGoTo")
(setf (get pal_web_msgs::WebGoTo :definition-)
      "uint8 IMAGE = 0
uint8 VIDEO = 1
uint8 URI   = 2
uint8 URL = 3
uint8 TOUCH_PAGE = 4
uint8 type # one of the enum above

string value # Destination (an image, a video or a uri)

")



(provide :pal_web_msgs/WebGoTo "4f4b0500f7d0332daf037d4a463b0073")


