import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  const CustomAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: Container(
      color: Colors.transparent,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10
      ),
      child: const Text("Demetel",style: TextStyle(
        color:Colors.black,
        fontFamily: 'Avenir',
        fontSize: 24,
        fontWeight: FontWeight.bold
      ),),
    ),
    iconTheme: const IconThemeData(color: Colors.black),
    actions: [IconButton(onPressed: ()=>{}, icon: const Icon(Icons.favorite))],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50.0);
}
