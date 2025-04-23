import 'package:flutter/material.dart';
import 'package:flutter_app/Screen/page4.dart';

class page_3 extends StatelessWidget {
  const page_3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset("images/img/photo.jpg" , height:400, width: double.infinity,fit: BoxFit.cover,),
              Text("Unplug your life" , style: TextStyle(fontFamily:"PlaywriteCU" , fontSize: 20 , color: Colors.lime) ,),
              Text("Set up different measures to start your life" , style: TextStyle(fontSize: 15)),
              SizedBox(
                width: 300,
                child: MaterialButton(
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>page_4()));
                    },
                    color: Colors.lime,
                    child:Text("Get started" , style: TextStyle(color:Colors.white),) ,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                ),

              )

            ]
        )
    );
  }
}