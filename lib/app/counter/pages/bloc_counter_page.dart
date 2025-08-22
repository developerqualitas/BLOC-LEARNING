import 'package:bloc_learning/app/counter/bloc/counter_bloc.dart';
import 'package:bloc_learning/app/counter/pages/other_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocCounterPage extends StatelessWidget {
  const BlocCounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Counter Bloc"),
          centerTitle: true,
          elevation: 0,
        ),

        // ? This Make Using BlocConsumer
        // body: BlocConsumer<CounterBloc, CounterState>(
        //   listener: (context, state) {
        //     if (state.counter == 5) {
        //       showDialog(
        //         context: context,
        //         builder: (context) {
        //           return AlertDialog(
        //             content: Text("Count Is : ${state.counter}"),
        //           );
        //         },
        //       );
        //     } else if (state.counter == -1) {
        //       Navigator.push(
        //         context,
        //         MaterialPageRoute(builder: (context) => OtherPage()),
        //       );
        //     }
        //   },

        //   builder: (context, state) {
        //     return Padding(
        //       padding: const EdgeInsets.all(16.0),
        //       child: Column(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           const Text(
        //             "Current Value",
        //             style: TextStyle(
        //               fontSize: 20,
        //               color: Colors.grey,
        //               fontWeight: FontWeight.w500,
        //             ),
        //           ),
        //           const SizedBox(height: 10),
        //           Text(
        //             " ${context.read<CounterBloc>().state.counter}",
        //             style: TextStyle(
        //               fontSize: 60,
        //               fontWeight: FontWeight.bold,
        //               color: Colors.blueAccent,
        //             ),
        //           ),
        //           const SizedBox(height: 40),
        //           Row(
        //             mainAxisAlignment: MainAxisAlignment.center,
        //             children: [
        //               // Decrement Button
        //               ElevatedButton(
        //                 onPressed: () {
        //                    context.read<CounterBloc>().add(DecrementCounterEvent(),);
        //                 },
        //                 style: ElevatedButton.styleFrom(
        //                   shape: const CircleBorder(),
        //                   padding: const EdgeInsets.all(20),
        //                   backgroundColor: Colors.redAccent,
        //                   foregroundColor: Colors.white,
        //                   elevation: 4,
        //                 ),
        //                 child: const Icon(Icons.remove, size: 30),
        //               ),
        //               const SizedBox(width: 20),
        //               // Increment Button
        //               ElevatedButton(
        //                 onPressed: () {
        //                                               context.read<CounterBloc>().add(IncrementCounterEvent());

        //                 },
        //                 style: ElevatedButton.styleFrom(
        //                   shape: const CircleBorder(),
        //                   padding: const EdgeInsets.all(20),
        //                   backgroundColor: Colors.green,
        //                   foregroundColor: Colors.white,
        //                   elevation: 4,
        //                 ),
        //                 child: const Icon(Icons.add, size: 30),
        //               ),
        //             ],
        //           ),
        //         ],
        //       ),
        //     );
        //   },
        // ),

        // ? This Make Using BLocListener & BlocBuilder
        body: BlocListener<CounterBloc, CounterState>(
          listener: (context, state) {
            if (state.counter == 5) {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content: Text("Count Is : ${state.counter}"),
                  );
                },
              );
            } else if (state.counter == -1) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OtherPage()),
              );
            }
          },
          child: BlocBuilder<CounterBloc, CounterState>(
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Current Value",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      " ${context.read<CounterBloc>().state.counter}",
                      style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
                    ),
                    const SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Decrement Button
                        ElevatedButton(
                          onPressed: () {
                            context.read<CounterBloc>().add(
                              DecrementCounterEvent(),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            padding: const EdgeInsets.all(20),
                            backgroundColor: Colors.redAccent,
                            foregroundColor: Colors.white,
                            elevation: 4,
                          ),
                          child: const Icon(Icons.remove, size: 30),
                        ),
                        const SizedBox(width: 20),
                        // Increment Button
                        ElevatedButton(
                          onPressed: () {
                            context.read<CounterBloc>().add(
                              IncrementCounterEvent(),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            padding: const EdgeInsets.all(20),
                            backgroundColor: Colors.green,
                            foregroundColor: Colors.white,
                            elevation: 4,
                          ),
                          child: const Icon(Icons.add, size: 30),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
