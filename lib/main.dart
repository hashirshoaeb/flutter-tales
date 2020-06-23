import 'dart:io';

import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import './permission.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () async {
                var hasOpened = openAppSettings();
                debugPrint('App Settings opened: ' + hasOpened.toString());
              },
            )
          ],
        ),
        body: Center(
          child: ListView(
              children: Permission.values
                  .where((Permission permission) {
                    if (Platform.isIOS) {
                      return permission != Permission.unknown &&
                          permission != Permission.sms &&
                          permission != Permission.storage &&
                          permission != Permission.ignoreBatteryOptimizations &&
                          permission != Permission.accessMediaLocation;
                    } else {
                      return permission != Permission.unknown &&
                          permission != Permission.mediaLibrary &&
                          permission != Permission.photos &&
                          permission != Permission.reminders;
                    }
                  })
                  .map((permission) => PermissionWidget(permission))
                  .toList()),
        ),
      ),
    );
  }
}
