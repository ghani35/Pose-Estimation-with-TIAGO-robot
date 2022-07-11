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

class StepOverRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.step_length = null;
      this.step_time = null;
      this.step_height = null;
      this.z_lipm = null;
    }
    else {
      if (initObj.hasOwnProperty('step_length')) {
        this.step_length = initObj.step_length
      }
      else {
        this.step_length = 0.0;
      }
      if (initObj.hasOwnProperty('step_time')) {
        this.step_time = initObj.step_time
      }
      else {
        this.step_time = 0.0;
      }
      if (initObj.hasOwnProperty('step_height')) {
        this.step_height = initObj.step_height
      }
      else {
        this.step_height = 0.0;
      }
      if (initObj.hasOwnProperty('z_lipm')) {
        this.z_lipm = initObj.z_lipm
      }
      else {
        this.z_lipm = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StepOverRequest
    // Serialize message field [step_length]
    bufferOffset = _serializer.float64(obj.step_length, buffer, bufferOffset);
    // Serialize message field [step_time]
    bufferOffset = _serializer.float64(obj.step_time, buffer, bufferOffset);
    // Serialize message field [step_height]
    bufferOffset = _serializer.float64(obj.step_height, buffer, bufferOffset);
    // Serialize message field [z_lipm]
    bufferOffset = _serializer.float64(obj.z_lipm, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StepOverRequest
    let len;
    let data = new StepOverRequest(null);
    // Deserialize message field [step_length]
    data.step_length = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [step_time]
    data.step_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [step_height]
    data.step_height = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z_lipm]
    data.z_lipm = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pal_walking_msgs/StepOverRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '55de90020d2cc2af87188eee86853f04';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This service requests that the robot step over an obstacle
    # The parameters specify parameters for modifying the step
    
    float64   step_length
    float64   step_time
    float64   step_height
    float64   z_lipm
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StepOverRequest(null);
    if (msg.step_length !== undefined) {
      resolved.step_length = msg.step_length;
    }
    else {
      resolved.step_length = 0.0
    }

    if (msg.step_time !== undefined) {
      resolved.step_time = msg.step_time;
    }
    else {
      resolved.step_time = 0.0
    }

    if (msg.step_height !== undefined) {
      resolved.step_height = msg.step_height;
    }
    else {
      resolved.step_height = 0.0
    }

    if (msg.z_lipm !== undefined) {
      resolved.z_lipm = msg.z_lipm;
    }
    else {
      resolved.z_lipm = 0.0
    }

    return resolved;
    }
};

class StepOverResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StepOverResponse
    // Serialize message field [result]
    bufferOffset = _serializer.string(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StepOverResponse
    let len;
    let data = new StepOverResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.result.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pal_walking_msgs/StepOverResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c22f2a1ed8654a0b365f1bb3f7ff2c0f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    string    result
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StepOverResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: StepOverRequest,
  Response: StepOverResponse,
  md5sum() { return 'b3759907c1da99fedab7db53a18a936b'; },
  datatype() { return 'pal_walking_msgs/StepOver'; }
};
