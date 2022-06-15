import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ngekos/model/kost_model.dart';
import 'package:ngekos/theme.dart';

class KostCard extends StatelessWidget {
  final Kost kost;
  KostCard(this.kost);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Container(
              width: 130,
              height: 110,
              child: Image.asset(
                'assets/images/kost1.png',
                width: 130,
                height: 110,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Jkost',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: medium,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Row(
                children: [
                  Text(
                    'RP. 800.000',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffFF9376),
                    ),
                  ),
                  Text(
                    ' / Bulan',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: Color(0xff7A7E86),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Banjarmasin, Indonesia',
                style: GoogleFonts.poppins(
                  color: Color(0xff7A7E86),
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
