Nama         : Putra Pratama Okta Riano <br>
NIM / Kelas  : 2211104068 / S1SE-06-02 <br>

**Tugas Percabangan :** <br>
Input:
```
import 'dart:io';

String tentukanNilai(int nilai) {
  // Mengecek apakah nilai lebih dari 70
  if (nilai > 70) {
    return "$nilai merupakan Nilai A";
  }
  // Mengecek apakah nilai lebih dari 40 tetapi kurang atau sama dengan 70
  else if (nilai > 40 && nilai <= 70) {
    return "$nilai merupakan Nilai B";
  }
  // Mengecek apakah nilai lebih dari 0 tetapi kurang atau sama dengan 40
  else if (nilai > 0 && nilai <= 40) {
    return "$nilai merupakan Nilai C";
  }
  // Jika tidak memenuhi semua kondisi di atas, kembalikan string kosong
  else {
    return "";
  }
}

void main() {
  // Menerima input dari pengguna
  stdout.write("Masukkan nilai: ");

  // Parsing input ke dalam tipe data integer
  int nilai = int.parse(stdin.readLineSync()!);

  // Memanggil fungsi tentukanNilai untuk mendapatkan hasil
  String hasil = tentukanNilai(nilai);

  // Mengecek apakah hasil tidak kosong, jika tidak kosong cetak hasil
  if (hasil.isNotEmpty) {
    print(hasil);
  }
  // Jika hasil kosong, cetak pesan nilai tidak valid
  else {
    print("Nilai tidak valid.");
  }
}
```
Output : <br>

**Tugas Looping :** <br>
Input :
```
import 'dart:io';

void main() {
  // Menerima input dari pengguna
  stdout.write("Masukkan tinggi piramida: ");
  int n = int.parse(stdin.readLineSync()!);

  // Loop untuk membuat piramida angka
  for (int i = 1; i <= n; i++) {
    // Mencetak spasi
    for (int j = 1; j <= n - i; j++) {
      stdout.write(" ");
    }

    // Mencetak angka secara berurutan
    for (int k = 1; k <= 2 * i - 1; k++) {
      stdout.write(i);
    }

    // Pindah ke baris baru
    print("");
  }
}
```

Output : <br>


**Tugas Function :** <br>
Input :
```
import 'dart:io';

bool cekPrima(int n) {
  // Bilangan kurang dari 2 bukan bilangan prima
  if (n < 2) {
    return false;
  }

  // Mengecek apakah bilangan tersebut habis dibagi bilangan lain selain 1 dan dirinya sendiri
  for (int i = 2; i <= n ~/ 2; i++) {
    if (n % i == 0) {
      return false;
    }
  }

  return true;
}

void main() {
  // Menerima input dari user
  stdout.write("Masukkan sebuah bilangan bulat: ");
  int angka = int.parse(stdin.readLineSync()!);

  // Mengecek apakah bilangan prima atau bukan
  if (cekPrima(angka)) {
    print("$angka adalah bilangan prima");
  } else {
    print("$angka bukan bilangan prima");
  }
}
```

Output : <br>

