import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:watatrip/flutter_flow/image.dart';

class CarouselImage extends StatelessWidget {
  const CarouselImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: GlobalVariables.images.map(
        (i) {
          return Builder(
            builder: (BuildContext context) => Image.network(
              i,
              fit: BoxFit.cover,
              height: 250,
              width: double.infinity,
            ),
          );
        },
      ).toList(),
      options: CarouselOptions(
        viewportFraction: 1,
        height: 200,
      ),
    );
  }
}
