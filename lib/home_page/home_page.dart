import 'package:basket_ball_points_card/cubit/counter_cubit.dart';
import 'package:basket_ball_points_card/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
   const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit,CounterIncrementState>(
      listener:(context, state){
        
      } ,
      builder: (BuildContext context, state) {
        return  Scaffold(
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
                    const Text("Team A",
                    style: TextStyle(fontSize: 32),),
                   
      
                     Text('${BlocProvider.of<CounterCubit>(context).countTeamA}'
                      ,style: const TextStyle( fontSize: 150)),
                    MaterialButton(
                      color: Colors.orange,
                      onPressed: (){
                         BlocProvider.of<CounterCubit>(context).teamIncremint(team: 'A', buttonNumber: 1);
                      },
                    child:const Text("Add 1 point",style: TextStyle(fontSize: 14,color: Colors.black),) ,
                    ),
                    const SizedBox(height: 20,),
                    MaterialButton(
                      color: Colors.orange,
                      onPressed: (){
               BlocProvider.of<CounterCubit>(context).teamIncremint(team: 'A', buttonNumber: 2);

                      },
                    child:const Text("Add 2 point",style: TextStyle(fontSize: 14,color: Colors.black),) ,
                    ),
                    const SizedBox(height: 20,),
                    MaterialButton(
                      color: Colors.orange,
                      onPressed: (){
               BlocProvider.of<CounterCubit>(context).teamIncremint(team: 'A', buttonNumber: 3);
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
                   
                     Text('${BlocProvider.of<CounterCubit>(context).countTeamB}',
                     style: const TextStyle( fontSize: 150)),
                    MaterialButton(
                      color: Colors.orange,
                      onPressed: (){
               BlocProvider.of<CounterCubit>(context).teamIncremint(team: 'B', buttonNumber: 1);

                      },
                    child:const Text("Add 1 point",style: TextStyle(fontSize: 14,color: Colors.black),) ,
                    ),
                    const SizedBox(height: 20,),
                    MaterialButton(
                      color: Colors.orange,
                      onPressed: (){
               BlocProvider.of<CounterCubit>(context).teamIncremint(team: 'B', buttonNumber: 2);
                      },
                    child:const Text("Add 2 point",style: TextStyle(fontSize: 14,color: Colors.black),) ,
                    ),
                    const SizedBox(height: 20,),
                    MaterialButton(
                      color: Colors.orange,
                      onPressed: (){
               BlocProvider.of<CounterCubit>(context).teamIncremint(team: 'B', buttonNumber: 1);
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
       BlocProvider.of<CounterCubit>(context).countTeamA=0;
       BlocProvider.of<CounterCubit>(context).countTeamB=0;

                      },
                    child:const Text("Reset",style: TextStyle(fontSize: 14,color: Colors.black),) ,
                    ),
          ],
        ),
      );
   
        },
      );
  }
}