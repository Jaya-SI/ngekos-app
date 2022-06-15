import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ngekos/theme.dart';

import '../model/city_model.dart';

class CityCard extends StatelessWidget {
  final City city;
  CityCard(this.city);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        width: 215,
        height: 245,
        color: Color(0xffECEDEF),
        child: Column(
          children: [
            Image.asset(
              '${city.imageUrl}',
              width: 215,
              height: 170,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '${city.name}',
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
