import 'dart:io';

class Mahasiswa {
  String npm;
  String nama;
  String jurusan;
  int angkatan;

  Mahasiswa(this.npm, this.nama, this.jurusan, this.angkatan);

  void tampilkanDetail() {
    print("==== Detail Mahasiswa ====");
    print("NPM      : $npm");
    print("Nama     : $nama");
    print("Jurusan  : $jurusan");
    print("Angkatan : $angkatan");
    print("==========================");
  }
}

void main() {
  List<Mahasiswa> daftarMahasiswa = [];

  print("=== Entry Data Mahasiswa ===");
  for (int i = 0; i < 10; i++) {
    stdout.write("Masukkan NPM       : ");
    String npm = stdin.readLineSync()!;

    stdout.write("Masukkan Nama      : ");
    String nama = stdin.readLineSync()!;

    stdout.write("Masukkan Jurusan   : ");
    String jurusan = stdin.readLineSync()!;

    stdout.write("Masukkan Angkatan  : ");
    int angkatan = int.parse(stdin.readLineSync()!);

    daftarMahasiswa.add(Mahasiswa(npm, nama, jurusan, angkatan));
    print("Data mahasiswa ke-${i + 1} berhasil ditambahkan!\n");
  }

  print("\n=== Cari Data Mahasiswa Berdasarkan NPM ===");
  stdout.write("Masukkan NPM yang ingin dicari: ");
  String cariNpm = stdin.readLineSync()!;

  bool ketemu = false;
  for (var m in daftarMahasiswa) {
    if (m.npm == cariNpm) {
      m.tampilkanDetail();
      ketemu = true;
      break;
    }
  }

  if (!ketemu) {
    print("Data mahasiswa dengan NPM $cariNpm tidak ditemukan.");
  }
}
