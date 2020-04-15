import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _list = ["movie","hobies","travel","shop","food","igTV","Jobs","home"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: SafeArea(
                child: Container(
                  child:Column(
                    children:<Widget>[
                      Container(
                        padding : EdgeInsets.all(10),
                        child:Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                                  Container(
                                    child: Icon(Icons.arrow_back_ios),
                                    ),
                                  Expanded(
                                    child: Container(
                                      alignment:Alignment.center,
                                      child: Text("Fachrudin effendi"),
                                    ),
                                  ),
                               Container(
                                  child:Icon(Icons.more_horiz),
                                  ),
                                  ],
                                    ),
                                    ),
          Container(
            child: Row(
              mainAxisSize:MainAxisSize.max,
              children: <Widget>[
                Container(
                  padding:EdgeInsets.all(10),
                  child:CircleAvatar(radius:40,),
                ),
                Expanded(
                  child:Container(
                    padding:EdgeInsets.all(20),
                    child:Column(
                      children: <Widget>[
                        Container(
                          child:Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              padding:EdgeInsets.all(10),
                              child: Column(
                              children:<Widget>[
                                Text("102",style:TextStyle(fontSize:18,fontWeight:FontWeight.w700),),
                                Text("Posts")
                              ],
                              ),
                            ),
                            Container(
                               padding: EdgeInsets.all(10),
                               child: Column(
                               children:<Widget>[
                                Text("11K",style:TextStyle(fontSize:18,fontWeight:FontWeight.w700),),
                                Text("Followers")
                              ],
                              ),
                            ),
                            Container(
                               padding:EdgeInsets.all(10),
                              child: Column(
                              children:<Widget>[
                                Text("100",style:TextStyle(fontSize:18,fontWeight:FontWeight.w700),),
                                Text("Following")
                              ],
                              ),
                            )
                          ],
                        ),
                      ),
                            Container(
                              child:Row(
                                  children: <Widget>[
                                    Expanded(
                                      child:RaisedButton(
                                        color:Colors.blue,
                                        child:Text("follow",style: TextStyle(color:Colors.white)),
                                        onPressed:()=>print("follow"),
                                      ),
                                    ),
                                  Container(
                                    margin:EdgeInsets.symmetric(horizontal: 10),
                                    child:RaisedButton(
                                      child:Icon(Icons.arrow_drop_down,color:Colors.white),
                                      color: Colors.blue,
                                      onPressed: ()=>print("down"),
                                    ),
                                  )
                                ],
                              )
                             )
                           ],
                         ),
                       ),
                      )
                     ],
                    ),
                   ),
                  Container(
                    padding:EdgeInsets.all(10),
                    alignment: Alignment.centerLeft,
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Fachrudin.din",style:TextStyle(fontWeight:FontWeight.w700),),
                        Text("Android"),
                        Text("Univ.Amikom"),
                        Text("Sragen,Jawa Tengah")
                      ],
                    )
                  ),
                  Container(
                    padding :EdgeInsets.all(10),
                    child:SingleChildScrollView(
                      scrollDirection:Axis.horizontal,
                      child:Row(
                        children: _list.map((e) => Container(
                          padding:EdgeInsets.symmetric(horizontal:16),
                          child:Column(
                            children :<Widget>[
                              CircleAvatar(
                              radius:30,
                              ),
                            Padding(padding: const EdgeInsets.all(10.0),
                            child:Text(e)
                          )
                        ],
                       ),
                     )).toList(),
                ),
               ),
              ),
                Container(
                  padding:EdgeInsets.symmetric(vertical:15),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      FlatButton(
                        child:Icon(Icons.accessibility,size:30,),
                        onPressed: (){

                        },
                      ),
                      FlatButton(
                        child:Icon(Icons.account_box,size: 30,),
                        onPressed:(){

                        },
                      ),
                       FlatButton(
                        child:Icon(Icons.account_circle,size: 30,),
                        onPressed:(){

                        },
                      ),
                       FlatButton(
                        child:Icon(Icons.add_call,size: 30,),
                        onPressed:(){

                        },
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    child:GridView.count(
                      crossAxisCount: 3,
                      crossAxisSpacing: 2,
                      mainAxisSpacing: 2,
                      children: List.generate(6,(index) => Container(
                        color:Colors.blue
                      )),
                    ),
                  ),
                ),
                Container(
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:<Widget>[
                      FlatButton(
                        child:Icon(Icons.home),
                        onPressed: () => print("home"),
                      ),
                      FlatButton(
                        child:Icon(Icons.search),
                        onPressed: () => print("home"),
                      ),
                      FlatButton(
                        child:Icon(Icons.add_box),
                        onPressed: () => print("home"),
                      ),
                      FlatButton(
                        child:Icon(Icons.account_circle),
                        onPressed: () => print("home"),
                      ),
                      FlatButton(
                        child:Icon(Icons.people),
                        onPressed: () => print("home"),
                      ),
                    ],
                  ),
                )
               ],
              )
            ),
          )
          ),
      );
  }
}
