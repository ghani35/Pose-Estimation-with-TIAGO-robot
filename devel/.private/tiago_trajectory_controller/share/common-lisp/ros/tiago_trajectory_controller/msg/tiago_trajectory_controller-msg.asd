
(cl:in-package :asdf)

(defsystem "tiago_trajectory_controller-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Control_msg" :depends-on ("_package_Control_msg"))
    (:file "_package_Control_msg" :depends-on ("_package"))
  ))