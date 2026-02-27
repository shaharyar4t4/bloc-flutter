import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learningbloc/bloc/internet_bloc/internet_bloc.dart';
import 'package:learningbloc/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      // the create line means Internet Bloc avilable raha ga me app me khehe bha chala jayo
      create: (context) => InternetBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Bloc',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: HomeScreen(),
      ),
    );
  }
}

