import 'package:flutter/material.dart';

// mainAxis 主轴
//crossAxis 交叉轴



class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
//        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Stack(
            alignment: Alignment.topLeft,
            children: <Widget>[
              SizedBox(
                width: 200.0,
                height: 300.0,
                child: Container(
                  alignment: Alignment.bottomRight,
//              alignment: Alignment(-1.0, -0.6),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Icon(
                    Icons.ac_unit,
                    color: Colors.white70,
                    size: 32.0,
                  ),
                ),
              ),
              SizedBox(
                height: 32.0,
              ),
              SizedBox(
                width: 100.0,
                height: 100.0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Icon(
                    Icons.access_alarm,
                    color: Colors.white70,
                    size: 32.0,
                  ),
                ),
              ),
              Positioned(
                right: 20.0,
                top: 10.0,
                child:
                    Icon(Icons.brightness_4, color: Colors.white, size: 32.0),
              ),
              Positioned(
                right: 5.0,
                top: 40.0,
                child:
                    Icon(Icons.brightness_4, color: Colors.white, size: 32.0),
              ),
              Positioned(
                right: 35.0,
                top: 75.0,
                child:
                    Icon(Icons.brightness_4, color: Colors.white, size: 32.0),
              )
            ],
          )
        ],
      ),
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(this.icon, {this.size = 32.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(icon, size: size, color: Colors.white),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}
