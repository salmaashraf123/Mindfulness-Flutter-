import 'package:flutter/material.dart';
import 'package:flutter_app/Screen/page2.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
         children: [
           ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              child: Image.network("https://img.freepik.com/free-photo/full-shot-little-girl-winter-season_23-2151061753.jpg?t=st=1745315122~exp=1745318722~hmac=b2ae44fc7cd3e69c2fbb2307598234c1a086a74f3a3ce0ab81567be28c71b62b&w=1380" ,height: 350,width:380, fit: BoxFit.cover)
           ),
           Container(
               padding: EdgeInsets.only(top: 10 , bottom: 10),
               child: Text("Winter Vacation Trips"  , style:TextStyle(fontWeight: FontWeight.w600 , fontSize: 40),textAlign: TextAlign.start,  )),
            Text("Enjoy your winter vacation with amazing sightseeing . Enjoy the best experience with us"  , style:TextStyle(fontSize:10),textAlign: TextAlign.start,  ),

           Container(
                padding: EdgeInsets.only(top : 20),
               alignment: Alignment.centerLeft,
               child:ElevatedButton(
                onPressed:(){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Page_2()));
                },
               style: ElevatedButton.styleFrom(
                 backgroundColor: Colors.blue,

               ), child:Text("Let's Go!" , style: TextStyle(color: Colors.white ),))

            )

         ]

      ),
    );
  }
}


