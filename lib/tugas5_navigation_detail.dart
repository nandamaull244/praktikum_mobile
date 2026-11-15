import 'package:flutter/material.dart';

class DetailPageProduct extends StatelessWidget {
  final String itemTitle;
  final String itemPrice;
  final String itemImage;
  final String itemDescription;

  const DetailPageProduct({
    super.key,
    required this.itemTitle,
    required this.itemPrice,
    required this.itemImage,
    required this.itemDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(itemTitle, style: TextStyle(color: Colors.black),),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                height: 250,
                child: Image.network(
                  itemImage,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) =>
                      const Icon(Icons.image_not_supported, size: 100),
                ),
              ),
            ),
            const SizedBox(height: 22),
            Text(
              itemTitle,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              'Harga : $itemPrice',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 180, 68, 255),
              ),
            ),
            const SizedBox(height: 32),
            const Text(
              'Deskripsi',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              itemDescription,
              style: const TextStyle(
                fontSize: 15, 
                height: 1.5
              ),
            ),
          ],
        ),
      ),
    );
  }
}