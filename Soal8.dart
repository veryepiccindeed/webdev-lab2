void main() {
  // Konsumsi energi per jam dalam kWh
  double konsumsiAC = 1.5; // kWh per jam
  double konsumsiTV = 0.2;  // kWh per jam
  double konsumsiLampu = 0.1; // kWh per jam

  // Jam penggunaan per hari
  int jamAC = 8;   // jam penggunaan AC
  int jamTV = 5;   // jam penggunaan TV
  int jamLampu = 12; // jam penggunaan lampu

  // Menghitung total konsumsi energi harian
  double totalKonsumsi = (konsumsiAC * jamAC) + 
                          (konsumsiTV * jamTV) + 
                          (konsumsiLampu * jamLampu);

  // Menampilkan total konsumsi energi
  print('Total konsumsi energi harian keluarga adalah: ${totalKonsumsi} kWh');
}
