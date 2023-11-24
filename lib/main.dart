import 'package:basket_ball_points_card/cubit/counter_cubit.dart';
import 'package:basket_ball_points_card/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const PointsCounter());
}

class PointsCounter extends StatelessWidget {
  const PointsCounter({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>CounterCubit(),
      child:  const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      
      ),
    );
  }
}

