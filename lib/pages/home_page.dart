import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ngekos/model/user_model.dart';
import 'package:ngekos/provider/auth_provider.dart';
import 'package:ngekos/provider/user_provider.dart';
import 'package:ngekos/theme.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    UserModel user = authProvider.user;
    bootomNavBar() {
      return BottomNavigationBar(
        elevation: 0,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/icon_home.png',
                width: 24,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/icon_lonceng.png',
                width: 24,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/icon_love.png',
                width: 24,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/icon_profile.png',
                width: 24,
              ),
              label: ''),
        ],
      );
    }

    header() {
      return Container(
        margin: EdgeInsets.all(30),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Halo,',
                    style: GoogleFonts.poppins(
                      fontWeight: semibold,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    '@${user.name}',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: semibold,
                      color: subText,
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 54,
              height: 54,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/image_profile.png'),
                ),
              ),
            )
          ],
        ),
      );
    }

    kotaPopuler() {
      return Container(
        margin: EdgeInsets.only(top: 30, left: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Kota Populer',
              style: GoogleFonts.poppins(
                fontSize: 22,
                fontWeight: semibold,
              ),
            ),
          ],
        ),
      );
    }

    body() {
      return SafeArea(
        child: ListView(
          children: [
            header(),
            kotaPopuler(),
          ],
        ),
      );
    }

    return Scaffold(
      bottomNavigationBar: bootomNavBar(),
      body: body(),
    );
  }
}
