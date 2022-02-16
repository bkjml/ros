; Auto-generated. Do not edit!


(cl:in-package arm_gazebo-srv)


;//! \htmlinclude fk-request.msg.html

(cl:defclass <fk-request> (roslisp-msg-protocol:ros-message)
  ((joint_axis
    :reader joint_axis
    :initarg :joint_axis
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (joint_values
    :reader joint_values
    :initarg :joint_values
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass fk-request (<fk-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <fk-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'fk-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_gazebo-srv:<fk-request> is deprecated: use arm_gazebo-srv:fk-request instead.")))

(cl:ensure-generic-function 'joint_axis-val :lambda-list '(m))
(cl:defmethod joint_axis-val ((m <fk-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_gazebo-srv:joint_axis-val is deprecated.  Use arm_gazebo-srv:joint_axis instead.")
  (joint_axis m))

(cl:ensure-generic-function 'joint_values-val :lambda-list '(m))
(cl:defmethod joint_values-val ((m <fk-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_gazebo-srv:joint_values-val is deprecated.  Use arm_gazebo-srv:joint_values instead.")
  (joint_values m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <fk-request>) ostream)
  "Serializes a message object of type '<fk-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint_axis))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'joint_axis))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint_values))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'joint_values))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <fk-request>) istream)
  "Deserializes a message object of type '<fk-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint_axis) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint_axis)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint_values) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint_values)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<fk-request>)))
  "Returns string type for a service object of type '<fk-request>"
  "arm_gazebo/fkRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'fk-request)))
  "Returns string type for a service object of type 'fk-request"
  "arm_gazebo/fkRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<fk-request>)))
  "Returns md5sum for a message object of type '<fk-request>"
  "9c1e0d81941cabb01c9001358f1824c5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'fk-request)))
  "Returns md5sum for a message object of type 'fk-request"
  "9c1e0d81941cabb01c9001358f1824c5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<fk-request>)))
  "Returns full string definition for message of type '<fk-request>"
  (cl:format cl:nil "float64[] joint_axis~%float64[] joint_values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'fk-request)))
  "Returns full string definition for message of type 'fk-request"
  (cl:format cl:nil "float64[] joint_axis~%float64[] joint_values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <fk-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_axis) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_values) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <fk-request>))
  "Converts a ROS message object to a list"
  (cl:list 'fk-request
    (cl:cons ':joint_axis (joint_axis msg))
    (cl:cons ':joint_values (joint_values msg))
))
;//! \htmlinclude fk-response.msg.html

(cl:defclass <fk-response> (roslisp-msg-protocol:ros-message)
  ((endX
    :reader endX
    :initarg :endX
    :type cl:float
    :initform 0.0)
   (endY
    :reader endY
    :initarg :endY
    :type cl:float
    :initform 0.0)
   (endZ
    :reader endZ
    :initarg :endZ
    :type cl:float
    :initform 0.0))
)

(cl:defclass fk-response (<fk-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <fk-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'fk-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_gazebo-srv:<fk-response> is deprecated: use arm_gazebo-srv:fk-response instead.")))

(cl:ensure-generic-function 'endX-val :lambda-list '(m))
(cl:defmethod endX-val ((m <fk-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_gazebo-srv:endX-val is deprecated.  Use arm_gazebo-srv:endX instead.")
  (endX m))

(cl:ensure-generic-function 'endY-val :lambda-list '(m))
(cl:defmethod endY-val ((m <fk-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_gazebo-srv:endY-val is deprecated.  Use arm_gazebo-srv:endY instead.")
  (endY m))

(cl:ensure-generic-function 'endZ-val :lambda-list '(m))
(cl:defmethod endZ-val ((m <fk-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_gazebo-srv:endZ-val is deprecated.  Use arm_gazebo-srv:endZ instead.")
  (endZ m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <fk-response>) ostream)
  "Serializes a message object of type '<fk-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'endX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'endY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'endZ))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <fk-response>) istream)
  "Deserializes a message object of type '<fk-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'endX) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'endY) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'endZ) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<fk-response>)))
  "Returns string type for a service object of type '<fk-response>"
  "arm_gazebo/fkResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'fk-response)))
  "Returns string type for a service object of type 'fk-response"
  "arm_gazebo/fkResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<fk-response>)))
  "Returns md5sum for a message object of type '<fk-response>"
  "9c1e0d81941cabb01c9001358f1824c5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'fk-response)))
  "Returns md5sum for a message object of type 'fk-response"
  "9c1e0d81941cabb01c9001358f1824c5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<fk-response>)))
  "Returns full string definition for message of type '<fk-response>"
  (cl:format cl:nil "float64 endX~%float64 endY~%float64 endZ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'fk-response)))
  "Returns full string definition for message of type 'fk-response"
  (cl:format cl:nil "float64 endX~%float64 endY~%float64 endZ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <fk-response>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <fk-response>))
  "Converts a ROS message object to a list"
  (cl:list 'fk-response
    (cl:cons ':endX (endX msg))
    (cl:cons ':endY (endY msg))
    (cl:cons ':endZ (endZ msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'fk)))
  'fk-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'fk)))
  'fk-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'fk)))
  "Returns string type for a service object of type '<fk>"
  "arm_gazebo/fk")