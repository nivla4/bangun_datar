import 'package:get/get.dart';

class LingkaranController extends GetxController{
  int r = 0;
  final hasil ="".obs;

  void hitungLuas(){
    double hitung = 3.14 * r * r ;
    hasil.value = "Hasil Perhitungan luas dari Jari-Jari $r adalah $hitung";
  }
  void hitungKeliling(){
    double hitung = 2 * 3.14 * r;
    hasil.value = "Hasil Perhitungan keliling dari Jari-Jari $r adalah $hitung ";
  }
}