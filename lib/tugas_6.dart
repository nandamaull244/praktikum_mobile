import 'package:flutter/material.dart';

class BookItem {
  final String title;
  final String author;
  final String category;
  final String rating;
  final String pages;
  final String image;
  final String description;

  const BookItem({
    required this.title,
    required this.author,
    required this.category,
    required this.rating,
    required this.pages,
    required this.image,
    required this.description,
  });
}

/// Curated book catalog dataset
final List<BookItem> bookCatalog = [
  const BookItem(
    title: 'Atomic Habits',
    author: 'James Clear',
    category: 'Self-Improvement',
    rating: '4.9',
    pages: '320 Hlm',
    image: 'https://images-na.ssl-images-amazon.com/images/I/81wgcld4wxL.jpg',
    description:
        'Atomic Habits adalah buku panduan komprehensif yang mengajarkan bagaimana perubahan-perubahan kecil dalam rutinitas sehari-hari dapat melipatgandakan produktivitas dan kesuksesan hidup. James Clear memperkenalkan 4 hukum perubahan perilaku yang telah terbukti secara ilmiah: menjadikannya terlihat, menarik, mudah, dan memuaskan.',
  ),
  const BookItem(
    title: 'Clean Code',
    author: 'Robert C. Martin',
    category: 'Technology',
    rating: '4.8',
    pages: '464 Hlm',
    image:
        'https://images-na.ssl-images-amazon.com/images/I/51E2055ZGUL._SX379_BO1,204,203,200_.jpg',
    description:
        'Clean Code: A Handbook of Agile Software Craftsmanship adalah karya legendaris Uncle Bob. Buku ini memberikan panduan mendalam tentang seni menulis kode yang rapi, mudah dipelihara, dan elegan. Mencakup prinsip penamaan yang bermakna, arsitektur fungsi, penanganan error, hingga teknik refactoring profesional.',
  ),
  const BookItem(
    title: 'The Psychology of Money',
    author: 'Morgan Housel',
    category: 'Finance',
    rating: '4.8',
    pages: '256 Hlm',
    image: 'https://images-na.ssl-images-amazon.com/images/I/71TRUbzcvaL.jpg',
    description:
        'The Psychology of Money menyajikan 19 kisah inspiratif tentang bagaimana cara manusia memandang dan memperlakukan uang. Buku ini menegaskan bahwa keberhasilan finansial bukanlah semata-mata persoalan matematika atau rumus ekonomi, melainkan bagaimana kita mengendalikan ego, emosi, dan keserakahan.',
  ),
  const BookItem(
    title: 'Rich Dad Poor Dad',
    author: 'Robert T. Kiyosaki',
    category: 'Finance',
    rating: '4.7',
    pages: '336 Hlm',
    image: 'https://images-na.ssl-images-amazon.com/images/I/81bsw6fnUiL.jpg',
    description:
        'Rich Dad Poor Dad mematahkan mitos bahwa untuk menjadi kaya seseorang harus memiliki gaji tinggi. Melalui perbandingan pandangan antara dua figur ayah, buku ini mengajarkan pentingnya literasi finansial, investasi aset produktif, serta cara melatih pola pikir pengusaha sejati.',
  ),
  const BookItem(
    title: 'Sapiens',
    author: 'Yuval Noah Harari',
    category: 'History',
    rating: '4.9',
    pages: '512 Hlm',
    image: 'https://images-na.ssl-images-amazon.com/images/I/713jIoMO3UL.jpg',
    description:
        'Sapiens: Riwayat Singkat Umat Manusia menelusuri perjalanan evolusi spesies manusia dari kera yang tidak berdaya di Afrika hingga menjadi penakluk biosfer bumi. Membahas tiga revolusi krusial yang membentuk sejarah peradaban: Revolusi Kognitif, Revolusi Pertanian, dan Revolusi Sains.',
  ),
  const BookItem(
    title: 'Zero to One',
    author: 'Peter Thiel',
    category: 'Business',
    rating: '4.7',
    pages: '224 Hlm',
    image: 'https://images-na.ssl-images-amazon.com/images/I/71uAI28kJuL.jpg',
    description:
        'Zero to One mengajarkan filosofi membangun masa depan melalui inovasi vertikal (menciptakan sesuatu yang belum pernah ada sebelumnya). Ditulis oleh pendiri PayPal dan angel investor pertama Facebook, buku ini memberikan peta jalan membangun startup yang memiliki keunggulan monopoli yang kuat.',
  ),
];

