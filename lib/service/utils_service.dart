import 'dart:io';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:version/version.dart';

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

  static Future<void> makePhoneCall(String phoneNumber) async{
    final Uri launchUri = Uri(scheme: 'tel',path: phoneNumber);
    await launchUrl(launchUri);
  }

  static Future<void> launchInBrowser(Uri url) async{
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)){

    }else{
      throw 'Could not launch $url';
    }
  }

  static void mol() {
    final Version currentVersion = Version(1, 0, 3);
    final Version latestVersion = Version.parse("2.1.0");

    if (latestVersion > currentVersion) {
      // print("Update is available");
    }

    final Version betaVersion =
    Version(2, 1, 0, preRelease: <String>["beta"]);
    if (betaVersion > latestVersion) {
      // print("More recent beta available");
    }
  }

  static void dialog(BuildContext context){
    AwesomeDialog(
      context: context,
      dialogType: DialogType.info,
      animType: AnimType.rightSlide,
      title: 'Dialog Title',
      desc: 'Dialog description here.............',
      btnCancelOnPress: () {},
      btnOkOnPress: () {},
    ).show();
  }

  static void dialog1(BuildContext context){
    AwesomeDialog(
      context: context,
      animType: AnimType.scale,
      dialogType: DialogType.info,
      body: const Center(child: Text(
        'If the body is specified, then title and description will be ignored, this allows to 											further customize the dialogue.',
        style: TextStyle(fontStyle: FontStyle.italic),
      ),),
      title: 'This is Ignored',
      desc:   'This is also Ignored',
      btnOkOnPress: () {},
    ).show();
  }

}



