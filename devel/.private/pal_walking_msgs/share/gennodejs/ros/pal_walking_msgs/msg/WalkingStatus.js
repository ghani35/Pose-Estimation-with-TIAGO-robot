// Auto-generated. Do not edit!

// (in-package pal_walking_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class WalkingStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.hip_reference_pose = null;
      this.foot_reference_pose = null;
      this.zmp_reference = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('hip_reference_pose')) {
        this.hip_reference_pose = initObj.hip_reference_pose
      }
      else {
        this.hip_reference_pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('foot_reference_pose')) {
        this.foot_reference_pose = initObj.foot_reference_pose
      }
      else {
        this.foot_reference_pose = new Array(2).fill(new geometry_msgs.msg.Pose());
      }
      if (initObj.hasOwnProperty('zmp_reference')) {
        this.zmp_reference = initObj.zmp_reference
      }
      else {
        this.zmp_reference = new geometry_msgs.msg.Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WalkingStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [hip_reference_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.hip_reference_pose, buffer, bufferOffset);
    // Check that the constant length array field [foot_reference_pose] has the right length
    if (obj.foot_reference_pose.length !== 2) {
      throw new Error('Unable to serialize array field foot_reference_pose - length must be 2')
    }
    // Serialize message field [foot_reference_pose]
    obj.foot_reference_pose.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Pose.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [zmp_reference]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.zmp_reference, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WalkingStatus
    let len;
    let data = new WalkingStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [hip_reference_pose]
    data.hip_reference_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [foot_reference_pose]
    len = 2;
    data.foot_reference_pose = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.foot_reference_pose[i] = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [zmp_reference]
    data.zmp_reference = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 192;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_walking_msgs/WalkingStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '86de80b808fb27b3f11d218fa8d1c16e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    geometry_msgs/Pose    hip_reference_pose
    
    geometry_msgs/Pose[2] foot_reference_pose
    
    geometry_msgs/Point zmp_reference
    
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
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
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
    const resolved = new WalkingStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.hip_reference_pose !== undefined) {
      resolved.hip_reference_pose = geometry_msgs.msg.Pose.Resolve(msg.hip_reference_pose)
    }
    else {
      resolved.hip_reference_pose = new geometry_msgs.msg.Pose()
    }

    if (msg.foot_reference_pose !== undefined) {
      resolved.foot_reference_pose = new Array(2)
      for (let i = 0; i < resolved.foot_reference_pose.length; ++i) {
        if (msg.foot_reference_pose.length > i) {
          resolved.foot_reference_pose[i] = geometry_msgs.msg.Pose.Resolve(msg.foot_reference_pose[i]);
        }
        else {
          resolved.foot_reference_pose[i] = new geometry_msgs.msg.Pose();
        }
      }
    }
    else {
      resolved.foot_reference_pose = new Array(2).fill(new geometry_msgs.msg.Pose())
    }

    if (msg.zmp_reference !== undefined) {
      resolved.zmp_reference = geometry_msgs.msg.Point.Resolve(msg.zmp_reference)
    }
    else {
      resolved.zmp_reference = new geometry_msgs.msg.Point()
    }

    return resolved;
    }
};

module.exports = WalkingStatus;
