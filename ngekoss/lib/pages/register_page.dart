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

    inputEmail() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email',
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
                    hintText: 'Masukkan Email',
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

    inputPassword() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Password',
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
                  obscureText: true,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                  decoration: InputDecoration.collapsed(
                    hintText: 'Masukkan Password',
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

    inputNoHP() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'No HP',
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
                    hintText: 'Masukkan Nomor HP',
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

    btnDaftar() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 24),
        height: 45,
        width: double.infinity,
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: warnaOren,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(66),
            ),
          ),
          onPressed: () {},
          child: Text(
            'Daftar',
            style: GoogleFonts.poppins(
              color: warnaPutih,
              fontWeight: medium,
            ),
          ),
        ),
      );
    }

    btnLogin() {
      return Container(
        child: TextButton(
          onPressed: () {},
          child: Text(
            'Login Sekarang',
            style: GoogleFonts.poppins(
              fontWeight: light,
              color: subText,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(bottom: 40),
          children: [
            title(),
            SizedBox(height: 40),
            gambardaftar(),
            SizedBox(height: 40),
            inputNamaLengkap(),
            SizedBox(height: 20),
            inputEmail(),
            SizedBox(height: 20),
            inputPassword(),
            SizedBox(height: 20),
            inputNoHP(),
            SizedBox(height: 40),
            btnDaftar(),
            SizedBox(height: 20),
            btnLogin(),
          ],
        ),
      ),
    );
  }
}
