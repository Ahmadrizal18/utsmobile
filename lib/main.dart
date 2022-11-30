import 'dart:html';

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomLeft,
                  colors: [
                Color(0xFFE1F5FE),
                Color(0xFF03A9F4),
                Color(0xFF0277BD),
                Color(0xFF01579B),
              ])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Image.asset(
                'images/logo.png',
                width: 130,
                height: 62,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Your Holiday Solution',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 325,
                width: 325,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Hello',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Please Login in to Your Account',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 250,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Email Address',
                          suffixIcon: Icon(
                            Icons.mail,
                            size: 19,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 250,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Password',
                          suffixIcon: Icon(
                            Icons.verified_user,
                            size: 19,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: ElevatedButton(
                        onPressed: (() {
                          Route pindah = MaterialPageRoute(
                            builder: (context) => tempat(),
                          );
                          Navigator.push(context, pindah);
                        }),
                        child: Text('LOGIN'),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Destinasi {
  final String nama;
  final String deskripsi;
  final String link;

  const Destinasi({
    required this.nama,
    required this.deskripsi,
    required this.link,
  });
}

class tempat extends StatefulWidget {
  const tempat({super.key});

  @override
  State<tempat> createState() => _tempatState();
}

List<Destinasi> destinasis = [
  const Destinasi(
      nama: 'Bali',
      deskripsi:
          'Tempat wisata di Indonesia yang mendunia yang pertama tidak lain adalah Bali. Sudah ratusan penghargaan yang didapatkan Bali sebagai destinasi wisata terbaik dan favorit dari kancah internasional. Baru-baru ini, Bali masuk kedalam Top 4 Travelers’ Choice Awards 2022 Most Popular Destinations dari Tripadvisor. Berbicara mengenai Bali memang tidak ada habisnya. Selalu ada tempat wisata yang baru setiap tahunnya. Dari wisata alam hingga budaya, Bali memilikinya semua. Beberapa ikon wisata Bali yang terkenal yaitu Tanah Lot, Seminyak, Pura Luhur Uluwatu, Ubud, Danau Bedugul, dan masih banyak lagi.',
      link:
          'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/f4/95/4d/magicke-misto.jpg?w=600&h=400&s=1'),
  const Destinasi(
      nama: 'Taman Nasional Bunaken',
      deskripsi:
          'Tempat wisata di Indonesia yang satu ini menyajikan keindahan biota lautnya yang sungguh menakjubkan. Yap, Taman Nasional Bunaken yang terletak di provinsi Sulawesi Utara. Sama seperti Bali, Taman Nasional Bunaken sudah lama menjadi primadona wisata Indonesia. Diresmikan sejak tahun 1991, Kawasan Taman Nasional Bunaken memiliki luas mencapai 89.065 hektare. Kawasan ini meliputi lima pulau utama yaitu Pulau Bunaken, Pulau Manado Tua, Pulau Naen, Pulau Mantehage, dan Pulau Siladen.',
      link:
          'https://asset.kompas.com/crops/U8UQN3Rv0PuJCBPMWq3mARaSCFI=/87x0:677x393/750x500/data/photo/2022/02/14/620a029035152.jpeg'),
  const Destinasi(
      nama: 'Raja Ampat',
      deskripsi:
          'Kepulauan Raja Ampat terdiri dari empat pulau utama yaitu Pulau Waigeo, Pulau Batanta, Pulau Salawati, dan Pulau Misool. Bagi pecinta diving dan snorkeling, Raja Ampat adalah surganya. Tidak heran, Raja Ampat merupakan surga bagi 75% spesies karang yang ada di dunia, berdasarkan data dari The Nature Conservancy and Conservation International. Terdapat kurang lebih 1.318 spesies ikan, 699 spesies moluska, dan 537 spesies terumbu karang tersebar di kedalaman laut Raja Ampat.',
      link:
          'https://awsimages.detik.net.id/community/media/visual/2019/02/28/e27d496c-d76b-4415-8cc3-d1131c07215f_169.jpeg?w=1200'),
];

class _tempatState extends State<tempat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Destination'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: destinasis.length,
        itemBuilder: (context, index) {
          final destinasi = destinasis[index];
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(destinasi.link),
              ),
              title: Text(destinasi.nama),
              trailing: const Icon(Icons.ads_click),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => rincian(destinasi: destinasi),
                ));
              },
            ),
          );
        },
      ),
      backgroundColor: Colors.blue,
    );
  }
}

class rincian extends StatelessWidget {
  final Destinasi destinasi;

  const rincian({super.key, required this.destinasi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(destinasi.nama),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(children: [
          Image.network(
            destinasi.link,
            height: 300,
            width: 300,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            destinasi.nama,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            destinasi.deskripsi,
            style: const TextStyle(
              fontSize: 15,
            ),
          ),
        ]),
      ),
      backgroundColor: Colors.blue,
    );
  }
}
