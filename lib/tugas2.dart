import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TugasCard extends StatelessWidget {
  const TugasCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Kartu Nama Digital',
      home: BusinessCardScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BusinessCardScreen extends StatelessWidget {
  const BusinessCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 10, 0, 121),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                radius: 70.0,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqoNbaM9kdG8vbyhXrQqiQKXpd3TTk2U0TtsMeA0XQbA&s=10'),
              ),
              const SizedBox(height: 10.0),
              Text(
                'Kocheng Dev',
                style: GoogleFonts.inter(
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'SYSTEM ANALYST & CONSULTANT',
                style: GoogleFonts.sourceSans3(
                  fontSize: 20.0,
                  color: Colors.teal.shade100,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 200.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal[900],
                  ),
                  title: Text(
                    '+62 812 3456 7890',
                    style: TextStyle(
                      color: Colors.teal[900],
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              Card(
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal[900],
                  ),
                  title: Text(
                    'kochengdev@gmail.com',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.teal[900],
                    ),
                  ),
                ),
              ),
              // Tambahan Card untuk Alamat
              Card(
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.location_on,
                    color: Colors.teal[900],
                  ),
                  title: Text(
                    'Jl. kenangan, Cianjur Kota',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.teal[900],
                    ),
                  ),
                ),
              ),
              // Tambahan Card untuk Sosial Media
              Card(
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.alternate_email,
                    color: Colors.teal[900],
                  ),
                  title: Text(
                    '@kocheng_dev',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.teal[900],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}