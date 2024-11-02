import 'dart:ui';

import 'package:flutter/src/painting/text_style.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class Styles {
  static TextStyle titleMedium = GoogleFonts.montserrat(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static TextStyle textStyle20 = GoogleFonts.elMessiri(
    fontSize: 20,
    fontWeight: FontWeight.normal,
  );
  static const textStyle30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.normal,
  );
  static const textStyle14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  ); static const textStyle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

}
