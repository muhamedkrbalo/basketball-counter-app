import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int countTeamA=0;
  int countTeamB=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title:const Text("Points Counter"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children:  [
                  const Text("Team A",style: TextStyle(fontSize: 32),),
                  if (countTeamA>100)
                  const SizedBox(height: 50,),

                   Text("$countTeamA",style: countTeamA<100? const TextStyle( fontSize: 150):const TextStyle( fontSize: 40)),
                  MaterialButton(
                    color: Colors.orange,
                    onPressed: (){
                       setState(() {
                        countTeamA++;
                      });
                    },
                  child:const Text("Add 1 point",style: TextStyle(fontSize: 14,color: Colors.black),) ,
                  ),
                  const SizedBox(height: 20,),
                  MaterialButton(
                    color: Colors.orange,
                    onPressed: (){
                       setState(() {
                        countTeamA =countTeamA+2;
                      });
                    },
                  child:const Text("Add 2 point",style: TextStyle(fontSize: 14,color: Colors.black),) ,
                  ),
                  const SizedBox(height: 20,),
                  MaterialButton(
                    color: Colors.orange,
                    onPressed: (){
                      setState(() {
                        countTeamA=countTeamA+3;
                      });
                    },
                  child:const Text("Add 3 point",style: TextStyle(fontSize: 14,color: Colors.black),) ,
                  ),
                  const SizedBox(height: 20,)
                  
                
                ],
              ),
           const SizedBox(
             height: 350,
             child: VerticalDivider(
              color: Colors.grey,
              thickness: 1,
             ),
           ),
              Column(
                children:  [
                  const Text("Team B",style: TextStyle(fontSize: 32),),
                  if (countTeamB>100)
                  const SizedBox(height: 50,),
                   Text("$countTeamB",style: countTeamB<100? const TextStyle( fontSize: 150):const TextStyle( fontSize: 40)),
                  MaterialButton(
                    color: Colors.orange,
                    onPressed: (){
                      setState(() {
                        countTeamB++;
                      });
                    },
                  child:const Text("Add 1 point",style: TextStyle(fontSize: 14,color: Colors.black),) ,
                  ),
                  const SizedBox(height: 20,),
                  MaterialButton(
                    color: Colors.orange,
                    onPressed: (){
                      setState(() {
                        countTeamB= countTeamB + 2;
                      });
                    },
                  child:const Text("Add 2 point",style: TextStyle(fontSize: 14,color: Colors.black),) ,
                  ),
                  const SizedBox(height: 20,),
                  MaterialButton(
                    color: Colors.orange,
                    onPressed: (){
                      setState(() {
                        countTeamB=countTeamB + 3;
                      });
                    },
                  child:const Text("Add 3 point",style: TextStyle(fontSize: 14,color: Colors.black),) ,
                  ),
                  const SizedBox(height: 20,)
                  
                 
                ],
              ),
              
            ],
          ),
        const SizedBox(height: 50,),
                  MaterialButton(
                    color: Colors.orange,
                    onPressed: (){
                      setState(() {
                        countTeamA=0;
                        countTeamB=0;
                      });
                    },
                  child:const Text("Reset",style: TextStyle(fontSize: 14,color: Colors.black),) ,
                  ),
        ],
      ),
    );
  }
}