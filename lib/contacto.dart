import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:io';

class contacto extends StatefulWidget {
  @override
  _contactoState createState() => _contactoState();
}

class _contactoState extends State<contacto> {
  hacerLlamada() async {
    const url = 'tel:+525555436779';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'error al llamar la $url';
    }
  }

  open_whatsapp(String message, String destinatario) async {
    var whatsapp = destinatario;
    var whatsappURL_android =
        'whatsapp://send?phone=' + whatsapp + "&text=" + message;
    var whatappURL_ios = "https://wa.me/$whatsapp?text=${Uri.parse(message)}";
    //ios
    if (Platform.isIOS) {
      if (await canLaunch(whatappURL_ios)) {
        await launch(whatappURL_ios, forceSafariVC: false);
      } else {
        try {
          launch(whatappURL_ios, forceSafariVC: false);
        } catch (e) {
          print(e);
          print('Whatsapp no está instalado');
        }
      }
    } else {
      print(whatsappURL_android);
      if (await canLaunch(whatsappURL_android)) {
        await launch(whatsappURL_android);
      } else {
        try {
          launch(whatsappURL_android);
        } catch (e) {
          print(e);
          print('Whatsapp no está instalado');
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Contáctanos', style: GoogleFonts.openSans(fontSize: 25)),
        backgroundColor: Colors.green[800],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(30),
              width: 100,
              child: TextButton(
                child:
                    Text('Llamada', style: GoogleFonts.openSans(fontSize: 20)),
                style: ElevatedButton.styleFrom(
                    primary: Colors.green, onPrimary: Colors.white),
                onPressed: hacerLlamada,
              ),
            ),
            Container(
              margin: EdgeInsets.all(30),
              width: 150,
              child: TextButton(
                child:
                    Text('Whatsapp', style: GoogleFonts.openSans(fontSize: 20)),
                style: ElevatedButton.styleFrom(
                    primary: Colors.green, onPrimary: Colors.white),
                onPressed: () {
                  String mensaje = 'Mensaje';
                  String destinatario = 'tel:+525555436779';
                  open_whatsapp(mensaje, destinatario);
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
