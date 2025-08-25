import 'package:bloc_learning/app/counter/bloc/counter_bloc.dart';
import 'package:bloc_learning/app/counter/cubit/counter_cubit.dart';
import 'package:bloc_learning/app/cubit2cubit_bloc2bloc_streamsubscription/cubits/color_cubit/color_cubit.dart';
import 'package:bloc_learning/app/cubit2cubit_bloc2bloc_streamsubscription/cubits/counter_cubit/counter_cubit.dart';
import 'package:bloc_learning/app/cubit2cubit_bloc2bloc_streamsubscription/pages/bloc_to_bloc_streamsubscription.dart';
import 'package:bloc_learning/app/cubit2cubit_bloc2bloc_streamsubscription/pages/cubit_to_cubit_streamsubscription.dart';
import 'package:bloc_learning/app/cubit2cubit_bloc2bloc_listener/cubits/color_cubit/color_listener_cubit.dart';
import 'package:bloc_learning/app/cubit2cubit_bloc2bloc_listener/cubits/counter_cubit/counter_listnener_cubit.dart';
import 'package:bloc_learning/app/cubit2cubit_bloc2bloc_listener/pages/cubit2cubit_listener_screen.dart';
import 'package:bloc_learning/app/payload-app/bloc/theme_bloc.dart';
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

        // cubit 2 cubit with subscription
        BlocProvider<ColorCubit>(create: (context) => ColorCubit()),
        BlocProvider<CounterCubit2Cubit>(
          create:
              (context) =>
                  CounterCubit2Cubit(colorCubit: context.read<ColorCubit>()),
        ),

        // cubit 2 cubit with listener
        BlocProvider<ColorListenerCubit>(
          create: (context) => ColorListenerCubit(),
        ),
        BlocProvider<CounterListnenerCubit>(
          create: (context) => CounterListnenerCubit(),
        ),
      ],
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'BLOC LEARNIG',
            debugShowCheckedModeBanner: false,
            theme:
                state.appThemeType == AppThemeType.light
                    ? ThemeData.light()
                    : ThemeData.dark(),
            // home: const CounterPage(),
            // home: const BlocCounterPage(),
            home: BlocToBlocStreamsubscription(),
          );
        },
      ),
    );
  }
}
