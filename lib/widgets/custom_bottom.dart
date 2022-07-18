import 'package:flutter/material.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.black,
      child: Container(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed: ()=>{Navigator.pushNamed(context, '/')}, icon: const Icon(Icons.home,color: Colors.white,size: 34,)),
            //IconButton(onPressed: ()=>{Navigator.pushNamed(context, '/user')}, icon: const Icon(Icons.home)),
            //IconButton(onPressed: ()=>{Navigator.pushNamed(context, '/cart')}, icon: const Icon(Icons.home)),
          ],
        ),
      ),
    );
  }
}