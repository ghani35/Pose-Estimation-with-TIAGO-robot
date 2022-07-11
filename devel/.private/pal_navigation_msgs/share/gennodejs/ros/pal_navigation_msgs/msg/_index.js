
"use strict";

let GoToFeedback = require('./GoToFeedback.js');
let GoToPOIGoal = require('./GoToPOIGoal.js');
let ExecuteParkingResult = require('./ExecuteParkingResult.js');
let VisualTrainingGoal = require('./VisualTrainingGoal.js');
let JoyTurboGoal = require('./JoyTurboGoal.js');
let JoyPriorityFeedback = require('./JoyPriorityFeedback.js');
let JoyPriorityGoal = require('./JoyPriorityGoal.js');
let JoyTurboResult = require('./JoyTurboResult.js');
let GoToPOIActionFeedback = require('./GoToPOIActionFeedback.js');
let JoyTurboActionGoal = require('./JoyTurboActionGoal.js');
let JoyTurboAction = require('./JoyTurboAction.js');
let VisualTrainingAction = require('./VisualTrainingAction.js');
let JoyTurboActionFeedback = require('./JoyTurboActionFeedback.js');
let JoyTurboActionResult = require('./JoyTurboActionResult.js');
let JoyPriorityResult = require('./JoyPriorityResult.js');
let ExecuteParkingActionFeedback = require('./ExecuteParkingActionFeedback.js');
let GoToPOIAction = require('./GoToPOIAction.js');
let VisualTrainingActionResult = require('./VisualTrainingActionResult.js');
let ExecuteParkingAction = require('./ExecuteParkingAction.js');
let GoToPOIActionResult = require('./GoToPOIActionResult.js');
let VisualTrainingResult = require('./VisualTrainingResult.js');
let GoToPOIFeedback = require('./GoToPOIFeedback.js');
let JoyPriorityActionGoal = require('./JoyPriorityActionGoal.js');
let VisualTrainingFeedback = require('./VisualTrainingFeedback.js');
let GoToActionGoal = require('./GoToActionGoal.js');
let JoyPriorityAction = require('./JoyPriorityAction.js');
let VisualTrainingActionFeedback = require('./VisualTrainingActionFeedback.js');
let GoToResult = require('./GoToResult.js');
let GoToGoal = require('./GoToGoal.js');
let ExecuteParkingFeedback = require('./ExecuteParkingFeedback.js');
let JoyPriorityActionFeedback = require('./JoyPriorityActionFeedback.js');
let GoToPOIResult = require('./GoToPOIResult.js');
let GoToPOIActionGoal = require('./GoToPOIActionGoal.js');
let ExecuteParkingActionResult = require('./ExecuteParkingActionResult.js');
let ExecuteParkingGoal = require('./ExecuteParkingGoal.js');
let ExecuteParkingActionGoal = require('./ExecuteParkingActionGoal.js');
let GoToActionResult = require('./GoToActionResult.js');
let JoyTurboFeedback = require('./JoyTurboFeedback.js');
let GoToActionFeedback = require('./GoToActionFeedback.js');
let GoToAction = require('./GoToAction.js');
let JoyPriorityActionResult = require('./JoyPriorityActionResult.js');
let VisualTrainingActionGoal = require('./VisualTrainingActionGoal.js');
let NavigationStatus = require('./NavigationStatus.js');
let EulerAnglesStamped = require('./EulerAnglesStamped.js');
let VisualLocDB = require('./VisualLocDB.js');
let MapConfiguration = require('./MapConfiguration.js');
let PolarReading = require('./PolarReading.js');
let AvailableMaps = require('./AvailableMaps.js');
let TabletPOI = require('./TabletPOI.js');
let ServiceStatus = require('./ServiceStatus.js');
let EulerAngles = require('./EulerAngles.js');
let Highways = require('./Highways.js');
let LaserImage = require('./LaserImage.js');
let Emergency = require('./Emergency.js');
let POI = require('./POI.js');
let PolarReadingScan = require('./PolarReadingScan.js');
let NiceMapTransformation = require('./NiceMapTransformation.js');

module.exports = {
  GoToFeedback: GoToFeedback,
  GoToPOIGoal: GoToPOIGoal,
  ExecuteParkingResult: ExecuteParkingResult,
  VisualTrainingGoal: VisualTrainingGoal,
  JoyTurboGoal: JoyTurboGoal,
  JoyPriorityFeedback: JoyPriorityFeedback,
  JoyPriorityGoal: JoyPriorityGoal,
  JoyTurboResult: JoyTurboResult,
  GoToPOIActionFeedback: GoToPOIActionFeedback,
  JoyTurboActionGoal: JoyTurboActionGoal,
  JoyTurboAction: JoyTurboAction,
  VisualTrainingAction: VisualTrainingAction,
  JoyTurboActionFeedback: JoyTurboActionFeedback,
  JoyTurboActionResult: JoyTurboActionResult,
  JoyPriorityResult: JoyPriorityResult,
  ExecuteParkingActionFeedback: ExecuteParkingActionFeedback,
  GoToPOIAction: GoToPOIAction,
  VisualTrainingActionResult: VisualTrainingActionResult,
  ExecuteParkingAction: ExecuteParkingAction,
  GoToPOIActionResult: GoToPOIActionResult,
  VisualTrainingResult: VisualTrainingResult,
  GoToPOIFeedback: GoToPOIFeedback,
  JoyPriorityActionGoal: JoyPriorityActionGoal,
  VisualTrainingFeedback: VisualTrainingFeedback,
  GoToActionGoal: GoToActionGoal,
  JoyPriorityAction: JoyPriorityAction,
  VisualTrainingActionFeedback: VisualTrainingActionFeedback,
  GoToResult: GoToResult,
  GoToGoal: GoToGoal,
  ExecuteParkingFeedback: ExecuteParkingFeedback,
  JoyPriorityActionFeedback: JoyPriorityActionFeedback,
  GoToPOIResult: GoToPOIResult,
  GoToPOIActionGoal: GoToPOIActionGoal,
  ExecuteParkingActionResult: ExecuteParkingActionResult,
  ExecuteParkingGoal: ExecuteParkingGoal,
  ExecuteParkingActionGoal: ExecuteParkingActionGoal,
  GoToActionResult: GoToActionResult,
  JoyTurboFeedback: JoyTurboFeedback,
  GoToActionFeedback: GoToActionFeedback,
  GoToAction: GoToAction,
  JoyPriorityActionResult: JoyPriorityActionResult,
  VisualTrainingActionGoal: VisualTrainingActionGoal,
  NavigationStatus: NavigationStatus,
  EulerAnglesStamped: EulerAnglesStamped,
  VisualLocDB: VisualLocDB,
  MapConfiguration: MapConfiguration,
  PolarReading: PolarReading,
  AvailableMaps: AvailableMaps,
  TabletPOI: TabletPOI,
  ServiceStatus: ServiceStatus,
  EulerAngles: EulerAngles,
  Highways: Highways,
  LaserImage: LaserImage,
  Emergency: Emergency,
  POI: POI,
  PolarReadingScan: PolarReadingScan,
  NiceMapTransformation: NiceMapTransformation,
};
