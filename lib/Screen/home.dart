import 'package:flutter/material.dart';
import 'package:flutter_app/Screen/page2.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../componants/Edge.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final int i = 1;
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset("images/img/photo2.jpg" , height:400 , width: double.infinity,fit: BoxFit.cover,),
          Text("Practice Mindfulness" , style: TextStyle(fontFamily:"PlaywriteCU" , fontSize: 20 , color: Colors.lime) ,),
          Text(" Get on the right track towards mindfulness" , style: TextStyle(fontSize: 15)),
          Edgee(i),

        ],
      ),
    );
  }
}


