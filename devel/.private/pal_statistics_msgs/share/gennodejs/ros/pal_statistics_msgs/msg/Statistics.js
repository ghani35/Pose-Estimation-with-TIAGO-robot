// Auto-generated. Do not edit!

// (in-package pal_statistics_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Statistic = require('./Statistic.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Statistics {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.statistics = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('statistics')) {
        this.statistics = initObj.statistics
      }
      else {
        this.statistics = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Statistics
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [statistics]
    // Serialize the length for message field [statistics]
    bufferOffset = _serializer.uint32(obj.statistics.length, buffer, bufferOffset);
    obj.statistics.forEach((val) => {
      bufferOffset = Statistic.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Statistics
    let len;
    let data = new Statistics(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [statistics]
    // Deserialize array length for message field [statistics]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.statistics = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.statistics[i] = Statistic.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.statistics.forEach((val) => {
      length += Statistic.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_statistics_msgs/Statistics';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3f331753b5cb45fe4c2ecf2b2c5f78ac';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # header
    Header header
    
    # Statistics
    Statistic[] statistics
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: pal_statistics_msgs/Statistic
    string name
    float64 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Statistics(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.statistics !== undefined) {
      resolved.statistics = new Array(msg.statistics.length);
      for (let i = 0; i < resolved.statistics.length; ++i) {
        resolved.statistics[i] = Statistic.Resolve(msg.statistics[i]);
      }
    }
    else {
      resolved.statistics = []
    }

    return resolved;
    }
};

module.exports = Statistics;
