
"use strict";

let FaceDetection = require('./FaceDetection.js');
let HeadPanTilt = require('./HeadPanTilt.js');
let DetectedObject = require('./DetectedObject.js');
let Gesture = require('./Gesture.js');
let Rectangle = require('./Rectangle.js');
let FollowMeResponse = require('./FollowMeResponse.js');
let FaceDetections = require('./FaceDetections.js');
let HogDetection = require('./HogDetection.js');
let DetectedPerson = require('./DetectedPerson.js');
let LegDetections = require('./LegDetections.js');
let HogDetections = require('./HogDetections.js');
let FaceRecognitionGoal = require('./FaceRecognitionGoal.js');
let FaceRecognitionResult = require('./FaceRecognitionResult.js');
let FaceRecognitionActionFeedback = require('./FaceRecognitionActionFeedback.js');
let FaceRecognitionActionGoal = require('./FaceRecognitionActionGoal.js');
let FaceRecognitionAction = require('./FaceRecognitionAction.js');
let FaceRecognitionActionResult = require('./FaceRecognitionActionResult.js');
let FaceRecognitionFeedback = require('./FaceRecognitionFeedback.js');

module.exports = {
  FaceDetection: FaceDetection,
  HeadPanTilt: HeadPanTilt,
  DetectedObject: DetectedObject,
  Gesture: Gesture,
  Rectangle: Rectangle,
  FollowMeResponse: FollowMeResponse,
  FaceDetections: FaceDetections,
  HogDetection: HogDetection,
  DetectedPerson: DetectedPerson,
  LegDetections: LegDetections,
  HogDetections: HogDetections,
  FaceRecognitionGoal: FaceRecognitionGoal,
  FaceRecognitionResult: FaceRecognitionResult,
  FaceRecognitionActionFeedback: FaceRecognitionActionFeedback,
  FaceRecognitionActionGoal: FaceRecognitionActionGoal,
  FaceRecognitionAction: FaceRecognitionAction,
  FaceRecognitionActionResult: FaceRecognitionActionResult,
  FaceRecognitionFeedback: FaceRecognitionFeedback,
};
