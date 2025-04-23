import 'package:flutter/material.dart';

class page_4 extends StatelessWidget {
  const page_4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("home sreen" , style: TextStyle(fontFamily:"PlaywriteCU" , fontSize: 20 , color: Colors.lime)),
              Row(
                children: [
                  Icon(Icons.favorite_border , color: Colors.lime,),
                  Padding(padding: EdgeInsets.only(right:10 )),
                  Icon(Icons.telegram_outlined, color: Colors.lime,),
                ],
              ),

            ],
          )
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.circle , color: Colors.lime, size: 100,),
                Icon(Icons.circle , color: Colors.lime, size: 100,),
                Icon(Icons.circle , color: Colors.lime, size: 100,)
              ],
            ),

            ClipRRect(child:Container(height: 200, color: Colors.lime,),borderRadius: BorderRadius.all(Radius.circular(20)), ),
            MaterialButton(
              onPressed: (){},
              color: Colors.lime,
              child:Text("Open" , style: TextStyle(color:Colors.white),) ,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))
              ),
            ),
            Text("search Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam auctor, nisl eget ultricies tincidunt, nisl nisl aliquam nisl, eget ultricies nisl nisl eget nisl. Nullam auctor, nisl eget ultricies tincidunt, nisl nisl aliquam nisl, eget ultricies nisl nisl eget nisl. Nullam auctor, nisl eget ultricies tincidunt, nisl nisl aliquam nisl, eget ultricies nisl nisl eget nisl. Nullam auctor."),
            Text("View all 199 comments" , style:TextStyle(color : Colors.grey))
          ],
        ),
    );
  }
}