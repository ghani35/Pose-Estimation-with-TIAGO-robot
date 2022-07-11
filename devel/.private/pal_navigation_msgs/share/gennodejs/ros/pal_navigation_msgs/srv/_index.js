
"use strict";

let GetMapConfiguration = require('./GetMapConfiguration.js')
let ChangeMap = require('./ChangeMap.js')
let GetPOI = require('./GetPOI.js')
let FinalApproachPose = require('./FinalApproachPose.js')
let SetMapConfiguration = require('./SetMapConfiguration.js')
let SetSubMapFloor = require('./SetSubMapFloor.js')
let SaveMap = require('./SaveMap.js')
let GetNodes = require('./GetNodes.js')
let SetPOI = require('./SetPOI.js')
let GetSubMap = require('./GetSubMap.js')
let Acknowledgment = require('./Acknowledgment.js')
let RenameMap = require('./RenameMap.js')
let ListMaps = require('./ListMaps.js')
let VisualLocRecognize = require('./VisualLocRecognize.js')
let ChangeBuilding = require('./ChangeBuilding.js')
let SafetyZone = require('./SafetyZone.js')
let DisableEmergency = require('./DisableEmergency.js')

module.exports = {
  GetMapConfiguration: GetMapConfiguration,
  ChangeMap: ChangeMap,
  GetPOI: GetPOI,
  FinalApproachPose: FinalApproachPose,
  SetMapConfiguration: SetMapConfiguration,
  SetSubMapFloor: SetSubMapFloor,
  SaveMap: SaveMap,
  GetNodes: GetNodes,
  SetPOI: SetPOI,
  GetSubMap: GetSubMap,
  Acknowledgment: Acknowledgment,
  RenameMap: RenameMap,
  ListMaps: ListMaps,
  VisualLocRecognize: VisualLocRecognize,
  ChangeBuilding: ChangeBuilding,
  SafetyZone: SafetyZone,
  DisableEmergency: DisableEmergency,
};
