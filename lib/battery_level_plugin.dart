import 'package:flutter/services.dart';

class BatteryLevelPlugin {
  static const MethodChannel _channel = MethodChannel("battery_level_plugin");

  static Future<int> getBatteryLevel() async {
    try {
      final int? batteryLevel = await _channel.invokeMethod("getBatteryLevel");
      return batteryLevel ?? -1;
    } catch (_) {
      print("Failed to get battery level.");
      return -1;
    }
  }
}
