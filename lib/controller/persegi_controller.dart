import 'package:get/get.dart';

class PersegiController extends GetxController{
   int sisi = 0;
   final hasil ="".obs;

   void hitungLuas(){
     int hitung = sisi * sisi;
     hasil.value = "Hasil : \n"
         "Perhitungan Keliling dari sisi $sisi \nadalah $hitung";
   }
   void hitungKeliling(){
     int hitung = sisi * 4;
     hasil.value = "Hasil :\n"
        "Perhitungan Keliling dari sisi $sisi \nadalah $hitung";
   }
}