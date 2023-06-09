import 'package:coba_utsa/post/home_page.dart';
import 'package:flutter/material.dart';
import 'package:coba_utsa/widgets/Category.dart';
import 'package:coba_utsa/widgets/coffe_shop.dart';
import 'package:coba_utsa/detail/detail_1.dart';
import 'package:coba_utsa/detail/detail_2.dart';
import 'package:coba_utsa/detail/detaill.dart';
import 'package:coba_utsa/widgets/NavBar.dart';

class favorit extends StatefulWidget {
  @override
  _favoritState createState() => _favoritState();
}

class _favoritState extends State<favorit> {
  bool isObscuredPassword = true;
  final _listPage = <Widget>[
    const MyHomePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorit Cafee Anda'),
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
                        hintText: "Cari Cafee Favoritmu",
                        prefixIcon: const Icon(Icons.search),
                        border: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Colors.grey, width: 2),
                            borderRadius: BorderRadius.circular(30))),
                  ),
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
