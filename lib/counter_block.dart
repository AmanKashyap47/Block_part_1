import 'package:block_class_ws/counter_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBlock extends Bloc<CounterEvent,int>{

  CounterBlock():super(0){

    on<IncrementEvent>((event,emit){
      emit(state+1);
    });

    on<DecrementEvent>((event,emit){
      if(state>0){
        emit (state-1);
      }
    });


  }
}