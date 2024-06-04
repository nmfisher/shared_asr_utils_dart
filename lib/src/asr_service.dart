import 'dart:async';
import 'dart:typed_data';

import 'package:shared_asr_utils/shared_asr_utils_dart.dart';

abstract class ASRService {
  Stream<String> get partial;

  Stream<ASRResult> get decoded;

  Stream<List<double>?> get spectrum;

  Stream<double?> get level;

  Future<bool> hasPermissions();

  Future<bool> requestPermissions();

  Future initialize();

  Future<bool> createStream(List<String>? sentences);

  Future destroyStream();

  Future destroyRecognizer();

  ///
  /// Load the acoustic model & decoding graph.
  ///
  Future createRecognizer();

  ///
  /// Immediately ignore all audio from the microphone.
  ///
  Future stopListening();

  ///
  /// Instructs the underlying pipeline to start (or resume) processing data from the microphone.
  ///
  void listen();

  void dispose();

  Future<AudioBuffer> resample(
      Uint8List data, int oldSampleRate, int newSampleRate);

  Future<AudioBuffer> getBuffer({int? sampleRate});
}
