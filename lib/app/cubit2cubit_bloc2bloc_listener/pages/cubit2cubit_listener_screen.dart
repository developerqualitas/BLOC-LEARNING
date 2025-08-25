import 'dart:ui';

import 'package:bloc_learning/app/cubit2cubit_bloc2bloc_streamsubscription/cubits/color_cubit/color_cubit.dart';
import 'package:bloc_learning/app/cubit2cubit_bloc2bloc_listener/cubits/color_cubit/color_listener_cubit.dart';
import 'package:bloc_learning/app/cubit2cubit_bloc2bloc_listener/cubits/counter_cubit/counter_listnener_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Cubit2cubitListenerScreen extends StatelessWidget {
   Cubit2cubitListenerScreen({super.key});
 int incrementSize = 1;
  @override
  Widget build(BuildContext context) {
   
    return SafeArea(
      child: Scaffold(
        backgroundColor: context.watch<ColorListenerCubit>().state.color,
        appBar: AppBar(title: Text("Cubit 2 Cubit Communication")),
        body: BlocListener<ColorListenerCubit, ColorListenerState>(
          listener: (context, state) {
            if (state.color == Colors.white) {
              incrementSize = 1;
            } else if (state.color == Colors.green) {
              incrementSize = 10;
            } else if (state.color == Colors.blue) {
              incrementSize = 100;
            } else if (state.color == Colors.black) {
              context.read<CounterListnenerCubit>().incrementCounter(-100);
              incrementSize = -100;
            }
          },
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Counter ${context.watch<CounterListnenerCubit>().state.counter}",
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        context.read<ColorListenerCubit>().changeColor();
                      },
                      child: Text("Change Color"),
                    ),

                    OutlinedButton(
                      onPressed: () {
                        context.read<CounterListnenerCubit>().incrementCounter(
                          incrementSize,
                        );
                      },
                      child: Text("Increment Counter"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
