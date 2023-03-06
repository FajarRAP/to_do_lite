import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Aplikasi To Do",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          Image.asset(
            "images/homepage.png",
            height: 400,
          ),
          const Text(
            "Flutter",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              "Flutter adalah framework dart yang sedang populer saat ini. Banyak perusahaan yang membutuhkan seorang developer flutter untuk pengembangan aplikasinya. Ini salah satu contoh aplikasi to do list",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              width: 100,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadiusDirectional.circular(24),
              ),
              child: const Center(
                child: Text(
                  "Klik Di Sini",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
