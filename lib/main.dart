import 'dart:ui';
import 'package:dailyexcercise/screens/detail_screen.dart';
import './widgetss/_cards.dart';
import "package:flutter/material.dart";

void main(){
  return runApp(
      MaterialApp(
        home: Home(),
      )
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size; //these will give h&w of device
    return Scaffold(
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[ // down class
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Icon(Icons.calendar_today,color: Colors.grey,),
                Text("Today")
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Icon(Icons.line_weight,color: Colors.grey,),
                Text("Weight")
              ],
            ),
             Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Icon(Icons.settings,color: Colors.grey,),
                Text("Setting")
              ],
            ),
          ],
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * 0.5,
            decoration: BoxDecoration(
              color: Color(0xfff5cebb),
              //  image:
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(

                children:<Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.centerRight,
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xfff5cebb),
                      ),
                      child: FlatButton(
                        onPressed: (){print("list");},
                        child: Icon(Icons.list),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Good Morning \nSamarjeet",
                      style: TextStyle(
                        letterSpacing: 1,
                        wordSpacing: 5,
                        color: Colors.grey[800],
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w900,
                        fontSize: 30,
                        //decoration: TextDecoration.overline
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 25, 10, 0),
                    padding: EdgeInsets.fromLTRB(0, 0, 15, 5),
                    //color: Colors.white,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: TextField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.search),
                          border: InputBorder.none,
                          hintText: '  Search',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 22,),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      childAspectRatio: .9,
                      children: <Widget>[
                        Cards(
                          gridImg:"assets/p5.jpeg",
                          gridname: "Warm-up",
                          press: (){},
                        ),
                        Cards(
                          gridname: "Weight lifting",
                          gridImg: "assets/p1.jpeg",
                          press: (){},
                        ),
                        Cards(
                          gridImg:"assets/p3.jpeg",
                          gridname: "Running",
                          press: (){},
                        ),
                        Cards(
                          gridname: "Cross-Fit",
                          gridImg: "assets/p6.jpeg",
                          press: (){},
                        ),
                        Cards(
                          gridImg:"assets/p4.jpeg",
                          gridname: "Meditation",
                          press: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context)=>DetailsScreen(),
                                ));
                          },
                        ),
                        Cards(
                          gridname: "Setting",
                          gridImg: "assets/p2.jpeg",
                          press: (){},
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}


class BottomNavItem extends StatelessWidget {
  final String svgImg;
  final String title;
  final Function press;
  final bool isActive;

  const BottomNavItem({Key key, this.svgImg, this.title, this.press, this.isActive}) : super(key: key);

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Image.asset(svgImg,
          color: isActive? Colors.deepOrangeAccent : Colors.grey,),
          Text(title,
          style: TextStyle(color: isActive? Colors.deepOrangeAccent : Colors.grey),),
        ],
      ),
    );
  }
}


