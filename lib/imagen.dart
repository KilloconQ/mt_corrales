import 'package:flutter/material.dart';

String img = '';

class imagen extends StatelessWidget {
  void setimage(String imagen) {
    img = imagen;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: MediaQuery.of(context).size.height,
      child: Card(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(img, width: MediaQuery.of(context).size.width * .8)
          ],
        ),
      ),
    );
  }
}
