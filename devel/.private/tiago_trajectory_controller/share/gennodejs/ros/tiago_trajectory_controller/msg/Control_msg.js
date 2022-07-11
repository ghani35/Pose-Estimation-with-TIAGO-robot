// Auto-generated. Do not edit!

// (in-package tiago_trajectory_controller.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Control_msg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.gesture = null;
    }
    else {
      if (initObj.hasOwnProperty('gesture')) {
        this.gesture = initObj.gesture
      }
      else {
        this.gesture = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Control_msg
    // Serialize message field [gesture]
    bufferOffset = _serializer.string(obj.gesture, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Control_msg
    let len;
    let data = new Control_msg(null);
    // Deserialize message field [gesture]
    data.gesture = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.gesture.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tiago_trajectory_controller/Control_msg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '61f2a41b9e73483e6fa26641a58eaf74';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string gesture
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Control_msg(null);
    if (msg.gesture !== undefined) {
      resolved.gesture = msg.gesture;
    }
    else {
      resolved.gesture = ''
    }

    return resolved;
    }
};

module.exports = Control_msg;
