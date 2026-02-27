import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learningbloc/bloc/internet_bloc/internet_event.dart';
import 'package:learningbloc/bloc/internet_bloc/internet_state.dart';

class InternetBloc extends Bloc<InternetEvent, InternetState> {

  // constructor
  InternetBloc(): super(InternetInitialState()){

    //on is basically to check "Jab Internet lost hoga to ye ON chala ga"
    on<InternetLostEvent>((event, emit) => null);
    
    // on is basically to check "Jab Internet gain hoga to ye ON chala ga"
    on<InternetGainedEvent>((event, emit) => null);

  }
}