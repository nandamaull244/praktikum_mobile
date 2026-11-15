import 'package:flutter/material.dart';
import 'package:tugas_praktikum1/tugas5_navigation_detail.dart';


class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> products = [
      {
        'nama': 'Iphone 11 64GB Ibox',
        'harga': 'Rp.3,600,000',
        'deskripsi': 'Iphone 11 64GB Ibox Bekas Mulus like new Fullset Original',
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLZtol5WC00l-9vibC0pZHkbG0quYV4HejYCTor0UKnQ&s=10',
      },
      {
        'nama': 'Iphone 12 128GB Ibox',
        'harga': 'Rp.5,500,000',
        'deskripsi': 'Iphone 12 128GB Ibox resmi indonesia likw new Fullset Original',
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4G_o4lXVpnSRv-mXCJsnctsU1nFNwsuQ7nKAd2enYQA&s',
      },
      {
        'nama': 'Iphone 13 128GB Beacukai',
        'harga': 'Rp.6,500,000',
        'deskripsi': 'Iphone 13 128GB resmi Beacukai like new fullset original',
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSC5Gyvqt4ojg_8snbOEL2I-dvLXmsqYSRDTDCTV34ifQ&s=10',
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