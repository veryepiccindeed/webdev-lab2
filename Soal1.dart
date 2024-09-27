import 'dart:io';

void main() {
  // Harga per kilogram
  int hargaApel = 5000;
  int hargaJeruk = 4000;

  // Meminta input jumlah kilogram apel dan jeruk
  stdout.write('Masukkan jumlah kilogram apel yang dibeli: ');
  int kgApel = int.parse(stdin.readLineSync()!);

  stdout.write('Masukkan jumlah kilogram jeruk yang dibeli: ');
  int kgJeruk = int.parse(stdin.readLineSync()!);

  // Menghitung total harga
  int totalHarga = (kgApel * hargaApel) + (kgJeruk * hargaJeruk);

  // Menampilkan total harga
  print('Total harga yang harus dibayar adalah: Rp $totalHarga');
}
