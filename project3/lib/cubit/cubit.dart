import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project3/cubit/counter_state.dart';

class CounterCubit extends Cubit<CounterState>{
  CounterCubit() :super(CounterA());
  int counta=0,countb=0;
void Teamincrement({required String Team,required int num}){
if(Team=='A'&&num>0){
  counta+=num;
  emit(CounterA());
}

else{
   countb+=num;
  emit(CounterB());
}



}


  

}