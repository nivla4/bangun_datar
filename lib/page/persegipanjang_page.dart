import 'package:bangun_datar/controller/persegi_panjang_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiPanjangPage extends StatelessWidget {
  PersegiPanjangPage({super.key});

  final persegiPanjangController _persegiPanjangController =
      Get.put(persegiPanjangController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Persegi Panjang Page"),
      ),
      body: Column(children: [
        Image.asset("assets/persegi panjang.webp"),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Persegi"),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 7, vertical: 7),
          padding: EdgeInsets.symmetric(horizontal: 7, vertical: 7),
          decoration: BoxDecoration(
              color: Colors.indigo.shade500,
              borderRadius: BorderRadius.all(Radius.circular(8))),
          child: Text(
              "Persegi panjang (bahasa Inggris: rectangle) adalah bangun datar dua dimensi yang dibentuk oleh dua pasang sisi yang masing-masing sama panjang dan sejajar dengan pasangannya, dan memiliki empat buah sudut yang kesemuanya adalah sudut siku-siku panjang merupakan turunan dari segi empat yang mempunyai ciri khusus dua sisi sejajar sama panjang dan keempat sudutnya siku-siku (90°)"),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 7, vertical: 7),
          padding: EdgeInsets.symmetric(horizontal: 7, vertical: 7),
          decoration: BoxDecoration(
              color: Colors.indigo.shade500,
              borderRadius: BorderRadius.all(Radius.circular(8))),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: TextFormField(
                  onChanged: (String value) {
                    _persegiPanjangController.p = int.parse(value);
                  },
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: "panjang",
                    hintText: "Masukkan panjang",
                    hintStyle: TextStyle(color: Colors.grey.shade400),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.blue),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 7, vertical: 7),
                padding: EdgeInsets.symmetric(horizontal: 7, vertical: 7),
                decoration: BoxDecoration(
                    color: Colors.indigo.shade500,
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: TextFormField(
                        onChanged: (String value) {
                          _persegiPanjangController.l = int.parse(value);
                        },
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "Lebar",
                          hintText: "Masukkan Lebar",
                          hintStyle: TextStyle(color: Colors.grey.shade400),
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.grey),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.grey),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.blue),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 17, vertical: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                _persegiPanjangController.hitungLuas();
                              },
                              child: Text("Hitung Luas")),
                          ElevatedButton(
                              onPressed: () {
                                _persegiPanjangController.hitungKeliling();
                              },
                              child: Text("Hitung Keliling")),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 7, vertical: 7),
                  padding: EdgeInsets.symmetric(horizontal: 7, vertical: 7),
                  decoration: BoxDecoration(color: Colors.indigo.shade500, borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Obx(() => Text(_persegiPanjangController.hasil.value))
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
