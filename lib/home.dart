import 'package:flutter/material.dart';
import 'package:tic_tac_toe/game.dart';
class  Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
 //({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            title: const Text(
                      "TIC TAC TOE GAME",
                      style: TextStyle(
                              fontSize: 24,
                              color: Colors.greenAccent,
                              fontWeight: FontWeight.bold,
                       ),


            ),
            centerTitle: true,
            toolbarHeight: 60.2,
            toolbarOpacity: 0.8,
            shape: const RoundedRectangleBorder(
                       borderRadius: BorderRadius.only(
                       bottomRight: Radius.circular(25),
                       bottomLeft: Radius.circular(25)),
            ),
            elevation: 0.00,
            backgroundColor: Colors.grey[300],
      ),
      body:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                 width: double.infinity,
                 decoration: const BoxDecoration(
                     gradient: LinearGradient(
                        colors:[ Colors.blue,Colors.purple ],
                        begin: Alignment.topRight,
                        end:Alignment.bottomLeft,
                     )

                 )
                ),
              ),
            ),
            GestureDetector(
              onTap :(){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Game()));
              },
              child:
              Container(
                color: Colors.blue[300],
                child:Text("3X3 TIC TAC TOE"),
              ),
            ),
          ],
        ),


    );
  }
}
