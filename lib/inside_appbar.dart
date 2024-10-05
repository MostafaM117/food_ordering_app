import 'package:flutter/material.dart';

class MyInsideAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyInsideAppBar({
    super.key,
  });
  @override
  Size get preferredSize => const Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xffF6F6F2),
    leading:Builder(
    builder: (context) => Row(
      children: [
        const SizedBox(width: 8),
        Container(
      decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(30),
      boxShadow: [BoxShadow(color: Colors.grey[500]!,
      blurRadius: 5.0,)]
      ),
      child: IconButton(icon: const Icon(Icons.arrow_back,), onPressed:(){
        Navigator.of(context).pop(context);
    }
    ),
    ),
      ],
    ),
    ),
    actions: [Builder(
    builder: (context) => Row(
      children: [
        const SizedBox(width: 8),
        Container(
      decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(30),
      boxShadow: [BoxShadow(color: Colors.grey[500]!,
      blurRadius: 5.0,)]
      ),
      child: IconButton(icon: const Icon(Icons.menu,), onPressed:(){
        Scaffold.of(context).openDrawer();
    }
    ),
    ),
    const SizedBox(width: 5,)
      ],
    ),
    ),],
        );
  }
}
