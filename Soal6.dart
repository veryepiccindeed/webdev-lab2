import 'dart:io';

void main() {
  // Gaji pokok dan bonus
  int gajiPokok = 4000000;
  int bonus = 200000;

  // Meminta input jumlah jam kerja per minggu
  stdout.write('Masukkan jumlah jam kerja per minggu: ');
  int jamKerja = int.parse(stdin.readLineSync()!);

  // Menghitung gaji total
  int gajiTotal = gajiPokok;

  // Jika jam kerja lebih dari 40, tambahkan bonus
  if (jamKerja > 40) {
    gajiTotal += bonus;
  }

  // Menampilkan hasil gaji total
  print('Gaji total karyawan adalah: Rp $gajiTotal');
}
