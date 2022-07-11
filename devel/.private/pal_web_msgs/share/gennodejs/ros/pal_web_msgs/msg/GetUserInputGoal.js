// Auto-generated. Do not edit!

// (in-package pal_web_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WebGoTo = require('./WebGoTo.js');
let pal_interaction_msgs = _finder('pal_interaction_msgs');

//-----------------------------------------------------------

class GetUserInputGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.web_go_to = null;
      this.question_tts = null;
      this.valid_asr_inputs = null;
      this.asr_language = null;
      this.asr_timeout = null;
      this.retry_asr = null;
      this.retry_tts = null;
      this.wait_for_interaction = null;
    }
    else {
      if (initObj.hasOwnProperty('web_go_to')) {
        this.web_go_to = initObj.web_go_to
      }
      else {
        this.web_go_to = new WebGoTo();
      }
      if (initObj.hasOwnProperty('question_tts')) {
        this.question_tts = initObj.question_tts
      }
      else {
        this.question_tts = new pal_interaction_msgs.msg.TtsGoal();
      }
      if (initObj.hasOwnProperty('valid_asr_inputs')) {
        this.valid_asr_inputs = initObj.valid_asr_inputs
      }
      else {
        this.valid_asr_inputs = [];
      }
      if (initObj.hasOwnProperty('asr_language')) {
        this.asr_language = initObj.asr_language
      }
      else {
        this.asr_language = '';
      }
      if (initObj.hasOwnProperty('asr_timeout')) {
        this.asr_timeout = initObj.asr_timeout
      }
      else {
        this.asr_timeout = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('retry_asr')) {
        this.retry_asr = initObj.retry_asr
      }
      else {
        this.retry_asr = false;
      }
      if (initObj.hasOwnProperty('retry_tts')) {
        this.retry_tts = initObj.retry_tts
      }
      else {
        this.retry_tts = new pal_interaction_msgs.msg.TtsGoal();
      }
      if (initObj.hasOwnProperty('wait_for_interaction')) {
        this.wait_for_interaction = initObj.wait_for_interaction
      }
      else {
        this.wait_for_interaction = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetUserInputGoal
    // Serialize message field [web_go_to]
    bufferOffset = WebGoTo.serialize(obj.web_go_to, buffer, bufferOffset);
    // Serialize message field [question_tts]
    bufferOffset = pal_interaction_msgs.msg.TtsGoal.serialize(obj.question_tts, buffer, bufferOffset);
    // Serialize message field [valid_asr_inputs]
    bufferOffset = _arraySerializer.string(obj.valid_asr_inputs, buffer, bufferOffset, null);
    // Serialize message field [asr_language]
    bufferOffset = _serializer.string(obj.asr_language, buffer, bufferOffset);
    // Serialize message field [asr_timeout]
    bufferOffset = _serializer.duration(obj.asr_timeout, buffer, bufferOffset);
    // Serialize message field [retry_asr]
    bufferOffset = _serializer.bool(obj.retry_asr, buffer, bufferOffset);
    // Serialize message field [retry_tts]
    bufferOffset = pal_interaction_msgs.msg.TtsGoal.serialize(obj.retry_tts, buffer, bufferOffset);
    // Serialize message field [wait_for_interaction]
    bufferOffset = _serializer.bool(obj.wait_for_interaction, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetUserInputGoal
    let len;
    let data = new GetUserInputGoal(null);
    // Deserialize message field [web_go_to]
    data.web_go_to = WebGoTo.deserialize(buffer, bufferOffset);
    // Deserialize message field [question_tts]
    data.question_tts = pal_interaction_msgs.msg.TtsGoal.deserialize(buffer, bufferOffset);
    // Deserialize message field [valid_asr_inputs]
    data.valid_asr_inputs = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [asr_language]
    data.asr_language = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [asr_timeout]
    data.asr_timeout = _deserializer.duration(buffer, bufferOffset);
    // Deserialize message field [retry_asr]
    data.retry_asr = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [retry_tts]
    data.retry_tts = pal_interaction_msgs.msg.TtsGoal.deserialize(buffer, bufferOffset);
    // Deserialize message field [wait_for_interaction]
    data.wait_for_interaction = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += WebGoTo.getMessageSize(object.web_go_to);
    length += pal_interaction_msgs.msg.TtsGoal.getMessageSize(object.question_tts);
    object.valid_asr_inputs.forEach((val) => {
      length += 4 + val.length;
    });
    length += object.asr_language.length;
    length += pal_interaction_msgs.msg.TtsGoal.getMessageSize(object.retry_tts);
    return length + 18;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pal_web_msgs/GetUserInputGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'db4d3a46e5a12a7516e034be4752f970';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    pal_web_msgs/WebGoTo web_go_to # Web to display for requesting feedback
    pal_interaction_msgs/TtsGoal question_tts # TTS question, asked before waiting for feedback
    string[] valid_asr_inputs # empty is no ASR, can be regex
    string asr_language # empty is current default
    duration asr_timeout
    bool retry_asr
    pal_interaction_msgs/TtsGoal retry_tts # If retrying, say this setence
    bool wait_for_interaction # If true, wait for an interaction before starting the ASR
    
    ================================================================================
    MSG: pal_web_msgs/WebGoTo
    uint8 IMAGE = 0
    uint8 VIDEO = 1
    uint8 URI   = 2
    uint8 URL = 3
    uint8 TOUCH_PAGE = 4
    uint8 type # one of the enum above
    
    string value # Destination (an image, a video or a uri)
    
    ================================================================================
    MSG: pal_interaction_msgs/TtsGoal
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    ## goal definition
    
    # utterance will contain indications to construct
    # the text to be spoken.
    # It must be specified in a section/key format 
    # for internationalisation. The actual text will
    # be obtained from configuration files as in pal_tts_cfg pkg.
     
    I18nText text
    TtsText rawtext
    
    # This is to suggest a voice name to the 
    # tts engine. For the same language we might have
    # a variety of voices available, and this variable 
    # is to choose one among them. 
    # (not implemented yet)
    string speakerName
    
    # Time to wait before synthesising the text itself.
    # It can be used to produced delayed speech.
    float64 wait_before_speaking
    
    
    ================================================================================
    MSG: pal_interaction_msgs/I18nText
    # section/key is used as in examples in the pal_tts_cfg pkg.
    string section
    string key
    
    # language id, must be speficied using RFC 3066
    string lang_id
    
    # arguments contain the values by which 
    # occurrences of '%s' will be replaced in the 
    # main text.
    # This only supports up to 2 arguments and no recursion.
    # However, recursion and more argumnents are
    # planned to be supported in the future.
    I18nArgument[] arguments
    
    ================================================================================
    MSG: pal_interaction_msgs/I18nArgument
    # section key, override the value in expanded.
    # Use expanded for text that do not need expansion.
    # Please note that expanded here will not be translated 
    # to any language.
    
    string section
    string key
    string expanded
    
    
    ================================================================================
    MSG: pal_interaction_msgs/TtsText
    # this message is to specify 
    # raw text to the TTS server. 
    
    string text
    
    # Language id in RFC 3066 format
    # This field is mandatory
    string lang_id
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetUserInputGoal(null);
    if (msg.web_go_to !== undefined) {
      resolved.web_go_to = WebGoTo.Resolve(msg.web_go_to)
    }
    else {
      resolved.web_go_to = new WebGoTo()
    }

    if (msg.question_tts !== undefined) {
      resolved.question_tts = pal_interaction_msgs.msg.TtsGoal.Resolve(msg.question_tts)
    }
    else {
      resolved.question_tts = new pal_interaction_msgs.msg.TtsGoal()
    }

    if (msg.valid_asr_inputs !== undefined) {
      resolved.valid_asr_inputs = msg.valid_asr_inputs;
    }
    else {
      resolved.valid_asr_inputs = []
    }

    if (msg.asr_language !== undefined) {
      resolved.asr_language = msg.asr_language;
    }
    else {
      resolved.asr_language = ''
    }

    if (msg.asr_timeout !== undefined) {
      resolved.asr_timeout = msg.asr_timeout;
    }
    else {
      resolved.asr_timeout = {secs: 0, nsecs: 0}
    }

    if (msg.retry_asr !== undefined) {
      resolved.retry_asr = msg.retry_asr;
    }
    else {
      resolved.retry_asr = false
    }

    if (msg.retry_tts !== undefined) {
      resolved.retry_tts = pal_interaction_msgs.msg.TtsGoal.Resolve(msg.retry_tts)
    }
    else {
      resolved.retry_tts = new pal_interaction_msgs.msg.TtsGoal()
    }

    if (msg.wait_for_interaction !== undefined) {
      resolved.wait_for_interaction = msg.wait_for_interaction;
    }
    else {
      resolved.wait_for_interaction = false
    }

    return resolved;
    }
};

module.exports = GetUserInputGoal;
