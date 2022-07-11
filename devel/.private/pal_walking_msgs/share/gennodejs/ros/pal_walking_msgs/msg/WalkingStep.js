// Auto-generated. Do not edit!

// (in-package pal_walking_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let humanoid_nav_msgs = _finder('humanoid_nav_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class WalkingStep {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.step_target = null;
      this.step_duration = null;
      this.step_list_size = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('step_target')) {
        this.step_target = initObj.step_target
      }
      else {
        this.step_target = new humanoid_nav_msgs.msg.StepTarget();
      }
      if (initObj.hasOwnProperty('step_duration')) {
        this.step_duration = initObj.step_duration
      }
      else {
        this.step_duration = new std_msgs.msg.Duration();
      }
      if (initObj.hasOwnProperty('step_list_size')) {
        this.step_list_size = initObj.step_list_size
      }
      else {
        this.step_list_size = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WalkingStep
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [step_target]
    bufferOffset = humanoid_nav_msgs.msg.StepTarget.serialize(obj.step_target, buffer, bufferOffset);
    // Serialize message field [step_duration]
    bufferOffset = std_msgs.msg.Duration.serialize(obj.step_duration, buffer, bufferOffset);
    // Serialize message field [step_list_size]
    bufferOffset = _serializer.int32(obj.step_list_size, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WalkingStep
    let len;
    let data = new WalkingStep(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [step_target]
    data.step_target = humanoid_nav_msgs.msg.StepTarget.deserialize(buffer, bufferOffset);
    // Deserialize message field [step_duration]
    data.step_duration = std_msgs.msg.Duration.deserialize(buffer, bufferOffset);
    // Deserialize message field [step_list_size]
    data.step_list_size = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 37;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_walking_msgs/WalkingStep';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '71c9b6abe3794dbf1d1e8705aadecb82';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Data about walking step being executed
    
    Header header
    
    humanoid_nav_msgs/StepTarget step_target
    
    std_msgs/Duration           step_duration
    
    int32  step_list_size
    
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
    MSG: humanoid_nav_msgs/StepTarget
    # Target for a single stepping motion of a humanoid's leg
    
    geometry_msgs/Pose2D pose   # step pose as relative offset to last leg
    uint8 leg                   # which leg to use (left/right, see below)
    
    uint8 right=0               # right leg constant
    uint8 left=1                # left leg constant
    
    ================================================================================
    MSG: geometry_msgs/Pose2D
    # Deprecated
    # Please use the full 3D pose.
    
    # In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.
    
    # If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.
    
    
    # This expresses a position and orientation on a 2D manifold.
    
    float64 x
    float64 y
    float64 theta
    
    ================================================================================
    MSG: std_msgs/Duration
    duration data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WalkingStep(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.step_target !== undefined) {
      resolved.step_target = humanoid_nav_msgs.msg.StepTarget.Resolve(msg.step_target)
    }
    else {
      resolved.step_target = new humanoid_nav_msgs.msg.StepTarget()
    }

    if (msg.step_duration !== undefined) {
      resolved.step_duration = std_msgs.msg.Duration.Resolve(msg.step_duration)
    }
    else {
      resolved.step_duration = new std_msgs.msg.Duration()
    }

    if (msg.step_list_size !== undefined) {
      resolved.step_list_size = msg.step_list_size;
    }
    else {
      resolved.step_list_size = 0
    }

    return resolved;
    }
};

module.exports = WalkingStep;
