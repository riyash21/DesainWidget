import 'package:flutter/material.dart';

// Widget KartuMahasiswa dibuat melebar (full width)
class KartuMahasiswa extends StatelessWidget {
  final String nama;
  final String nim;
  final String prodi;

  const KartuMahasiswa({
    super.key,
    required this.nama,
    required this.nim,
    required this.prodi,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, // Membuat kartu melebar penuh ke samping
      child: Card(
        elevation: 2,
        margin: const EdgeInsets.symmetric(vertical: 6),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Nama: $nama', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              const SizedBox(height: 4),
              Text('NIM: $nim', style: const TextStyle(color: Colors.grey)),
              Text('Prodi: $prodi', style: const TextStyle(color: Colors.grey)),
            ],
          ),
        ),
      ),
    );
  }
}

// Halaman Profil (Kode asli kamu tetap dipertahankan)
class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profil')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // --- KODE ASLI KAMU ---
              Row(
                children: [
                  const CircleAvatar(
                    radius: 32,
                    child: Icon(Icons.person, size: 32),
                  ),
                  const SizedBox(width: 16),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Riyash Al Qurby', style: TextStyle(fontSize: 20)),
                      Text('NIM 3012410034'),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.email),
                    Icon(Icons.phone),
                    Icon(Icons.location_on),
                    Icon(Icons.web)
                  ],
                ),
              ),
              // --- AKHIR KODE ASLI ---

              const SizedBox(height: 24),
              const Text(
                'Daftar Kartu Mahasiswa (3 Kartu dalam Column):',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const SizedBox(height: 12),

              // 3 Kartu Mahasiswa dalam Column yang sudah melebar
              const Column(
                children: [
                  KartuMahasiswa(
                    nama: 'Riyash Al Qurby',
                    nim: '3012410034',
                    prodi: 'Informatika',
                  ),
                  KartuMahasiswa(
                    nama: 'Ahmad Fauzi',
                    nim: '3012410035',
                    prodi: 'Informatika',
                  ),
                  KartuMahasiswa(
                    nama: 'Siti Aminah',
                    nim: '3012410036',
                    prodi: 'Informatika',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}