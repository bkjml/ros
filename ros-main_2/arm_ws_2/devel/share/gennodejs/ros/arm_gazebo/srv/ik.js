// Auto-generated. Do not edit!

// (in-package arm_gazebo.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ikRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_axis = null;
      this.joint_values = null;
      this.target_values = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_axis')) {
        this.joint_axis = initObj.joint_axis
      }
      else {
        this.joint_axis = [];
      }
      if (initObj.hasOwnProperty('joint_values')) {
        this.joint_values = initObj.joint_values
      }
      else {
        this.joint_values = [];
      }
      if (initObj.hasOwnProperty('target_values')) {
        this.target_values = initObj.target_values
      }
      else {
        this.target_values = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ikRequest
    // Serialize message field [joint_axis]
    bufferOffset = _arraySerializer.float64(obj.joint_axis, buffer, bufferOffset, null);
    // Serialize message field [joint_values]
    bufferOffset = _arraySerializer.float64(obj.joint_values, buffer, bufferOffset, null);
    // Serialize message field [target_values]
    bufferOffset = _arraySerializer.float64(obj.target_values, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ikRequest
    let len;
    let data = new ikRequest(null);
    // Deserialize message field [joint_axis]
    data.joint_axis = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [joint_values]
    data.joint_values = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [target_values]
    data.target_values = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.joint_axis.length;
    length += 8 * object.joint_values.length;
    length += 8 * object.target_values.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'arm_gazebo/ikRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '993e8d716df90145069c1ea8a246d997';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] joint_axis
    float64[] joint_values
    float64[] target_values
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ikRequest(null);
    if (msg.joint_axis !== undefined) {
      resolved.joint_axis = msg.joint_axis;
    }
    else {
      resolved.joint_axis = []
    }

    if (msg.joint_values !== undefined) {
      resolved.joint_values = msg.joint_values;
    }
    else {
      resolved.joint_values = []
    }

    if (msg.target_values !== undefined) {
      resolved.target_values = msg.target_values;
    }
    else {
      resolved.target_values = []
    }

    return resolved;
    }
};

class ikResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.new_joint_values = null;
    }
    else {
      if (initObj.hasOwnProperty('new_joint_values')) {
        this.new_joint_values = initObj.new_joint_values
      }
      else {
        this.new_joint_values = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ikResponse
    // Serialize message field [new_joint_values]
    bufferOffset = _arraySerializer.float64(obj.new_joint_values, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ikResponse
    let len;
    let data = new ikResponse(null);
    // Deserialize message field [new_joint_values]
    data.new_joint_values = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.new_joint_values.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'arm_gazebo/ikResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7b5674ef1408d4fcc711ad7fb0c25569';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] new_joint_values
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ikResponse(null);
    if (msg.new_joint_values !== undefined) {
      resolved.new_joint_values = msg.new_joint_values;
    }
    else {
      resolved.new_joint_values = []
    }

    return resolved;
    }
};

module.exports = {
  Request: ikRequest,
  Response: ikResponse,
  md5sum() { return '84122223e73e4078eaa2c97e97d79aa5'; },
  datatype() { return 'arm_gazebo/ik'; }
};
