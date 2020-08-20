import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home:_Home() ,)
  );
}

class _Home extends StatefulWidget {
  @override
  __HomeState createState() => __HomeState();
}

class __HomeState extends State<_Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Stack(
          children: <Widget>[
            Container(
              alignment: Alignment.topCenter,
              height: 400,
              decoration: BoxDecoration(
                  color: Colors.amber
              ),
            ),
            SafeArea(
                child:Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topRight,
                      child: FlatButton(onPressed: (){}, child: Icon(Icons.list)),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        //alignment: Alignment.centerLeft,
                        child: Text('HELLO \nWORLD',style: TextStyle(fontSize: 30),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "search",
                            icon: Icon(Icons.search),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 50,),
                    Expanded(
                      child: GridView.count(
                        crossAxisCount: 2,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.redAccent,

                                    )

                                  ]
                              ),
                            ),
                          )

                        ],
                      ),
                    )
                  ],
                )
            )
          ],
        )
    );
  }
}
