import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
class DetailsScreen extends StatefulWidget {
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {


  @override
  Widget build(BuildContext context) {
    var size= MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height*.5,
            decoration: BoxDecoration(
              color: Colors.amber.shade200,
              //image: DecorationImage(
              //  image: AssetImage("assests/detailscreen.png"),
              //  fit: BoxFit.fitWidth,
             //),
            ),
          ),
          SafeArea(
              child:Padding(
                padding: const EdgeInsets.only(top:50.0,left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Meditation",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w900,letterSpacing: 2),),
                    SizedBox(height: 10,),
                    Text("      3-10 MIN course",style: TextStyle(fontWeight: FontWeight.w800),),
                    SizedBox(height: 20,),
                    Text("Live happier and healther by learning \nthe fundamenals of meditation \nand mindfulness",
                    style: TextStyle(fontFamily: "system",letterSpacing: 1.2,wordSpacing: 1.5),
                    ),
                    SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40,0,100,0),
                      child: Container(
                        padding: EdgeInsets.only(bottom: 0,right: 10,left: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                        ),
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(5),
                              icon: Icon(Icons.search),
                              hintText: "Search",
                              border: InputBorder.none,
                            ),
                          )
                      ),
                    ),
                    SizedBox(height: 50,),
                    Wrap(
                      spacing: 10,
                      children: <Widget>[
                        SessionCard(
                          SessionInt: 1,
                          isDone: true,
                          press: (){print("hello");},
                        ),
                        SessionCard(
                          SessionInt: 2,
                          isDone: false,
                          press: (){print("hello");},
                        ),
                        SessionCard(
                          SessionInt: 3,
                          isDone: false,
                          press: (){print("hello");},
                        ),
                        SessionCard(
                          SessionInt: 4,
                          isDone: false,
                          press: (){print("hello");},
                        ),
                        SessionCard(
                          SessionInt: 5,
                          isDone: false,
                          press: (){print("hello");},
                        ),
                        SessionCard(
                          SessionInt: 6,
                          isDone: false,
                          press: (){print("hello");},
                        ),
                        ],
                    ),
                    SizedBox(height: 10,),
                    Text("Relax",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    SizedBox(height: 10,),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color:Colors.grey,
                            offset: Offset(0, 20),
                            blurRadius: 20,
                          )
                        ]
                      ),
                      height: 100,
                      child: Row(
                        children: <Widget>[

                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                            child: Image.asset('assets/detail_1.jpeg'),
                          ),
                          Text("Hello Samarjeet\n Stay Focus . Stay Calm",
                          style: TextStyle(letterSpacing: 2,wordSpacing: 5),)


                        ],
                      ),
                    )
                  ],
                ),
              ) 
          ),
        ],
      ),
    );
  }
}

class SessionCard extends StatelessWidget {

  final int SessionInt;
  final bool isDone;
  final Function press;
  SessionCard({
    Key key,
    this.SessionInt,
    this.isDone=false, this.press,
}): super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraint){
      return ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: press,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical:8.0),
              child: Container(
                width: constraint.maxWidth/2-10,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [BoxShadow(color:Colors.grey.shade400,
                      offset: Offset(0, 20),
                      blurRadius: 30,
                      spreadRadius: -20,
                  ),],
                ),

                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: isDone? Colors.amber.shade400:Colors.white,
                          shape: BoxShape.circle,
                        ),
                        height: 40,
                        width: 40,
                        child: Icon(Icons.play_arrow,
                          color: isDone? Colors.white:Colors.amber.shade400,),
                      ),
                    ),
                    Text("Section $SessionInt")
                  ],
                ),
              ),
            ),
          ),
        ),
      );


    });
  }
}
