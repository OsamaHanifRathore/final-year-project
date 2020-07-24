import 'package:finalyearproject/screens/WaterTankLevel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Color(0xff387BCC), Color(0xff8CB2C1)])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(20),
                      width: 150.0,
                      height: 150.0,
                      decoration: new BoxDecoration(
                          color: Color(0xff387BCC),
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Color(0xfff6AC28E),
                            width: 10,
                          )),
                      child: Image(
                        image: AssetImage('images/white.png'),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'HOME',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text('MONITOR WATER',
                        style: TextStyle(color: Colors.white, fontSize: 15)),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              ClipOval(
                                child: GestureDetector(
                                  onTap:(){
                                    print('Hello world');
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> WaterTankLevel()));
                                  },
                                  child: Image(
                                    image: AssetImage('images/white.png'),
                                  ),
                                ),
                              ),
                              Text('Water Tank Level'),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              ClipOval(
                                child: Image(
                                  image: AssetImage('images/white.png'),
                                ),
                              ),
                              Text('Water Tank Level'),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              ClipOval(
                                child: Image(
                                  image: AssetImage('images/white.png'),
                                ),
                              ),
                              Text('Water Tank Level'),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
