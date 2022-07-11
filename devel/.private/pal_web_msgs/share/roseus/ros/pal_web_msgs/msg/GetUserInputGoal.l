;; Auto-generated. Do not edit!


(when (boundp 'pal_web_msgs::GetUserInputGoal)
  (if (not (find-package "PAL_WEB_MSGS"))
    (make-package "PAL_WEB_MSGS"))
  (shadow 'GetUserInputGoal (find-package "PAL_WEB_MSGS")))
(unless (find-package "PAL_WEB_MSGS::GETUSERINPUTGOAL")
  (make-package "PAL_WEB_MSGS::GETUSERINPUTGOAL"))

(in-package "ROS")
;;//! \htmlinclude GetUserInputGoal.msg.html
(if (not (find-package "PAL_INTERACTION_MSGS"))
  (ros::roseus-add-msgs "pal_interaction_msgs"))


(defclass pal_web_msgs::GetUserInputGoal
  :super ros::object
  :slots (_web_go_to _question_tts _valid_asr_inputs _asr_language _asr_timeout _retry_asr _retry_tts _wait_for_interaction ))

(defmethod pal_web_msgs::GetUserInputGoal
  (:init
   (&key
    ((:web_go_to __web_go_to) (instance pal_web_msgs::WebGoTo :init))
    ((:question_tts __question_tts) (instance pal_interaction_msgs::TtsGoal :init))
    ((:valid_asr_inputs __valid_asr_inputs) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:asr_language __asr_language) "")
    ((:asr_timeout __asr_timeout) (instance ros::time :init))
    ((:retry_asr __retry_asr) nil)
    ((:retry_tts __retry_tts) (instance pal_interaction_msgs::TtsGoal :init))
    ((:wait_for_interaction __wait_for_interaction) nil)
    )
   (send-super :init)
   (setq _web_go_to __web_go_to)
   (setq _question_tts __question_tts)
   (setq _valid_asr_inputs __valid_asr_inputs)
   (setq _asr_language (string __asr_language))
   (setq _asr_timeout __asr_timeout)
   (setq _retry_asr __retry_asr)
   (setq _retry_tts __retry_tts)
   (setq _wait_for_interaction __wait_for_interaction)
   self)
  (:web_go_to
   (&rest __web_go_to)
   (if (keywordp (car __web_go_to))
       (send* _web_go_to __web_go_to)
     (progn
       (if __web_go_to (setq _web_go_to (car __web_go_to)))
       _web_go_to)))
  (:question_tts
   (&rest __question_tts)
   (if (keywordp (car __question_tts))
       (send* _question_tts __question_tts)
     (progn
       (if __question_tts (setq _question_tts (car __question_tts)))
       _question_tts)))
  (:valid_asr_inputs
   (&optional __valid_asr_inputs)
   (if __valid_asr_inputs (setq _valid_asr_inputs __valid_asr_inputs)) _valid_asr_inputs)
  (:asr_language
   (&optional __asr_language)
   (if __asr_language (setq _asr_language __asr_language)) _asr_language)
  (:asr_timeout
   (&optional __asr_timeout)
   (if __asr_timeout (setq _asr_timeout __asr_timeout)) _asr_timeout)
  (:retry_asr
   (&optional __retry_asr)
   (if __retry_asr (setq _retry_asr __retry_asr)) _retry_asr)
  (:retry_tts
   (&rest __retry_tts)
   (if (keywordp (car __retry_tts))
       (send* _retry_tts __retry_tts)
     (progn
       (if __retry_tts (setq _retry_tts (car __retry_tts)))
       _retry_tts)))
  (:wait_for_interaction
   (&optional __wait_for_interaction)
   (if __wait_for_interaction (setq _wait_for_interaction __wait_for_interaction)) _wait_for_interaction)
  (:serialization-length
   ()
   (+
    ;; pal_web_msgs/WebGoTo _web_go_to
    (send _web_go_to :serialization-length)
    ;; pal_interaction_msgs/TtsGoal _question_tts
    (send _question_tts :serialization-length)
    ;; string[] _valid_asr_inputs
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _valid_asr_inputs)) 4
    ;; string _asr_language
    4 (length _asr_language)
    ;; duration _asr_timeout
    8
    ;; bool _retry_asr
    1
    ;; pal_interaction_msgs/TtsGoal _retry_tts
    (send _retry_tts :serialization-length)
    ;; bool _wait_for_interaction
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; pal_web_msgs/WebGoTo _web_go_to
       (send _web_go_to :serialize s)
     ;; pal_interaction_msgs/TtsGoal _question_tts
       (send _question_tts :serialize s)
     ;; string[] _valid_asr_inputs
     (write-long (length _valid_asr_inputs) s)
     (dolist (elem _valid_asr_inputs)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string _asr_language
       (write-long (length _asr_language) s) (princ _asr_language s)
     ;; duration _asr_timeout
       (write-long (send _asr_timeout :sec) s) (write-long (send _asr_timeout :nsec) s)
     ;; bool _retry_asr
       (if _retry_asr (write-byte -1 s) (write-byte 0 s))
     ;; pal_interaction_msgs/TtsGoal _retry_tts
       (send _retry_tts :serialize s)
     ;; bool _wait_for_interaction
       (if _wait_for_interaction (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; pal_web_msgs/WebGoTo _web_go_to
     (send _web_go_to :deserialize buf ptr-) (incf ptr- (send _web_go_to :serialization-length))
   ;; pal_interaction_msgs/TtsGoal _question_tts
     (send _question_tts :deserialize buf ptr-) (incf ptr- (send _question_tts :serialization-length))
   ;; string[] _valid_asr_inputs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _valid_asr_inputs (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _valid_asr_inputs i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string _asr_language
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _asr_language (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; duration _asr_timeout
     (send _asr_timeout :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _asr_timeout :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _retry_asr
     (setq _retry_asr (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; pal_interaction_msgs/TtsGoal _retry_tts
     (send _retry_tts :deserialize buf ptr-) (incf ptr- (send _retry_tts :serialization-length))
   ;; bool _wait_for_interaction
     (setq _wait_for_interaction (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get pal_web_msgs::GetUserInputGoal :md5sum-) "db4d3a46e5a12a7516e034be4752f970")
(setf (get pal_web_msgs::GetUserInputGoal :datatype-) "pal_web_msgs/GetUserInputGoal")
(setf (get pal_web_msgs::GetUserInputGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
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
")



(provide :pal_web_msgs/GetUserInputGoal "db4d3a46e5a12a7516e034be4752f970")


