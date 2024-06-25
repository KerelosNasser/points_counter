import 'package:flutter/material.dart';

void main() {
  runApp( CounterApp());
 }

class CounterApp  extends StatefulWidget {
  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int TeamApoints = 0;

  int TeamBpoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Text('points counter'),),
        body:
         Column(
           children: [
             const Spacer(
               flex: 9,
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children:[

                 Column(

                   children: [

                     const Text('Team A',style: TextStyle(
                         fontSize: 34,
                         color: Colors.black87
                     ),),
                      Text('$TeamApoints',style: const TextStyle(
                         fontSize: 120,
                         color: Colors.black87
                     ),),
                     ElevatedButton(onPressed: (){
                       TeamApoints ++;
                       setState(() {

                       });
                     },
                         style: ElevatedButton.styleFrom(
                           fixedSize: const Size(140, 30),
                         ),
                         child: const Text('add 1 point'
                           ,style: TextStyle(
                               fontSize: 14,
                               color: Colors.black87
                           ),)),
                     const SizedBox(
                       height: 16,
                     ),

                     ElevatedButton(onPressed: (){
                       TeamApoints += 2;
                       setState(() {

                       });

                     },
                         style: ElevatedButton.styleFrom(
                           fixedSize: const Size(140, 30),
                         ),
                         child: const Text('add 2 point'
                           ,style: TextStyle(
                               fontSize: 16,
                               color: Colors.black87
                           ),)),
                     const SizedBox(
                       height: 16,
                     ),

                     ElevatedButton(onPressed: (){
                       TeamApoints += 3;
                       setState(() {

                       });
                     },
                         style: ElevatedButton.styleFrom(
                           fixedSize: const Size(140, 30),
                         ),
                         child: const Text('add 3 point'
                           ,style: TextStyle(
                               fontSize: 18,
                               color: Colors.black87
                           ),)),
                     const SizedBox(
                       height: 16,
                     ),
                   ],
                 ),
                const SizedBox(
                  height: 500,
                  child: VerticalDivider(
                    thickness: 2,
                      width: 60,
                    endIndent: 60,
                    indent: 60,
                  ),
                ),
                 Column(
                   children: [
                     const Text('Team b',style: TextStyle(
                       fontSize: 34,
                       color: Colors.black87
                     ),),
                      Text('$TeamBpoints',style: const TextStyle(
                         fontSize: 120,
                         color: Colors.black87
                     ),),
                     ElevatedButton(onPressed: (){
                       TeamBpoints ++;
                       setState(() {});
                     },
                     style: ElevatedButton.styleFrom(
                       fixedSize: const Size(140, 30),
                     ),
                         child: const Text('add 1 point'
                           ,style: TextStyle(
                               fontSize: 14,
                               color: Colors.black87
                           ),)),
                     const SizedBox(
                       height: 16,
                     ),

                     ElevatedButton(onPressed: (){
                       TeamBpoints += 2;
                       setState(() {

                       });
                     },
                         style: ElevatedButton.styleFrom(
                           fixedSize: const Size(140, 30),
                         ),
                         child: const Text('add 2 point'
                           ,style: TextStyle(
                               fontSize: 16,
                               color: Colors.black87
                           ),)),
                     const SizedBox(
                       height: 16,
                     ),

                     ElevatedButton(onPressed: (){
                       TeamBpoints += 3;
                       setState(() {

                       });
                     },
                         style: ElevatedButton.styleFrom(
                           fixedSize: const Size(140, 30),
                         ),
                         child: const Text('add 3 point'
                           ,style: TextStyle(
                             fontSize: 18,
                             color: Colors.black87
                           ),)),
                     const SizedBox(
                       height: 16,
                     ),
                   ],
                 ),
               ],
             ),
             const Spacer(
               flex: 3,
             ),
             SizedBox(
               height: 50,
               child: ElevatedButton(onPressed: (){
                 TeamApoints = 0;
                 TeamBpoints = 0;
                 setState(() {

                 });
               },
                   style: ElevatedButton.styleFrom(
                     fixedSize: const Size(140, 30),
                   ),
                   child: const Text('Reset'
                     ,style: TextStyle(
                         fontSize: 23,
                         color: Colors.black87
                     ),)),
             ),
             const Spacer(flex: 60,)
           ],
         ),
      ),
    );
  }
}


