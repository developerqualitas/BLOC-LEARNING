import 'package:flutter/material.dart';


class BlocToBlocStreamsubscription extends StatelessWidget {
  const BlocToBlocStreamsubscription({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.deepPurpleAccent,
        appBar: AppBar(title: Text("Bloc to Bloc Stream Communication")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 30,
            children: [
              Text(
                "0",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: [
                  OutlinedButton.icon(
                    
                    onPressed: () {},
                    label: Text(
                      "Change Color",
                      style: TextStyle(color: Colors.white),
                    ),
                    icon: Icon(Icons.color_lens, color: Colors.white),
                  ),
                  OutlinedButton.icon(
                    onPressed: () {},
                    label: Text(
                      "Increment Count",
                      style: TextStyle(color: Colors.white),
                    ),
                    icon: Icon(Icons.add, color: Colors.white),
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
