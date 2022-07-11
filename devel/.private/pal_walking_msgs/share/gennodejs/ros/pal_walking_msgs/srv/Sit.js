// Auto-generated. Do not edit!

// (in-package pal_walking_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SitRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.down = null;
      this.weight_threshold = null;
    }
    else {
      if (initObj.hasOwnProperty('down')) {
        this.down = initObj.down
      }
      else {
        this.down = false;
      }
      if (initObj.hasOwnProperty('weight_threshold')) {
        this.weight_threshold = initObj.weight_threshold
      }
      else {
        this.weight_threshold = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SitRequest
    // Serialize message field [down]
    bufferOffset = _serializer.bool(obj.down, buffer, bufferOffset);
    // Serialize message field [weight_threshold]
    bufferOffset = _serializer.float64(obj.weight_threshold, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SitRequest
    let len;
    let data = new SitRequest(null);
    // Deserialize message field [down]
    data.down = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [weight_threshold]
    data.weight_threshold = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pal_walking_msgs/SitRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ad6dfe9fa0ab9703a36ca371cf15816f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This service requests that the robot lifts one foot at a specified height
    # The parameters are the side and the height
    
    bool    down
    float64 weight_threshold
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SitRequest(null);
    if (msg.down !== undefined) {
      resolved.down = msg.down;
    }
    else {
      resolved.down = false
    }

    if (msg.weight_threshold !== undefined) {
      resolved.weight_threshold = msg.weight_threshold;
    }
    else {
      resolved.weight_threshold = 0.0
    }

    return resolved;
    }
};

class SitResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SitResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SitResponse
    let len;
    let data = new SitResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pal_walking_msgs/SitResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SitResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: SitRequest,
  Response: SitResponse,
  md5sum() { return 'ad6dfe9fa0ab9703a36ca371cf15816f'; },
  datatype() { return 'pal_walking_msgs/Sit'; }
};
