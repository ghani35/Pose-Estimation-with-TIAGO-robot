// Auto-generated. Do not edit!

// (in-package pal_wifi_localization_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let WifiSignalMap = require('../msg/WifiSignalMap.js');

//-----------------------------------------------------------

class GetWifiMapRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetWifiMapRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetWifiMapRequest
    let len;
    let data = new GetWifiMapRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pal_wifi_localization_msgs/GetWifiMapRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Get the map as a wifi_map
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetWifiMapRequest(null);
    return resolved;
    }
};

class GetWifiMapResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.map = null;
    }
    else {
      if (initObj.hasOwnProperty('map')) {
        this.map = initObj.map
      }
      else {
        this.map = new WifiSignalMap();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetWifiMapResponse
    // Serialize message field [map]
    bufferOffset = WifiSignalMap.serialize(obj.map, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetWifiMapResponse
    let len;
    let data = new GetWifiMapResponse(null);
    // Deserialize message field [map]
    data.map = WifiSignalMap.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += WifiSignalMap.getMessageSize(object.map);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pal_wifi_localization_msgs/GetWifiMapResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4273c0e2a4f41c0c71c07a4fee60fcee';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    pal_wifi_localization_msgs/WifiSignalMap map
    
    
    ================================================================================
    MSG: pal_wifi_localization_msgs/WifiSignalMap
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
    const resolved = new GetWifiMapResponse(null);
    if (msg.map !== undefined) {
      resolved.map = WifiSignalMap.Resolve(msg.map)
    }
    else {
      resolved.map = new WifiSignalMap()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetWifiMapRequest,
  Response: GetWifiMapResponse,
  md5sum() { return '4273c0e2a4f41c0c71c07a4fee60fcee'; },
  datatype() { return 'pal_wifi_localization_msgs/GetWifiMap'; }
};
