import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Belajar Layout",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Appbar apliksi"),
          backgroundColor: Colors.deepOrange,
        ),
        body: Text("halo kawan saya belajar flutter"),
        bottomNavigationBar: Text("ini bagian bottom"),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
