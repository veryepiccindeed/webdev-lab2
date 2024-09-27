void main() {
  int unitsPerHour = 20; // Jumlah barang yang diproduksi per jam
  int hoursPerDay = 8;   // Jumlah jam operasional per hari
  int daysPerWeek = 5;   // Jumlah hari kerja per minggu

  // Menghitung total barang yang dihasilkan dalam satu minggu
  int totalUnits = 0;
  int daysWorked = 0;

  while (daysWorked < daysPerWeek) {
    totalUnits += unitsPerHour * hoursPerDay; // Menghitung unit yang dihasilkan setiap hari
    daysWorked++; // Meningkatkan jumlah hari yang telah dikerjakan
  }

  // Menampilkan total unit yang dihasilkan
  print('Total unit barang yang dihasilkan dalam satu minggu: $totalUnits');
}
