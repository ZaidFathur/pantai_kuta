import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Pantai Kuta',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Kabupaten Badung,  Bali',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.favorite_border_outlined,
            color: Colors.black,
            size: 20,
          ),
          const Text('8.0'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(Colors.black, Icons.call_outlined, 'CALL'),
        _buildButtonColumn(Colors.black, Icons.near_me_outlined, 'ROUTE'),
        _buildButtonColumn(Colors.black, Icons.share_outlined, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: EdgeInsets.all(32),
      child: Text(
        ' Pantai Kuta adalah sebuah tempat pariwisata yang terletak di kecamatan Kuta, sebelah selatan Kota Denpasar, Bali, Indonesia. Daerah ini merupakan sebuah tujuan wisata turis mancanegara dan telah menjadi objek wisata andalan Pulau Bali sejak awal tahun 1970-an. Pantai Kuta sering pula disebut sebagai pantai matahari terbenam (sunset beach) sebagai lawan dari pantai Sanur. Selain itu, Lapangan Udara I Gusti Ngurah Rai terletak tidak jauh dari Kuta.',
        textAlign: TextAlign.justify,
      ),
    );

    Widget text = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        ' Pantai Kuta Bali, terletak di sebelah selatan pulau dewata, dengan pemandangan laut samudra Hindia. Selain itu, tempat wisata Kuta adalah salah satu tempat wisata menarik di Bali yang menjadi tujuan utama wisatawan liburan ke pulau Bali.Pantai pasir putih ini sangat tekenal dan menjadi andalan pulau Bali, sebagai tempat wisata pantai, sejak tahun 70-an. Tempat wisata Kuta Bali khususnya area pantai, sampai saat ini masih menjadi daya tarik utama wisatawan liburan ke pulau Bali. Terutama wisatawan muda yang berasal dari Australia dan wisatawan Indonesia.',
        textAlign: TextAlign.justify,
      ),
    );

    return MaterialApp(
      title: 'Pantai Kuta',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            Image.asset(
              'asset/pantaikuta.jpg',
              width: 600,
              height: 500,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
            text,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
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