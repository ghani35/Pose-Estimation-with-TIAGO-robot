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

//-----------------------------------------------------------

class SMStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.left_foot_pose = null;
      this.right_foot_pose = null;
      this.stance_foot_side = null;
      this.future_swing_landing_pose = null;
      this.future_swing_side = null;
    }
    else {
      if (initObj.hasOwnProperty('left_foot_pose')) {
        this.left_foot_pose = initObj.left_foot_pose
      }
      else {
        this.left_foot_pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('right_foot_pose')) {
        this.right_foot_pose = initObj.right_foot_pose
      }
      else {
        this.right_foot_pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('stance_foot_side')) {
        this.stance_foot_side = initObj.stance_foot_side
      }
      else {
        this.stance_foot_side = 0;
      }
      if (initObj.hasOwnProperty('future_swing_landing_pose')) {
        this.future_swing_landing_pose = initObj.future_swing_landing_pose
      }
      else {
        this.future_swing_landing_pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('future_swing_side')) {
        this.future_swing_side = initObj.future_swing_side
      }
      else {
        this.future_swing_side = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SMStatus
    // Serialize message field [left_foot_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.left_foot_pose, buffer, bufferOffset);
    // Serialize message field [right_foot_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.right_foot_pose, buffer, bufferOffset);
    // Serialize message field [stance_foot_side]
    bufferOffset = _serializer.uint8(obj.stance_foot_side, buffer, bufferOffset);
    // Serialize message field [future_swing_landing_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.future_swing_landing_pose, buffer, bufferOffset);
    // Serialize message field [future_swing_side]
    bufferOffset = _serializer.uint8(obj.future_swing_side, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SMStatus
    let len;
    let data = new SMStatus(null);
    // Deserialize message field [left_foot_pose]
    data.left_foot_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [right_foot_pose]
    data.right_foot_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [stance_foot_side]
    data.stance_foot_side = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [future_swing_landing_pose]
    data.future_swing_landing_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [future_swing_side]
    data.future_swing_side = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 170;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_walking_msgs/SMStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c7b8f29539d1ef0f23de0a00992a911c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Pose left_foot_pose
    geometry_msgs/Pose right_foot_pose
    uint8 stance_foot_side
    
    geometry_msgs/Pose future_swing_landing_pose
    uint8 future_swing_side
    
    uint8 right=1               # right leg constant
    uint8 left=0                # left leg constant
    
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
    const resolved = new SMStatus(null);
    if (msg.left_foot_pose !== undefined) {
      resolved.left_foot_pose = geometry_msgs.msg.Pose.Resolve(msg.left_foot_pose)
    }
    else {
      resolved.left_foot_pose = new geometry_msgs.msg.Pose()
    }

    if (msg.right_foot_pose !== undefined) {
      resolved.right_foot_pose = geometry_msgs.msg.Pose.Resolve(msg.right_foot_pose)
    }
    else {
      resolved.right_foot_pose = new geometry_msgs.msg.Pose()
    }

    if (msg.stance_foot_side !== undefined) {
      resolved.stance_foot_side = msg.stance_foot_side;
    }
    else {
      resolved.stance_foot_side = 0
    }

    if (msg.future_swing_landing_pose !== undefined) {
      resolved.future_swing_landing_pose = geometry_msgs.msg.Pose.Resolve(msg.future_swing_landing_pose)
    }
    else {
      resolved.future_swing_landing_pose = new geometry_msgs.msg.Pose()
    }

    if (msg.future_swing_side !== undefined) {
      resolved.future_swing_side = msg.future_swing_side;
    }
    else {
      resolved.future_swing_side = 0
    }

    return resolved;
    }
};

// Constants for message
SMStatus.Constants = {
  RIGHT: 1,
  LEFT: 0,
}

module.exports = SMStatus;
