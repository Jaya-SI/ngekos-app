import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ngekos/model/user_model.dart';
import 'package:ngekos/provider/auth_provider.dart';
import 'package:ngekos/provider/user_provider.dart';
import 'package:ngekos/theme.dart';
import 'package:provider/provider.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController nameController = TextEditingController(text: '');
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');
  TextEditingController conpasswordController = TextEditingController(text: '');
  TextEditingController hpController = TextEditingController(text: '');

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
                fontWeight: semibold,
                fontSize: 24,
              ),
            ),
          ],
        ),
      );
    }

    imageRegister() {
      return Center(
        child: Image.asset(
          'assets/images/register_image.png',
          width: 280,
        ),
      );
    }

    inputNama() {
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
                  controller: nameController,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                  decoration: InputDecoration.collapsed(
                    hintText: 'Masukkan Nama',
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
                    hintText: 'Email',
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
            )
          ],
        ),
      );
    }

    confirmPassword() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Confirm Password',
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
                  controller: conpasswordController,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                  decoration: InputDecoration.collapsed(
                    hintText: 'Confirm Password',
                    hintStyle: GoogleFonts.poppins(
                      color: subText,
                    ),
                  ),
                  obscureText: true,
                ),
              ),
            )
          ],
        ),
      );
    }

    inputHP() {
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
                  controller: hpController,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                  decoration: InputDecoration.collapsed(
                    hintText: 'No HP',
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
        child: isLoading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : TextButton(
                onPressed: () async {
                  if (emailController.text.isEmpty ||
                      nameController.text.isEmpty ||
                      passwordController.text.isEmpty ||
                      conpasswordController.text.isEmpty ||
                      hpController.text.isEmpty) {
                    showError('Semua Field Harus Di isi');
                  } else {
                    setState(() {
                      isLoading = true;
                    });
                    UserModel? user = await authProvider.register(
                      nameController.text,
                      emailController.text,
                      passwordController.text,
                      conpasswordController.text,
                      hpController.text,
                    );

                    setState(() {
                      isLoading = false;
                    });

                    if (user == null) {
                      showError('Email Sudah Terdaftar');
                      print('gagal');
                    } else {
                      print('Sukses Terkirim');
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/home', (route) => false);
                    }
                  }
                },
                child: Text(
                  'Daftar',
                  style: GoogleFonts.poppins(
                    fontWeight: medium,
                    color: warnaPutih,
                  ),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: warnaOren,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
      );
    }

    btnLogin() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 24),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/login');
          },
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
          children: [
            title(),
            SizedBox(height: 40),
            imageRegister(),
            SizedBox(height: 40),
            inputNama(),
            SizedBox(height: 20),
            inputEmail(),
            SizedBox(height: 20),
            inputPassword(),
            SizedBox(height: 20),
            confirmPassword(),
            SizedBox(height: 20),
            inputHP(),
            SizedBox(height: 51),
            btnDaftar(),
            SizedBox(height: 20),
            btnLogin(),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
