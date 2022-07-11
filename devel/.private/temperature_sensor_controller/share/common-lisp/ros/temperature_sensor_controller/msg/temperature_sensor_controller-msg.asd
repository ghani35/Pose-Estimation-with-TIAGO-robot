
(cl:in-package :asdf)

(defsystem "temperature_sensor_controller-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ActuatorTemperatureState" :depends-on ("_package_ActuatorTemperatureState"))
    (:file "_package_ActuatorTemperatureState" :depends-on ("_package"))
  ))