// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';

// class AdsBox extends StatelessWidget {
//   AdsBox({Key? key, required this.revere}) : super(key: key);

//   List<String> UrlImageAds = [
//     'assets/images/real/bread.jpeg',
//     'assets/images/real/meat.jpeg',
//     'assets/images/real/sayur.jpeg',
//     'assets/images/real/spicy.jpeg',
//   ];
//   final bool revere;

//   @override
//   Widget build(BuildContext context) {
//     return CarouselSlider.builder(
//         itemCount: 4,
//         options: CarouselOptions(
//           height: 200,
//           autoPlay: true,
//           reverse: revere,
//           enlargeCenterPage: true,
//           autoPlayInterval: const Duration(seconds: 4),
//         ),
//         itemBuilder: (context, index, realindex) {
//           return Padding(
//             padding: const EdgeInsets.symmetric(vertical: 15),
//             child: Container(
//               width: double.infinity,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   image: DecorationImage(
//                       image: AssetImage(
//                         UrlImageAds[index],
//                       ),
//                       fit: BoxFit.cover),
//                   boxShadow: const [
//                     BoxShadow(
//                       offset: Offset(0, 2),
//                       blurRadius: 5,
//                       color: Color.fromARGB(117, 0, 0, 0),
//                     )
//                   ]),
//             ),
//           );
//         });
//   }
// }

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class AdsBox extends StatelessWidget {
  AdsBox({Key? key, required this.revere}) : super(key: key);

  List<String> UrlImageAds = [
    'assets/images/real/bread.jpeg',
    'assets/images/real/meat.jpeg',
    'assets/images/real/sayur.jpeg',
    'assets/images/real/spicy.jpeg',
  ];
  final bool revere;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: 4,
      options: CarouselOptions(
        height: 200,
        autoPlay: true,
        reverse: revere,
        enlargeCenterPage: true,
        autoPlayInterval: const Duration(seconds: 4),
      ),
      itemBuilder: (context, index, realindex) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: GestureDetector(
            onTap: () {
              // Handle tap event here, e.g., open the image in a dialog or navigate to a detail screen
              print('Tapped image at index $index');
               Navigator.push(context, MaterialPageRoute(builder: (_) {
                return FullScreenImageScreen(imageUrl: UrlImageAds[index]);
              }));
            },
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(
                    UrlImageAds[index],
                  ),
                  fit: BoxFit.cover,
                ),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 2),
                    blurRadius: 5,
                    color: Color.fromARGB(117, 0, 0, 0),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
class FullScreenImageScreen extends StatelessWidget {
  final String imageUrl;

  const FullScreenImageScreen({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          color: Colors.black,
          child: Center(
            child: Hero(
              tag: imageUrl,
              child: Image.asset(
                imageUrl,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ),
    );
  }
}