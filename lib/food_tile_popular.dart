// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:food_ordering_app/Call911_details.dart';
import 'package:food_ordering_app/foodclass.dart';

class FoodTilePopular extends StatelessWidget {
  final Food food;
  const FoodTilePopular({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
                  builder: (context) =>  const Call911Details(),
                  ));
      },
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            width: 175,
            height: 170,
            decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 2),
            )]
          ),
            margin: const EdgeInsets.only(left: 10,top: 5, bottom: 10, right: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(food.imagePath,
                height: 80,),
                Text(
                  food.name,
                  style: const TextStyle(fontSize:20, fontWeight: FontWeight.bold),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:[ 
                  Text("Best Seller",
                  style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12),
                  ),
                  ]
                  ),
                SizedBox(
                  width: 160,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(food.price +' EGP',
                      style: const TextStyle(
                                color: Color(0xffF0543C),
                                fontSize: 16,
                                fontWeight: FontWeight.bold),),
                      Row(
                        children: [
                          const Icon(Icons.star,
                          color: Color(0xffF0543C),),
                          Text(food.rating),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 5,),
        ],
      ),
    );
  }
}