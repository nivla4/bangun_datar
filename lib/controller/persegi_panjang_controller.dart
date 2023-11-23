import 'package:get/get.dart';

class persegiPanjangController extends GetxController{
  int p = 0;
  int l = 0;
  final hasil ="".obs;

  void hitungLuas(){
    int hitung = p * l;
    hasil.value = "Hasil : \n"
        "Perhitungan Keliling dari panjang $p x lebar $l  \nadalah $hitung";
  }
  void hitungKeliling(){
    int hitung = 2 * (p+l);
    hasil.value = "Hasil :\n"
        "Perhitungan Keliling dari 2 x (panjang $p + lebar $l) \nadalah $hitung";
  }
}