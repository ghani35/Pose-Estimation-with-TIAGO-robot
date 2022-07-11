; Auto-generated. Do not edit!


(cl:in-package pal_web_msgs-msg)


;//! \htmlinclude GetUserInputGoal.msg.html

(cl:defclass <GetUserInputGoal> (roslisp-msg-protocol:ros-message)
  ((web_go_to
    :reader web_go_to
    :initarg :web_go_to
    :type pal_web_msgs-msg:WebGoTo
    :initform (cl:make-instance 'pal_web_msgs-msg:WebGoTo))
   (question_tts
    :reader question_tts
    :initarg :question_tts
    :type pal_interaction_msgs-msg:TtsGoal
    :initform (cl:make-instance 'pal_interaction_msgs-msg:TtsGoal))
   (valid_asr_inputs
    :reader valid_asr_inputs
    :initarg :valid_asr_inputs
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (asr_language
    :reader asr_language
    :initarg :asr_language
    :type cl:string
    :initform "")
   (asr_timeout
    :reader asr_timeout
    :initarg :asr_timeout
    :type cl:real
    :initform 0)
   (retry_asr
    :reader retry_asr
    :initarg :retry_asr
    :type cl:boolean
    :initform cl:nil)
   (retry_tts
    :reader retry_tts
    :initarg :retry_tts
    :type pal_interaction_msgs-msg:TtsGoal
    :initform (cl:make-instance 'pal_interaction_msgs-msg:TtsGoal))
   (wait_for_interaction
    :reader wait_for_interaction
    :initarg :wait_for_interaction
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetUserInputGoal (<GetUserInputGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetUserInputGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetUserInputGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pal_web_msgs-msg:<GetUserInputGoal> is deprecated: use pal_web_msgs-msg:GetUserInputGoal instead.")))

(cl:ensure-generic-function 'web_go_to-val :lambda-list '(m))
(cl:defmethod web_go_to-val ((m <GetUserInputGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_web_msgs-msg:web_go_to-val is deprecated.  Use pal_web_msgs-msg:web_go_to instead.")
  (web_go_to m))

(cl:ensure-generic-function 'question_tts-val :lambda-list '(m))
(cl:defmethod question_tts-val ((m <GetUserInputGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_web_msgs-msg:question_tts-val is deprecated.  Use pal_web_msgs-msg:question_tts instead.")
  (question_tts m))

(cl:ensure-generic-function 'valid_asr_inputs-val :lambda-list '(m))
(cl:defmethod valid_asr_inputs-val ((m <GetUserInputGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_web_msgs-msg:valid_asr_inputs-val is deprecated.  Use pal_web_msgs-msg:valid_asr_inputs instead.")
  (valid_asr_inputs m))

(cl:ensure-generic-function 'asr_language-val :lambda-list '(m))
(cl:defmethod asr_language-val ((m <GetUserInputGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_web_msgs-msg:asr_language-val is deprecated.  Use pal_web_msgs-msg:asr_language instead.")
  (asr_language m))

(cl:ensure-generic-function 'asr_timeout-val :lambda-list '(m))
(cl:defmethod asr_timeout-val ((m <GetUserInputGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_web_msgs-msg:asr_timeout-val is deprecated.  Use pal_web_msgs-msg:asr_timeout instead.")
  (asr_timeout m))

(cl:ensure-generic-function 'retry_asr-val :lambda-list '(m))
(cl:defmethod retry_asr-val ((m <GetUserInputGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_web_msgs-msg:retry_asr-val is deprecated.  Use pal_web_msgs-msg:retry_asr instead.")
  (retry_asr m))

(cl:ensure-generic-function 'retry_tts-val :lambda-list '(m))
(cl:defmethod retry_tts-val ((m <GetUserInputGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_web_msgs-msg:retry_tts-val is deprecated.  Use pal_web_msgs-msg:retry_tts instead.")
  (retry_tts m))

(cl:ensure-generic-function 'wait_for_interaction-val :lambda-list '(m))
(cl:defmethod wait_for_interaction-val ((m <GetUserInputGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pal_web_msgs-msg:wait_for_interaction-val is deprecated.  Use pal_web_msgs-msg:wait_for_interaction instead.")
  (wait_for_interaction m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetUserInputGoal>) ostream)
  "Serializes a message object of type '<GetUserInputGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'web_go_to) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'question_tts) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'valid_asr_inputs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'valid_asr_inputs))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'asr_language))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'asr_language))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'asr_timeout)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'asr_timeout) (cl:floor (cl:slot-value msg 'asr_timeout)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'retry_asr) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'retry_tts) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'wait_for_interaction) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetUserInputGoal>) istream)
  "Deserializes a message object of type '<GetUserInputGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'web_go_to) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'question_tts) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'valid_asr_inputs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'valid_asr_inputs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'asr_language) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'asr_language) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'asr_timeout) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:setf (cl:slot-value msg 'retry_asr) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'retry_tts) istream)
    (cl:setf (cl:slot-value msg 'wait_for_interaction) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetUserInputGoal>)))
  "Returns string type for a message object of type '<GetUserInputGoal>"
  "pal_web_msgs/GetUserInputGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetUserInputGoal)))
  "Returns string type for a message object of type 'GetUserInputGoal"
  "pal_web_msgs/GetUserInputGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetUserInputGoal>)))
  "Returns md5sum for a message object of type '<GetUserInputGoal>"
  "db4d3a46e5a12a7516e034be4752f970")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetUserInputGoal)))
  "Returns md5sum for a message object of type 'GetUserInputGoal"
  "db4d3a46e5a12a7516e034be4752f970")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetUserInputGoal>)))
  "Returns full string definition for message of type '<GetUserInputGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%pal_web_msgs/WebGoTo web_go_to # Web to display for requesting feedback~%pal_interaction_msgs/TtsGoal question_tts # TTS question, asked before waiting for feedback~%string[] valid_asr_inputs # empty is no ASR, can be regex~%string asr_language # empty is current default~%duration asr_timeout~%bool retry_asr~%pal_interaction_msgs/TtsGoal retry_tts # If retrying, say this setence~%bool wait_for_interaction # If true, wait for an interaction before starting the ASR~%~%================================================================================~%MSG: pal_web_msgs/WebGoTo~%uint8 IMAGE = 0~%uint8 VIDEO = 1~%uint8 URI   = 2~%uint8 URL = 3~%uint8 TOUCH_PAGE = 4~%uint8 type # one of the enum above~%~%string value # Destination (an image, a video or a uri)~%~%================================================================================~%MSG: pal_interaction_msgs/TtsGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%## goal definition~%~%# utterance will contain indications to construct~%# the text to be spoken.~%# It must be specified in a section/key format ~%# for internationalisation. The actual text will~%# be obtained from configuration files as in pal_tts_cfg pkg.~% ~%I18nText text~%TtsText rawtext~%~%# This is to suggest a voice name to the ~%# tts engine. For the same language we might have~%# a variety of voices available, and this variable ~%# is to choose one among them. ~%# (not implemented yet)~%string speakerName~%~%# Time to wait before synthesising the text itself.~%# It can be used to produced delayed speech.~%float64 wait_before_speaking~%~%~%================================================================================~%MSG: pal_interaction_msgs/I18nText~%# section/key is used as in examples in the pal_tts_cfg pkg.~%string section~%string key~%~%# language id, must be speficied using RFC 3066~%string lang_id~%~%# arguments contain the values by which ~%# occurrences of '%s' will be replaced in the ~%# main text.~%# This only supports up to 2 arguments and no recursion.~%# However, recursion and more argumnents are~%# planned to be supported in the future.~%I18nArgument[] arguments~%~%================================================================================~%MSG: pal_interaction_msgs/I18nArgument~%# section key, override the value in expanded.~%# Use expanded for text that do not need expansion.~%# Please note that expanded here will not be translated ~%# to any language.~%~%string section~%string key~%string expanded~%~%~%================================================================================~%MSG: pal_interaction_msgs/TtsText~%# this message is to specify ~%# raw text to the TTS server. ~%~%string text~%~%# Language id in RFC 3066 format~%# This field is mandatory~%string lang_id~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetUserInputGoal)))
  "Returns full string definition for message of type 'GetUserInputGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%pal_web_msgs/WebGoTo web_go_to # Web to display for requesting feedback~%pal_interaction_msgs/TtsGoal question_tts # TTS question, asked before waiting for feedback~%string[] valid_asr_inputs # empty is no ASR, can be regex~%string asr_language # empty is current default~%duration asr_timeout~%bool retry_asr~%pal_interaction_msgs/TtsGoal retry_tts # If retrying, say this setence~%bool wait_for_interaction # If true, wait for an interaction before starting the ASR~%~%================================================================================~%MSG: pal_web_msgs/WebGoTo~%uint8 IMAGE = 0~%uint8 VIDEO = 1~%uint8 URI   = 2~%uint8 URL = 3~%uint8 TOUCH_PAGE = 4~%uint8 type # one of the enum above~%~%string value # Destination (an image, a video or a uri)~%~%================================================================================~%MSG: pal_interaction_msgs/TtsGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%## goal definition~%~%# utterance will contain indications to construct~%# the text to be spoken.~%# It must be specified in a section/key format ~%# for internationalisation. The actual text will~%# be obtained from configuration files as in pal_tts_cfg pkg.~% ~%I18nText text~%TtsText rawtext~%~%# This is to suggest a voice name to the ~%# tts engine. For the same language we might have~%# a variety of voices available, and this variable ~%# is to choose one among them. ~%# (not implemented yet)~%string speakerName~%~%# Time to wait before synthesising the text itself.~%# It can be used to produced delayed speech.~%float64 wait_before_speaking~%~%~%================================================================================~%MSG: pal_interaction_msgs/I18nText~%# section/key is used as in examples in the pal_tts_cfg pkg.~%string section~%string key~%~%# language id, must be speficied using RFC 3066~%string lang_id~%~%# arguments contain the values by which ~%# occurrences of '%s' will be replaced in the ~%# main text.~%# This only supports up to 2 arguments and no recursion.~%# However, recursion and more argumnents are~%# planned to be supported in the future.~%I18nArgument[] arguments~%~%================================================================================~%MSG: pal_interaction_msgs/I18nArgument~%# section key, override the value in expanded.~%# Use expanded for text that do not need expansion.~%# Please note that expanded here will not be translated ~%# to any language.~%~%string section~%string key~%string expanded~%~%~%================================================================================~%MSG: pal_interaction_msgs/TtsText~%# this message is to specify ~%# raw text to the TTS server. ~%~%string text~%~%# Language id in RFC 3066 format~%# This field is mandatory~%string lang_id~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetUserInputGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'web_go_to))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'question_tts))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'valid_asr_inputs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:length (cl:slot-value msg 'asr_language))
     8
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'retry_tts))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetUserInputGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'GetUserInputGoal
    (cl:cons ':web_go_to (web_go_to msg))
    (cl:cons ':question_tts (question_tts msg))
    (cl:cons ':valid_asr_inputs (valid_asr_inputs msg))
    (cl:cons ':asr_language (asr_language msg))
    (cl:cons ':asr_timeout (asr_timeout msg))
    (cl:cons ':retry_asr (retry_asr msg))
    (cl:cons ':retry_tts (retry_tts msg))
    (cl:cons ':wait_for_interaction (wait_for_interaction msg))
))
