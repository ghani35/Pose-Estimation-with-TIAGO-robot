
(cl:in-package :asdf)

(defsystem "pal_statistics_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Statistic" :depends-on ("_package_Statistic"))
    (:file "_package_Statistic" :depends-on ("_package"))
    (:file "Statistics" :depends-on ("_package_Statistics"))
    (:file "_package_Statistics" :depends-on ("_package"))
    (:file "StatisticsNames" :depends-on ("_package_StatisticsNames"))
    (:file "_package_StatisticsNames" :depends-on ("_package"))
    (:file "StatisticsValues" :depends-on ("_package_StatisticsValues"))
    (:file "_package_StatisticsValues" :depends-on ("_package"))
  ))