// Auto-generated. Do not edit!

// (in-package dynamic_introspection.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let BoolParameter = require('./BoolParameter.js');
let DoubleParameter = require('./DoubleParameter.js');
let IntParameter = require('./IntParameter.js');
let MarkerParameter = require('./MarkerParameter.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class IntrospectionMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.bools = null;
      this.doubles = null;
      this.ints = null;
      this.markers = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('bools')) {
        this.bools = initObj.bools
      }
      else {
        this.bools = [];
      }
      if (initObj.hasOwnProperty('doubles')) {
        this.doubles = initObj.doubles
      }
      else {
        this.doubles = [];
      }
      if (initObj.hasOwnProperty('ints')) {
        this.ints = initObj.ints
      }
      else {
        this.ints = [];
      }
      if (initObj.hasOwnProperty('markers')) {
        this.markers = initObj.markers
      }
      else {
        this.markers = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IntrospectionMsg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [bools]
    // Serialize the length for message field [bools]
    bufferOffset = _serializer.uint32(obj.bools.length, buffer, bufferOffset);
    obj.bools.forEach((val) => {
      bufferOffset = BoolParameter.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [doubles]
    // Serialize the length for message field [doubles]
    bufferOffset = _serializer.uint32(obj.doubles.length, buffer, bufferOffset);
    obj.doubles.forEach((val) => {
      bufferOffset = DoubleParameter.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [ints]
    // Serialize the length for message field [ints]
    bufferOffset = _serializer.uint32(obj.ints.length, buffer, bufferOffset);
    obj.ints.forEach((val) => {
      bufferOffset = IntParameter.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [markers]
    // Serialize the length for message field [markers]
    bufferOffset = _serializer.uint32(obj.markers.length, buffer, bufferOffset);
    obj.markers.forEach((val) => {
      bufferOffset = MarkerParameter.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IntrospectionMsg
    let len;
    let data = new IntrospectionMsg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [bools]
    // Deserialize array length for message field [bools]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.bools = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.bools[i] = BoolParameter.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [doubles]
    // Deserialize array length for message field [doubles]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.doubles = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.doubles[i] = DoubleParameter.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [ints]
    // Deserialize array length for message field [ints]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.ints = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.ints[i] = IntParameter.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [markers]
    // Deserialize array length for message field [markers]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.markers = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.markers[i] = MarkerParameter.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.bools.forEach((val) => {
      length += BoolParameter.getMessageSize(val);
    });
    object.doubles.forEach((val) => {
      length += DoubleParameter.getMessageSize(val);
    });
    object.ints.forEach((val) => {
      length += IntParameter.getMessageSize(val);
    });
    object.markers.forEach((val) => {
      length += MarkerParameter.getMessageSize(val);
    });
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dynamic_introspection/IntrospectionMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'abf14c63c888d80e823c2b0710f2d3a3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    BoolParameter[] bools
    DoubleParameter[] doubles
    IntParameter[] ints
    
    MarkerParameter[] markers
    
    
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
    MSG: dynamic_introspection/BoolParameter
    string name
    bool value
    
    ================================================================================
    MSG: dynamic_introspection/DoubleParameter
    string name
    float64 value
    
    ================================================================================
    MSG: dynamic_introspection/IntParameter
    string name
    int32 value
    
    ================================================================================
    MSG: dynamic_introspection/MarkerParameter
    string name
    visualization_msgs/MarkerArray value
    
    ================================================================================
    MSG: visualization_msgs/MarkerArray
    Marker[] markers
    
    ================================================================================
    MSG: visualization_msgs/Marker
    # See http://www.ros.org/wiki/rviz/DisplayTypes/Marker and http://www.ros.org/wiki/rviz/Tutorials/Markers%3A%20Basic%20Shapes for more information on using this message with rviz
    
    uint8 ARROW=0
    uint8 CUBE=1
    uint8 SPHERE=2
    uint8 CYLINDER=3
    uint8 LINE_STRIP=4
    uint8 LINE_LIST=5
    uint8 CUBE_LIST=6
    uint8 SPHERE_LIST=7
    uint8 POINTS=8
    uint8 TEXT_VIEW_FACING=9
    uint8 MESH_RESOURCE=10
    uint8 TRIANGLE_LIST=11
    
    uint8 ADD=0
    uint8 MODIFY=0
    uint8 DELETE=2
    uint8 DELETEALL=3
    
    Header header                        # header for time/frame information
    string ns                            # Namespace to place this object in... used in conjunction with id to create a unique name for the object
    int32 id 		                         # object ID useful in conjunction with the namespace for manipulating and deleting the object later
    int32 type 		                       # Type of object
    int32 action 	                       # 0 add/modify an object, 1 (deprecated), 2 deletes an object, 3 deletes all objects
    geometry_msgs/Pose pose                 # Pose of the object
    geometry_msgs/Vector3 scale             # Scale of the object 1,1,1 means default (usually 1 meter square)
    std_msgs/ColorRGBA color             # Color [0.0-1.0]
    duration lifetime                    # How long the object should last before being automatically deleted.  0 means forever
    bool frame_locked                    # If this marker should be frame-locked, i.e. retransformed into its frame every timestep
    
    #Only used if the type specified has some use for them (eg. POINTS, LINE_STRIP, ...)
    geometry_msgs/Point[] points
    #Only used if the type specified has some use for them (eg. POINTS, LINE_STRIP, ...)
    #number of colors must either be 0 or equal to the number of points
    #NOTE: alpha is not yet used
    std_msgs/ColorRGBA[] colors
    
    # NOTE: only used for text markers
    string text
    
    # NOTE: only used for MESH_RESOURCE markers
    string mesh_resource
    bool mesh_use_embedded_materials
    
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
    MSG: std_msgs/ColorRGBA
    float32 r
    float32 g
    float32 b
    float32 a
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IntrospectionMsg(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.bools !== undefined) {
      resolved.bools = new Array(msg.bools.length);
      for (let i = 0; i < resolved.bools.length; ++i) {
        resolved.bools[i] = BoolParameter.Resolve(msg.bools[i]);
      }
    }
    else {
      resolved.bools = []
    }

    if (msg.doubles !== undefined) {
      resolved.doubles = new Array(msg.doubles.length);
      for (let i = 0; i < resolved.doubles.length; ++i) {
        resolved.doubles[i] = DoubleParameter.Resolve(msg.doubles[i]);
      }
    }
    else {
      resolved.doubles = []
    }

    if (msg.ints !== undefined) {
      resolved.ints = new Array(msg.ints.length);
      for (let i = 0; i < resolved.ints.length; ++i) {
        resolved.ints[i] = IntParameter.Resolve(msg.ints[i]);
      }
    }
    else {
      resolved.ints = []
    }

    if (msg.markers !== undefined) {
      resolved.markers = new Array(msg.markers.length);
      for (let i = 0; i < resolved.markers.length; ++i) {
        resolved.markers[i] = MarkerParameter.Resolve(msg.markers[i]);
      }
    }
    else {
      resolved.markers = []
    }

    return resolved;
    }
};

module.exports = IntrospectionMsg;
