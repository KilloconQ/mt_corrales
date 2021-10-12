import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'buscar.dart';

class menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menú',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Menú', style: GoogleFonts.openSans(fontSize: 25)),
          backgroundColor: Colors.green,
        ),
        body: buscar(),
        backgroundColor: Colors.white,
      ),
    );
  }
}
