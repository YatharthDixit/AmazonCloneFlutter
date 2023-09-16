import 'package:flutter/material.dart';

class MyGurukul extends StatelessWidget {
  const MyGurukul({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Stack and Positioned Widget")),
      body: SafeArea(
          child: Center(
        child: SizedBox(
          height: 300,
          width: 300,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  decoration: BoxDecoration(color: Colors.purple),
                  height: 150,
                  width: 150,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  decoration: BoxDecoration(color: Colors.red),
                  height: 150,
                  width: 150,
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  decoration: BoxDecoration(color: Colors.black),
                  height: 150,
                  width: 150,
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
