import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ngekos/model/user_model.dart';
import 'package:ngekos/provider/auth_provider.dart';
import 'package:ngekos/provider/user_provider.dart';
import 'package:ngekos/theme.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');

  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    var authProvider = Provider.of<AuthProvider>(context);
    var userProvider = Provider.of<UserProvider>(context);

    void showError(String message) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: warnaOren,
          content: Text(message),
        ),
      );
    }

    title() {
      return Container(
        margin: EdgeInsets.only(top: 30, left: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Login',
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: subText,
              ),
            ),
            SizedBox(height: 2),
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

    imageLogin() {
      return Center(
        child: Image.asset(
          'assets/images/login_image.png',
          width: 280,
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
              'Email Address',
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
                borderRadius: BorderRadius.circular(100),
                color: Color(0xffF1F0F5),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 16),
                child: TextFormField(
                  controller: emailController,
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
            ),
          ],
        ),
      );
    }

    inputPssword() {
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
            SizedBox(
              height: 8,
            ),
            Container(
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Color(0xffF1F0F5),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 16),
                child: TextFormField(
                  controller: passwordController,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                  decoration: InputDecoration.collapsed(
                    hintText: 'Password',
                    hintStyle: GoogleFonts.poppins(
                      color: subText,
                    ),
                  ),
                  obscureText: true,
                ),
              ),
            ),
          ],
        ),
      );
    }

    btnLogin() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 24),
        child: isLoading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : TextButton(
                onPressed: () async {
                  if (emailController.text.isEmpty ||
                      passwordController.text.isEmpty) {
                    showError('Semua Field Harus di Isi');
                    print(emailController);
                    print(passwordController);
                  } else {
                    setState(() {
                      isLoading = true;
                    });

                    UserModel? user = await authProvider.login(
                      emailController.text,
                      passwordController.text,
                    );
                    setState(() {
                      isLoading = false;
                    });
                    if (user == null) {
                      showError('Semua Field Harus Di isi');
                    } else {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/home', (route) => false);
                    }
                  }
                },
                child: Text(
                  'Login',
                  style: GoogleFonts.poppins(
                    fontWeight: medium,
                    color: warnaPutih,
                  ),
                ),
                style: TextButton.styleFrom(
                    backgroundColor: warnaOren,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(66),
                    )),
              ),
      );
    }

    btnDaftar() {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/register');
          },
          child: Text('Daftar Sekarang',
              style: GoogleFonts.poppins(
                fontWeight: light,
                color: subText,
              )),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            title(),
            SizedBox(height: 41),
            imageLogin(),
            SizedBox(height: 41),
            inputEmail(),
            SizedBox(height: 20),
            inputPssword(),
            SizedBox(height: 41),
            btnLogin(),
            SizedBox(height: 20),
            btnDaftar(),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
