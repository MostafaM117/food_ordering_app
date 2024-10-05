// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:food_ordering_app/appbar.dart';
import 'package:food_ordering_app/food_tile_newest.dart';
import 'package:food_ordering_app/food_tile_popular.dart';
import 'package:food_ordering_app/foodclass.dart';
import 'package:food_ordering_app/my_cart.dart';
import 'package:food_ordering_app/navbar.dart';


class SearchBar extends StatefulWidget{
  const SearchBar({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SearchBarState createState() => _SearchBarState();
}
class _SearchBarState extends State<SearchBar> {
  // ignore: unused_field
  String _searchtext = '';
  @override
  Widget build (BuildContext context){
    return Container(
      width: 375,
      height: 45,
      decoration: BoxDecoration(color: Colors.white,
      borderRadius: BorderRadius.circular(30),
      border: Border.all(color: Colors.transparent),
      boxShadow: [BoxShadow(color: Colors.grey[500]!,
      blurRadius: 5.0,)]
      ),
      child: TextField(
      onChanged: (value){
        setState(() {
          _searchtext = value;
        });
      },
      decoration: const InputDecoration(
        contentPadding: EdgeInsets.symmetric( horizontal: 16, vertical: 11),
        hintText: 'What would you like to have?',
        hintStyle: TextStyle(color: Colors.grey),
        prefixIcon: Icon(Icons.search, color: Color(0xffF0543C),),
        suffixIcon: Icon(Icons.filter_list),
        border: InputBorder.none
      ),
    ),
    );
  }
}


class MyHomePage extends StatefulWidget {
  static const String homepageRoute = 'homepageRoute';
  const MyHomePage({super.key});
  
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{

List popularmenu = [
  
  Food(
  name: "juicy lucy",
  price: "120", 
  imagePath: "assets/Burger/Juicy Lucy.png",
  rating: "4.9",
  caption: "Best Seller Burger Sandwich"),

  Food(
  name: "Call 911",
  price: "145", 
  imagePath: "assets/Burger/Call911.png",
  rating: "4.6",
  caption: "Best Seller Burger Sandwich"),
  
  Food(
  name: "Feed The Beast",
  price: "130", 
  imagePath: "assets/Chicken/Feed The Beast.png",
  rating: "4.8",
  caption: "Best Seller Chicken Sandwich"),

];
List newestmenu = [
  
  Food(
  name: "Smash & Clash",
  price: "130", 
  imagePath: "assets/Smash Burger/Smash & Clash.jpeg",
  rating: "4.9",
  caption: "Best Seller Burger Sandwich"),

  Food(
  name: "Pain Killer",
  price: "145", 
  imagePath: "assets/Smash Burger/Pain Killer.jpeg",
  rating: "4.7",
  caption: "Best Seller Burger Sandwich"),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F6F2),
      drawer: const NavBar(),
      appBar: const MyAppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
                  builder: (context) =>  const MyCart(),
                  ));
        },
        backgroundColor: const Color(0xffF0543C),
        child: const Icon(Icons.shopping_cart, color: Colors.white,),
        ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10,),
            const Center(
              child: SearchBar(),
            ),
            const SizedBox(height: 10,),
            Container(
              width:360,
              height: 30,
              child: const Text("Categories",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            ),
            const SizedBox(height: 5,),
            SizedBox(
              height: 120,
              width: 360,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children:[ 
                  Row(
                  children: [
                    const SizedBox(width: 5,),
                    Column(children: [
                      Container(
                        padding: const EdgeInsets.only(top: 2),
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(color: Colors.grey,
                            spreadRadius: 1, blurRadius: 4, offset: Offset(0, 3)),], 
                            borderRadius: BorderRadius.circular(40)),
                    child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset("assets/Burger/Burger Sandwiches.jpeg",
                    width: 70,
                    height: 70,
                    ),
                    ),
                      ),
                    const Text("Burgers",
                    style: TextStyle(fontWeight: FontWeight.bold),),
                    const Text("Sandwiches",
                    style: TextStyle(fontWeight: FontWeight.bold),),
                    ],),
                    const SizedBox(width: 15,),
                    Column(children: [
                      Container(
                        padding: const EdgeInsets.only(top: 2),
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(color: Colors.grey,
                            blurRadius: 2, offset: Offset(0, 2)),], 
                            borderRadius: BorderRadius.circular(40)),
                      child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset("assets/Chicken/Chicken Sandwiches.jpeg",
                      width: 70,
                      height: 70,
                    ),
                    ),),
                    const Text("Chicken",
                    style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const Text("Sandwiches",
                    style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    ],
                    ),
                    const SizedBox(width: 15,),
                    Column(children: [
                      Container(
                        padding: const EdgeInsets.only(top: 2),
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(color: Colors.grey,
                            spreadRadius: 1, blurRadius: 4, offset: Offset(0, 3)),], 
                            borderRadius: BorderRadius.circular(40)),
                      child:ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset("assets/Hot Dog/Hot Dog Sandwiches.jpeg",
                      width: 70,
                      height: 70,
                    ),
                    ),),
                    const Text("Hot Dog",
                    style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const Text("Sandwiches",
                    style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    ],),
                    const SizedBox(width: 15,),
                    Column(children: [
                      Container(
                        padding: const EdgeInsets.only(top: 2),
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(color: Colors.grey,
                            blurRadius: 2, offset: Offset(0, 2)),], 
                            borderRadius: BorderRadius.circular(40)),
                      child:ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset("assets/Smash Burger/Smash Burger Sandwiches.jpeg",
                    width: 70,
                    height: 70,
                    ),
                    ),),
                    const Text("Smash Burger",
                    style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const Text("Sandwiches",
                    style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    ],),
                    const SizedBox(width: 15,),
                    Column(children: [
                      Container(
                        padding: const EdgeInsets.only(top: 2),
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(color: Colors.grey,
                            spreadRadius: 1, blurRadius: 4, offset: Offset(0, 3)),], 
                            borderRadius: BorderRadius.circular(40)),
                      child:ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset("assets/Appetizers/Appetizers.jpeg",
                      width: 70,
                      height: 70,
                    ),
                    ),),
                    const Text("Appetizers",
                    style: TextStyle(fontWeight: FontWeight.bold),),
                    ],),
                  ],
                ),
          ]),
            ),
            //-----------------------------------------------------------------------
            const SizedBox(height: 15,),
            Container(
              width:360,
              height: 30,
              // color: Colors.black12,
              child: const Text("Popular",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            ),
            Container(
              height: 210,
              child: Column(
                children: [
                Flexible(child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: popularmenu.length,
                itemBuilder: (
                  context, index) => FoodTilePopular(
                  food: popularmenu[index] ),
                ),
                ),
                  
                ],
              )
                ),
            Container(
              width:360,
              height: 30,
              // color: Colors.black12,
              child: const Text("Newest",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            ),
            Container(
              width: 370,
              height: 180,
              decoration: BoxDecoration(
                // color: Colors.red,
                borderRadius: BorderRadius.circular(40)
                ),
              child: Column(
                children: [
                Flexible(child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: newestmenu.length,
                itemBuilder: (
                  context, index) => FoodTileNewest(
                  food: newestmenu[index] ),
                ),
                ),
                  
                ],
              )
                ),
          ]
        ),
      ),
    );
  }
}