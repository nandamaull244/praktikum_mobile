import 'package:flutter/material.dart';
import 'package:tugas_praktikum1/tugas5_navigation_detail.dart';


class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> products = [
      {
        'nama': 'Laptop',
        'harga': '1000',
        'deskripsi': 'Laptop untuk kerja, kuliah, dan hiburan. Ringan dibawa dan cocok untuk penggunaan sehari-hari.',
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9Qkj_4u0IRCrNQ8QY_tP2mrzXrPrLJt5kg78EEklBHQ&s',
      },
      {
        'nama': 'Kulkas',
        'harga': '1500',
        'deskripsi': 'Kulkas untuk menyimpan makanan dan minuman agar tetap segar lebih lama.',
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRR1sHKDZikrOKzA4AQAB5mBs1Md7_P3qbYo8WysG-azg&s=10',
      },
      {
        'nama': 'Air Conditioner',
        'harga': '1300',
        'deskripsi': 'AC untuk menjaga suhu ruangan tetap sejuk dan nyaman, terutama saat cuaca panas.',
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfbandVJOHmLPFiaHEYr3CtnEP0mTAMHJs7ehHCvMTcQ&s=10',
      },
      {
        'nama': 'Television',
        'harga': '500',
        'deskripsi': 'Televisi layar datar untuk menonton film, berita, dan acara favorit keluarga.',
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcST02ShLHpLFwuJEXiONn96Q0MuqtSy3aH4p3ufmqNn8g&s=10',
      },
      {
        'nama': 'Samsung Galaxy',
        'harga': '800',
        'deskripsi': 'Smartphone Android dari Samsung dengan layar AMOLED dan kamera yang diandalkan.',
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToRUbxZzN553_oj60YtQ5Fg09UpeJbZ8wRF8P4PxeEuA&s=10',
      },
      {
        'nama': 'iPhone',
        'harga': '1200',
        'deskripsi': 'Smartphone dari Apple dengan sistem iOS yang terintegrasi dengan perangkat Apple lainnya.',
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiWwzOdLIWV2V8EmyBJ7bXNsESckNjonfAJuMuBS3KJA&s',
      },
      {
        'nama': 'Xiaomi',
        'harga': '400',
        'deskripsi': 'Smartphone Android dari Xiaomi yang dikenal menawarkan spesifikasi tinggi di harga terjangkau.',
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpDBVLtoi492BfqXw6g5DSu0qNIaLZaMKCh2vgXKj76A&s',
      },
      {
        'nama': 'OPPO',
        'harga': '450',
        'deskripsi': 'Smartphone Android dari OPPO dengan fokus pada kamera dan desain yang tipis.',
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSj6qyDo83Aa_kHNUKTsPOpMIqhxhPz7OUJkyYAtZ1VFA&s=10',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BERKAH GADGET',
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 22,
            fontFamily: 'RobotoMono' ,
            fontWeight: FontWeight.bold,
          ),
        ),
        // backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            leading: SizedBox(
              width: 56,
              height: 56,
              child: Image.network(
                product['image'],
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.image_not_supported),
              ),
            ),
            title: Text(product['nama']),
            subtitle: Text('Harga : ${product['harga']}'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPageProduct(
                    itemTitle: product['nama'],
                    itemPrice: product['harga'],
                    itemImage: product['image'],
                    itemDescription: product['deskripsi'],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}