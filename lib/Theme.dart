import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
                   dividerColor: Colors.transparent,
 
      cardTheme:  CardTheme(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
        ),
      ),
      fontFamily: 'El Messiri',
      scaffoldBackgroundColor: Colors.white,
      primarySwatch: buildMaterialColor(Color(0xFF9ED0D2)),
      canvasColor: Colors.white,
    
      // appBarTheme:  AppBarTheme(
      //     // ignore: deprecated_member_use
      //     backwardsCompatibility: false,
      //     systemOverlayStyle: SystemUiOverlayStyle(
      //       statusBarColor: Colors.black,
      //       statusBarIconBrightness: Brightness.light,
      //     ),
      //     color: Colors.transparent,
      //     centerTitle: true,
      //     elevation: 0.0,
      //     iconTheme: IconThemeData(color: Colors.black)),
    );
  }
  
  static MaterialColor buildMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  strengths.forEach((strength) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  });
  return MaterialColor(color.value, swatch);
}

}
