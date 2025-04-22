import 'package:flutter/material.dart';

void main(){
  runApp(Page_3());
}
class Page_3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: [
          Image.network(
            "https://img.freepik.com/premium-vector/majestic-mountain-valley_826265-47.jpg?w=1380",
            fit: BoxFit.fill,),
          ClipRRect(
            
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(50)),
            child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top:10)),
                  Container(
                      
                      child: Text("Mount Fuji",
                        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 40),),alignment: Alignment.topLeft,
                  ),
                  Row(
                    children: [Icon(Icons.star, size: 20,),
                      Icon(Icons.star, size: 20 , color:Colors.amberAccent),
                      Icon(Icons.star,
                        color: Colors.amberAccent,
                        size: 20,),
                      Icon(Icons.star,
                        color: Colors.amberAccent,
                        size: 20,),
                    ],),
                  Row(

                    children: [

                       ElevatedButton(onPressed: () {},

                            child:
                            Icon(Icons.add, color: Colors.white),
                            style: ButtonStyle(
                              backgroundColor:WidgetStateProperty.all<Color>(Colors.blue),

                            ),
                          ),
                      Text("  5  " , style: TextStyle(backgroundColor:Colors.white12 , fontSize: 20 ),),

                          ElevatedButton(onPressed: () {},

                            child:
                            Icon(Icons.minimize, color: Colors.white),
                            style: ButtonStyle(
                              backgroundColor:WidgetStateProperty.all<Color>(Colors.blue),

                            ),
                          ),
                         Icon(Icons.access_alarm_rounded),
                         Text("5 Days")
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top:10)),
                  Container(
                    child:Text("Description" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20),),
                    alignment: Alignment.topLeft,
                  ),

                  Text( "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",style: TextStyle(fontSize: 10),),

                ]
                  )
             ),
             Padding(padding: EdgeInsets.only(top:100 , left: 10)),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Row(
                  children:[Text("\$400" , style:TextStyle(fontSize:20, color: Colors.blue , fontWeight: FontWeight.w600) ),
                   Text("/package" , style:TextStyle(color: Colors.blue ,))]
                 ),
                 ElevatedButton(onPressed: (){}, child:Text("Book Now" , style: TextStyle(color:Colors.white),) ,
                     style: ButtonStyle(
                   backgroundColor:WidgetStateProperty.all<Color>(Colors.blue),) ),

               ],
             )
            ]

            ),
          );

  }
}