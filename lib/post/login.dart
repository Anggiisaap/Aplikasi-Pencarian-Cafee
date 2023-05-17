import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:coba_utsa/post/home_page.dart';

import 'package:coba_utsa/post/root.dart';

class LoginGooglePage extends StatelessWidget {
  const LoginGooglePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              "assets/coffee.jpg",
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
              alignment: Alignment.center,
            ),
            const Positioned(
              top: 70,
              child: Text(
                " NGOPI YUK ",
                style:
                    TextStyle(fontWeight: FontWeight.w700, color: Colors.white),
              ),
            ),
            Positioned(
              bottom: 50,
              left: 10,
              right: 10,
              child: Card(
                color: Colors.black.withOpacity(0.3),
                elevation: 8.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        "Cari tempat ngopi, sekarang !",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, color: Colors.white),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, bottom: 8),
                      child: Text(
                        "Untuk menikmati semua fitur kami, Anda perlu terhubung terlebih dahulu",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w700, color: Colors.white),
                      ),
                    ),
                    Form(
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              prefixIcon: Icon(
                                Icons.mail,
                                size: 40,
                              ),
                              hintText: "Enter your username",
                              hintStyle: TextStyle(color: Colors.white),
                              labelText: "Username",
                              labelStyle: TextStyle(color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            obscureText: true,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              prefixIcon: Icon(
                                Icons.lock,
                                size: 40,
                              ),
                              hintText: "Enter your password",
                              hintStyle: TextStyle(color: Colors.white),
                              labelText: "Password",
                              labelStyle: TextStyle(color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Card(
                            color: Colors.white,
                            elevation: 5,
                            child: Container(
                              height: 50,
                              child: InkWell(
                                splashColor: Colors.white,
                                onTap: () {
                                  MyHomePage();
                                },
                                child: Center(
                                  child: Text(
                                    "Login",
                                    style: TextStyle(fontSize: 17),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Center(
                            child: Text(
                              "Atau Masuk Menggunkan Akun Google",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (builder) => const RootApp()));
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 2.0,
                                vertical: 12.0,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(14.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/logo_google.jpg",
                                        width: 30,
                                      ),
                                      const SizedBox(width: 30),
                                      const Text(
                                        "Masuk Sekarang",
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
