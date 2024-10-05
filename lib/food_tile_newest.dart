// ignore_for_file: sized_box_for_whitespace, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:food_ordering_app/foodclass.dart';

class FoodTileNewest extends StatelessWidget {
  final Food food;
  const FoodTileNewest({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
                    height: 130,
                    margin: const EdgeInsets.only(left: 10,top: 5, bottom: 10, right: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 8,
                            offset: const Offset(0, 3),
                          )]
                    ),
                    child: Row(
                      children: [
                      Container(
                        padding: const EdgeInsets.only(left: 5),
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30)
                        ),
                        child: 
                        ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.asset(food.imagePath,
                        width: 120,
                        height: 120,
                        ),
                        ) 
                        ),
                        const SizedBox(width: 10,),
                        Container(
                          height: 120,
                          width: 175,
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          children: [
                            Container(
                              width: 175,
                              child: Text(food.name,
                              style: const TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 20),),
                            ),
                            const Text("Try Our New Tasty Smashed Burger.",
                            style: TextStyle(fontSize: 12),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Container(
                              width: 175,
                              child: RatingBar.builder(
                              itemBuilder: (context, _) => const Icon(Icons.star),
                              initialRating: 5,
                              minRating: 1,
                              direction: Axis.horizontal,
                              itemPadding: const EdgeInsets.symmetric(horizontal: 2),
                              itemCount: 5,
                              itemSize: 14,
                              onRatingUpdate: (index){}
                              )
                            ),
                            Row(
                            children: [
                            Text(food.price +' EGP',
                            style: const TextStyle(
                            color: Color(0xffF0543C),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                            ),
                              ],
                            )
                          ],
                        ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 20),
                          width: 40,
                          child: const Column(children: [
                            Icon(Icons.favorite_border, color: Color(0xffF0543C),)
                          ],
                          ),
                        )
                    ],
                    ),
                    
                  ),
    );

  }
}