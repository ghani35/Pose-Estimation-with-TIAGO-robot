// Auto-generated. Do not edit!

// (in-package pal_wifi_localization_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WifiSignal = require('./WifiSignal.js');

//-----------------------------------------------------------

class WifiSignalList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.networks = null;
      this.start_time = null;
      this.end_time = null;
    }
    else {
      if (initObj.hasOwnProperty('networks')) {
        this.networks = initObj.networks
      }
      else {
        this.networks = [];
      }
      if (initObj.hasOwnProperty('start_time')) {
        this.start_time = initObj.start_time
      }
      else {
        this.start_time = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('end_time')) {
        this.end_time = initObj.end_time
      }
      else {
        this.end_time = {secs: 0, nsecs: 0};
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WifiSignalList
    // Serialize message field [networks]
    // Serialize the length for message field [networks]
    bufferOffset = _serializer.uint32(obj.networks.length, buffer, bufferOffset);
    obj.networks.forEach((val) => {
      bufferOffset = WifiSignal.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [start_time]
    bufferOffset = _serializer.time(obj.start_time, buffer, bufferOffset);
    // Serialize message field [end_time]
    bufferOffset = _serializer.time(obj.end_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WifiSignalList
    let len;
    let data = new WifiSignalList(null);
    // Deserialize message field [networks]
    // Deserialize array length for message field [networks]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.networks = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.networks[i] = WifiSignal.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [start_time]
    data.start_time = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [end_time]
    data.end_time = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.networks.forEach((val) => {
      length += WifiSignal.getMessageSize(val);
    });
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_wifi_localization_msgs/WifiSignalList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7e7cf55cfdfea3ed97058d9184eceb4c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #list of wifi signal models learnt in a specific place
    
    WifiSignal[] networks
    
    time start_time
    time end_time
    
    ================================================================================
    MSG: pal_wifi_localization_msgs/WifiSignal
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
    const resolved = new WifiSignalList(null);
    if (msg.networks !== undefined) {
      resolved.networks = new Array(msg.networks.length);
      for (let i = 0; i < resolved.networks.length; ++i) {
        resolved.networks[i] = WifiSignal.Resolve(msg.networks[i]);
      }
    }
    else {
      resolved.networks = []
    }

    if (msg.start_time !== undefined) {
      resolved.start_time = msg.start_time;
    }
    else {
      resolved.start_time = {secs: 0, nsecs: 0}
    }

    if (msg.end_time !== undefined) {
      resolved.end_time = msg.end_time;
    }
    else {
      resolved.end_time = {secs: 0, nsecs: 0}
    }

    return resolved;
    }
};

module.exports = WifiSignalList;
