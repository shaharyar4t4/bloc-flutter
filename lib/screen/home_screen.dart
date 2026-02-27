import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learningbloc/bloc/internet_bloc/internet_bloc.dart';
import 'package:learningbloc/bloc/internet_bloc/internet_state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Home Screen'),
      // ),
      body: SafeArea(
        child: Center(
          child: BlocBuilder<InternetBloc, InternetState>(
            builder: (context, state) {
              // if(state ==)
              // == to check value is equal or not
              // "is" to check data type ( a is int) agar a ki 2( means int ha ) tu is ka matlab ap ka datatype int me ha.. 

              if( state is InternetGainedState){
                return Text("Connected");
              }else if(state is InternetLostState){
                return Text("Lost the Connection");
              }else{
                return Text("Loading...");
              }
            },
          ),
        ),
      ),
    );
  }
}
