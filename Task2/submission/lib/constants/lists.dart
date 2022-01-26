import 'package:flutter/material.dart';
import 'package:submission/widgets/widgets.dart';

List<HotelCard> hotels = <HotelCard>[
  const HotelCard(
    title: "Amasterdam",
    image: AssetImage('assets/images/amsterdam.jpg'),
  ),
  const HotelCard(
    title: "Berlin",
    image: AssetImage('assets/images/berlin.jpg'),
  ),
  const HotelCard(
    title: "New Delhi",
    image: AssetImage('assets/images/newdelhi.jpg'),
  ),
  const HotelCard(
    title: "Mumbai",
    image: AssetImage('assets/images/mumbai.jpg'),
  ),
];

List<IslandCard> islands = <IslandCard>[
  const IslandCard(
    title: "Maldives Resort",
    subtitle: "Maldives",
    rating: 4.8,
    image: AssetImage('assets/images/amsterdam.jpg'),
  ),
  const IslandCard(
    title: "Goa Resort",
    subtitle: "Goa",
    rating: 4.5,
    image: AssetImage('assets/images/goa.jpg'),
  ),
  const IslandCard(
    title: "Daman Resort",
    subtitle: "Daman And Diu",
    rating: 3.8,
    image: AssetImage('assets/images/damananddiu.jpg'),
  ),
];
