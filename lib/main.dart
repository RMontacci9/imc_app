import 'dart:io' show Platform; // apelido pro dart io
import 'package:flutter/material.dart';
import 'package:imc_app/ui/android/material_app.dart';
import 'package:imc_app/ui/ios/cupertino_app.dart';

void main() {
  Platform.isAndroid
      ? runApp(const MyMaterialApp())
      : runApp(const MyCupertinoApp());
}