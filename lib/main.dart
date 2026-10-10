import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // untk menghilangkan label debug
      title: "Belajar Layout",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Belajar - Font Text"),
          backgroundColor: Colors.lightBlueAccent,
        ),

        body: const Padding(
          padding: EdgeInsets.all(
            16.0,
          ), //memberikn padding dikit 
          child: FontTextWidget(),
        ),
      ),
    );
  }
}

class FontTextWidget extends StatelessWidget {
  const FontTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Ini teks normal', style: TextStyle(fontSize: 20)),

        // Memberi jarak dikit antar teks
        SizedBox(height: 10),

        Text(
          'Kalo ini bold',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),

        SizedBox(height: 10),

        Text(
          'Ini Semi bold',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),

        SizedBox(height: 10),

        Text(
          'Kalo ini italic',
          style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
        ),
      ],
    );
  }
}
