// Fungsi tanpa nilai kembalian
void cetakPesan(String pesan) {
  print(pesan); // Mencetak pesan
}

// Menambahkan Nilai
int kaliAngka(int a, int b) {
  return a * b; // Mengembalikan hasil perkalian
}

//Memanggil Fungsi
void main() {
// Memanggil fungsi dan menyimpan hasilnya
  int hasil = kaliAngka(4, 5);
// Menampilkan hasil
  print('Hasil perkalian fungsi: $hasil');
// Memanggil fungsi tanpa nilai kembalian
  cetakPesan('Halo, Breee!');
}
