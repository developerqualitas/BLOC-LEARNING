import 'package:bloc_learning/app/cubit2cubit_bloc2bloc_streamsubscription/cubits/color_cubit/color_cubit.dart';
import 'package:bloc_learning/app/cubit2cubit_bloc2bloc_streamsubscription/cubits/counter_cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitToCubitStreamsubscription extends StatelessWidget {
  const CubitToCubitStreamsubscription({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: context.watch<ColorCubit>().state.color,
        appBar: AppBar(title: Text("Cubit to Cubit Communication")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 30,
            children: [
              Text(
                context.watch<CounterCubit2Cubit>().state.counter.toString(),
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold,color: Colors.white),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: [
                  OutlinedButton.icon(
                    onPressed: () {
                      context.read<ColorCubit>().changeColor();
                    },
                    label: Text(
                      "Change Color",
                      style: TextStyle(color: Colors.white,),
                    ),
                    icon: Icon(Icons.color_lens, color: Colors.white,),
                  ),
                  OutlinedButton.icon(
                    onPressed: () {
                      context.read<CounterCubit2Cubit>().changeCounter();
                    },
                    label: Text(
                      "Increment Count",
                      style: TextStyle(color: Colors.white),
                    ),
                    icon: Icon(Icons.add, color: Colors.white,),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
