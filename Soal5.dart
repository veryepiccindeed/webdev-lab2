import 'dart:io';

void main() {
  // Tarif parkir
  int tarifDuaJamPertama = 2000;
  int tarifJamBerikutnya = 1000;

  // Meminta input jumlah jam parkir
  stdout.write('Masukkan jumlah jam parkir: ');
  int jamParkir = int.parse(stdin.readLineSync()!);

  // Menghitung total biaya parkir
  int totalBiaya;
  
  if (jamParkir <= 2) {
    // Jika jam parkir <= 2, hitung tarif per jam
    totalBiaya = jamParkir * tarifDuaJamPertama;
  } else {
    // Jika lebih dari 2 jam, hitung 2 jam pertama + tarif jam berikutnya
    totalBiaya = (2 * tarifDuaJamPertama) + ((jamParkir - 2) * tarifJamBerikutnya);
  }

  // Menampilkan total biaya parkir
  print('Total biaya parkir adalah: Rp $totalBiaya');
}
