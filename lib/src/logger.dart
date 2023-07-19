// Copyright (c) 2019 Alibaba Group. All rights reserved.
// Use of this source code is governed by a MIT license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class Logger {
  static ValueChanged<String>? logInfo;
  static ValueChanged<String>? logErr;

  static void log(String msg) {
    if (logInfo != null) {
      logInfo?.call('FlutterBoost_dart#$msg');
    } else {
      assert(() {
        debugPrint('FlutterBoost_dart#$msg');
        return true;
      }());
    }
  }

  static void error(String msg) {
    if (logErr != null) {
      logErr?.call('FlutterBoost_dart#$msg');
    } else {
      debugPrint('FlutterBoost_dart#$msg');
    }
  }
}
