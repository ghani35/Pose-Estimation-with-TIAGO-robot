// Auto-generated. Do not edit!

// (in-package tf_lookup.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class lookupTransformRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.target_frame = null;
      this.source_frame = null;
      this.transform_time = null;
    }
    else {
      if (initObj.hasOwnProperty('target_frame')) {
        this.target_frame = initObj.target_frame
      }
      else {
        this.target_frame = '';
      }
      if (initObj.hasOwnProperty('source_frame')) {
        this.source_frame = initObj.source_frame
      }
      else {
        this.source_frame = '';
      }
      if (initObj.hasOwnProperty('transform_time')) {
        this.transform_time = initObj.transform_time
      }
      else {
        this.transform_time = {secs: 0, nsecs: 0};
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type lookupTransformRequest
    // Serialize message field [target_frame]
    bufferOffset = _serializer.string(obj.target_frame, buffer, bufferOffset);
    // Serialize message field [source_frame]
    bufferOffset = _serializer.string(obj.source_frame, buffer, bufferOffset);
    // Serialize message field [transform_time]
    bufferOffset = _serializer.time(obj.transform_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type lookupTransformRequest
    let len;
    let data = new lookupTransformRequest(null);
    // Deserialize message field [target_frame]
    data.target_frame = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [source_frame]
    data.source_frame = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [transform_time]
    data.transform_time = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.target_frame.length;
    length += object.source_frame.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tf_lookup/lookupTransformRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bb9d983758e61f286b43546ac9c0b080';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string target_frame #The frame to which data should be transformed
    string source_frame #The frame where the data originated
    time transform_time
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new lookupTransformRequest(null);
    if (msg.target_frame !== undefined) {
      resolved.target_frame = msg.target_frame;
    }
    else {
      resolved.target_frame = ''
    }

    if (msg.source_frame !== undefined) {
      resolved.source_frame = msg.source_frame;
    }
    else {
      resolved.source_frame = ''
    }

    if (msg.transform_time !== undefined) {
      resolved.transform_time = msg.transform_time;
    }
    else {
      resolved.transform_time = {secs: 0, nsecs: 0}
    }

    return resolved;
    }
};

class lookupTransformResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.transform = null;
    }
    else {
      if (initObj.hasOwnProperty('transform')) {
        this.transform = initObj.transform
      }
      else {
        this.transform = new geometry_msgs.msg.TransformStamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type lookupTransformResponse
    // Serialize message field [transform]
    bufferOffset = geometry_msgs.msg.TransformStamped.serialize(obj.transform, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type lookupTransformResponse
    let len;
    let data = new lookupTransformResponse(null);
    // Deserialize message field [transform]
    data.transform = geometry_msgs.msg.TransformStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.TransformStamped.getMessageSize(object.transform);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tf_lookup/lookupTransformResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '627ebb4e09bbb127f87308bbfdbaec08';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/TransformStamped transform 
    
    
    ================================================================================
    MSG: geometry_msgs/TransformStamped
    # This expresses a transform from coordinate frame header.frame_id
    # to the coordinate frame child_frame_id
    #
    # This message is mostly used by the 
    # <a href="http://wiki.ros.org/tf">tf</a> package. 
    # See its documentation for more information.
    
    Header header
    string child_frame_id # the frame id of the child frame
    Transform transform
    
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
    MSG: geometry_msgs/Transform
    # This represents the transform between two coordinate frames in free space.
    
    Vector3 translation
    Quaternion rotation
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new lookupTransformResponse(null);
    if (msg.transform !== undefined) {
      resolved.transform = geometry_msgs.msg.TransformStamped.Resolve(msg.transform)
    }
    else {
      resolved.transform = new geometry_msgs.msg.TransformStamped()
    }

    return resolved;
    }
};

module.exports = {
  Request: lookupTransformRequest,
  Response: lookupTransformResponse,
  md5sum() { return '02c6b9366a79d71ff07f2dc56c230415'; },
  datatype() { return 'tf_lookup/lookupTransform'; }
};
