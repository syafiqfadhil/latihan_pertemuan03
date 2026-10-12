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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FontTextWidget(),
              SizedBox(height: 40,), //untu pembatas

              DecorationTextWidget(),
              SizedBox(height: 40),
              
              AlignmentTextWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class AlignmentTextWidget extends StatelessWidget{
  const AlignmentTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(),
      ),

      child: const Column(
        children: [
          Text(
            'Kiri',
            textAlign: TextAlign.left,
          ),

          Text(
            'Tengah',
            textAlign: TextAlign.center,
          ),

          Text(
            'Right',
            textAlign: TextAlign.right,
          ),

          Text(
            'Justify: Flutter adalah framework'
            'untuk membuat aplikasi menggunakan'
            'satu codebase',
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}

class DecorationTextWidget extends StatelessWidget {
  const DecorationTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Underline',
          style: TextStyle(
            fontSize: 20,
            decoration: TextDecoration.underline,
          ),
        ),

        SizedBox(height: 15,),

        Text(
          'Line Through',
          style: TextStyle(
            fontSize: 20,
            decoration: TextDecoration.lineThrough,
          ),
        ),

        SizedBox(height: 15,),

        Text(
          'Background',
          style: TextStyle(
            fontSize: 20,
            backgroundColor: Colors.blue,
          ),
        ),

        Text(
          'Text Shadow',
          style: TextStyle(
            fontSize: 30,
            shadows: [
              Shadow(
                offset: Offset(3,3),
                blurRadius: 5,
              ),
            ],
          ),
        )
      ],
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
