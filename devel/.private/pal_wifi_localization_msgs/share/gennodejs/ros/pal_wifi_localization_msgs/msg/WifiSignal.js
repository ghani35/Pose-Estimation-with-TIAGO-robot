// Auto-generated. Do not edit!

// (in-package pal_wifi_localization_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class WifiSignal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.mean = null;
      this.std_dev = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('mean')) {
        this.mean = initObj.mean
      }
      else {
        this.mean = 0.0;
      }
      if (initObj.hasOwnProperty('std_dev')) {
        this.std_dev = initObj.std_dev
      }
      else {
        this.std_dev = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WifiSignal
    // Serialize message field [id]
    bufferOffset = std_msgs.msg.String.serialize(obj.id, buffer, bufferOffset);
    // Serialize message field [mean]
    bufferOffset = _serializer.float32(obj.mean, buffer, bufferOffset);
    // Serialize message field [std_dev]
    bufferOffset = _serializer.float32(obj.std_dev, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WifiSignal
    let len;
    let data = new WifiSignal(null);
    // Deserialize message field [id]
    data.id = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [mean]
    data.mean = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [std_dev]
    data.std_dev = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.String.getMessageSize(object.id);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_wifi_localization_msgs/WifiSignal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd6a79c360f114b44aaa8b522b2621591';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ## Contains data relative to the learnt model of a wifi signal strenght in a specific location
    
    # network id
    std_msgs/String id
    
    #Signal is represented through  a gaussian pdf.
    #The signal strenght is measured in dB
    
    float32  mean
    float32  std_dev
    
    
    
    ================================================================================
    MSG: std_msgs/String
    string data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WifiSignal(null);
    if (msg.id !== undefined) {
      resolved.id = std_msgs.msg.String.Resolve(msg.id)
    }
    else {
      resolved.id = new std_msgs.msg.String()
    }

    if (msg.mean !== undefined) {
      resolved.mean = msg.mean;
    }
    else {
      resolved.mean = 0.0
    }

    if (msg.std_dev !== undefined) {
      resolved.std_dev = msg.std_dev;
    }
    else {
      resolved.std_dev = 0.0
    }

    return resolved;
    }
};

module.exports = WifiSignal;
