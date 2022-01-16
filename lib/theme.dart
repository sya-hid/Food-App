import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

Color colorPutih = Color(0xFFFFFFFF);
Color colorHitam = Color(0xFF212121);
Color colorBiru = Color(0xFF4BB7D8);
// Color colorMerah = Color(0xFFD4767F);
// Color colorKuning = Color(0xFFF7C35E);

TextStyle textHitam = GoogleFonts.poppins(
  color: colorHitam,
);

TextStyle textBiru = GoogleFonts.poppins(
  color: colorBiru,
);

TextStyle textHitam50 = GoogleFonts.poppins(
  color: colorHitam.withOpacity(0.5),
);


TextStyle textPutih = GoogleFonts.poppins(
  color: colorPutih
);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
