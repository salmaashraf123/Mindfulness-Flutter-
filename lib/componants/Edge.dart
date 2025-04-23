import 'package:flutter/material.dart';
import 'package:flutter_app/Screen/page2.dart';
import 'package:flutter_app/Screen/page4.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../Screen/page3.dart';
class Edgee extends StatelessWidget {
  final int i;
  const Edgee(this.i, {super.key});
  @override
  Widget build(BuildContext context) {

    final PageController controller = PageController();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        MaterialButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>page_4()));},child: Text("Skip", style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15) ),),
        SmoothPageIndicator(
            controller: PageController(initialPage: i-1), // PageController
            count: 3,
            effect:  WormEffect(
              dotWidth: 8,
              activeDotColor: Colors.lime,
              dotHeight: 7,
            ),
            // your preferred effect
            onDotClicked: (index){
              if(i == 1){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>page_2()));
              }
              else if(i == 2){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>page_3()));
              }
            }

        ),
        MaterialButton(onPressed: (){
          if(i == 1){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>page_2()));
          }
          else if(i == 2){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>page_3()));
          }
        },child: Text("Next",style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15),),)
      ],
    );
  }
}