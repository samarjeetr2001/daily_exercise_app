import 'package:flutter/material.dart';

class Cards extends StatelessWidget {

  String gridname;
  String gridImg;
  final Function press;

  Cards({this.gridname,this.gridImg, this.press});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow:[ BoxShadow(
              offset: Offset(0, 20),
              blurRadius: 17,
              spreadRadius: -20,
              color: Colors.grey
          ),],
        ),

        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: press,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical : 0.0),
                    child: Image(
                      image: AssetImage(gridImg),
                      height:100 ,
                    ),
                  ),
                  //Image.asset("assets/p1.jpeg"),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12.0),
                    child: Text(gridname,style: TextStyle(letterSpacing: 2),),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
