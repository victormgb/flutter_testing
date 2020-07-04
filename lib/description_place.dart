import 'package:flutter/material.dart';
import 'button_purple.dart';

class DescriptionPlace extends StatelessWidget {

    final star_half = Container(
        margin: EdgeInsets.only(
        top: 350,
        right: 3.0,
        ),
        child: Icon(
          Icons.star_half,
          color: Color(0xFFf2C611),
        ),
    );

    final star_border = Container(
        margin: EdgeInsets.only(
        top: 350,
        right: 3.0,
        ),
        child: Icon(
          Icons.star_border,
          color: Color(0xFFf2C611),
        ),
    );

    String namePlace;
    int stars;
    String descriptionPlace;

    DescriptionPlace(this.namePlace,this.stars,this.descriptionPlace);

  @override
  Widget build(BuildContext context) {
    final star = Container(
      margin: EdgeInsets.only(
        top: 350,
        right: 3.0,
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );


    final description = Container(
        margin: const EdgeInsets.all(10.0),
        child: Text(
          descriptionPlace,
          style: const TextStyle(
            fontSize: 16.0, 
            fontWeight: FontWeight.bold,
            color: Color(0xFF56575a),
            fontFamily: "Lato"
            ),
        ));

    final title_stars = Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 350.0, left: 20.0, right: 20.0),
              child: Text(
                namePlace,
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w900,fontFamily: "Lato"),
                textAlign: TextAlign.left,
              ),
            ),
            Row(
              children: <Widget>[star, star, star, star, star],
            ),
          ],
        );


    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        title_stars,
        description,  
        ButtonPurple("Navigate")
      ],
    );
  }
}
