import 'package:bloc_learning/app/counter/bloc/counter_bloc.dart';
import 'package:bloc_learning/app/counter/cubit/counter_cubit.dart';
import 'package:bloc_learning/app/counter/pages/bloc_counter_page.dart';
import 'package:bloc_learning/app/counter/pages/counter_page.dart';
import 'package:bloc_learning/app/payload-app/bloc/theme_bloc.dart';
import 'package:bloc_learning/app/payload-app/pages/theme_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CounterBloc>(create: (context) => CounterBloc()),
        BlocProvider<CounterCubit>(create: (context) => CounterCubit()),
        BlocProvider<ThemeBloc>(create: (context) => ThemeBloc()),
      ],
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'BLOC LEARNIG',
            debugShowCheckedModeBanner: false,
            theme: state.appThemeType == AppThemeType.light ? ThemeData.light() : ThemeData.dark(),
            // home: const CounterPage(),
            // home: const BlocCounterPage(),
            home: ThemePage(),
          );
        },
      ),
    );
  }
}