class TugasEnam extends StatelessWidget {
  const TugasEnam({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xFFF8FAFC),
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 60,
          title: const Text(
            'Koleksi Buku',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              letterSpacing: 0.3,
            ),
          ),
          foregroundColor: Colors.white,
          backgroundColor: const Color(0xFF0F172A),
          centerTitle: true,
          leading: const Icon(Icons.menu_book_rounded, size: 22),
          actions: [
            IconButton(
              icon: const Icon(Icons.bookmark_border_rounded),
              onPressed: () {},
            ),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(48),
            child: Container(
              height: 38,
              margin: const EdgeInsets.only(left: 20, right: 20, bottom: 8),
              decoration: BoxDecoration(
                color: const Color(0xFF1E293B),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TabBar(
                dividerColor: Colors.transparent,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xFF3B82F6),
                ),
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: Colors.white,
                unselectedLabelColor: const Color(0xFF94A3B8),
                labelStyle: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12.5,
                ),
                tabs: const [
                  Tab(
                    height: 36,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.format_list_bulleted_rounded, size: 16),
                        SizedBox(width: 6),
                        Text('Daftar Buku'),
                      ],
                    ),
                  ),
                  Tab(
                    height: 36,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.grid_view_rounded, size: 16),
                        SizedBox(width: 6),
                        Text('Galeri Sampul'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            _buildBookListView(),
            _buildBookGridView(),
          ],
        ),
      ),
    );
  }


  Widget _buildBookListView() {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      itemCount: bookCatalog.length,
      itemBuilder: (context, index) {
        final book = bookCatalog[index];
        return Card(
          elevation: 1.5,
          margin: const EdgeInsets.only(bottom: 14),
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: const BorderSide(color: Color(0xFFE2E8F0)),
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(16),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(book: book),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Book cover image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      width: 75,
                      height: 105,
                      color: const Color(0xFFE2E8F0),
                      child: Image.network(
                        book.image,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) =>
                            const Icon(Icons.broken_image_rounded, color: Colors.grey),
                      ),
                    ),
                  ),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 3,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFFEFF6FF),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Text(
                            book.category,
                            style: const TextStyle(
                              color: Color(0xFF2563EB),
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          book.title,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF0F172A),
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Oleh ${book.author}',
                          style: const TextStyle(
                            fontSize: 13,
                            color: Color(0xFF64748B),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            const Icon(
                              Icons.star_rounded,
                              size: 18,
                              color: Color(0xFFF59E0B),
                            ),
                            const SizedBox(width: 4),
                            Text(
                              book.rating,
                              style: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF0F172A),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Text(
                              '•   ${book.pages}',
                              style: const TextStyle(
                                fontSize: 12,
                                color: Color(0xFF94A3B8),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(top: 36),
                      child: Icon(
                        Icons.chevron_right_rounded,
                        color: Color(0xFF94A3B8),
                        size: 24,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildBookGridView() {
    return GridView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: bookCatalog.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 14,
        mainAxisSpacing: 14,
        childAspectRatio: 0.60,
      ),
      itemBuilder: (context, index) {
        final book = bookCatalog[index];
        return Card(
          elevation: 2,
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: const BorderSide(color: Color(0xFFE2E8F0)),
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(16),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(book: book),
                ),
              );
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 6,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(16),
                    ),
                    child: Container(
                      width: double.infinity,
                      color: const Color(0xFFE2E8F0),
                      child: Image.network(
                        book.image,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) =>
                            const Center(
                          child: Icon(
                            Icons.broken_image_rounded,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              book.title,
                              style: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF0F172A),
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 2),
                            Text(
                              book.author,
                              style: const TextStyle(
                                fontSize: 11,
                                color: Color(0xFF64748B),
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.star_rounded,
                                  size: 16,
                                  color: Color(0xFFF59E0B),
                                ),
                                const SizedBox(width: 3),
                                Text(
                                  book.rating,
                                  style: const TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF0F172A),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 6,
                                vertical: 2,
                              ),
                              decoration: BoxDecoration(
                                color: const Color(0xFFEFF6FF),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Text(
                                book.category,
                                style: const TextStyle(
                                  fontSize: 9,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF2563EB),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class DetailPage extends StatelessWidget {
  final BookItem book;

  const DetailPage({
    super.key,
    required this.book,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      appBar: AppBar(
        title: const Text(
          'Detail Informasi Buku',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFF0F172A),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.share_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.2),
                      blurRadius: 18,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Image.network(
                    book.image,
                    height: 240,
                    fit: BoxFit.contain,
                    errorBuilder: (context, error, stackTrace) =>
                        const Icon(Icons.broken_image_rounded, size: 80),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Center(
              child: Column(
                children: [
                  Text(
                    book.title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF0F172A),
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Karya ${book.author}',
                    style: const TextStyle(
                      fontSize: 15,
                      color: Color(0xFF64748B),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: const Color(0xFFE2E8F0)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildStatItem(
                    icon: Icons.star_rounded,
                    iconColor: const Color(0xFFF59E0B),
                    title: 'Rating',
                    value: book.rating,
                  ),
                  _buildVerticalDivider(),
                  _buildStatItem(
                    icon: Icons.category_rounded,
                    iconColor: const Color(0xFF3B82F6),
                    title: 'Kategori',
                    value: book.category,
                  ),
                  _buildVerticalDivider(),
                  _buildStatItem(
                    icon: Icons.auto_stories_rounded,
                    iconColor: const Color(0xFF10B981),
                    title: 'Tebal',
                    value: book.pages,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                Container(
                  width: 4,
                  height: 18,
                  decoration: BoxDecoration(
                    color: const Color(0xFF3B82F6),
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                const SizedBox(width: 8),
                const Text(
                  'Sinopsis Buku',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0F172A),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              book.description,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                fontSize: 14.5,
                height: 1.6,
                color: Color(0xFF334155),
              ),
            ),
            const SizedBox(height: 32),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.bookmark_add_rounded, size: 20),
                label: const Text(
                  'Tambahkan ke Koleksi Saya',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0F172A),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatItem({
    required IconData icon,
    required Color iconColor,
    required String title,
    required String value,
  }) {
    return Column(
      children: [
        Icon(icon, color: iconColor, size: 22),
        const SizedBox(height: 4),
        Text(
          value,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.bold,
            color: Color(0xFF0F172A),
          ),
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 11,
            color: Color(0xFF94A3B8),
          ),
        ),
      ],
    );
  }

  Widget _buildVerticalDivider() {
    return Container(
      width: 1,
      height: 32,
      color: const Color(0xFFE2E8F0),
    );
  }
}
