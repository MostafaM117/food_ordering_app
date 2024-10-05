import 'package:flutter/material.dart';
import 'package:food_ordering_app/homepage.dart';
import 'package:food_ordering_app/my_account.dart';
import 'package:food_ordering_app/my_cart.dart';
import 'package:food_ordering_app/my_wishlist.dart';


class NavBar extends StatelessWidget {
  const NavBar({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
          children:  [
            const UserAccountsDrawerHeader(
              accountName: Text("Mostafa Mohamed" ,style: TextStyle(fontWeight: FontWeight.bold),),
              accountEmail: Text("mostafa.hamed1173@gmail.com"),
              currentAccountPicture: 
              CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage("assets/myphoto.jpg"),
              ),
              decoration: BoxDecoration(
                color: Color(0xffF0543C)
              ),
              ),
              ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home", style: TextStyle(fontWeight: FontWeight.bold)),
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(context, MyHomePage.homepageRoute, (route) => false);
              },
              ),
              ListTile(
              leading: const Icon(Icons.person),
              title: const Text("My Account", style: TextStyle(fontWeight: FontWeight.bold)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) =>  const MyAccount(),
                  ));
              },
              ),
              ListTile(
              leading: const Icon(Icons.shopping_cart),
              title: const Text("My Cart", style: TextStyle(fontWeight: FontWeight.bold)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) =>  const MyCart(),
                  ));
                  },
              ),
              ListTile(
              leading: const Icon(Icons.favorite),
              title: const Text("My Wishlist", style: TextStyle(fontWeight: FontWeight.bold)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) =>  const MyWishList(),
                  ));
              },
              ),
              const ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings", style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              const ListTile(
              leading: Icon(Icons.logout),
              title: Text("Log Out", style: TextStyle(fontWeight: FontWeight.bold)),
              ),
          ],
        )
    );
  }
}
