// Auto-generated. Do not edit!

// (in-package pal_web_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class WebGoTo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WebGoTo
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    // Serialize message field [value]
    bufferOffset = _serializer.string(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WebGoTo
    let len;
    let data = new WebGoTo(null);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [value]
    data.value = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.value.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_web_msgs/WebGoTo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4f4b0500f7d0332daf037d4a463b0073';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 IMAGE = 0
    uint8 VIDEO = 1
    uint8 URI   = 2
    uint8 URL = 3
    uint8 TOUCH_PAGE = 4
    uint8 type # one of the enum above
    
    string value # Destination (an image, a video or a uri)
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WebGoTo(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = ''
    }

    return resolved;
    }
};

// Constants for message
WebGoTo.Constants = {
  IMAGE: 0,
  VIDEO: 1,
  URI: 2,
  URL: 3,
  TOUCH_PAGE: 4,
}

module.exports = WebGoTo;
