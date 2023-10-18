import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: GaleriFoto(),
    );
  }
}

class GaleriFoto extends StatelessWidget {
  const GaleriFoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Galeri Foto'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(11),
            child: Image.network('https://picsum.photos/id/88/300/200',
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 450,
            height: 50,
            child: Text('Jalan di Barcelona',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            height: 1,
            width: 1500,
            decoration: const BoxDecoration(
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            height: 10,
            width: 10,),
          const Row(
            children: [
              Icon(Icons.place, color: Colors.red,
              ),
              Text('Lokasi: Barcelona, Spanyol'),
            ],
          ),
          const SizedBox(
            height: 10,
            width: 10,),
          const Row(
            children: [
              Icon(Icons.calendar_month, color: Colors.blue,
              ),
              Text('Publikasi 13 Agustus 2013'),
            ],
          ),
          const SizedBox(
            height: 10,
            width: 10,),
          Container(
            height: 1,
            width: 1500,
            decoration: const BoxDecoration(
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            height: 10,
            width: 10,
          ),
          Container(
            height: 25,
            width: 1500,
              child: Text('Deskripsi',
              style: TextStyle(
                fontSize: 22,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
          Container(
            height: 70,
            child: const Center(
              child: Text('Sebuah persimpangan jalan di Barcelona, Spanyol. '
                  'Foto ini menampilkan berbagai kendaraan yang bergerak '
                  'dalam arah yang berbeda, menciptakan pemandangan '
                  'yang sibuk dan energik.',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}