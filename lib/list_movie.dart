import 'package:flutter/material.dart';

import 'base_config.dart';
import 'detailmovie.dart';
import 'model/movieslist.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      backgroundColor: secondaryColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: ListView(
          children: [
            Stack(
            children: <Widget>[
              Container(
                width: 340,
                height: 300,
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
          SizedBox(height:10),
            //
            Text(
              "Popular Movie",
              style: TextStyle(
                color: white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              height: 230,
              margin: EdgeInsets.only(top: 10),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: popularMovie.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailMoviePage(
                            popularMovie[index],
                          ),
                        ),
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 180,
                          width: 140,
                          margin: EdgeInsets.only(right: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                popularMovie[index].imgPoster,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 140,
                          child: Text(
                            popularMovie[index].title,
                            style: TextStyle(
                              color: white,
                              fontSize: 17,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.clip,
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          
            
           
            
           
          ],
        ),
      ),
    );
  }
}
