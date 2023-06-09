import 'package:flutter/material.dart';
import 'package:coba_utsa/widgets/Category.dart';
import 'package:coba_utsa/widgets/coffe_shop.dart';
import 'package:coba_utsa/detail/detail_1.dart';
import 'package:coba_utsa/detail/detail_2.dart';
import 'package:coba_utsa/detail/detaill.dart';
import 'package:coba_utsa/widgets/NavBar.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aplikasi Pencarian Cafee'),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[Colors.black, Colors.green]),
          ),
        ),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              NavBar(),
              ListTile(),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 160,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: <Color>[Colors.green, Colors.blue]),
                    ),
                    child: Image.asset("assets/coffe_4.jpeg"),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                    alignment: Alignment.topLeft,
                                    height: 45,
                                    width: 45,
                                    decoration: BoxDecoration(
                                        image: const DecorationImage(
                                            image: NetworkImage(
                                                "https://picsum.photos/400/400")),
                                        borderRadius: BorderRadius.circular(25),
                                        border: Border.all(
                                            color: Colors.white,
                                            style: BorderStyle.solid,
                                            width: 2))),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text("Halooo, Selamat Datang !",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white))
                              ],
                            ),
                            Container(
                                alignment: Alignment.topRight,
                                child: const Icon(
                                  Icons.notifications_active,
                                  color: Colors.white,
                                  size: 30,
                                )),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: const Color(0xFFF5F5F7),
                              borderRadius: BorderRadius.circular(30)),
                          child: TextField(
                            cursorHeight: 20,
                            autofocus: false,
                            decoration: InputDecoration(
                                hintText: "Cari Cafee",
                                prefixIcon: const Icon(Icons.search),
                                border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.grey, width: 2),
                                    borderRadius: BorderRadius.circular(30))),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: const [
                    Category(imagePath: "assets/tubruk.png", title: "Tubruk"),
                    Category(imagePath: "assets/mesin.png", title: "Espress"),
                    Category(imagePath: "assets/cup.png", title: "Latte"),
                    Category(imagePath: "assets/biji.png", title: "Biji"),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(15),
                child: Text("Tempat Favorit ☕️",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
              ),
              Padding(
                padding: const EdgeInsets.all(6),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        children: const [
                          CircleAvatar(
                            radius: 15,
                            backgroundImage: NetworkImage(
                                "https://picsum.photos/200/300?random=1"),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "KOPI KENANGAN",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => const DetailPage1()));
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 12.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    elevation: 10,
                    child: Column(
                      children: const [
                        CoffeShop(
                          imagePath: "assets/coffee_1.jpg",
                          nameShop: "Kopi Kenangan",
                          rating: "4.8",
                          jamBuka: "10.00 - 23.00",
                          favorit: "",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        children: const [
                          CircleAvatar(
                            radius: 15,
                            backgroundImage: NetworkImage(
                                "https://picsum.photos/200/300?random=1"),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "TALK COFFE",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => const DetailPage2()));
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 12.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    elevation: 10,
                    child: Column(
                      children: const [
                        CoffeShop(
                          imagePath: "assets/coffee_2.jpg",
                          nameShop: "Talk Coffe",
                          rating: "4.8",
                          jamBuka: "10.00 - 23.00",
                          favorit: "",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        children: const [
                          CircleAvatar(
                            radius: 15,
                            backgroundImage: NetworkImage(
                                "https://picsum.photos/200/300?random=1"),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "KOMA COFFE",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => const DetailPage()));
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 12.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    elevation: 10,
                    child: Column(
                      children: const [
                        CoffeShop(
                          imagePath: "assets/coffee_3.jpg",
                          nameShop: "Koma Coffe",
                          rating: "4.8",
                          jamBuka: "10.00 - 23.00",
                          favorit: "",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
