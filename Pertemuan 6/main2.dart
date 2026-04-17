import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// ================= ROOT APP =================
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

// ================= MODEL =================
class BajuAdat {
  final String nama;
  final String gambar;
  final String deskripsi;

  const BajuAdat({
    required this.nama,
    required this.gambar,
    required this.deskripsi,
  });
}

// ================= HALAMAN UTAMA =================
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<BajuAdat> data = const [
      BajuAdat(
        nama: "Baju Adat Bugis",
        gambar: "assets/adat_bugis.jpeg",
        deskripsi:
            "Baju Bodo adalah pakaian adat Bugis yang berbentuk sederhana dan berwarna cerah. Melambangkan status sosial dan keanggunan perempuan Bugis.",
      ),
      BajuAdat(
        nama: "Baju Adat Toraja",
        gambar: "assets/adat_toraja.jpeg",
        deskripsi:
            "Pakaian adat Toraja memiliki motif ukiran khas dengan warna merah, hitam, dan kuning. Melambangkan budaya dan kepercayaan leluhur.",
      ),
      BajuAdat(
        nama: "Baju Adat Mandar",
        gambar: "assets/adat_mandar.jpeg",
        deskripsi:
            "Pakaian adat Mandar sederhana namun elegan, menggunakan kain sutra khas. Melambangkan kesopanan dan identitas masyarakat pesisir.",
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Baju Adat Sulawesi"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 239, 27, 179),
      ),

      // BACKGROUND
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFEDE7F6),
              Color(0xFFD1C4E9),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),

        // ================= LIST =================
        child: ListView.builder(
          padding: const EdgeInsets.all(12),
          itemCount: data.length,
          itemBuilder: (context, index) {
            final item = data[index];

            return Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              margin: const EdgeInsets.only(bottom: 12),

              child: ListTile(
                contentPadding: const EdgeInsets.all(10),

                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    item.gambar,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                ),

                title: Text(
                  item.nama,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 228, 53, 219),
                  ),
                ),

                subtitle: const Text("Tap untuk lihat detail"),

                trailing: const Icon(Icons.arrow_forward_ios),

                // ================= NAVIGASI =================
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => DetailPage(item: item),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

// ================= HALAMAN DETAIL =================
class DetailPage extends StatelessWidget {
  final BajuAdat item;

  const DetailPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.nama),
        backgroundColor: const Color.fromARGB(255, 217, 43, 176),
      ),

      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFF3E5F5),
              Color(0xFFE1BEE7),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),

        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  item.gambar,
                  height: 220,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(height: 15),

              Text(
                item.nama,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 232, 39, 187),
                ),
              ),

              const SizedBox(height: 10),

              Text(
                item.deskripsi,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
