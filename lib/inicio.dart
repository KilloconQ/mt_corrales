import 'package:flutter/material.dart';
import 'web.dart';
import 'contacto.dart';
import 'acerca.dart';
import 'menu.dart';
import 'package:google_fonts/google_fonts.dart';

class inicio extends StatefulWidget {
  @override
  _inicioState createState() => _inicioState();
}

class _inicioState extends State<inicio> {
  int mi_indice = 0;
  final pantallas = <Widget>[
    acerca(),
    contacto(),
    web("https://bisquetsobregon.com/"),
    menu()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: IndexedStack(index: mi_indice, children: pantallas),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.green[800],
              selectedItemColor: Colors.white,
              iconSize: 40,
              currentIndex: mi_indice,
              onTap: (index) => setState(() => mi_indice = index),
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home), label: 'Quienes somos'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.add_ic_call), label: 'Contactanos'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.web_asset), label: 'Web'),
                BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Menú')
              ],
            )));
  }
}
