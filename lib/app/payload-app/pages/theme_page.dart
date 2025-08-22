import 'dart:math';

import 'package:bloc_learning/app/payload-app/bloc/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemePage extends StatelessWidget {
  const ThemePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Theme"),
          centerTitle: true,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.color_lens_outlined,
                  size: 60,
                  color: Colors.blueAccent,
                ),
                const SizedBox(height: 20),
                Text("if odd number theme will dark other wise light"),
                const Text(
                  "Click below to change theme.",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40),
                ElevatedButton.icon(
                  onPressed: () {
                    final int randomeInt = Random().nextInt(10);
                    debugPrint("Genrated Value : $randomeInt");

                    context.read<ThemeBloc>().add(ChangeThemeEvent(randomeInt: randomeInt));
                  },
                  icon: const Icon(Icons.brightness_6, size: 26),
                  label: const Text(
                    "Change Theme",
                    style: TextStyle(fontSize: 18),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      vertical: 14,
                      horizontal: 28,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 4,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
