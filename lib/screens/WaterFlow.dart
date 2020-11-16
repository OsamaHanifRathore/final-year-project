import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class WaterFlow extends StatefulWidget {
  @override
  _WaterFlowState createState() => _WaterFlowState();
}

class _WaterFlowState extends State<WaterFlow> {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      appBar: AppBar(
        title: Text('WATER FLOW '),
      ),
      url: "http://192.168.1.1/waterflow",
    );
  }
}
