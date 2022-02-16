
(cl:in-package :asdf)

(defsystem "arm_gazebo-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GripCommand" :depends-on ("_package_GripCommand"))
    (:file "_package_GripCommand" :depends-on ("_package"))
    (:file "JointValues" :depends-on ("_package_JointValues"))
    (:file "_package_JointValues" :depends-on ("_package"))
    (:file "RotationTranslationInput" :depends-on ("_package_RotationTranslationInput"))
    (:file "_package_RotationTranslationInput" :depends-on ("_package"))
    (:file "RotationTranslationOutput" :depends-on ("_package_RotationTranslationOutput"))
    (:file "_package_RotationTranslationOutput" :depends-on ("_package"))
  ))