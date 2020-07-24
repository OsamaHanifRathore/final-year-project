import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'MainScreen.dart';


class Swipper extends StatefulWidget{
  @override
  _SwipperState createState() => _SwipperState();
}

class _SwipperState extends State<Swipper> {
  final swipperlist= ["pg1.png","pg2.png","pg3.png"];
  final screenList = ['WaterTank','WaterLeakage','WaterTaps'];
  var lengthOfs;
  @override
  void initState() {
    lengthOfs = swipperlist.length;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Swiper(
        itemBuilder: (context,lengthOfs) {
          return swip(context, lengthOfs);
        },
        itemCount: lengthOfs,
        pagination: new SwiperPagination(
          margin: EdgeInsetsDirectional.only(bottom: 50),

        ),


      ),
    );
  }
  Widget swip(BuildContext context, len){
    return Center(
      child: InkWell(
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> MainScreen()));
        },
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Image.asset(
                  "images/${swipperlist[len]}",
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
                ),
        ),
      ),
    );
  }
}