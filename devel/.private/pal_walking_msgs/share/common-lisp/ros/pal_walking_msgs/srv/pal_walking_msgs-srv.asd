
(cl:in-package :asdf)

(defsystem "pal_walking_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "MoveHipFeet" :depends-on ("_package_MoveHipFeet"))
    (:file "_package_MoveHipFeet" :depends-on ("_package"))
    (:file "Sit" :depends-on ("_package_Sit"))
    (:file "_package_Sit" :depends-on ("_package"))
    (:file "StepOver" :depends-on ("_package_StepOver"))
    (:file "_package_StepOver" :depends-on ("_package"))
    (:file "WalkSteps" :depends-on ("_package_WalkSteps"))
    (:file "_package_WalkSteps" :depends-on ("_package"))
  ))