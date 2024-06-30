import 'package:flutter/material.dart';
import 'package:tic_tac_toe/result.dart';

class Game extends StatefulWidget {
  const Game({super.key});

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {
  int c = 0,i=0,j=0,l=2,m=0;
  int k=0;
  bool a=false;
  List L0=[];
  List L1=[];
  List L2=[
    [1,2,3],[4,5,6],[7,8,9],[1,4,7],[2,5,8],[3,6,9],[1,5,9],[3,5,7]
  ];
  List l3=[2,2,2,2,2,2,2,2,2,2];

  void condition(int number) {
      l=2;
      if (L1.contains(number) || L0.contains(number)){
      }
      else{
        c++;
        print('yes1');

        if (a==false){
          l3[number]=1;
          L1.add(number);

        }
        else{
          l3[number]=0;
          L0.add(number);
        }
        a=!a;

        if(c>4 && c<10){

          if(a==true){
            for (var i=0; i<8; i++){
              for ( var j=0;j<3;j++){
                if (L1.contains(L2[i][j])){
                  k++;
                }

              }
              if(k==3){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Result(a:1)));

                //Result(a:1);
                print('player 1 won ');


              }
              else{
                k=0;
              }
            }
            if(c==9){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Result(a:3)));
              //Result(a:2);
              print("draw");
            }
          }
          else{
            for (var i=0; i<8; i++){
              for ( var j=0;j<3;j++){
                if (L0.contains(L2[i][j])){
                   k++;
                }
              }
              if(k==3){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Result(a:2)));
                //Result(a:2);
                print(' player 2 won');

              }
              else{
                  k=0;
              }
              }
          }

        }

      }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[400],
        appBar: AppBar(
          centerTitle:true,
          title:Text(
            '3X3 TIC TAC TOE',
             style:TextStyle(
               fontSize:30,
               color: Colors.red[800],
             ),
          ),
          backgroundColor: Colors.grey[600],
        ),
        body: GridView(
                          gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10,
                          ),
                          children:[
                            GestureDetector(
                              onTap :(){
                                setState(() {
                                  condition(1);
                                  print('1');
                                  //Icon((l==1)? Icons.close : Icons.circle);
                                });
                              },
                              child:
                                Container(
                                  color: Colors.blue[300],
                                  //child: Icon(((l==0 || l==1)?((l==1)? Icons.close : Icons.circle):(Icons.ac_unit, color =Colors.black.withOpacity(0))) as IconData?),
                                  child: Icon(((l3[1]==0 || l3[1]==1)?((l3[1]==1)? Icons.close : Icons.circle):Icons.ac_unit),
                                              color:((l3[1]==0 || l3[1]==1)? Colors.black : Colors.blue[300])
                                  ),
                                ),

                            ),
                            GestureDetector(
                            onTap :(){
                                setState(() {
                                     condition(2);
                                     print('2');
                                });
                            },
                              child:
                                 Container(
                                    color: Colors.blue[300],
                                    child: Icon(((l3[2]==0 || l3[2]==1)?((l3[2]==1)? Icons.close : Icons.circle):Icons.ac_unit),
                                              color:((l3[2]==0 || l3[2]==1)? Colors.black : Colors.blue[300])),
                                 ),

                            ),
                            GestureDetector(
                                onTap :(){
                                       setState(() {
                                         condition(3);
                                         print('3');

                                });
                                },
                              child: Container(
                                color: Colors.blue[300],
                                child: Icon(((l3[3]==0 || l3[3]==1)?((l3[3]==1)? Icons.close : Icons.circle):Icons.ac_unit),
                                    color:((l3[3]==0 || l3[3]==1)? Colors.black : Colors.blue[300])),

                              ),

                            ), GestureDetector(
                              onTap :(){
                                setState(() {
                                  condition(4);
                                  print('4');

                                });
                              },
                              child: Container(
                                color: Colors.blue[300],
                                child: Icon(((l3[4]==0 || l3[4]==1)?((l3[4]==1)? Icons.close : Icons.circle):Icons.ac_unit),
                                    color:((l3[4]==0 || l3[4]==1)? Colors.black : Colors.blue[300])),

                              ),

                            ), GestureDetector(
                              onTap :(){
                                setState(() {
                                  condition(5);
                                  print('5');

                                });
                              },
                              child: Container(
                                color: Colors.blue[300],
                                child: Icon(((l3[5]==0 || l3[5]==1)?((l3[5]==1)? Icons.close : Icons.circle):Icons.ac_unit),
                                    color:((l3[5]==0 || l3[5]==1)? Colors.black : Colors.blue[300])),

                              ),

                            ),
                            GestureDetector(
                              onTap :(){
                                setState(() {
                                  condition(6);
                                  print('6');

                                });
                              },
                              child: Container(
                                color: Colors.blue[300],
                                child: Icon(((l3[6]==0 || l3[6]==1)?((l3[6]==1)? Icons.close : Icons.circle):Icons.ac_unit),
                                    color:((l3[6]==0 || l3[6]==1)? Colors.black : Colors.blue[300])),

                              ),

                            ),
                            GestureDetector(
                              onTap :(){
                                setState(() {
                                  condition(7);
                                  print('7');

                                });
                              },
                              child: Container(
                                color: Colors.blue[300],
                                child: Icon(((l3[7]==0 || l3[7]==1)?((l3[7]==1)? Icons.close : Icons.circle):Icons.ac_unit),
                                    color:((l3[7]==0 || l3[7]==1)? Colors.black : Colors.blue[300])),

                              ),

                            ),
                            GestureDetector(
                              onTap :(){
                                setState(() {
                                  condition(8);
                                  print('8');

                                });
                              },
                              child: Container(
                                color: Colors.blue[300],
                                child: Icon(((l3[8]==0 || l3[8]==1)?((l3[8]==1)? Icons.close : Icons.circle):Icons.ac_unit),
                                    color:((l3[8]==0 || l3[8]==1)? Colors.black : Colors.blue[300])),

                              ),

                            ),
                            GestureDetector(
                              onTap :(){
                                setState(() {
                                  condition(9);
                                  print('9');

                                });
                              },
                              child: Container(
                                color: Colors.blue[300],
                                child: Icon(((l3[9]==0 || l3[9]==1)?((l3[9]==1)? Icons.close : Icons.circle):Icons.ac_unit),
                                    color:((l3[9]==0 || l3[9]==1)? Colors.black : Colors.blue[300])),

                              ),

                            ),
                          ],

                     ),


          );
  }
}