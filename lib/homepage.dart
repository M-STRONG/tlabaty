import 'dart:html';

import 'package:flutter/material.dart';
import 'package:carousel_images/carousel_images.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> listImages = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8Osh3L4Sw-MHv3gl2NiuQq7H6o6rt5kBkjQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8Osh3L4Sw-MHv3gl2NiuQq7H6o6rt5kBkjQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2oRQ6KuEonrHweySCSqMGxcdELnOJM2tSjQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2oRQ6KuEonrHweySCSqMGxcdELnOJM2tSjQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8Osh3L4Sw-MHv3gl2NiuQq7H6o6rt5kBkjQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8Osh3L4Sw-MHv3gl2NiuQq7H6o6rt5kBkjQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2oRQ6KuEonrHweySCSqMGxcdELnOJM2tSjQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2oRQ6KuEonrHweySCSqMGxcdELnOJM2tSjQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8Osh3L4Sw-MHv3gl2NiuQq7H6o6rt5kBkjQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8Osh3L4Sw-MHv3gl2NiuQq7H6o6rt5kBkjQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2oRQ6KuEonrHweySCSqMGxcdELnOJM2tSjQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2oRQ6KuEonrHweySCSqMGxcdELnOJM2tSjQ&usqp=CAU",
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.search),
                  Row(
                    children: [Text("حي المفرق "), Icon(Icons.arrow_downward)],
                  ),
                  Icon(Icons.notifications)
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 25),
                  CarouselImages(
                    scaleFactor: 0.1,
                    listImages: listImages,
                    height: 75.0,
                    cachedNetworkImage: true,
                    verticalAlignment: Alignment.bottomCenter,
                    onTap: (index) {
                      print('Tapped on page $index');
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(80),
                            color: Color.fromARGB(255, 232, 225, 225)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "توصيل طلباتي ",
                              textAlign: TextAlign.right,
                            ),
                            Icon(Icons.bike_scooter)
                          ],
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(80),
                            color: Color.fromARGB(255, 232, 225, 225)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "يدعم المحفظة ",
                              textAlign: TextAlign.right,
                            ),
                            Icon(Icons.note)
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 30,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(80),
                            color: Colors.redAccent),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "الكل",
                              textAlign: TextAlign.right,
                            ),
                            Icon(Icons.home)
                          ],
                        ),
                      ),
                    ]),
              ),
              SizedBox(
                height: 15,
              ),
              post(),
              SizedBox(
                height: 10,
              ),
              post(),
            ]),
          ],
        ),
        bottomNavigationBar: SalomonBottomBar(
          items: [
            /// Home
            SalomonBottomBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
              selectedColor: Colors.redAccent,
            ),

            /// Likes
            SalomonBottomBarItem(
              icon: Icon(Icons.money_sharp),
              title: Text("Likes"),
              selectedColor: Colors.pink,
            ),

            /// Search
            SalomonBottomBarItem(
              icon: Icon(Icons.restaurant_menu_rounded),
              title: Text("Search"),
              selectedColor: Colors.orange,
            ),

            /// Profile
            SalomonBottomBarItem(
              icon: Icon(Icons.account_circle_rounded),
              title: Text("Profile"),
              selectedColor: Colors.teal,
            ),
          ],
        ),
      ),
    );
  }

  Container post() {
    return Container(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                  height: 200,
                  width: 450,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://cdn.vox-cdn.com/thumbor/9qN-DmdwZE__GqwuoJIinjUXzmk=/0x0:960x646/1200x900/filters:focal(404x247:556x399)/cdn.vox-cdn.com/uploads/chorus_image/image/63084260/foodlife_2.0.jpg"),
                          fit: BoxFit.cover))),
              Positioned(
                  right: 20,
                  top: 10,
                  child: Container(
                    height: 20,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(179, 227, 183, 183),
                    ),
                    child: Icon(Icons.bike_scooter),
                  )),
              Positioned(
                  right: 80,
                  top: 10,
                  child: Container(
                    height: 20,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(179, 227, 183, 183),
                    ),
                    child: Text("بروموكود",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(" الحد الادنى للطلب هو 0 دينار  ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 100, 99, 99),
                      fontSize: 10)),
              Text("كرز ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.redAccent,
                      fontSize: 23)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(children: [Text("بعقوبة"), Icon(Icons.location_on)]),
              Row(children: [Text("جيدجدا"), Icon(Icons.favorite)]),
              Row(children: [
                Text("سعر التوصيل 1000"),
                Icon(Icons.bike_scooter)
              ]),
            ],
          )
        ],
      ),
    );
  }
}
