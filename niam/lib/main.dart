import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello World App'),
        ),
        backgroundColor:
            Colors.green, // Ubah warna latar belakang menjadi hijau
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TeksUtama(
                teks1: 'GIAS GARDA PAMUNGKAS',
                teks2: 'STI202102533',
              ),
              TeksUtama(
                teks1: 'LUKMAN FAOZI',
                teks2: 'STI202102540',
              ),
              TeksUtama(
                teks1: 'NIAM ABDALLAH NAWAF',
                teks2: 'STI202102557',
              ),
              TeksUtama(
                teks1: 'MUHAMMAD KHOERUL ANAM',
                teks2: 'STI202102561',
              ),
              TeksUtama(
                teks1: 'UMU HANIFAH',
                teks2: 'STI202102563',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TeksUtama extends StatelessWidget {
  final String teks1;
  final String teks2;

  const TeksUtama({
    Key? key,
    required this.teks1,
    required this.teks2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          teks1,
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          teks2,
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 16,
            color: Color.fromARGB(255, 194, 8, 8),
          ),
        ),
        SizedBox(height: 20), // Spasi antar teks
      ],
    );
  }
}
