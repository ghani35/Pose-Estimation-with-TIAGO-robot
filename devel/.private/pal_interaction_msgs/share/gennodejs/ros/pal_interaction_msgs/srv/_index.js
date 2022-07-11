
"use strict";

let ASRService = require('./ASRService.js')
let GetSpeechDuration = require('./GetSpeechDuration.js')
let recognizerService = require('./recognizerService.js')
let SoundLocalisationService = require('./SoundLocalisationService.js')

module.exports = {
  ASRService: ASRService,
  GetSpeechDuration: GetSpeechDuration,
  recognizerService: recognizerService,
  SoundLocalisationService: SoundLocalisationService,
};
