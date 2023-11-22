import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home Page",
          style: TextStyle(color: Color(0xFFFFFFFF)),
        ),
        backgroundColor: Colors.blue.shade300,
      ),
      body: Column(
        children: [
          Row(
            children:[
             Expanded (child: CustomMenu(title: "Persegi",imageAsset: "assets/persegi.jpg",)),
    Expanded (child:CustomMenu(title: "Persegi Panjang",imageAsset: "assets/persegi panjang.webp",)),
          ],
          ),

    Row(
    children:[
    Expanded (child:CustomMenu(title: "Segitiga",imageAsset: "assets/segitiga.jpg",)),
    Expanded (child:CustomMenu(title: "Lingkaran",imageAsset: "assets/lingkaran.png",)),
    ],
    ),
        ],
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key, required this.imageAsset, required this.title,
  });
  final String imageAsset;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 400,
      padding: EdgeInsets.symmetric(
        horizontal: 16, vertical: 8
      ),
      margin: EdgeInsets.symmetric(
        horizontal: 16, vertical: 8
      ),
      decoration: BoxDecoration(
        color: Colors.blue.shade400,
        border:Border.all(
          color: const Color(0xFFFFFFFF),
          width: 4.0,
          style: BorderStyle.solid),
          borderRadius: BorderRadius.all(
          Radius.circular(10),
    ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imageAsset, height: 50,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title),
          ),
        ],
      ));
  }
}