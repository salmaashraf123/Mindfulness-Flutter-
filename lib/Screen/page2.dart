import 'package:flutter/material.dart';

import '../componants/Edge.dart';

class page_2 extends StatelessWidget {
  final int i = 2;
  const page_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
        Image.asset("images/img/photo1.jpg" , height:400, width: double.infinity,fit: BoxFit.cover,),
        Text("Get started with Yoga" , style: TextStyle(fontFamily:"PlaywriteCU" , fontSize: 20 , color: Colors.lime) ,),
        Text("Easily get started with your yoga journey" , style: TextStyle(fontSize: 15)),
        Edgee(i),
      ]
      )
    );
  }
}