import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class sucursal extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
      child: Image.network(
          'https://imagenes.milenio.com/_L9YkA8lG60qAZtK4n85cATq2X8=/958x596/https://www.milenio.com/uploads/media/2020/06/10/sucrusal-de-bisquets-obregon-bisquetsobregon_0_1_1081_672.jpg'));
}

class logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
      child: Image.network(
          'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.facturartickets.com%2Fwp-content%2Fuploads%2F2018%2F12%2FBisquets-Obreg%25C3%25B3n.png&f=1&nofb=1'));
}

class descripcion extends StatelessWidget {
  final String desc = 'Desde hace más de 70 años Bisquets Obregón ha brindando a las familias mexicanas sabor, calidad y frescura en cada uno de sus alimentos.\n\n' +
      'Hoy en Bisquets Obregón nos esforzamos por llegar más allá, ofreciéndote una nueva forma para disfrutar nuestro sabor que va con tu estilo de vida.\n\n' +
      'Así es como surge Bisquets Obregón Pan y Café, con un sentido dinámico y fresco, que responde a las necesidades de la vida moderna.\n\n' +
      'Ahora puedes disfrutar de espacios cómodos y prácticos, para comer dentro o para llevar el delicioso café con leche,' +
      'el pan horneado y alimentos para desayunar, comer y cenar. Nuestras instalaciones están diseñadas para ti, que buscas un espacio tranquilo, ' +
      'un ambiente amable y agradable con acceso a internet. Te invitamos a conocer la nueva forma de saborear la tradición en Bisquets Obregón Pan y Café.\n\n';

  @override
  Widget build(BuildContext context) => Container(
      margin: EdgeInsets.all(5.0),
      child: Text(
        desc,
        textAlign: TextAlign.center,
        style: GoogleFonts.openSans(fontSize: 15),
      ));
}

class acerca extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quienes somos', style: GoogleFonts.openSans(fontSize: 25)),
        backgroundColor: Colors.green[800],
      ),
      body: SingleChildScrollView(
          child: Column(children: <Widget>[logo(), descripcion(), sucursal()])),
    );
  }
}
