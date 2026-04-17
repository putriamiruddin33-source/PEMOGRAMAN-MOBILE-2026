import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // ini sudah benar

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 56, 190, 163),
        title: const Text("Aplikasi PutriPute"),
        centerTitle: true,
        leading: const Icon(Icons.home),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/gambarku.jpeg",
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),
            Container(
              color: const Color.fromARGB(255, 60, 206, 232),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Wisata Tanah TORAJA",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Objek Wisata Kolam Tilanga TORAJA",
                              style: TextStyle(
                                color: Color.fromARGB(255, 158, 158, 158),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Icon(Icons.star,
                                color: Color.fromARGB(255, 7, 255, 247)),
                            SizedBox(width: 4),
                            Text(
                              "4.8",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Column(
                          children: [
                            Icon(Icons.call,
                                color: Colors.white, size: 28),
                            SizedBox(height: 5),
                            Text(
                              "CALL",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.navigation,
                                color: Colors.pinkAccent, size: 28),
                            SizedBox(height: 5),
                            Text(
                              "ROUTE",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.share,
                                color: Colors.lime, size: 28),
                            SizedBox(height: 5),
                            Text(
                              "SHARE",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  // ✅ FIX STRING MULTILINE
                  const Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      """Di sebuah sudut indah Kolam Tilanga, airnya yang jernih berwarna biru kehijauan memantulkan cahaya matahari yang menembus pepohonan rindang. Seorang pengunjung dengan ransel besar berdiri di tepi batu, menutup wajahnya sambil tersenyum, antara rasa lelah dan kagum akan keindahan alam di hadapannya.

Di kejauhan, terlihat seseorang melompat dari tepi batu ke dalam kolam, menikmati kesegaran air alami yang begitu tenang. Suasana di sana terasa damai, hanya suara gemericik air dan desiran angin yang menemani.

Kolam Tilanga bukan sekadar tempat wisata, tapi juga tempat untuk melepas penat, menyatu dengan alam, dan menyimpan momen sederhana yang tak terlupakan. Pemandangan ini mencerminkan harmoni antara manusia dan alam, serta kebahagiaan yang lahir dari kesederhanaan. Suasana dalam gambar ini menghadirkan rasa damai yang sulit ditemukan di tempat lain.""",
                      textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
