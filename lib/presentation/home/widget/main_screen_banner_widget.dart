import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MainScreenBannerWidget extends StatefulWidget {
  const MainScreenBannerWidget({super.key});

  @override
  State<MainScreenBannerWidget> createState() => _MainScreenBannerWidgetState();
}

class _MainScreenBannerWidgetState extends State<MainScreenBannerWidget> {
  final CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        'assets/images/icons/main/banner1.png',
        'assets/images/icons/main/banner2.png',
        'assets/images/icons/main/banner3.png'
      ].map((imagePath) {
        return Builder(
          builder: (context) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            );
          },
        );
      }).toList(),
      options: CarouselOptions(
        autoPlay: true,
        enlargeCenterPage: true,
        viewportFraction: 0.85,
        aspectRatio: 16 / 9,
        enlargeFactor: 0.15
      ),
    );
  }
}
