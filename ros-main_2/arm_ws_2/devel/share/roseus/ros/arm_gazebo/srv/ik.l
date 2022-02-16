;; Auto-generated. Do not edit!


(when (boundp 'arm_gazebo::ik)
  (if (not (find-package "ARM_GAZEBO"))
    (make-package "ARM_GAZEBO"))
  (shadow 'ik (find-package "ARM_GAZEBO")))
(unless (find-package "ARM_GAZEBO::IK")
  (make-package "ARM_GAZEBO::IK"))
(unless (find-package "ARM_GAZEBO::IKREQUEST")
  (make-package "ARM_GAZEBO::IKREQUEST"))
(unless (find-package "ARM_GAZEBO::IKRESPONSE")
  (make-package "ARM_GAZEBO::IKRESPONSE"))

(in-package "ROS")





(defclass arm_gazebo::ikRequest
  :super ros::object
  :slots (_joint_axis _joint_values _target_values ))

(defmethod arm_gazebo::ikRequest
  (:init
   (&key
    ((:joint_axis __joint_axis) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:joint_values __joint_values) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:target_values __target_values) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _joint_axis __joint_axis)
   (setq _joint_values __joint_values)
   (setq _target_values __target_values)
   self)
  (:joint_axis
   (&optional __joint_axis)
   (if __joint_axis (setq _joint_axis __joint_axis)) _joint_axis)
  (:joint_values
   (&optional __joint_values)
   (if __joint_values (setq _joint_values __joint_values)) _joint_values)
  (:target_values
   (&optional __target_values)
   (if __target_values (setq _target_values __target_values)) _target_values)
  (:serialization-length
   ()
   (+
    ;; float64[] _joint_axis
    (* 8    (length _joint_axis)) 4
    ;; float64[] _joint_values
    (* 8    (length _joint_values)) 4
    ;; float64[] _target_values
    (* 8    (length _target_values)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _joint_axis
     (write-long (length _joint_axis) s)
     (dotimes (i (length _joint_axis))
       (sys::poke (elt _joint_axis i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _joint_values
     (write-long (length _joint_values) s)
     (dotimes (i (length _joint_values))
       (sys::poke (elt _joint_values i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _target_values
     (write-long (length _target_values) s)
     (dotimes (i (length _target_values))
       (sys::poke (elt _target_values i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _joint_axis
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_axis (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joint_axis i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _joint_values
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_values (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joint_values i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _target_values
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _target_values (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _target_values i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass arm_gazebo::ikResponse
  :super ros::object
  :slots (_new_joint_values ))

(defmethod arm_gazebo::ikResponse
  (:init
   (&key
    ((:new_joint_values __new_joint_values) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _new_joint_values __new_joint_values)
   self)
  (:new_joint_values
   (&optional __new_joint_values)
   (if __new_joint_values (setq _new_joint_values __new_joint_values)) _new_joint_values)
  (:serialization-length
   ()
   (+
    ;; float64[] _new_joint_values
    (* 8    (length _new_joint_values)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _new_joint_values
     (write-long (length _new_joint_values) s)
     (dotimes (i (length _new_joint_values))
       (sys::poke (elt _new_joint_values i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _new_joint_values
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _new_joint_values (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _new_joint_values i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass arm_gazebo::ik
  :super ros::object
  :slots ())

(setf (get arm_gazebo::ik :md5sum-) "84122223e73e4078eaa2c97e97d79aa5")
(setf (get arm_gazebo::ik :datatype-) "arm_gazebo/ik")
(setf (get arm_gazebo::ik :request) arm_gazebo::ikRequest)
(setf (get arm_gazebo::ik :response) arm_gazebo::ikResponse)

(defmethod arm_gazebo::ikRequest
  (:response () (instance arm_gazebo::ikResponse :init)))

(setf (get arm_gazebo::ikRequest :md5sum-) "84122223e73e4078eaa2c97e97d79aa5")
(setf (get arm_gazebo::ikRequest :datatype-) "arm_gazebo/ikRequest")
(setf (get arm_gazebo::ikRequest :definition-)
      "float64[] joint_axis
float64[] joint_values
float64[] target_values
---
float64[] new_joint_values

")

(setf (get arm_gazebo::ikResponse :md5sum-) "84122223e73e4078eaa2c97e97d79aa5")
(setf (get arm_gazebo::ikResponse :datatype-) "arm_gazebo/ikResponse")
(setf (get arm_gazebo::ikResponse :definition-)
      "float64[] joint_axis
float64[] joint_values
float64[] target_values
---
float64[] new_joint_values

")



(provide :arm_gazebo/ik "84122223e73e4078eaa2c97e97d79aa5")


