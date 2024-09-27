void main() {
  // Daftar nasabah
  List<String> nasabah = ['Nasabah A', 'Nasabah B', 'Nasabah C', 'Nasabah D', 'Nasabah E'];

  // Loket
  String loket1 = 'Loket 1';
  String loket2 = 'Loket 2';

  // Menggunakan list untuk menyimpan hasil
  List<String> hasilLayanan = [];

  // Indeks untuk melayani nasabah
  int i = 0;

  // Melayani nasabah
  while (i < nasabah.length) {
    hasilLayanan.add('${nasabah[i]} dilayani di ${loket1}'); // Loket awal
    if (i + 1 < nasabah.length) {
      hasilLayanan.add('${nasabah[i + 1]} dilayani di ${loket2}'); // Loket berikutnya
    }
    i += 2; // Melompat ke dua nasabah berikutnya
  }

  // Menampilkan hasil
  print(hasilLayanan.join('\n'));
}
