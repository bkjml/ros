;; Auto-generated. Do not edit!


(when (boundp 'arm_gazebo::fk)
  (if (not (find-package "ARM_GAZEBO"))
    (make-package "ARM_GAZEBO"))
  (shadow 'fk (find-package "ARM_GAZEBO")))
(unless (find-package "ARM_GAZEBO::FK")
  (make-package "ARM_GAZEBO::FK"))
(unless (find-package "ARM_GAZEBO::FKREQUEST")
  (make-package "ARM_GAZEBO::FKREQUEST"))
(unless (find-package "ARM_GAZEBO::FKRESPONSE")
  (make-package "ARM_GAZEBO::FKRESPONSE"))

(in-package "ROS")





(defclass arm_gazebo::fkRequest
  :super ros::object
  :slots (_joint_axis _joint_values ))

(defmethod arm_gazebo::fkRequest
  (:init
   (&key
    ((:joint_axis __joint_axis) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:joint_values __joint_values) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _joint_axis __joint_axis)
   (setq _joint_values __joint_values)
   self)
  (:joint_axis
   (&optional __joint_axis)
   (if __joint_axis (setq _joint_axis __joint_axis)) _joint_axis)
  (:joint_values
   (&optional __joint_values)
   (if __joint_values (setq _joint_values __joint_values)) _joint_values)
  (:serialization-length
   ()
   (+
    ;; float64[] _joint_axis
    (* 8    (length _joint_axis)) 4
    ;; float64[] _joint_values
    (* 8    (length _joint_values)) 4
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
   ;;
   self)
  )

(defclass arm_gazebo::fkResponse
  :super ros::object
  :slots (_endX _endY _endZ ))

(defmethod arm_gazebo::fkResponse
  (:init
   (&key
    ((:endX __endX) 0.0)
    ((:endY __endY) 0.0)
    ((:endZ __endZ) 0.0)
    )
   (send-super :init)
   (setq _endX (float __endX))
   (setq _endY (float __endY))
   (setq _endZ (float __endZ))
   self)
  (:endX
   (&optional __endX)
   (if __endX (setq _endX __endX)) _endX)
  (:endY
   (&optional __endY)
   (if __endY (setq _endY __endY)) _endY)
  (:endZ
   (&optional __endZ)
   (if __endZ (setq _endZ __endZ)) _endZ)
  (:serialization-length
   ()
   (+
    ;; float64 _endX
    8
    ;; float64 _endY
    8
    ;; float64 _endZ
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _endX
       (sys::poke _endX (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _endY
       (sys::poke _endY (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _endZ
       (sys::poke _endZ (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _endX
     (setq _endX (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _endY
     (setq _endY (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _endZ
     (setq _endZ (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass arm_gazebo::fk
  :super ros::object
  :slots ())

(setf (get arm_gazebo::fk :md5sum-) "9c1e0d81941cabb01c9001358f1824c5")
(setf (get arm_gazebo::fk :datatype-) "arm_gazebo/fk")
(setf (get arm_gazebo::fk :request) arm_gazebo::fkRequest)
(setf (get arm_gazebo::fk :response) arm_gazebo::fkResponse)

(defmethod arm_gazebo::fkRequest
  (:response () (instance arm_gazebo::fkResponse :init)))

(setf (get arm_gazebo::fkRequest :md5sum-) "9c1e0d81941cabb01c9001358f1824c5")
(setf (get arm_gazebo::fkRequest :datatype-) "arm_gazebo/fkRequest")
(setf (get arm_gazebo::fkRequest :definition-)
      "float64[] joint_axis
float64[] joint_values
---
float64 endX
float64 endY
float64 endZ

")

(setf (get arm_gazebo::fkResponse :md5sum-) "9c1e0d81941cabb01c9001358f1824c5")
(setf (get arm_gazebo::fkResponse :datatype-) "arm_gazebo/fkResponse")
(setf (get arm_gazebo::fkResponse :definition-)
      "float64[] joint_axis
float64[] joint_values
---
float64 endX
float64 endY
float64 endZ

")



(provide :arm_gazebo/fk "9c1e0d81941cabb01c9001358f1824c5")


