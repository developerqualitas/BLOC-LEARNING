import 'package:bloc_learning/app/counter/pages/counter_page.dart';
import 'package:flutter/material.dart';

class OtherPage extends StatelessWidget {
  const OtherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Other Page")),
        body: Center(
          child: TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => CounterPage()),
              );
            },
            child: Text("Go Back"),
          ),
        ),
      ),
    );
  }
}
