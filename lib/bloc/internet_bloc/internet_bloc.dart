import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learningbloc/bloc/internet_bloc/internet_event.dart';
import 'package:learningbloc/bloc/internet_bloc/internet_state.dart';

// jab koi screen khatam hoti ha tu bloc automatically close hoti ha but ".listen" close nhi is ko handing karna kiya hum use karta ha streamsubscription ko..
class InternetBloc extends Bloc<InternetEvent, InternetState> {
  // this comes form the Packages
  Connectivity _connectivity = Connectivity();
  StreamSubscription? connectivitySubscription;

  // constructor
  InternetBloc() : super(InternetInitialState()) {
    //on is basically to check "Jab Internet lost hoga to ye ON chala ga"
    // emit is back to transfer the data to UI
    on<InternetLostEvent>((event, emit) => emit(InternetLostState()));

    // on is basically to check "Jab Internet gain hoga to ye ON chala ga"
    // emit is back to transfer the data to UI
    on<InternetGainedEvent>((event, emit) => emit(InternetGainedState()));

   connectivitySubscription = _connectivity.onConnectivityChanged.listen((result) {
      // if user agr connect ho mobile ye wifi se tu ye statement chali gi....
      if (result == ConnectivityResult.mobile ||
          result == ConnectivityResult.wifi) {
        add(InternetGainedEvent());
      } else {
        add(InternetLostEvent());
      }
    });
  }

  // ye function is time work karti jab ap bloc(me screen) close hoti 
  @override
  Future<void> close() {
    connectivitySubscription?.cancel();
    return super.close();
  }
}
