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


//-----------------------------------------------------------

class IsAlreadyThereRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.motion_name = null;
      this.tolerance = null;
    }
    else {
      if (initObj.hasOwnProperty('motion_name')) {
        this.motion_name = initObj.motion_name
      }
      else {
        this.motion_name = '';
      }
      if (initObj.hasOwnProperty('tolerance')) {
        this.tolerance = initObj.tolerance
      }
      else {
        this.tolerance = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IsAlreadyThereRequest
    // Serialize message field [motion_name]
    bufferOffset = _serializer.string(obj.motion_name, buffer, bufferOffset);
    // Serialize message field [tolerance]
    bufferOffset = _serializer.float32(obj.tolerance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IsAlreadyThereRequest
    let len;
    let data = new IsAlreadyThereRequest(null);
    // Deserialize message field [motion_name]
    data.motion_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [tolerance]
    data.tolerance = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.motion_name.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'play_motion_msgs/IsAlreadyThereRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '99caf0c415b632c6336d7371da3ff931';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Checks if the robot joint state matches the first
    # point of a given motion
    #
    # Robot joint positions will be checked against the
    # values found in the motion's first point, given a
    # tolerance.
    # Joints that are not targetted by the given motion
    # will not be considered.
    
    string motion_name
    float32 tolerance   # in radians
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IsAlreadyThereRequest(null);
    if (msg.motion_name !== undefined) {
      resolved.motion_name = msg.motion_name;
    }
    else {
      resolved.motion_name = ''
    }

    if (msg.tolerance !== undefined) {
      resolved.tolerance = msg.tolerance;
    }
    else {
      resolved.tolerance = 0.0
    }

    return resolved;
    }
};

class IsAlreadyThereResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.already_there = null;
    }
    else {
      if (initObj.hasOwnProperty('already_there')) {
        this.already_there = initObj.already_there
      }
      else {
        this.already_there = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IsAlreadyThereResponse
    // Serialize message field [already_there]
    bufferOffset = _serializer.bool(obj.already_there, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IsAlreadyThereResponse
    let len;
    let data = new IsAlreadyThereResponse(null);
    // Deserialize message field [already_there]
    data.already_there = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'play_motion_msgs/IsAlreadyThereResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ab529bf62f4cfd6bb0a78ed51c04fcba';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool already_there
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IsAlreadyThereResponse(null);
    if (msg.already_there !== undefined) {
      resolved.already_there = msg.already_there;
    }
    else {
      resolved.already_there = false
    }

    return resolved;
    }
};

module.exports = {
  Request: IsAlreadyThereRequest,
  Response: IsAlreadyThereResponse,
  md5sum() { return '7235124945b0db7b8593d4de73ead738'; },
  datatype() { return 'play_motion_msgs/IsAlreadyThere'; }
};
