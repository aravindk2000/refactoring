import 'package:flutter/material.dart';
void main(){
  runApp(cat());
}
class cat extends StatelessWidget {
  Widget sportsbutton({
    required String buttontext,
  }){
    return   Padding(
      padding: const EdgeInsets .all(8.0),
      child: ElevatedButton(onPressed: () {},
          child:Text(buttontext),

      ),
    );
  }
  const cat({super.key});

  @override
  Widget build(BuildContext context) {
    Widget cricket = Icon(Icons.sports_cricket,);
    Widget football = Icon(Icons.sports_football);
    Widget basketball =Icon(Icons.sports_basketball,color: Colors.pinkAccent,);
    Widget sportsrow = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
         cricket,football,basketball
      ],
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:AppBar(
          title: Text("SPORTS",),backgroundColor: Colors.redAccent,

        ),
        body:
            ListView(
              children: [
              sportsrow,sportsrow,sportsrow,
                sportsbutton(buttontext: "click on me",),
                sportsbutton(buttontext: "click me one"),
Container(
  decoration: BoxDecoration(
    color: Colors.cyanAccent,
    borderRadius: BorderRadius.circular(30)
  ),
  child: ListTile(
    title: Text("SCHEDULED CRICKET MATCHES",textAlign:TextAlign.center,style: TextStyle(color: Colors.black,)),
              subtitle: sportsbutton(buttontext: "macthes"),
            )
      )

    ],

            ),


      ),
    );
  }
}
