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

class fkRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_axis = null;
      this.joint_values = null;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type fkRequest
    // Serialize message field [joint_axis]
    bufferOffset = _arraySerializer.float64(obj.joint_axis, buffer, bufferOffset, null);
    // Serialize message field [joint_values]
    bufferOffset = _arraySerializer.float64(obj.joint_values, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type fkRequest
    let len;
    let data = new fkRequest(null);
    // Deserialize message field [joint_axis]
    data.joint_axis = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [joint_values]
    data.joint_values = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.joint_axis.length;
    length += 8 * object.joint_values.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'arm_gazebo/fkRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'aeb6ca3d8196512e40f087746697e3ce';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] joint_axis
    float64[] joint_values
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new fkRequest(null);
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

    return resolved;
    }
};

class fkResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.endX = null;
      this.endY = null;
      this.endZ = null;
    }
    else {
      if (initObj.hasOwnProperty('endX')) {
        this.endX = initObj.endX
      }
      else {
        this.endX = 0.0;
      }
      if (initObj.hasOwnProperty('endY')) {
        this.endY = initObj.endY
      }
      else {
        this.endY = 0.0;
      }
      if (initObj.hasOwnProperty('endZ')) {
        this.endZ = initObj.endZ
      }
      else {
        this.endZ = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type fkResponse
    // Serialize message field [endX]
    bufferOffset = _serializer.float64(obj.endX, buffer, bufferOffset);
    // Serialize message field [endY]
    bufferOffset = _serializer.float64(obj.endY, buffer, bufferOffset);
    // Serialize message field [endZ]
    bufferOffset = _serializer.float64(obj.endZ, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type fkResponse
    let len;
    let data = new fkResponse(null);
    // Deserialize message field [endX]
    data.endX = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [endY]
    data.endY = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [endZ]
    data.endZ = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'arm_gazebo/fkResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3085eb2940cac7695141a9a89c45568a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 endX
    float64 endY
    float64 endZ
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new fkResponse(null);
    if (msg.endX !== undefined) {
      resolved.endX = msg.endX;
    }
    else {
      resolved.endX = 0.0
    }

    if (msg.endY !== undefined) {
      resolved.endY = msg.endY;
    }
    else {
      resolved.endY = 0.0
    }

    if (msg.endZ !== undefined) {
      resolved.endZ = msg.endZ;
    }
    else {
      resolved.endZ = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: fkRequest,
  Response: fkResponse,
  md5sum() { return '9c1e0d81941cabb01c9001358f1824c5'; },
  datatype() { return 'arm_gazebo/fk'; }
};
