import 'dart:io';
import 'package:device_info/device_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:imei_plugin/imei_plugin.dart';

class DeviceInfoCheck extends ChangeNotifier {
  String _deviceInfo;
  String get deviceInfo => _deviceInfo;

  String _imeiInfo;
  String get imeiInfo => _imeiInfo;

  DeviceInfoPlugin _deviceInfoPlugin = DeviceInfoPlugin();

  //Load to get device info
  loadDeviceInfo() async {
    try {
      if (Platform.isAndroid) {
        var hasil = await _deviceInfoPlugin.androidInfo;
        _deviceInfo = hasil.device;
        _imeiInfo = await ImeiPlugin.getImei(
            shouldShowRequestPermissionRationale: false);
      }
    } catch (e) {
      print(e);
    }
    notifyListeners();
  }
}
