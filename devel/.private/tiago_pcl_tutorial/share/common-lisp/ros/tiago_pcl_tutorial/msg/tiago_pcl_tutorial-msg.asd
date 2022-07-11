
(cl:in-package :asdf)

(defsystem "tiago_pcl_tutorial-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "PlaneCoefficients" :depends-on ("_package_PlaneCoefficients"))
    (:file "_package_PlaneCoefficients" :depends-on ("_package"))
  ))