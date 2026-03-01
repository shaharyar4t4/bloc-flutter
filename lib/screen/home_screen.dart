import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learningbloc/cubits/internet_cubit/internet_cubit.dart';

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
          // Bloc builder is helps to build the widget..
          // Bloc Listern is helps to create the Snacke bar widget..
          // Consumer doing the both work like (builder, and listen)
          // child: BlocConsumer<InternetBloc, InternetState>(
          child: BlocConsumer<InternetCubit, InternetState>(

            listener: (context, state) {
              // if (state is InternetGainedState) {
             if (state == InternetState.Gained) {

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Internet Connected!"),
                    backgroundColor: Colors.green,
                  ),
                );
              // } else if (state is InternetLostState) {
              } else if (state == InternetState.Lost) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Lost the Connection!"),
                    backgroundColor: Colors.red,
                  ),
                );
              }
            },
            builder: (context, state) {
              // if (state is InternetGainedState) {
            if (state == InternetState.Gained) {

                return Text("Connected");
              // } else if (state is InternetLostState) {
              } else if (state == InternetState.Lost) {

                return Text("Lost the Connection");
              } else {
                return Text("Loading...");
              }
            },
          ),

          // only for builder
          // child: BlocBuilder<InternetBloc, InternetState>(
          //   builder: (context, state) {
          //     // if(state ==)
          //     // == to check value is equal or not
          //     // "is" to check data type ( a is int) agar a ki 2( means int ha ) tu is ka matlab ap ka datatype int me ha..

          //     if( state is InternetGainedState){
          //       return Text("Connected");
          //     }else if(state is InternetLostState){
          //       return Text("Lost the Connection");
          //     }else{
          //       return Text("Loading...");
          //     }
          //   },
          // ),
        ),
      ),
    );
  }
}
