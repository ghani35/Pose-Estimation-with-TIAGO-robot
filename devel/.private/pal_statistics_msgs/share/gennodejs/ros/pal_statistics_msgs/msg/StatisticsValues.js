// Auto-generated. Do not edit!

// (in-package pal_statistics_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class StatisticsValues {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.values = null;
      this.names_version = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('values')) {
        this.values = initObj.values
      }
      else {
        this.values = [];
      }
      if (initObj.hasOwnProperty('names_version')) {
        this.names_version = initObj.names_version
      }
      else {
        this.names_version = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StatisticsValues
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [values]
    bufferOffset = _arraySerializer.float64(obj.values, buffer, bufferOffset, null);
    // Serialize message field [names_version]
    bufferOffset = _serializer.uint32(obj.names_version, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StatisticsValues
    let len;
    let data = new StatisticsValues(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [values]
    data.values = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [names_version]
    data.names_version = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 8 * object.values.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_statistics_msgs/StatisticsValues';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '44646896ace86f96c24fbb63054eeee8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # header
    Header header
    
    # Statistics
    float64[] values
    uint32 names_version # The values vector corresponds to the name vector with the same name
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StatisticsValues(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.values !== undefined) {
      resolved.values = msg.values;
    }
    else {
      resolved.values = []
    }

    if (msg.names_version !== undefined) {
      resolved.names_version = msg.names_version;
    }
    else {
      resolved.names_version = 0
    }

    return resolved;
    }
};

module.exports = StatisticsValues;
