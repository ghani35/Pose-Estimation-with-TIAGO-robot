// Auto-generated. Do not edit!

// (in-package pal_wifi_localization_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WifiSignalList = require('./WifiSignalList.js');
let nav_msgs = _finder('nav_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class WifiSignalMap {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.info = null;
      this.sectors = null;
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('info')) {
        this.info = initObj.info
      }
      else {
        this.info = new nav_msgs.msg.MapMetaData();
      }
      if (initObj.hasOwnProperty('sectors')) {
        this.sectors = initObj.sectors
      }
      else {
        this.sectors = 0;
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WifiSignalMap
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [info]
    bufferOffset = nav_msgs.msg.MapMetaData.serialize(obj.info, buffer, bufferOffset);
    // Serialize message field [sectors]
    bufferOffset = _serializer.uint32(obj.sectors, buffer, bufferOffset);
    // Serialize message field [data]
    // Serialize the length for message field [data]
    bufferOffset = _serializer.uint32(obj.data.length, buffer, bufferOffset);
    obj.data.forEach((val) => {
      bufferOffset = WifiSignalList.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WifiSignalMap
    let len;
    let data = new WifiSignalMap(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [info]
    data.info = nav_msgs.msg.MapMetaData.deserialize(buffer, bufferOffset);
    // Deserialize message field [sectors]
    data.sectors = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [data]
    // Deserialize array length for message field [data]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.data = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.data[i] = WifiSignalList.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.data.forEach((val) => {
      length += WifiSignalList.getMessageSize(val);
    });
    return length + 84;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_wifi_localization_msgs/WifiSignalMap';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5083f884f6a479bea709736f39c4131f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This represents a 2-D grid map, in which each cell represents the signal strenght models of detected wifi networks.
    
    Header header 
    
    #MetaData for the map
    nav_msgs/MapMetaData info
    
    # Define the number of sectors to be used on wifi maps that include orientation info.
    uint32 sectors
    
    # The map data, in row-major order, starting with (0,0).  Wifi signal strenght models
    # are gaussian probability distribution functions defined by mean and standard deviation value.
    WifiSignalList[] data
    
    
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
    MSG: nav_msgs/MapMetaData
    # This hold basic information about the characterists of the OccupancyGrid
    
    # The time at which the map was loaded
    time map_load_time
    # The map resolution [m/cell]
    float32 resolution
    # Map width [cells]
    uint32 width
    # Map height [cells]
    uint32 height
    # The origin of the map [m, m, rad].  This is the real-world pose of the
    # cell (0,0) in the map.
    geometry_msgs/Pose origin
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
    
    ================================================================================
    MSG: pal_wifi_localization_msgs/WifiSignalList
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
    const resolved = new WifiSignalMap(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.info !== undefined) {
      resolved.info = nav_msgs.msg.MapMetaData.Resolve(msg.info)
    }
    else {
      resolved.info = new nav_msgs.msg.MapMetaData()
    }

    if (msg.sectors !== undefined) {
      resolved.sectors = msg.sectors;
    }
    else {
      resolved.sectors = 0
    }

    if (msg.data !== undefined) {
      resolved.data = new Array(msg.data.length);
      for (let i = 0; i < resolved.data.length; ++i) {
        resolved.data[i] = WifiSignalList.Resolve(msg.data[i]);
      }
    }
    else {
      resolved.data = []
    }

    return resolved;
    }
};

module.exports = WifiSignalMap;
