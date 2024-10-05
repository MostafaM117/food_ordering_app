import 'package:flutter/material.dart';
import 'package:food_ordering_app/appbar.dart';
import 'package:food_ordering_app/navbar.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F6F2),
      drawer: const NavBar(),
      appBar: const MyAppBar(),
      body: Center(
        child: Column(
        children: [
          const SizedBox(height: 100,),
          Image.asset("assets/empty-cart.png",
          width: 250,
          height: 250,),
          const SizedBox(
            height: 30,
          ),
          const Text("Your cart is empty",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
        ],
      ),
      )
      
  );
  }
}