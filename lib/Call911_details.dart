// ignore_for_file: file_names, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:food_ordering_app/inside_appbar.dart';
import 'package:food_ordering_app/navbar.dart';
import 'package:google_fonts/google_fonts.dart';

class Call911Details extends StatefulWidget {
  const Call911Details({super.key});

@override
State<Call911Details> createState() => _Call911DetailsState(); 
}
class _Call911DetailsState extends State<Call911Details> {

  int quantitycount = 0;
  void decrementQuantity(){
    if(quantitycount == 0){
        setState(() {
      quantitycount == 0;
    });
      }
      else{
        setState(() {
      quantitycount --;
    });
      }
  }
  void incrementQuantity(){
    setState(() {
      quantitycount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F6F2),
      drawer: const NavBar(),
      appBar: const MyInsideAppBar(),
      body: Padding(padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // width: 355,
              height: 250,
              // color: Colors.black12,
              child: Image.asset("assets/Burger/Call911.png",),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Call911",
                style:  GoogleFonts.ubuntu(
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
                ),
                const Text("145 EGP",
                  style: TextStyle(
                  color: Color(0xffF0543C),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
                  ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  // color: Colors.black,
            width: 210,
            child: RatingBar.builder(
            itemBuilder: (context, _) => const Icon(Icons.star),
            initialRating: 4,
            minRating: 1,
            direction: Axis.horizontal,
            itemPadding: const EdgeInsets.symmetric(horizontal: 2),
            itemCount: 5,
            itemSize: 18,
            onRatingUpdate: (index){}
            )
          ),
              ],
            ),
            
        
            const SizedBox(height: 30,),
            Container(
              width: 355,
              height: 40,
              // color: Colors.blueAccent,
              child: Text("Description",
              style: GoogleFonts.ubuntu(fontSize: 18, fontWeight:FontWeight.bold, height: 2),),
            ),
            Container(
              width: 355,
              height: 140,
              // color: Colors.blueAccent,
              child: Text("Enjoy Our Call911 Burger Sandwich with Beef Bacon,Siracha Sauce, Melted Cheese And BBQ Sauce with an affordable Price.",
              style: GoogleFonts.ubuntu(fontSize: 16, height: 2, color: Colors.black54),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
              width: 135,
              height: 45,
              decoration: BoxDecoration(color: Colors.black26,borderRadius: BorderRadius.circular(30)),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 3),
                    height: 35,
                    decoration: const BoxDecoration(
                      color: Color(0xffF0543C),
                      shape: BoxShape.circle
                    ),
                    child: IconButton(
                    onPressed: decrementQuantity,
                    icon: const Icon(Icons.remove,
                    size: 20,)),
                  ),
                  SizedBox(
                    width: 35,
                    child: Center(
                      child: Text(quantitycount.toString(),
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),)),
                  ),
                  Container(
                    height: 35,
                    decoration: const BoxDecoration(
                      color: Color(0xffF0543C),
                      shape: BoxShape.circle
                    ),
                    child: IconButton(
                    onPressed: incrementQuantity,
                    icon: const Icon(Icons.add,
                    size: 20,)
                    ),
                  ),
                ],
              )
            ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              Container(
              width: 150,
              height: 50,
              decoration: BoxDecoration(
              color: Colors.black26, 
              borderRadius: BorderRadius.circular(20)),
              child:GestureDetector(
                child:const Row(
                  children: [
                    SizedBox(width: 10,),
                    Icon(Icons.shopping_cart),
                    SizedBox(width: 10,),
                    Text("Add to cart",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                ],),
                onTap: () {
                  
                },
              )
            ),
            ],
            ),
            
          ],
        ),
      ),
      )
    );
  }
}

