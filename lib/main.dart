import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Membuat titleSection untuk digunakan di dalam body
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: const Text(
                    'Watu Dodol',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                
                const Text(
                  'Banyuwangi, Jawa Timur',
                  style: TextStyle(),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41'),
        ],
      ),
    );

    // Membuat buttonSection
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(context, Colors.blue, Icons.call, 'CALL'),
        _buildButtonColumn(context, Colors.blue, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(context, Colors.blue, Icons.share, 'SHARE'),
      ],
    );

    // Membuat textSection
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Watu Dodol adalah sebuah tempat wisata yang penuh misteri di Banyuwangi, Jawa Timur. Tempat ini dikenal dengan batu besar yang berada di tengah jalan raya.Nama Watu Dodol berasal dari batu besar, yang dalam bahasa Jawa disebut watu, yang mirip dengan dodol, sejenis makanan tradisional Jawa.Beberapa cerita mistis mengelilingi Watu Dodol. Salah satu cerita paling terkenal adalah bahwa batu ini tidak bisa dipindahkan meskipun sudah beberapa kali dicoba. Batu ini memiliki kekuatan gaib yang melindungi wilayah sekitarnya.Keyakinan ini bermula dari cerita rakyat tentang tentara Jepang yang berusaha memindahkan batu besar itu dengan mengerahkan puluhan orang karena dinilai mengganggu transportasi.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Siti Fatimah Ayu Lestari (#6358302013)',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Asal Usul Watu Dodol'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'assets/watudodol.jpg', // Menambahkan gambar di sini
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection, // Menampilkan buttonSection di dalam body
            textSection,  // Menampilkan textSection di dalam body
          ],
        ),
      ),
    );
  }

  // Mengubah parameter agar menerima context dan color dari luar
  static Column _buildButtonColumn(
      BuildContext context, Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}