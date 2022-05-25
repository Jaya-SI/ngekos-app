import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ngekoss/theme.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    title() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Daftar',
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: subText,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              'Yuk daftar biar bisa \nNgekos',
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: semibold,
              ),
            ),
          ],
        ),
      );
    }

    gambardaftar() {
      return Center(
        child: Image.asset(
          'assets/images/daftar.png',
          width: 280,
        ),
      );
    }

    inputNamaLengkap() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nama Lengkap',
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: subText,
              ),
            ),
            SizedBox(height: 8),
            Container(
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Color(0xffF1F0F5),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 18, top: 10),
                child: TextFormField(
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                  decoration: InputDecoration.collapsed(
                    hintText: 'Masukkan Nama Lengkap',
                    hintStyle: GoogleFonts.poppins(
                      color: subText,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            title(),
            SizedBox(height: 40),
            gambardaftar(),
            SizedBox(height: 40),
            inputNamaLengkap()
          ],
        ),
      ),
    );
  }
}
