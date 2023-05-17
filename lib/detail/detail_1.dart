import 'package:coba_utsa/post/home_page.dart';
import 'package:coba_utsa/post/root.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage1 extends StatefulWidget {
  const DetailPage1({Key? key}) : super(key: key);

  @override
  State<DetailPage1> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage1> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Tumpukan foto dan Container Nama Toko
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: height * 0.3,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/coffee_2.jpg"))),
                  ),
                  Positioned(
                      top: 16,
                      left: 16,
                      child: Container(
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                            color: Colors.grey,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                      )),
                  Container(
                    height: height * .07,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    child: const Padding(
                      padding: EdgeInsets.all(13),
                      child: Text(
                        "Kopi Kenangan",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
              // Row rating dan jam buka
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("4.6 (32 review)",
                            style: GoogleFonts.montserrat(fontSize: 12))
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("10.00 - 00.00",
                            style: GoogleFonts.montserrat(fontSize: 12))
                      ],
                    )
                  ],
                ),
              ),

              // Card promo
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: Colors.amber[100],
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: const [
                            Text(
                              "Ada promo untuk kamu",
                            ),
                            Text(
                              "Dapatkan diskon 100 ribu",
                            ),
                          ],
                        ),
                        ElevatedButton(
                            onPressed: () {}, child: const Text("Tukar"))
                      ],
                    ),
                  ),
                ),
              ),

              // Alamat
              const TitleDetail(
                  title: "Alamat",
                  detail: "Jl. Kenangan Bunga No 3 RT XX RW YY Samarinda"),

              // Deskripsi
              const TitleDetail(
                  title: "Deskripsi",
                  detail:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),

              // Title Ulasan / Comment
              const Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "Ulasan",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
              ),

              // Widget Ulasan / Comment
              const Comment(), const Comment(), const Comment(), const Comment()
            ],
          ),
        ),
      ),
    );
  }
}

class Comment extends StatelessWidget {
  const Comment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 15,
                backgroundImage:
                    NetworkImage("https://picsum.photos/200/300?random=2"),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Anggi Saputra",
                style: GoogleFonts.montserrat(fontSize: 15),
              ),
            ],
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Icon(Icons.star, color: Colors.amber),
                  Icon(Icons.star, color: Colors.amber),
                  Icon(Icons.star, color: Colors.amber),
                  Icon(Icons.star, color: Colors.amber),
                  Icon(Icons.star, color: Colors.amber),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                  "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, ",
                  style: GoogleFonts.montserrat(fontSize: 12)),
            ],
          )
        ],
      ),
    );
  }
}

class TitleDetail extends StatelessWidget {
  final String title;
  final String detail;

  const TitleDetail({
    Key? key,
    required this.title,
    required this.detail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            detail,
            style: GoogleFonts.montserrat(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
