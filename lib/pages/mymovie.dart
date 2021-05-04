import 'package:flutter/material.dart';

class MyMovie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                width: 340,
                height: 240,
                child: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    Image.asset(
                      "assets/wonder.jpg",
                      fit: BoxFit.cover,
                      color: Colors.black.withOpacity(0.3),
                      colorBlendMode: BlendMode.darken,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 4),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    "Cast",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 19,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  height: 150,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      // Container(
                      //   width: 120,
                      //   height: 150,
                      //   child: Stack(
                      //     fit: StackFit.expand,
                      //     children: <Widget>[
                      //       Image.asset(
                      //         "assets/Scarlet Johanson.jpg",
                      //         fit: BoxFit.cover,
                      //         color: Colors.black.withOpacity(0.3),
                      //         colorBlendMode: BlendMode.darken,
                      //       ),
                              
                      //     ],
                      //   ),
                        

                      // ),
                      // SizedBox(width:10),
                      
                      Container(
                        width: 120,
                        height: 150,
                        child: Stack(
                          fit: StackFit.expand,
                          children: <Widget>[
                            Image.asset(
                              "assets/tomcur.jpg",
                              fit: BoxFit.cover,
                              color: Colors.black.withOpacity(0.3),
                              colorBlendMode: BlendMode.darken,
                            ),
                              SizedBox(height:4),
                            Text(
                              "Tom Curuse",
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                      ),
                       SizedBox(width:10),
                      
                      Container(
                        width: 120,
                        height: 150,
                        child: Stack(
                          fit: StackFit.expand,
                          children: <Widget>[
                            Image.asset(
                              "assets/will.jpg",
                              fit: BoxFit.cover,
                              color: Colors.black.withOpacity(0.3),
                              colorBlendMode: BlendMode.darken,
                            ),
                            SizedBox(height:4),
                            Text(
                              "Will smith",
                              style: TextStyle(fontSize: 10),
                            )

                          ],
                        ),
                      ),
                      
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
