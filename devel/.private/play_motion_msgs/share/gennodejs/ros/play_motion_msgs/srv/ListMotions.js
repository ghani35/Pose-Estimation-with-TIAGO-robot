// Auto-generated. Do not edit!

// (in-package play_motion_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let MotionInfo = require('../msg/MotionInfo.js');

//-----------------------------------------------------------

class ListMotionsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ListMotionsRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ListMotionsRequest
    let len;
    let data = new ListMotionsRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'play_motion_msgs/ListMotionsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Returns the list of currently loaded motions that can be played by play_motion
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ListMotionsRequest(null);
    return resolved;
    }
};

class ListMotionsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.motions = null;
    }
    else {
      if (initObj.hasOwnProperty('motions')) {
        this.motions = initObj.motions
      }
      else {
        this.motions = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ListMotionsResponse
    // Serialize message field [motions]
    // Serialize the length for message field [motions]
    bufferOffset = _serializer.uint32(obj.motions.length, buffer, bufferOffset);
    obj.motions.forEach((val) => {
      bufferOffset = MotionInfo.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ListMotionsResponse
    let len;
    let data = new ListMotionsResponse(null);
    // Deserialize message field [motions]
    // Deserialize array length for message field [motions]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.motions = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.motions[i] = MotionInfo.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.motions.forEach((val) => {
      length += MotionInfo.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'play_motion_msgs/ListMotionsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '151d88e888f918ab21ebda2cef4dd23c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    MotionInfo[] motions
    
    ================================================================================
    MSG: play_motion_msgs/MotionInfo
    string name
    string[] joints
    duration duration
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ListMotionsResponse(null);
    if (msg.motions !== undefined) {
      resolved.motions = new Array(msg.motions.length);
      for (let i = 0; i < resolved.motions.length; ++i) {
        resolved.motions[i] = MotionInfo.Resolve(msg.motions[i]);
      }
    }
    else {
      resolved.motions = []
    }

    return resolved;
    }
};

module.exports = {
  Request: ListMotionsRequest,
  Response: ListMotionsResponse,
  md5sum() { return '151d88e888f918ab21ebda2cef4dd23c'; },
  datatype() { return 'play_motion_msgs/ListMotions'; }
};
