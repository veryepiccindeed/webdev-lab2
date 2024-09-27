import 'dart:io';

void main() {
  // Nilai pi
  const double pi = 3.14;

  // Meminta input diameter lingkaran
  stdout.write('Masukkan diameter lingkaran: ');
  double diameter = double.parse(stdin.readLineSync()!);

  // Menghitung jari-jari (radius)
  double radius = diameter / 2;

  // Menghitung luas lingkaran
  double luas = pi * radius * radius;

  // Menampilkan hasil luas lingkaran
  print('Luas lingkaran dengan diameter $diameter adalah: $luas meter persegi');
}
