import 'package:flutter/material.dart';


class TokoOnlineApp extends StatelessWidget {
  const TokoOnlineApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Toko Online',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int halamanAktif = 0;

  final List<String> judulHalaman = [
    'Toko Online',
    'Pesanan',
    'Keranjang',
    'Profil',
  ];

  final List<Widget> halaman = [
    const HomeContent(),
    const PesananPage(),
    const KeranjangPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(judulHalaman[halamanAktif]),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
        actions: halamanAktif == 0
            ? [
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SearchPage(),
                      ),
                    );
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.notifications),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const NotificationPage(),
                      ),
                    );
                  },
                ),
              ]
            : null,
      ),

      // SIDEBAR / DRAWER
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.deepOrange),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person, size: 45, color: Colors.deepOrange),
              ),
              accountName: Text(
                'Pelanggan Setia',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              accountEmail: Text('user@tokoonline.com'),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              selected: halamanAktif == 0,
              selectedColor: Colors.deepOrange,
              onTap: () {
                Navigator.pop(context); // Menutup drawer
                setState(() => halamanAktif = 0);
              },
            ),
            ListTile(
              leading: const Icon(Icons.receipt_long),
              title: const Text('Pesanan'),
              selected: halamanAktif == 1,
              selectedColor: Colors.deepOrange,
              onTap: () {
                Navigator.pop(context);
                setState(() => halamanAktif = 1);
              },
            ),
            ListTile(
              leading: const Icon(Icons.shopping_cart),
              title: const Text('Keranjang'),
              selected: halamanAktif == 2,
              selectedColor: Colors.deepOrange,
              onTap: () {
                Navigator.pop(context);
                setState(() => halamanAktif = 2);
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profil'),
              selected: halamanAktif == 3,
              selectedColor: Colors.deepOrange,
              onTap: () {
                Navigator.pop(context);
                setState(() => halamanAktif = 3);
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Pengaturan'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.red),
              title: const Text('Keluar', style: TextStyle(color: Colors.red)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      body: halaman[halamanAktif],
    );
  }
}

// Konten utama Home (AppBar dipindah ke MainPage agar tidak bertumpuk)
class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const Text(
          'Produk Terbaru',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 15),
        Card(
          child: ListTile(
            leading: const Icon(
              Icons.phone_android,
              size: 45,
            ),
            title: const Text('Smartphone'),
            subtitle: const Text('Rp3.500.000'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailProductPage(),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class PesananPage extends StatelessWidget {
  const PesananPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Daftar Pesanan', style: TextStyle(fontSize: 18)),
    );
  }
}

class KeranjangPage extends StatelessWidget {
  const KeranjangPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Keranjang Belanja', style: TextStyle(fontSize: 18)),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Profil Pengguna', style: TextStyle(fontSize: 18)),
    );
  }
}

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pencarian')),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Cari produk',
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(),
          ),
        ),
      ),
    );
  }
}

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Notifikasi')),
      body: const Center(
        child: Text('Daftar Notifikasi', style: TextStyle(fontSize: 18)),
      ),
    );
  }
}

class DetailProductPage extends StatelessWidget {
  const DetailProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail Produk')),
      body: const Center(
        child: Text(
          'Detail Smartphone',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}