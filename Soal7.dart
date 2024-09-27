import 'dart:collection';

void main() {
  // Membuat graf dengan adjacency list untuk menyimpan urutan tugas
  Map<String, List<String>> graph = {
    'A': ['B', 'C'],  // A harus selesai sebelum B dan C
    'B': ['C'],       // B harus selesai sebelum C
    'C': ['D'],       // C harus selesai sebelum D
    'D': [],          // D tidak bergantung pada tugas lain
    'E': [],          // E dapat diselesaikan kapan saja
  };

  // Melakukan topological sort
  List<String> result = topologicalSort(graph);

  // Menampilkan urutan tugas yang benar
  print('Urutan tugas yang efisien: ${result.join(' -> ')}');
}

List<String> topologicalSort(Map<String, List<String>> graph) {
  // Menyimpan derajat masuk (in-degree) untuk setiap node/tugas
  Map<String, int> inDegree = Map.fromIterable(graph.keys, value: (_) => 0);

  // Menghitung derajat masuk untuk setiap node tanpa menggunakan for atau forEach
  graph.values.expand((edges) => edges).map((edge) => inDegree[edge] = (inDegree[edge] ?? 0) + 1).toList();

  // Antrian untuk node dengan derajat masuk 0 (tugas yang bisa dikerjakan segera)
  Queue<String> queue = Queue<String>.from(inDegree.keys.where((node) => inDegree[node] == 0));

  // List untuk menyimpan urutan topologis
  List<String> sortedOrder = [];

  // Memproses antrian
  while (queue.isNotEmpty) {
    String current = queue.removeFirst();
    sortedOrder.add(current);

    // Mengurangi derajat masuk untuk semua tetangga (edges) dari node saat ini
    graph[current]?.map((neighbor) {
      inDegree[neighbor] = (inDegree[neighbor]! - 1);
      if (inDegree[neighbor] == 0) queue.add(neighbor);
    }).toList();
  }

  return sortedOrder;
}
