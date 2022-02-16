// Auto-generated. Do not edit!

// (in-package arm_gazebo.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class GripCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.grip_command = null;
    }
    else {
      if (initObj.hasOwnProperty('grip_command')) {
        this.grip_command = initObj.grip_command
      }
      else {
        this.grip_command = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GripCommand
    // Serialize message field [grip_command]
    bufferOffset = _serializer.string(obj.grip_command, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GripCommand
    let len;
    let data = new GripCommand(null);
    // Deserialize message field [grip_command]
    data.grip_command = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.grip_command);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'arm_gazebo/GripCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '983372b7e58e6a3145a0215cb040ed6f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string grip_command
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GripCommand(null);
    if (msg.grip_command !== undefined) {
      resolved.grip_command = msg.grip_command;
    }
    else {
      resolved.grip_command = ''
    }

    return resolved;
    }
};

module.exports = GripCommand;
