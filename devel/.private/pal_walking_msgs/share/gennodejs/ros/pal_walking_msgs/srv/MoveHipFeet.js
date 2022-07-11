// Auto-generated. Do not edit!

// (in-package pal_walking_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class MoveHipFeetRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.hip_poses = null;
      this.left_foot_poses = null;
      this.right_foot_poses = null;
      this.times_after_previous = null;
    }
    else {
      if (initObj.hasOwnProperty('hip_poses')) {
        this.hip_poses = initObj.hip_poses
      }
      else {
        this.hip_poses = new geometry_msgs.msg.PoseArray();
      }
      if (initObj.hasOwnProperty('left_foot_poses')) {
        this.left_foot_poses = initObj.left_foot_poses
      }
      else {
        this.left_foot_poses = new geometry_msgs.msg.PoseArray();
      }
      if (initObj.hasOwnProperty('right_foot_poses')) {
        this.right_foot_poses = initObj.right_foot_poses
      }
      else {
        this.right_foot_poses = new geometry_msgs.msg.PoseArray();
      }
      if (initObj.hasOwnProperty('times_after_previous')) {
        this.times_after_previous = initObj.times_after_previous
      }
      else {
        this.times_after_previous = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoveHipFeetRequest
    // Serialize message field [hip_poses]
    bufferOffset = geometry_msgs.msg.PoseArray.serialize(obj.hip_poses, buffer, bufferOffset);
    // Serialize message field [left_foot_poses]
    bufferOffset = geometry_msgs.msg.PoseArray.serialize(obj.left_foot_poses, buffer, bufferOffset);
    // Serialize message field [right_foot_poses]
    bufferOffset = geometry_msgs.msg.PoseArray.serialize(obj.right_foot_poses, buffer, bufferOffset);
    // Serialize message field [times_after_previous]
    bufferOffset = _arraySerializer.duration(obj.times_after_previous, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoveHipFeetRequest
    let len;
    let data = new MoveHipFeetRequest(null);
    // Deserialize message field [hip_poses]
    data.hip_poses = geometry_msgs.msg.PoseArray.deserialize(buffer, bufferOffset);
    // Deserialize message field [left_foot_poses]
    data.left_foot_poses = geometry_msgs.msg.PoseArray.deserialize(buffer, bufferOffset);
    // Deserialize message field [right_foot_poses]
    data.right_foot_poses = geometry_msgs.msg.PoseArray.deserialize(buffer, bufferOffset);
    // Deserialize message field [times_after_previous]
    data.times_after_previous = _arrayDeserializer.duration(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseArray.getMessageSize(object.hip_poses);
    length += geometry_msgs.msg.PoseArray.getMessageSize(object.left_foot_poses);
    length += geometry_msgs.msg.PoseArray.getMessageSize(object.right_foot_poses);
    length += 8 * object.times_after_previous.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pal_walking_msgs/MoveHipFeetRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2ee43076f2da7aab2dbbf598a7709593';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This service requests that the robot move the hip and feet in cartesian space
    # The parameters are the waypoints and time to reach that poses
    
    geometry_msgs/PoseArray hip_poses
    
    geometry_msgs/PoseArray left_foot_poses
    
    geometry_msgs/PoseArray right_foot_poses
    
    duration[]              times_after_previous
    
    ================================================================================
    MSG: geometry_msgs/PoseArray
    # An array of poses with a header for global reference.
    
    Header header
    
    Pose[] poses
    
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
    const resolved = new MoveHipFeetRequest(null);
    if (msg.hip_poses !== undefined) {
      resolved.hip_poses = geometry_msgs.msg.PoseArray.Resolve(msg.hip_poses)
    }
    else {
      resolved.hip_poses = new geometry_msgs.msg.PoseArray()
    }

    if (msg.left_foot_poses !== undefined) {
      resolved.left_foot_poses = geometry_msgs.msg.PoseArray.Resolve(msg.left_foot_poses)
    }
    else {
      resolved.left_foot_poses = new geometry_msgs.msg.PoseArray()
    }

    if (msg.right_foot_poses !== undefined) {
      resolved.right_foot_poses = geometry_msgs.msg.PoseArray.Resolve(msg.right_foot_poses)
    }
    else {
      resolved.right_foot_poses = new geometry_msgs.msg.PoseArray()
    }

    if (msg.times_after_previous !== undefined) {
      resolved.times_after_previous = msg.times_after_previous;
    }
    else {
      resolved.times_after_previous = []
    }

    return resolved;
    }
};

class MoveHipFeetResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoveHipFeetResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoveHipFeetResponse
    let len;
    let data = new MoveHipFeetResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pal_walking_msgs/MoveHipFeetResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MoveHipFeetResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: MoveHipFeetRequest,
  Response: MoveHipFeetResponse,
  md5sum() { return '2ee43076f2da7aab2dbbf598a7709593'; },
  datatype() { return 'pal_walking_msgs/MoveHipFeet'; }
};
