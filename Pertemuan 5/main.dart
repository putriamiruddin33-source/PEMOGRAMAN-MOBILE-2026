import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Kesehatan',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Healthy App'),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.favorite, size: 80, color: Colors.red),

              SizedBox(height: 30),

              // 🔽 JUDUL
              Text(
                'Selamat Datang di Aplikasi Kesehatan',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 15),

              // 🔽 DESKRIPSI
              Text(
                'Aplikasi ini membantu Anda menjaga kesehatan dan gaya hidup sehat setiap hari.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),

              SizedBox(height: 25),

              Text(
                'Tetap Sehat 💪',
                style: TextStyle(
                  fontSize: 14,
                  fontStyle: FontStyle.italic,
                  color: Colors.grey[700],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
