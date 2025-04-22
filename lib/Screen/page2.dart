
import 'package:flutter/material.dart';
import 'package:flutter_app/Screen/page3.dart';
void main(){
  runApp(Page_2());
}
class Page_2 extends StatelessWidget {
  List lst = [
    {
      "name": "https://img.freepik.com/free-vector/flat-landscape-high-mountain-peaks-background-with-sky-sun-clouds-vector-illustration_1284-75778.jpg?uid=R73637132&ga=GA1.1.1563335469.1744899887&semt=ais_hybrid&w=740",
      "title" : "Cerro Aconcagua"
    },
    {
      "name": "https://img.freepik.com/premium-vector/majestic-mountain-valley_826265-47.jpg?w=1380",
      "title" : "Mount Everest"
    },
    {
      "name": "https://img.freepik.com/premium-vector/majestic-mountain-valley_826265-47.jpg?w=1380",
      "title" : "Denali"
    },
    {
      "name": "https://img.freepik.com/free-vector/flat-landscape-high-mountain-peaks-background-with-sky-sun-clouds-vector-illustration_1284-75778.jpg?uid=R73637132&ga=GA1.1.1563335469.1744899887&semt=ais_hybrid&w=740",
      "title" : "	Kilimanjaro"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Discover", style: TextStyle(fontWeight: FontWeight.bold,),),
              CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://static.vecteezy.com/system/resources/thumbnails/025/472/773/small/very-detailed-cute-kid-girl-ai-generated-photo.jpg",
                ),
                radius: 12,),

            ],
          ),
        ),
        body: Column(
            children: [
              SizedBox(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Stack(
                        children: [Container(
                          margin: EdgeInsets.only(right: 10),
                          width: 300,
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20)),
                            image: DecorationImage(image: NetworkImage(
                                ("https://img.freepik.com/free-vector/flat-landscape-high-mountain-peaks-background-with-sky-sun-clouds-vector-illustration_1284-75778.jpg?uid=R73637132&ga=GA1.1.1563335469.1744899887&semt=ais_hybrid&w=740")),
                              fit: BoxFit.cover,),
                          ),
                        ),
                          Positioned(
                              bottom: 50,
                              width: 300,
                              child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [Text("Northern Mountain",
                                      style: TextStyle(fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),),

                                      Row(
                                        mainAxisAlignment: MainAxisAlignment
                                            .center,
                                        children: [Icon(Icons.star, size: 10,),
                                          Icon(Icons.star, size: 10),
                                          Icon(Icons.star,
                                            color: Colors.amberAccent,
                                            size: 10,),
                                          Icon(Icons.star,
                                            color: Colors.amberAccent,
                                            size: 10,),
                                        ],)

                                    ],)
                              )
                          )
                        ],
                      ),
                      ElevatedButton(onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Page_3()));
                      }, child: Stack(
                        children: [Container(
                          margin: EdgeInsets.only(right: 10),
                          width: 300,
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(bottomRight: Radius
                                .circular(20), bottomLeft: Radius.circular(20)),
                            image: DecorationImage(image: NetworkImage(
                                ("https://img.freepik.com/premium-vector/majestic-mountain-valley_826265-47.jpg?w=1380")),
                              fit: BoxFit.cover,),
                          ),
                        ),
                          Positioned(
                              bottom: 50,
                              width: 300,
                              child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Mount fuji", style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment
                                            .center,
                                        children: [Icon(Icons.star, size: 10,),
                                          Icon(Icons.star, size: 10),
                                          Icon(Icons.star,
                                            color: Colors.amberAccent,
                                            size: 10,),
                                          Icon(Icons.star,
                                            color: Colors.amberAccent,
                                            size: 10,),
                                        ],)

                                    ],)
                              )
                          )
                        ],
                      ),
                      )
                    ],
                  )
              ),
              Padding(padding: EdgeInsets.all(10), child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Recommended",
                    style: TextStyle(fontWeight: FontWeight.w600),),
                  Text(
                    "View all", style: TextStyle(fontWeight: FontWeight.w600),)
                ],
              )
              ),
              Expanded(child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10),
                  itemCount: lst.length,
                  itemBuilder: (context, i) {
                    return Stack(
                        children: [
                          Container(
                              padding: EdgeInsets.all(10),
                              height: 100,
                              child: Image.network(
                                lst[i]['name'],
                                fit: BoxFit.cover,
                                width: double.infinity,
                              )
                          ),
                          Positioned(child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(lst[i]['title'] , style: TextStyle(color: Colors.white),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [Icon(Icons.star, size: 10,),
                                  Icon(Icons.star, size: 10 ,color: Colors.amberAccent),
                                  Icon(Icons.star,
                                    color: Colors.amberAccent,
                                    size: 10,),
                                  Icon(Icons.star,
                                    color: Colors.amberAccent,
                                    size: 10,),
                                ],)
                            ],
                          ))
                        ]
                    );
                  }
              )
              )
            ]
        )

    );
  }
}
