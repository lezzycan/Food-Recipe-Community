import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static Future<void> show(BuildContext context) async{
    await Navigator.of(context).push(MaterialPageRoute(builder: ((context) {
      return const HomePage();
    })));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My home',),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
      ),
      backgroundColor: Colors.red,
    );
  }
}