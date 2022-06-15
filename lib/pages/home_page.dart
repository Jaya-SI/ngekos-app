import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ngekos/model/city_model.dart';
import 'package:ngekos/model/kost_model.dart';
import 'package:ngekos/model/user_model.dart';
import 'package:ngekos/provider/auth_provider.dart';
import 'package:ngekos/provider/user_provider.dart';
import 'package:ngekos/theme.dart';
import 'package:ngekos/widgets/city_card.dart';
import 'package:ngekos/widgets/kost_card.dart';
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
            ),
          ],
        ),
      );
    }

    kotaPopuler() {
      return Container(
        margin: EdgeInsets.all(30),
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
            SizedBox(
              height: 15,
            ),
            Container(
              height: 245,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CityCard(
                    City(
                      id: 1,
                      name: 'Banjarmasin',
                      imageUrl: 'assets/images/kota1.png',
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    City(
                      id: 2,
                      name: 'Banjarbaru',
                      imageUrl: 'assets/images/kota2.png',
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    City(
                      id: 3,
                      name: 'Batola',
                      imageUrl: 'assets/images/kota3.png',
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    rekomendasiKost() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Rekomendasi Kost',
              style: GoogleFonts.poppins(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            KostCard(Kost()),
            KostCard(Kost()),
            KostCard(Kost()),
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
            rekomendasiKost(),
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
