;; Auto-generated. Do not edit!


(when (boundp 'arm_gazebo::GripCommand)
  (if (not (find-package "ARM_GAZEBO"))
    (make-package "ARM_GAZEBO"))
  (shadow 'GripCommand (find-package "ARM_GAZEBO")))
(unless (find-package "ARM_GAZEBO::GRIPCOMMAND")
  (make-package "ARM_GAZEBO::GRIPCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude GripCommand.msg.html


(defclass arm_gazebo::GripCommand
  :super ros::object
  :slots (_grip_command ))

(defmethod arm_gazebo::GripCommand
  (:init
   (&key
    ((:grip_command __grip_command) "")
    )
   (send-super :init)
   (setq _grip_command (string __grip_command))
   self)
  (:grip_command
   (&optional __grip_command)
   (if __grip_command (setq _grip_command __grip_command)) _grip_command)
  (:serialization-length
   ()
   (+
    ;; string _grip_command
    4 (length _grip_command)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _grip_command
       (write-long (length _grip_command) s) (princ _grip_command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _grip_command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _grip_command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get arm_gazebo::GripCommand :md5sum-) "983372b7e58e6a3145a0215cb040ed6f")
(setf (get arm_gazebo::GripCommand :datatype-) "arm_gazebo/GripCommand")
(setf (get arm_gazebo::GripCommand :definition-)
      "string grip_command
")



(provide :arm_gazebo/GripCommand "983372b7e58e6a3145a0215cb040ed6f")


