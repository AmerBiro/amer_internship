import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Amer Internship test"),
      ),
        body: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(onPressed: (){}, child: const Text("Teleport me to somewhere random")),
              ElevatedButton(onPressed: (){}, child: const Text("Bring me back home")),
            ],
          ),
        ),

    );
  }
}
