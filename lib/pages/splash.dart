import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ngekos/theme.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              'assets/images/splash_image.png',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  width: 65,
                ),
                Text(
                  'Temukan Kos \nImpian Kalian Sekarang',
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: medium,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Cari Kos Dengan mudah \nhanya dengan satu sentuhan',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: light,
                    color: subText,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  width: 210,
                  height: 50,
                  decoration: BoxDecoration(
                    color: warnaOren,
                    borderRadius: BorderRadius.circular(17),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: Text(
                      'Cari Sekarang',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: medium,
                        color: warnaPutih,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
