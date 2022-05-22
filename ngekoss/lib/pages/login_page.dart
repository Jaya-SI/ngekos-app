import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ngekoss/theme.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
              'Login',
              style: GoogleFonts.poppins(
                color: subText,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              'Yuk Ngekos',
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: semibold,
              ),
            ),
          ],
        ),
      );
    }

    gambar() {
      return Center(
        child: Image.asset(
          'assets/images/login.png',
          width: 280,
        ),
      );
    }

    inputEmail() {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: 24,
        ),
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
            SizedBox(
              height: 8,
            ),
            Container(
              height: 45,
              decoration: BoxDecoration(
                color: Color(0xffF1F0F5),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 18,
                  top: 10,
                ),
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
        margin: EdgeInsets.symmetric(
          horizontal: 24,
        ),
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
            SizedBox(
              height: 8,
            ),
            Container(
              height: 45,
              decoration: BoxDecoration(
                color: Color(0xffF1F0F5),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 18,
                  top: 10,
                ),
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

    btnLogin() {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        height: 45,
        width: double.infinity,
        child: TextButton(
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(66),
            ),
            backgroundColor: warnaOren,
          ),
          onPressed: () {},
          child: Text(
            'Login',
            style: GoogleFonts.poppins(
              color: warnaPutih,
              fontWeight: medium,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            title(),
            SizedBox(
              height: 41,
            ),
            gambar(),
            SizedBox(
              height: 40,
            ),
            inputEmail(),
            SizedBox(
              height: 20,
            ),
            inputPassword(),
            SizedBox(
              height: 40,
            ),
            btnLogin(),
          ],
        ),
      ),
    );
  }
}
