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
}