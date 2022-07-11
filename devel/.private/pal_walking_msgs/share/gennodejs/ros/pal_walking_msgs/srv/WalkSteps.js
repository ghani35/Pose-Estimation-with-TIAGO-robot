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

class WalkStepsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.nsteps = null;
      this.step_length = null;
      this.step_time = null;
    }
    else {
      if (initObj.hasOwnProperty('nsteps')) {
        this.nsteps = initObj.nsteps
      }
      else {
        this.nsteps = 0;
      }
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WalkStepsRequest
    // Serialize message field [nsteps]
    bufferOffset = _serializer.int32(obj.nsteps, buffer, bufferOffset);
    // Serialize message field [step_length]
    bufferOffset = _serializer.float64(obj.step_length, buffer, bufferOffset);
    // Serialize message field [step_time]
    bufferOffset = _serializer.float64(obj.step_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WalkStepsRequest
    let len;
    let data = new WalkStepsRequest(null);
    // Deserialize message field [nsteps]
    data.nsteps = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [step_length]
    data.step_length = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [step_time]
    data.step_time = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pal_walking_msgs/WalkStepsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '58a83587aa65e3865f04c9ed9e7cdaaf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This service requests that the robot walks
    # The parameters specify how many steps to perform and the length of every step
    
    int32     nsteps
    float64   step_length
    float64   step_time
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WalkStepsRequest(null);
    if (msg.nsteps !== undefined) {
      resolved.nsteps = msg.nsteps;
    }
    else {
      resolved.nsteps = 0
    }

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

    return resolved;
    }
};

class WalkStepsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WalkStepsResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WalkStepsResponse
    let len;
    let data = new WalkStepsResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pal_walking_msgs/WalkStepsResponse';
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
    const resolved = new WalkStepsResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: WalkStepsRequest,
  Response: WalkStepsResponse,
  md5sum() { return '58a83587aa65e3865f04c9ed9e7cdaaf'; },
  datatype() { return 'pal_walking_msgs/WalkSteps'; }
};
