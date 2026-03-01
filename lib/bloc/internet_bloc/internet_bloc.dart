// import 'dart:async';

// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:learningbloc/bloc/internet_bloc/internet_event.dart';
// import 'package:learningbloc/bloc/internet_bloc/internet_state.dart';

// // jab koi screen khatam hoti ha tu bloc automatically close hoti ha but ".listen" close nhi is ko handing karna kiya hum use karta ha streamsubscription ko..
// class InternetBloc extends Bloc<InternetEvent, InternetState> {
//   // this comes form the Packages
//   final Connectivity _connectivity = Connectivity();
//   StreamSubscription<List<ConnectivityResult>>? connectivitySubscription;

//   // constructor
//   InternetBloc() : super(InternetInitialState()) {
//     //on is basically to check "Jab Internet lost hoga to ye ON chala ga"
//     // emit is back to transfer the data to UI
//     on<InternetLostEvent>((event, emit) => emit(InternetLostState()));

//     // on is basically to check "Jab Internet gain hoga to ye ON chala ga"
//     // emit is back to transfer the data to UI
//     on<InternetGainedEvent>((event, emit) => emit(InternetGainedState()));

//     _connectivity.checkConnectivity().then(_handleConnectivityResults);

//     connectivitySubscription =
//         _connectivity.onConnectivityChanged.listen(_handleConnectivityResults);
//   }

//   void _handleConnectivityResults(List<ConnectivityResult> results) {
//     final hasConnection = results.contains(ConnectivityResult.mobile) ||
//         results.contains(ConnectivityResult.wifi) ||
//         results.contains(ConnectivityResult.ethernet) ||
//         results.contains(ConnectivityResult.vpn) ||
//         results.contains(ConnectivityResult.bluetooth) ||
//         results.contains(ConnectivityResult.other);

//     if (hasConnection) {
//       add(InternetGainedEvent());
//     } else {
//       add(InternetLostEvent());
//     }
//   }

//   // ye function is time work karti jab ap bloc(me screen) close hoti 
//   @override
//   Future<void> close() {
//     connectivitySubscription?.cancel();
//     return super.close();
//   }
// }
