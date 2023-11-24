import 'package:basket_ball_points_card/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterIncrementState>{ 
   CounterCubit():super(CounterAIncrementState());

  int countTeamA=0;
  int countTeamB=0;

  
  void teamIncremint({required String team,required int buttonNumber}){
    if(team=='A'){
      countTeamA +=buttonNumber;
    emit(CounterAIncrementState());
    }else{
      countTeamB +=buttonNumber;
    emit(CounterBIncrementState());
    }
    
  }
}