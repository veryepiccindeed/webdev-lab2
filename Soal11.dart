void main() {
  int battery = 100; // Baterai awal

  // Durasi penggunaan aplikasi dalam menit
  int chattingUsage = 60; // Chatting
  int videoUsage = 30; // Video
  int gameUsage = 45; // Game

  // Menghitung total konsumsi baterai
  List<int> usages = [chattingUsage, videoUsage, gameUsage];
  List<int> consumptionRates = [1, 2, 3]; // Penggunaan per 5 menit untuk chatting, video, game

  int index = 0;

  // Menghitung sisa baterai
  while (index < usages.length) {
    int consumption = (usages[index] ~/ 5) * consumptionRates[index]; // Menghitung konsumsi baterai
    battery -= consumption; // Mengurangi baterai
    index++;
  }

  // Menampilkan sisa baterai
  print('Sisa baterai setelah penggunaan: $battery%');
}
