import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mt_corrales/imagen.dart';
import 'obtienedatos.dart';
import 'regreso.dart';

class buscar extends StatefulWidget {
  @override
  _buscarState createState() => _buscarState();
}

class _buscarState extends State<buscar> {
  String comida = 'Burger';

  Future<void> dato(String valor) async {
    obtienedatos dat = new obtienedatos();
    imagen img = new imagen();
    String eleccion = '';
    setState(() {
      eleccion = valor.toLowerCase();
    });
    regreso r = await dat.getdatos(eleccion);
    comida = r.comida;
    img.setimage(comida);
  }

  String dropdownValue = 'Burger';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            DropdownButton<String>(
                value: dropdownValue,
                icon: const Icon(Icons.search),
                iconSize: 30,
                dropdownColor: Colors.green,
                focusColor: Colors.white,
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: <String>[
                  'Biryani',
                  'Burger',
                  'Butter-chicken',
                  'Dessert',
                  'Dosa',
                  'Idly',
                  'Pasta',
                  'Pizza',
                  'Rice',
                  'Samosa'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem(
                      value: value,
                      child: Container(
                          margin: EdgeInsets.all(5), child: Text(value)));
                }).toList()),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: EdgeInsets.all(15),
                    child: ElevatedButton(
                      onPressed: () {
                        dato(dropdownValue);
                      },
                      child: Text(
                        'Buscar',
                        style: GoogleFonts.openSans(
                            fontSize: 20, color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(primary: Colors.green),
                    ))
              ],
            ),
            imagen()
          ],
        ),
      ),
    );
  }
}
