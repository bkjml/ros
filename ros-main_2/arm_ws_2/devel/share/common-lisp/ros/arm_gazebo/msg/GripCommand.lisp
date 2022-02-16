; Auto-generated. Do not edit!


(cl:in-package arm_gazebo-msg)


;//! \htmlinclude GripCommand.msg.html

(cl:defclass <GripCommand> (roslisp-msg-protocol:ros-message)
  ((grip_command
    :reader grip_command
    :initarg :grip_command
    :type cl:string
    :initform ""))
)

(cl:defclass GripCommand (<GripCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GripCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GripCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_gazebo-msg:<GripCommand> is deprecated: use arm_gazebo-msg:GripCommand instead.")))

(cl:ensure-generic-function 'grip_command-val :lambda-list '(m))
(cl:defmethod grip_command-val ((m <GripCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_gazebo-msg:grip_command-val is deprecated.  Use arm_gazebo-msg:grip_command instead.")
  (grip_command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GripCommand>) ostream)
  "Serializes a message object of type '<GripCommand>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'grip_command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'grip_command))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GripCommand>) istream)
  "Deserializes a message object of type '<GripCommand>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'grip_command) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'grip_command) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GripCommand>)))
  "Returns string type for a message object of type '<GripCommand>"
  "arm_gazebo/GripCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GripCommand)))
  "Returns string type for a message object of type 'GripCommand"
  "arm_gazebo/GripCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GripCommand>)))
  "Returns md5sum for a message object of type '<GripCommand>"
  "983372b7e58e6a3145a0215cb040ed6f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GripCommand)))
  "Returns md5sum for a message object of type 'GripCommand"
  "983372b7e58e6a3145a0215cb040ed6f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GripCommand>)))
  "Returns full string definition for message of type '<GripCommand>"
  (cl:format cl:nil "string grip_command~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GripCommand)))
  "Returns full string definition for message of type 'GripCommand"
  (cl:format cl:nil "string grip_command~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GripCommand>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'grip_command))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GripCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'GripCommand
    (cl:cons ':grip_command (grip_command msg))
))
