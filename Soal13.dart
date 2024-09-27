void main() {
  int totalWashingMachines = 3; // Jumlah mesin cuci
  double hoursPerMachine = 2; // Jam penggunaan per mesin cuci
  double washingTimePerResident = 1.5; // Waktu mencuci per penghuni
  int totalResidents = 5; // Jumlah penghuni

  // Menghitung total jam yang tersedia untuk mencuci
  double totalWashingTimeAvailable = totalWashingMachines * hoursPerMachine;

  // Menghitung berapa banyak penghuni yang bisa mencuci
  int residentsCanWash = 0;

  // Menggunakan while untuk menghitung jumlah penghuni yang bisa mencuci
  int residentsChecked = 0;
  while (residentsChecked < totalResidents) {
    if (residentsChecked * washingTimePerResident < totalWashingTimeAvailable) {
      residentsCanWash++;
    }
    residentsChecked++; // Meningkatkan penghuni yang diperiksa
  }

  // Menampilkan hasil
  print('Jumlah penghuni yang dapat mencuci dalam satu hari: $residentsCanWash');
}
