// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';

// class GroupPhotoBox extends StatelessWidget {
//   GroupPhotoBox({
//     Key? key,
//     required this.BoxTitle,
//     required this.onPressed,
//   }) : super(key: key);

//   List<String> UrlImageGroup = [
//     'assets/images/avoid1.jpeg',
//     'assets/images/avoid2.png',
//     'assets/images/avoid3.png',
//     'assets/images/avoid4.gif',
    
//   ];

//   final String BoxTitle;
//   final VoidCallback onPressed;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 BoxTitle,
//                 style: const TextStyle(
//                   color: Colors.black,
//                   fontSize: 18,
//                   fontWeight: FontWeight.w900,
//                 ),
//               ),
//             ],
//           ),
//         ),
//         CarouselSlider.builder(
//             itemCount: UrlImageGroup.length,
//             options: CarouselOptions(
//               height: 400,
//               autoPlay: true,
//               reverse: true,
//               enlargeCenterPage: true,
//               enlargeStrategy: CenterPageEnlargeStrategy.height,
//               autoPlayInterval: const Duration(seconds: 2),
//             ),
//             itemBuilder: (context, index, realindex) {
//               return Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 15),
//                 child: Container(
//                   padding: const EdgeInsets.all(3),
//                   decoration: BoxDecoration(
//                     boxShadow: const [
//                       BoxShadow(
//                         offset: Offset(2, 2),
//                         blurRadius: 7,
//                         color: Color.fromARGB(141, 0, 0, 0),
//                       )
//                     ],
//                     color: Colors.black,
//                     borderRadius: BorderRadius.circular(5),
//                   ),
//                   child: Container(
//                     width: double.infinity,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(5),
//                       image: DecorationImage(
//                           image: AssetImage(
//                             UrlImageGroup[index],
//                           ),
//                           fit: BoxFit.cover),
//                     ),
//                   ),
//                 ),
//               );
//             }),
//       ],
//     );
//   }
// }

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class GroupPhotoBox extends StatelessWidget {
  GroupPhotoBox({
    Key? key,
    required this.BoxTitle,
    required this.onPressed,
  }) : super(key: key);

  List<String> UrlImageGroup = [
    'assets/images/avoid1.jpeg',
    'assets/images/avoid2.png',
    'assets/images/avoid3.png',
    'assets/images/avoid4.gif',
  ];

  final String BoxTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                BoxTitle,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
        ),
        CarouselSlider.builder(
          itemCount: UrlImageGroup.length,
          options: CarouselOptions(
            height: 400,
            autoPlay: true,
            reverse: true,
            enlargeCenterPage: true,
            enlargeStrategy: CenterPageEnlargeStrategy.height,
            autoPlayInterval: const Duration(seconds: 2),
          ),
          itemBuilder: (context, index, realindex) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: GestureDetector(
                onTap: () {
                  print('Tapped image at index $index');
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return FullScreenImageScreen(
                        imageUrl: UrlImageGroup[index]);
                  }));
                },
                child: Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(2, 2),
                        blurRadius: 7,
                        color: Color.fromARGB(141, 0, 0, 0),
                      )
                    ],
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Hero(
                    tag: UrlImageGroup[index],
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                          image: AssetImage(
                            UrlImageGroup[index],
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}

class FullScreenImageScreen extends StatelessWidget {
  final String imageUrl;

  const FullScreenImageScreen({Key? key, required this.imageUrl})
      : super(key: key);

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
