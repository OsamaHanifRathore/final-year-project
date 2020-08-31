import 'package:finalyearproject/model/WaterTank.dart';
import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';
import 'package:firebase_database/firebase_database.dart';

class WaterTankLevel extends StatefulWidget {
  @override
  _WaterTankLevelState createState() => _WaterTankLevelState();
}

class _WaterTankLevelState extends State<WaterTankLevel> {
  double level;
  bool isLoaded;
  double temp;

  double water;
  WaterTank waterlevel;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isLoaded = false;
    loadData();
    changedvalue();
  }

//      .onChildAdded.listen((event){
//   post = Posts.fromJson(Map<String,dynamic>.from(event.snapshot.value));
//  setState(() {
//  posts.add(post);
//  isLoaded = true;
//  });
//  })
  loadData() {
    print('loaddatacalled');
    var waterref = FirebaseDatabase.instance.reference().child("ESP32_Device");
    waterref.once().then((DataSnapshot snapshot) {
      water = (snapshot.value['Watertank']['Data']) / 100;
      print(water);
      setState(() {
        level = water;
        isLoaded = true;
      });
    });
  }

  loadValue(double load) {
    var value = load * 100.toInt();
    return value.toString()+'%';
  }

//  WaterTank watertank = WaterTank.fromJson(Map<String,dynamic>.from(event.snapshot.value));
//  print(watertank.data);
//  setState(() {
//  level = water;
//  print(level);
  changedvalue() {
    print('changed value');
    var waterref = FirebaseDatabase.instance.reference().child("ESP32_Device");
    waterref.onChildChanged.listen((event) {
      setState(() {});
      level = (event.snapshot.value['Data']) / 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: isLoaded
          ? Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [Color(0xff387BCC), Color(0xff8CB2C1)])),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text('Water Tank Level',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 200,
                        height: 300,
                        child: LiquidCircularProgressIndicator(
                          value: level, // Defaults to 0.5.
                          valueColor: AlwaysStoppedAnimation(Colors
                              .blue), // Defaults to the current Theme's accentColor.
                          backgroundColor: Colors
                              .blueGrey, // Defaults to the current Theme's backgroundColor.
                          borderColor: Colors.white,
                          borderWidth: 5.0,
                          direction: Axis
                              .vertical, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.vertical.
                          center: Text(loadValue(level)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          : Center(child: Text('Loading')),
    );
  }
}
