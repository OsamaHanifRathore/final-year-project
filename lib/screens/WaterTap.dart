import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class WaterTap extends StatefulWidget {
  @override
  _WaterTapState createState() => _WaterTapState();
}

class _WaterTapState extends State<WaterTap> {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      appBar: AppBar(
        title: Text('WATER TAP'),
      ),
      url: "http://192.168.1.1/",
    );
  }
}
