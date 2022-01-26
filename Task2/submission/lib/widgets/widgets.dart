import 'package:flutter/material.dart';

class HotelCard extends StatelessWidget {
  const HotelCard({Key? key, required this.image, required this.title})
      : super(key: key);
  final String title;
  final AssetImage image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 200,
      // here changing the width and height is not doing anything :( ?? why!!!
      // also i was not able to control the size of the gridlist.. i think all this
      // f**kup is because of using expanded widget
      padding: EdgeInsets.all(15),
      child: Stack(
        fit: StackFit.loose,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image(
              fit: BoxFit.fill,
              image: image,
              width: 130,
              height: 200,
            ),
          ),
          Container(
            width: 150,
            height: 200,
            padding: EdgeInsets.only(left: 10.0, bottom: 15.0),
            alignment: Alignment.bottomLeft,
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}

class IslandCard extends StatelessWidget {
  const IslandCard(
      {Key? key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.rating})
      : super(key: key);

  final String title;
  final String subtitle;
  final double rating;
  final AssetImage image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 300,
      padding: EdgeInsets.all(15),
      child: Stack(
        fit: StackFit.loose,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image(
              fit: BoxFit.fill,
              image: image,
              width: 300,
              height: 150,
            ),
          ),
          Container(
              width: 300,
              height: 60,
              padding: EdgeInsets.only(right: 10.0, top: 10.0),
              alignment: Alignment.topRight,
              child: Icon(
                Icons.favorite_border,
                color: Colors.white,
              )),
          Container(
              width: 300,
              height: 205,
              padding: EdgeInsets.only(left: 10.0, bottom: 30.0),
              alignment: Alignment.bottomLeft,
              child: Icon(Icons.star)),
          Container(
            width: 300,
            height: 205,
            padding: EdgeInsets.only(left: 35.0, bottom: 32),
            alignment: Alignment.bottomLeft,
            child: Text(
              rating.toString(),
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ),
          Container(
            width: 300,
            height: 230,
            padding: EdgeInsets.only(left: 10.0, bottom: 30.0),
            alignment: Alignment.bottomLeft,
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          Container(
            width: 300,
            height: 250,
            padding: EdgeInsets.only(left: 10.0, bottom: 30.0),
            alignment: Alignment.bottomLeft,
            child: Text(
              subtitle,
              style: TextStyle(color: Colors.black, fontSize: 17),
            ),
          ),
        ],
      ),
    );
  }
}
