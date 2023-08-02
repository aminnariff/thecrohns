import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:thecrohns/models/ModelProvider.dart';
import 'package:thecrohns/screens/profileScreen.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/customNavBar.dart';

// void main() => runApp(FitnessApp());

class FitnessApp extends StatelessWidget {
  static const routeName = "/fitnessScreen";
  
  // const FitnessApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Fitness App',
//       // theme: ThemeData(primarySwatch: Colors.blue),
//       home: FitnessScreen(),
//     );
//   }
// }

// class FitnessScreen extends StatelessWidget {
//   final List<Exercise> exercises = [
//     Exercise(
//       name: 'Yoga',
//       videoUrl: 'https://youtu.be/nQwKKCqkJxg',
//     ),
//     Exercise(
//       name: 'Breathing',
//       videoUrl: 'https://youtu.be/acUZdGd_3Dg',
//     ),
//     Exercise(
//       name: 'Cycling',
//       videoUrl: 'https://youtu.be/4ssLDk1eX9w',
//     ),
//     Exercise(
//       name: 'Swimming',
//       videoUrl: 'https://youtu.be/pFN2n7CRqhw',
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color.fromRGBO(35, 47, 52, 1),
//         title: Text(
//           'Crohn\'s Fitness',
//           style: TextStyle(
//             fontSize: 24,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         actions: [
//           PopupMenuButton<String>(
//             itemBuilder: (context) => [
//               PopupMenuItem<String>(
//                 value: 'profile',
//                 child: Text(
//                   'Profile',
//                   style: TextStyle(
//                     fontSize: 16,
//                     color: Colors.black,
//                   ),
//                 ),
//               ),
//               PopupMenuItem<String>(
//                 value: 'signOut',
//                 child: Text(
//                   'Sign Out',
//                   style: TextStyle(
//                     fontSize: 16,
//                     color: Colors.black,
//                   ),
//                 ),
//               ),
//             ],
//             onSelected: (value) {
//               if (value == 'profile') {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => ProfileScreen(),
//                   ),
//                 );
//               } else if (value == 'signOut') {
//                 _signOut();
//               }
//             },
//             child: Icon(
//               Icons.account_circle,
//               size: 40,
//               color: Colors.white,
//             ),
//           ),
//         ],
//       ),
//       body: Container(
//         padding: EdgeInsets.all(16.0),
//         child: ListView.builder(
//           itemCount: exercises.length,
//           itemBuilder: (context, index) {
//             return Card(
//               elevation: 10,
//               color: Colors.grey.shade200,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(16.0),
//               ),
//               child: ListTile(
//                 onTap: () {
//                   launch(exercises[index].videoUrl);
//                 },
//                 title: Text(
//                   exercises[index].name,
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//       bottomNavigationBar: CustomNavBar(
//         feedback: true,
//       ),
//       )
//     );
//   }
// }



Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(35, 47, 52, 1),
          title: Text(
            'Crohn\'s',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            PopupMenuButton<String>(
              itemBuilder: (context) => [
                PopupMenuItem<String>(
                  value: 'profile',
                  child: Text(
                    'Profile',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ),
                PopupMenuItem<String>(
                  value: 'signOut',
                  child: Text(
                    'Sign Out',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
              onSelected: (value) {
                if (value == 'profile') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfileScreen(),
                    ),
                  );
                } else if (value == 'signOut') {
                  _signOut();
                }
              },
              child: Icon(
                Icons.account_circle,
                size: 40,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: _fitnesspage(context),
        backgroundColor: Colors.white,
        bottomNavigationBar: CustomNavBar(
          feedback: true,
        ),
      ),
    );
  }

  Widget _fitnesspage(BuildContext context) {
    return FutureBuilder<List<Fitness>>(
      future: _fetchLearn(),
      builder: (BuildContext context, AsyncSnapshot<List<Fitness>> snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (BuildContext context, int index) {
              final learn = snapshot.data![index];
              return Card(
                elevation: 10,
                shadowColor: Colors.black,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: InkWell(
                  onTap: () {
                    _launchInBrowser(learn.tutorialLink.toString());
                  },
                  child: SizedBox(
                    height: 100, // Adjust the desired height
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 150, // Adjust the desired width
                          height: double.infinity,
                          child: learn.imgAssetUrl != null
                              ? CachedNetworkImage(
                                  errorWidget: (context, url, dynamic error) =>
                                      const Icon(Icons.error_outline_outlined),
                                  imageUrl: learn.imgAssetUrl!,
                                  fit: BoxFit.cover,
                                )
                              : SizedBox(), // Use a SizedBox if imgAssetUrl is null
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Text(
                                    learn.title.toString(),
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }



//  Widget _fitnesspage(BuildContext context) {
//     return FutureBuilder<List<Fitness>>(
//       future:
//           _fetchLearn(), // Call the method to fetch articles asynchronously
//       builder: (BuildContext context, AsyncSnapshot<List<Fitness>> snapshot) {
//         if (snapshot.hasData) {
//           return ListView.builder(
//             itemCount: snapshot.data!.length,
//             itemBuilder: (BuildContext context, int index) {
//               final learn = snapshot.data![index];
//               return Card(
//                 elevation: 10,
//                 shadowColor: Colors.black,
//                 color: Colors.grey.shade200,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(15.0),
//                 ),
//                 child: ListTile(
//                   leading: 
//                   CachedNetworkImage(
//                     errorWidget: (context, url, dynamic error) =>
//                         const Icon(Icons.error_outline_outlined),
//                     imageUrl: learn.imgAssetUrl!,
//                     cacheKey: learn.imgAssetKey,
//                     width: double.maxFinite,
//                     height: 500,
//                     alignment: Alignment.topCenter,
//                     fit: BoxFit.fill,
//                   ),
//                   // Image.asset(
//                   //   learn.imgAssetUrl,
//                   //   width: 80,
//                   //   height: 80,
//                   //   fit: BoxFit.cover,
//                   // ),
//                   title: Text(
//                     learn.title.toString(),
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black,
//                     ),
//                   ),
//                   onTap: () {
//                     _launchInBrowser(learn.tutorialLink.toString());
//                   },
//                 ),
//               );
//             },
//           );
//         } else if (snapshot.hasError) {
//           return Text('Error: ${snapshot.error}');
//         } else {
//           return CircularProgressIndicator(); // Show a loading indicator while fetching data
//         }
//       },
//     );
//   }

  Future<List<Fitness>> _fetchLearn() async {
    try {
      final learn = await Amplify.DataStore.query(Fitness.classType);
      return learn;
    } catch (e) {
      print('Error fetching learn: $e');
      return [];
    }
  }

// Function to launch a URL
// void _launchURL(String url) async {
//   if (await canLaunch(url)) {
//     await launch(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }
// void _launchURL(String url) async {
//     Uri uri = Uri.parse(url); // Convert the URL string to a Uri object
//     if (await canLaunchUrl(uri)) {
//       await launchUrl(uri);
//     } else {
//       throw 'Could not launch $url';
//     }
//   }

Future<void> _launchInBrowser(String url) async {
    Uri uri = Uri.parse(url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $uri');
    }
  }

  Future<void> _signOut() async {
    try {
      await Amplify.Auth.signOut();
      print('Sign out succeeded');
    } catch (e) {
      print('Error signing out: $e');
    }
  }
}

