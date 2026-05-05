import '../models/user_model.dart';

class HomeController {
  // Organization Data 
  final OrganizationModel organization = const OrganizationModel(
    name: 'Information Technology Club',
    tagline: 'Innovate. Collaborate. Elevate.',
    description:
        'Information Technology Club (ITC) adalah organisasi mahasiswa yang berfokus pada pengembangan kompetensi di bidang teknologi informasi. Kami hadir sebagai wadah bagi para mahasiswa yang memiliki passion di dunia IT untuk belajar, berkolaborasi, dan berinovasi bersama.',
    logoPath: 'assets/images/logo.jpg',
    vision:
        'Menjadi komunitas IT terdepan yang melahirkan talenta digital berkualitas dan berdampak bagi masyarakat.',
  );

  // Members Data
  final List<UserModel> _members = [
    UserModel(
      id: 1,
      name: 'Grace Rianty Butar Butar',
      position: 'Ketua Umum',
      division: 'Inti',
      imagePath: 'assets/images/Ketua.jpg',
      description:
          'Memimpin organisasi secara keseluruhan, menentukan arah strategis ITC, mengkoordinasikan seluruh divisi, serta menjadi representasi utama organisasi dalam kegiatan internal maupun eksternal.',
      contact: '0812-3456-7890',
    ),
    UserModel(
      id: 2,
      name: 'Dzaki Ghatfaan Abhipraya',
      position: 'Wakil Ketua',
      division: 'Inti',
      imagePath: 'assets/images/Wakil.png',
      description:
          'Membantu Ketua Umum dalam menjalankan program kerja organisasi, mengawasi koordinasi antar divisi, dan memastikan seluruh kegiatan berjalan dengan baik.',
      contact: '0812-3456-7891',
    ),
    UserModel(
      id: 3,
      name: 'Nayla Saskia Zallianti',
      position: 'Sekretaris Umum',
      division: 'Kesekretariatan',
      imagePath: 'assets/images/Sekretaris.png',
      description:
          'Mengelola administrasi organisasi, menyusun notulensi rapat, mengarsipkan dokumen penting, serta menjaga kelancaran komunikasi internal dan eksternal organisasi.',
      contact: '0812-3456-7892',
    ),
    UserModel(
      id: 4,
      name: 'Dewi Rahmawati',
      position: 'Bendahara Umum',
      division: 'Keuangan',
      imagePath: 'assets/images/Bendahara.png',
      description:
          'Mengatur dan mengelola keuangan organisasi, menyusun laporan keuangan, mengawasi pemasukan dan pengeluaran dana, serta memastikan transparansi finansial organisasi.',
      contact: '0812-3456-7893',
    ),
    UserModel(
      id: 5,
      name: 'Muhammad Ruhul Jadid',
      position: 'Kepala Divisi UI/UX',
      division: 'Divisi UI/UX',
      imagePath: 'assets/images/UIUXKetua.png',
      description:
          'Memimpin divisi UI/UX dalam merancang antarmuka dan pengalaman pengguna yang menarik, nyaman digunakan, serta sesuai dengan kebutuhan pengguna aplikasi dan website.',
      contact: '0812-3456-7894',
    ),
    UserModel(
      id: 6,
      name: 'Gita Ristya',
      position: 'Wakil Kepala Divisi UI/UX',
      division: 'Divisi UI/UX',
      imagePath: 'assets/images/UIUXWakil.png',
      description:
          'Membantu Kepala Divisi UI/UX dalam mengembangkan desain antarmuka, melakukan riset pengalaman pengguna, dan memastikan konsistensi desain pada setiap proyek.',
      contact: '0812-3456-7895',
    ),
    UserModel(
      id: 7,
      name: 'Gradiva Arya Wicaksana',
      position: 'Kepala Divisi Web Development',
      division: 'Divisi Web Development',
      imagePath: 'assets/images/WebKetua.png',
      description:
          'Memimpin pengembangan website organisasi, mengatur pembagian tugas tim web development, serta memastikan website berjalan optimal dan responsif.',
      contact: '0812-3456-7896',
    ),
    UserModel(
      id: 8,
      name: 'Marvel Valensiano',
      position: 'Wakil Kepala Divisi Web Development',
      division: 'Divisi Web Development',
      imagePath: 'assets/images/WebWakil1.png',
      description:
          'Membantu Kepala Divisi Web Development dalam proses pengembangan website, debugging, serta implementasi fitur baru untuk mendukung kebutuhan organisasi.',
      contact: '0812-3456-7897',
    ),
    UserModel(
      id: 9,
      name: 'Farhannivta Ramadhana',
      position: 'Wakil Kepala Divisi Web Development',
      division: 'Divisi Web Development',
      imagePath: 'assets/images/WebWakil2.png',
      description:
          'Berperan aktif dalam pengembangan dan pemeliharaan website organisasi, membantu implementasi frontend maupun backend, serta mendukung pengerjaan proyek web.',
      contact: '0812-3456-7898',
    ),
    UserModel(
      id: 10,
      name: 'Mochamad Rizal Ardiansyah Sucipno',
      position: 'Kepala Divisi Competitive Programming',
      division: 'Divisi Competitive Programming',
      imagePath: 'assets/images/CPKetua.png',
      description:
          'Memimpin divisi Competitive Programming dalam meningkatkan kemampuan problem solving anggota melalui latihan rutin, diskusi algoritma, dan persiapan kompetisi pemrograman.',
      contact: '0812-3456-7899',
    ),
    UserModel(
      id: 11,
      name: 'Filipus Satrio Dewaki Tyasing Suryo',
      position: 'Wakil Kepala Divisi Competitive Programming',
      division: 'Divisi Competitive Programming',
      imagePath: 'assets/images/CPWakil.png',
      description:
          'Membantu Kepala Divisi Competitive Programming dalam mengelola latihan, diskusi algoritma, dan persiapan kompetisi pemrograman.',
      contact: '0812-3456-7900',
    ),
    UserModel(
      id: 12,
      name: 'Bintoro',
      position: 'Kepala Divisi Mobile Development',
      division: 'Divisi Mobile Development',
      imagePath: 'assets/images/MobileKetua.png',
      description:
          'Memimpin divisi Mobile Development dalam pengembangan aplikasi mobile, mengarahkan anggota dalam pembuatan proyek Android maupun Flutter, serta memastikan kualitas aplikasi.',
      contact: '0812-3456-7901',
    ),
    UserModel(
      id: 13,
      name: 'Ikhsan Fillah Hidayat',
      position: 'Wakil Kepala Divisi Mobile Development',
      division: 'Divisi Mobile Development',
      imagePath: 'assets/images/MobileWakil.png',
      description:
          'Membantu Kepala Divisi Mobile Development dalam pengembangan aplikasi mobile, testing fitur, serta mendukung koordinasi pengerjaan proyek tim.',
      contact: '0812-3456-7902',
    ),
    UserModel(
      id: 14,
      name: 'Bintang Ramadhan ',
      position: 'Kepala Divisi Machine Learning',
      division: 'Divisi Machine Learning',
      imagePath: 'assets/images/MLKetua.png',
      description:
          'Memimpin divisi Machine Learning dalam mempelajari dan mengembangkan proyek berbasis kecerdasan buatan, data science, serta penerapan model machine learning.',
      contact: '0812-3456-7903',
    ),
    UserModel(
      id: 15,
      name: 'Muhammad Dimas Setiaji',
      position: 'Wakil Kepala Divisi Machine Learning',
      division: 'Divisi Machine Learning',
      imagePath: 'assets/images/MLWakil.png',
      description:
          'Membantu Kepala Divisi Machine Learning dalam riset, pengolahan data, pelatihan model AI, dan pengembangan proyek berbasis machine learning.',
      contact: '0812-3456-7904',
    ),
    UserModel(
      id: 16,
      name: 'Kurniasari Salasa',
      position: 'Kepala Divisi Project Management',
      division: 'Divisi Project Management',
      imagePath: 'assets/images/PMKetua.png',
      description:
          'Memimpin divisi Project Management dalam mengatur perencanaan, koordinasi, dan pengawasan proyek agar berjalan sesuai target dan timeline yang telah ditentukan.',
      contact: '0812-3456-7905',
    ),
    UserModel(
      id: 17,
      name: 'Fahri Hidayatullah',
      position: 'Wakil Kepala Divisi Project Management',
      division: 'Divisi Project Management',
      imagePath: 'assets/images/PMWakil.png',
      description:
          'Membantu Kepala Divisi Project Management dalam mengelola timeline proyek, koordinasi anggota tim, serta memastikan setiap tugas berjalan secara terstruktur.',
      contact: '0812-3456-7906',
    ),
  ];

  // Getters 
  List<UserModel> get members => _members;

  UserModel get chairman =>
      _members.firstWhere((m) => m.position == 'Ketua Umum');

  List<String> get divisions {
    return _members.map((m) => m.division).toSet().toList();
  }

  int get totalDivisions => divisions.length;

  int get totalMembers => _members.length;

  // Stats 
  Map<String, int> get divisionMemberCount {
    final Map<String, int> count = {};
    for (final member in _members) {
      count[member.division] = (count[member.division] ?? 0) + 1;
    }
    return count;
  }

  // Toggle Favorite 
  void toggleFavorite(int memberId) {
    final index = _members.indexWhere((m) => m.id == memberId);
    if (index != -1) {
      _members[index].isFavorite = !_members[index].isFavorite;
    }
  }
}
