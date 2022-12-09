import 'package:flutter/material.dart';

class Logger {
  static ValueChanged<String>? logInfo;
  static ValueChanged<String>? logErr;

  static void log(String msg) {
    if (logInfo != null) {
      logInfo?.call('FlutterBoost#$msg');
    } else {
      assert(() {
        debugPrint('FlutterBoost#$msg');
        return true;
      }());
    }
  }

  static void error(String msg) {
    if (logErr != null) {
      logErr?.call('FlutterBoost#$msg');
    } else {
      debugPrint('FlutterBoost#$msg');
    }
  }
}
