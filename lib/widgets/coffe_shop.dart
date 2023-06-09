import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeShop extends StatelessWidget {
  final String imagePath;
  final String nameShop;
  final String rating;
  final String jamBuka;
  final String favorit;
  const CoffeShop({
    Key? key,
    required this.imagePath,
    required this.nameShop,
    required this.rating,
    required this.jamBuka,
    required this.favorit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 240,
        child: Stack(
          children: [
            Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 10,
              child: Column(
                children: [
                  SizedBox(
                      width: double.infinity,
                      height: 150,
                      child: Image.asset(imagePath, fit: BoxFit.cover))
                ],
              ),
            ),
            Positioned(
                bottom: 0,
                left: 10,
                child: SizedBox(
                  height: 70,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(nameShop,
                            style: GoogleFonts.montserrat(
                                fontSize: 17, fontWeight: FontWeight.bold)),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            const Icon(Icons.star, color: Colors.amber),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(rating,
                                style: GoogleFonts.montserrat(fontSize: 12)),
                            const SizedBox(
                              width: 20,
                            ),
                            const Icon(Icons.access_time, color: Colors.grey),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(jamBuka,
                                style: GoogleFonts.montserrat(fontSize: 12)),
                            const SizedBox(
                              width: 70,
                            ),
                            const Icon(Icons.bookmark, color: Colors.black),
                            Text(favorit,
                                style: GoogleFonts.montserrat(fontSize: 12)),
                          ],
                        )
                      ],
                    ),
                  ),
                )),
          ],
        ));
  }
}
