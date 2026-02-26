import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learningbloc/bloc/internet_bloc/internet_event.dart';
import 'package:learningbloc/bloc/internet_bloc/internet_state.dart';

class InternetBloc extends Bloc<InternetEvent, InternetState> {

  // constructor
  InternetBloc(): super( InternetInitialState()){}
}