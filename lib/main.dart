import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:smarthome/Home_Living.dart';
import 'package:smarthome/Living.dart';
import 'package:smarthome/tapbar.dart';

void main() {
  runApp(DevicePreview(builder: (BuildContext context)
  => const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: MyTapBar(),
    );
  }
}
