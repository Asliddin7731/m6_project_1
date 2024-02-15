import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Utils{
  static showToast (String msg) {
    Fluttertoast.showToast(msg: msg,
    toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.grey,
      timeInSecForIosWeb: 1,
      fontSize: 16,
    );
  }
  static Future <Map<String,String>> deviceParams() async{
    Map<String,String> params = {};
    var deviceInfo = DeviceInfoPlugin();

    if (Platform.isIOS){
      var iosDeviceInfo = await deviceInfo.iosInfo;
      params.addAll({
        'deviceId': iosDeviceInfo.identifierForVendor!,
        'deviceType' : 'I',
        'deviceToken' : ''
      });

    }else{
      var androidDeviceInfo = await deviceInfo.androidInfo;
      params.addAll({
        'deviceId': androidDeviceInfo.id,
        'deviceType' : 'A',
        'deviceToken' : ''
      });
    }

    return params;
  }
}