// import 'package:amplify_flutter/amplify_flutter.dart';
// import 'package:flutter/material.dart';
// import 'package:thecrohns/screens/profileScreen.dart';
// import '../Controller/Ingredient_Data.dart';
// import '../View/HomeView/HomeBox/Header_Box.dart';
// import '../View/HomeView/HomeBox/Item_Box.dart';
// import '../const/colors.dart';
// import '../utils/helper.dart';
// import '../widgets/customNavBar.dart';
// import '../widgets/searchBar.dart';



// class HomeScreen extends StatelessWidget {
//   static const routeName = "/homeScreen";

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: ListView(
//         physics: const BouncingScrollPhysics(),
//         shrinkWrap: true,
//         children: [
//            HeaderBox(),
//         ]
      
//       // title: 'Crohns App',
//       // theme: ThemeData(
//       //   primaryColor: Color.fromARGB(255, 156, 155, 155),
//       //   appBarTheme: AppBarTheme(
//       //     color: Color.fromARGB(255, 156, 155, 155),
//       //     elevation: 0,
//       //     shape: RoundedRectangleBorder(
//       //       borderRadius: BorderRadius.only(
//       //         bottomLeft: Radius.circular(20),
//       //         bottomRight: Radius.circular(20),
//       //       ),
//       //     ),
//       //   ),
//       //   tabBarTheme: TabBarTheme(
//       //     labelColor: Colors.black,
//       //     unselectedLabelColor: Colors.grey[700],
//       //     indicator: BoxDecoration(
//       //       borderRadius: BorderRadius.circular(20),
//       //       color: Colors.white,
//       //     ),
//       //   ),
//       // ),
//       body: DefaultTabController(
//         length: 2,
//         child: Scaffold(
//           appBar: AppBar(
//             title: Row(
//               children: [
//                 // Icon(Icons.assignment, size: 30),
//                 SizedBox(width: 10),
//                 Text('Crohns'),
//               ],
//             ),
//             actions: [
//               IconButton(
//                 icon: Icon(Icons.account_circle),
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     new MaterialPageRoute(
//                       builder: (context) => new ProfileScreen(),
//                     ),
//                   );
//                 },
//               ),
//             ],
//             bottom: TabBar(
//               tabs: [
//                 Tab(text: 'News'),
//                 Tab(text: 'Learn'),
//               ],
//             ),
//           ),
//           body: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: TextField(
//                   decoration: InputDecoration(
//                     hintText: 'Search...',
//                     prefixIcon: Icon(Icons.search),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(20.0),
//                       borderSide: BorderSide(color: AppColor.primary),
//                     ),
//                     enabledBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(20.0),
//                       borderSide: BorderSide(color: AppColor.primary),
//                     ),
                    
//                   ),
//                 ),
//               ),
//               // ItemsBox(
//               //   bkg: Colors.black,
//               //   futureList: IngredientData.GetIngredientTitle(),
//               //   filterType: 'Ingredient',
//               // ),
//               Expanded(
//                 child: TabBarView(
//                   children: [
//                     Center(
//                       child: ElevatedButton(
//                         child: Text('Sign Out'),
//                         onPressed: () {
//                           _signOut();
//                         },
//                       ),
//                     ),
//                     Center(child: Text('News')),
//                     Center(child: Text('Learn')),
                    
//                   ],
//                 ),
//               ),
//               Positioned(
//                   bottom: 0,
//                   left: 0,
//                   child: CustomNavBar(
//                     plus: true,
//                   ),
//                   ),
//             ],
//           ),
//         ),
//       ),
//       ),
//     );
//   }


//   Future<void> _signOut() async {
//     try {
//       await Amplify.Auth.signOut();
//       print('Sign out succeeded');
//     } catch (e) {
//       print('Error signing out: $e');
//     }
//   }
// }

//   // Widget build(BuildContext context) {
//   //   return MaterialApp(
//   //     title: 'Tab Layout Example',
//   //     theme: ThemeData(
//   //       primaryColor: Colors.grey[300],
//   //       appBarTheme: AppBarTheme(
//   //         color: Colors.grey[300],
//   //         elevation: 0,
//   //         shape: RoundedRectangleBorder(
//   //           borderRadius: BorderRadius.only(
//   //             bottomLeft: Radius.circular(20),
//   //             bottomRight: Radius.circular(20),
//   //           ),
//   //         ),
//   //       ),
//   //       tabBarTheme: TabBarTheme(
//   //         labelColor: Colors.black,
//   //         unselectedLabelColor: Colors.grey[700],
//   //         indicator: BoxDecoration(
//   //           borderRadius: BorderRadius.circular(20),
//   //           color: Colors.white,
//   //         ),
//   //       ),
//   //     ),

//   //     home: DefaultTabController(
//   //       length: 2,
//   //       child: Scaffold(
//   //         appBar: AppBar(
//   //           title: Text('Search Bar and Tab Layout Example'),
//   //           bottom: TabBar(
//   //             tabs: [
//   //               Tab(text: 'News'),
//   //               Tab(text: 'Learn'),
//   //             ],
//   //           ),
//   //         ),
//   //         body: Column(
//   //           children: [
//   //             Padding(
//   //               padding: const EdgeInsets.all(8.0),
//   //               child: TextField(
//   //                 decoration: InputDecoration(
//   //                   hintText: 'Search...',
//   //                   prefixIcon: Icon(Icons.search),
//   //                   border: OutlineInputBorder(
//   //                     borderRadius: BorderRadius.circular(20.0),
//   //                     borderSide: BorderSide(color: AppColor.primary),
//   //                   ),
//   //                   enabledBorder: OutlineInputBorder(
//   //                     borderRadius: BorderRadius.circular(20.0),
//   //                     borderSide: BorderSide(color: AppColor.primary),
//   //                   ),
//   //                 ),
//   //               ),
//   //             ),
//   //             Expanded(
//   //               child: TabBarView(
//   //                 children: [
//   //                   Center(child: Text('News')),
//   //                   Center(child: Text('Learn')),
//   //                 ],
//   //               ),
//   //             ),
//   //             Positioned(
//   //             bottom: 0,
//   //             left: 0,
//   //             child: CustomNavBar(
//   //               plus: true,
//   //             )),
//   //           ],
//   //         ),
//   //       ),
//   //     ),
//   //   );
//   // }

//   // Widget build(BuildContext context) {
//   //   return Scaffold(
//   //     body: Stack(
//   //       children: [
//   //         SafeArea(
//   //           child: SingleChildScrollView(
//   //             child: Column(
//   //               crossAxisAlignment: CrossAxisAlignment.start,
//   //               children: [
//   //                 SizedBox(
//   //                   height: 20,
//   //                 ),
//   //                 Padding(
//   //                   padding: const EdgeInsets.symmetric(
//   //                     horizontal: 20,
//   //                   ),
//   //                   child: Row(
//   //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//   //                     children: [
//   //                       Text(
//   //                         "Crohns",
//   //                         style: Helper.getTheme(context).headline5,
//   //                       ),
//   //                       Image.asset(Helper.getAssetName("user.png", "virtual"))
//   //                     ],
//   //                   ),
//   //                 ),
//   //                 SizedBox(
//   //                   height: 20,
//   //                 ),
//   //                 Padding(
//   //                   padding: const EdgeInsets.symmetric(
//   //                     horizontal: 20,
//   //                   ),
//   //                   child: Text("Hello Aina!"),
//   //                 ),
//   //                 Padding(
//   //                   padding: const EdgeInsets.symmetric(
//   //                     horizontal: 20,
//   //                   ),
//   //                   // child: DropdownButtonHideUnderline(
//   //                   //   child: SizedBox(
//   //                   //     width: 250,
//   //                   //     child: DropdownButton(
//   //                   //       value: "current location",
//   //                   //       items: [
//   //                   //         DropdownMenuItem(
//   //                   //           child: Text("Current Location"),
//   //                   //           value: "current location",
//   //                   //         ),
//   //                   //       ],
//   //                   //       icon: Image.asset(
//   //                   //         Helper.getAssetName(
//   //                   //             "dropdown_filled.png", "virtual"),
//   //                   //       ),
//   //                   //       style: Helper.getTheme(context).headline4,
//   //                   //       onChanged: (_) {},
//   //                   //     ),
//   //                   //   ),
//   //                   // ),
//   //                 ),
//   //                 SizedBox(
//   //                   height: 20,
//   //                 ),
//   //                 SearchBar(
//   //                   title: "Search",
//   //                 ),
//   //                 SizedBox(
//   //                   height: 20,
//   //                 ),

//   //                 Container(
//   //                   width: double.infinity,
//   //                   padding: const EdgeInsets.only(
//   //                     left: 20,
//   //                   ),
//   //                   child: SingleChildScrollView(
//   //                     scrollDirection: Axis.horizontal,
//   //                     child: Row(
//   //                       children: [
//   //                         /*
//   //                         CategoryCard(
//   //                           image: Image.asset(
//   //                             Helper.getAssetName("hamburger2.jpg", "real"),
//   //                             fit: BoxFit.cover,
//   //                           ),
//   //                           name: "Offers",
//   //                         )
//   //                         //
//   //                         ,
//   //                         SizedBox(
//   //                           width: 10,
//   //                         ),
//   //                         CategoryCard(
//   //                           image: Image.asset(
//   //                             Helper.getAssetName("rice2.jpg", "real"),
//   //                             fit: BoxFit.cover,
//   //                           ),
//   //                           name: "Sri Lankan",
//   //                         )
//   //                         //
//   //                         ,
//   //                         SizedBox(
//   //                           width: 10,
//   //                         ),
//   //                         CategoryCard(
//   //                           image: Image.asset(
//   //                             Helper.getAssetName("fruit.jpg", "real"),
//   //                             fit: BoxFit.cover,
//   //                           ),
//   //                           name: "Italian",
//   //                         )
//   //                         //
//   //                         ,
//   //                         SizedBox(
//   //                           width: 10,
//   //                         ),
//   //                         CategoryCard(
//   //                           image: Image.asset(
//   //                             Helper.getAssetName("rice.jpg", "real"),
//   //                             fit: BoxFit.cover,
//   //                           ),
//   //                           name: "Indian",
//   //                         )
//   //                         //
//   //                         , */
//   //                         SizedBox(
//   //                           width: 10,
//   //                         ),
//   //                       ],
//   //                     ),
//   //                   ),
//   //                 ),
//   //                 SizedBox(
//   //                   height: 50,
//   //                 ),
//   //                 Padding(
//   //                   padding: const EdgeInsets.symmetric(horizontal: 20.0),
//   //                   child: Row(
//   //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//   //                     children: [
//   //                       Text(
//   //                         "Popular Restaurants",
//   //                         style: Helper.getTheme(context).headline5,
//   //                       ),
//   //                       TextButton(onPressed: () {}, child: Text("View all"))
//   //                     ],
//   //                   ),
//   //                 ),
//   //                 SizedBox(
//   //                   height: 20,
//   //                 ),
//   //                 /*
//   //                 RestaurantCard(
//   //                   image: Image.asset(
//   //                     Helper.getAssetName("pizza2.jpg", "real"),
//   //                     fit: BoxFit.cover,
//   //                   ),
//   //                   name: "Minute by tuk tuk",
//   //                 ),
//   //                 RestaurantCard(
//   //                   image: Image.asset(
//   //                     Helper.getAssetName("breakfast.jpg", "real"),
//   //                     fit: BoxFit.cover,
//   //                   ),
//   //                   name: "Cafe de Noir",
//   //                 ),
//   //                 RestaurantCard(
//   //                   image: Image.asset(
//   //                     Helper.getAssetName("bakery.jpg", "real"),
//   //                     fit: BoxFit.cover,
//   //                   ),
//   //                   name: "Bakes by Tella",
//   //                 )
//   //                 ,*/
//   //                 SizedBox(
//   //                   height: 50,
//   //                 ),
//   //                 Padding(
//   //                   padding: const EdgeInsets.symmetric(horizontal: 20.0),
//   //                   child: Row(
//   //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//   //                     children: [
//   //                       Text(
//   //                         "Most Popular",
//   //                         style: Helper.getTheme(context).headline5,
//   //                       ),
//   //                       TextButton(
//   //                         onPressed: () {},
//   //                         child: Text("View all"),
//   //                       ),
//   //                     ],
//   //                   ),
//   //                 ),
//   //                 SizedBox(
//   //                   height: 20,
//   //                 ),
//   //                 Container(
//   //                   height: 250,
//   //                   width: double.infinity,
//   //                   padding: const EdgeInsets.only(left: 20),
//   //                   child: SingleChildScrollView(
//   //                     scrollDirection: Axis.horizontal,
//   //                     child: Row(
//   //                       children: [
//   //                         /*
//   //                         MostPopularCard(
//   //                           image: Image.asset(
//   //                             Helper.getAssetName("pizza4.jpg", "real"),
//   //                             fit: BoxFit.cover,
//   //                           ),
//   //                           name: "Cafe De Bambaa",
//   //                         ),
//   //                         SizedBox(
//   //                           width: 30,
//   //                         ),
//   //                         MostPopularCard(
//   //                           name: "Burger by Bella",
//   //                           image: Image.asset(
//   //                             Helper.getAssetName("dessert3.jpg", "real"),
//   //                             fit: BoxFit.cover,
//   //                           ),
//   //                         )*/
//   //                       ],
//   //                     ),
//   //                   ),
//   //                 ),
//   //                 SizedBox(
//   //                   height: 20,
//   //                 ),
//   //                 Padding(
//   //                   padding: const EdgeInsets.symmetric(horizontal: 20),
//   //                   child: Row(
//   //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//   //                     children: [
//   //                       Text(
//   //                         "Recent Items",
//   //                         style: Helper.getTheme(context).headline5,
//   //                       ),
//   //                       TextButton(
//   //                         onPressed: () {},
//   //                         child: Text("View all"),
//   //                       ),
//   //                     ],
//   //                   ),
//   //                 ),
//   //                 Container(
//   //                   padding: const EdgeInsets.symmetric(
//   //                     horizontal: 20,
//   //                   ),
//   //                   child: Column(
//   //                     children: [ /*
//   //                       GestureDetector(
//   //                         onTap: () {
//   //                          // Navigator.of(context)
//   //                            //   .pushNamed(IndividualItem.routeName);
//   //                         },
//   //                         child:

//   //                         RecentItemCard(
//   //                           image: Image.asset(
//   //                             Helper.getAssetName("pizza3.jpg", "real"),
//   //                             fit: BoxFit.cover,
//   //                           ),
//   //                           name: "Mulberry Pizza by Josh",
//   //                         ),
//   //                       ),
//   //                       RecentItemCard(
//   //                           image: Image.asset(
//   //                             Helper.getAssetName("coffee.jpg", "real"),
//   //                             fit: BoxFit.cover,
//   //                           ),
//   //                           name: "Barita"),
//   //                       RecentItemCard(
//   //                           image: Image.asset(
//   //                             Helper.getAssetName("pizza.jpg", "real"),
//   //                             fit: BoxFit.cover,
//   //                           ),
//   //                           name: "Pizza Rush Hour"),
//   //                           */
//   //                     ],
//   //                   ),
//   //                 )
//   //               ],
//   //             ),
//   //           ),
//   //         ),
//   //         Positioned(
//   //             bottom: 0,
//   //             left: 0,
//   //             child: CustomNavBar(
//   //               plus: true,
//   //             )),
//   //       ],
//   //     ),
//   //   );
//   // }

  

// /*
// class RecentItemCard extends StatelessWidget {
//   const RecentItemCard({
//     Key key,
//     @required String name,
//     @required Image image,
//   })  : _name = name,
//         _image = image,
//         super(key: key);

//   final String _name;
//   final Image _image;

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         ClipRRect(
//           borderRadius: BorderRadius.circular(10),
//           child: Container(
//             width: 80,
//             height: 80,
//             child: _image,
//           ),
//         ),
//         SizedBox(
//           width: 10,
//         ),
//         Expanded(
//           child: Container(
//             height: 100,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   _name,
//                   style: Helper.getTheme(context)
//                       .headline4
//                       .copyWith(color: AppColor.primary),
//                 ),
//                 Row(
//                   children: [
//                     Text("Cafe"),
//                     SizedBox(
//                       width: 5,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(bottom: 5.0),
//                       child: Text(
//                         ".",
//                         style: TextStyle(
//                           color: AppColor.orange,
//                           fontWeight: FontWeight.w900,
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 5,
//                     ),
//                     Text("Western Food"),
//                     SizedBox(
//                       width: 20,
//                     ),
//                   ],
//                 ),
//                 Row(
//                   children: [
//                     Image.asset(
//                       Helper.getAssetName("star_filled.png", "virtual"),
//                     ),
//                     SizedBox(
//                       width: 5,
//                     ),
//                     Text(
//                       "4.9",
//                       style: TextStyle(
//                         color: AppColor.orange,
//                       ),
//                     ),
//                     SizedBox(width: 10),
//                     Text('(124) Ratings')
//                   ],
//                 )
//               ],
//             ),
//           ),
//         )
//       ],
//     );
//   }
// }

// class MostPopularCard extends StatelessWidget {
//   const MostPopularCard({
//     Key key,
//     @required String name,
//     @required Image image,
//   })  : _name = name,
//         _image = image,
//         super(key: key);

//   final String _name;
//   final Image _image;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         ClipRRect(
//           borderRadius: BorderRadius.circular(10),
//           child: Container(
//             width: 300,
//             height: 200,
//             child: _image,
//           ),
//         ),
//         SizedBox(height: 10),
//         Text(
//           _name,
//           style: Helper.getTheme(context)
//               .headline4
//               .copyWith(color: AppColor.primary),
//         ),
//         Row(
//           children: [
//             Text("Cafe"),
//             SizedBox(
//               width: 5,
//             ),
//             Padding(
//               padding: const EdgeInsets.only(bottom: 5.0),
//               child: Text(
//                 ".",
//                 style: TextStyle(
//                   color: AppColor.orange,
//                   fontWeight: FontWeight.w900,
//                 ),
//               ),
//             ),
//             SizedBox(
//               width: 5,
//             ),
//             Text("Western Food"),
//             SizedBox(
//               width: 20,
//             ),
//             Image.asset(
//               Helper.getAssetName("star_filled.png", "virtual"),
//             ),
//             SizedBox(
//               width: 5,
//             ),
//             Text(
//               "4.9",
//               style: TextStyle(
//                 color: AppColor.orange,
//               ),
//             )
//           ],
//         )
//       ],
//     );
//   }
// }//sdsds

// class RestaurantCard extends StatelessWidget {
//   const RestaurantCard({
//     Key key,
//     @required String name,
//     @required Image image,
//   })  : _image = image,
//         _name = name,
//         super(key: key);

//   final String _name;
//   final Image _image;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 270,
//       width: double.infinity,
//       child: Column(
//         children: [
//           SizedBox(height: 200, width: double.infinity, child: _image),
//           SizedBox(
//             height: 10,
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(
//               horizontal: 20,
//             ),
//             child: Column(
//               children: [
//                 Row(
//                   children: [
//                     Text(
//                       _name,
//                       style: Helper.getTheme(context).headline3,
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 5,
//                 ),
//                 Row(
//                   children: [
//                     Image.asset(
//                       Helper.getAssetName("star_filled.png", "virtual"),
//                     ),
//                     SizedBox(
//                       width: 5,
//                     ),
//                     Text(
//                       "4.9",
//                       style: TextStyle(
//                         color: AppColor.orange,
//                       ),
//                     ),
//                     SizedBox(
//                       width: 5,
//                     ),
//                     Text("(124 ratings)"),
//                     SizedBox(
//                       width: 5,
//                     ),
//                     Text("Cafe"),
//                     SizedBox(
//                       width: 5,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(bottom: 5.0),
//                       child: Text(
//                         ".",
//                         style: TextStyle(
//                           color: AppColor.orange,
//                           fontWeight: FontWeight.w900,
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 5,
//                     ),
//                     Text("Western Food"),
//                   ],
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// class CategoryCard extends StatelessWidget {
//   const CategoryCard({
//     Key key,
//     @required Image image,
//     @required String name,
//   })  : _image = image,
//         _name = name,
//         super(key: key);

//   final String _name;
//   final Image _image;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         ClipRRect(
//           borderRadius: BorderRadius.circular(10),
//           child: Container(
//             width: 100,
//             height: 100,
//             child: _image,
//           ),
//         ),
//         SizedBox(
//           height: 5,
//         ),
//         Text(
//           _name,
//           style: Helper.getTheme(context)
//               .headline4
//               .copyWith(color: AppColor.primary, fontSize: 16),
//         ),
//       ],
//     );
//   }
// }
// */



///////////////////////


// import 'package:amplify_flutter/amplify_flutter.dart';
// import 'package:flutter/material.dart';
// import 'package:thecrohns/screens/profileScreen.dart';
// import '../widgets/customNavBar.dart';


// class HomeScreen extends StatelessWidget {
//   static const routeName = '/homeScreen';

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Crohn\'s Food'),
//           actions: [
//             PopupMenuButton<String>(
//               itemBuilder: (context) => [
//                 PopupMenuItem<String>(
//                   value: 'profile',
//                   child: Text('Profile'),
//                 ),
//                 PopupMenuItem<String>(
//                   value: 'signOut',
//                   child: Text('Sign Out'),
//                 ),
//               ],
//               onSelected: (value) {
//                 if (value == 'profile') {
//                   Navigator.push(
//                     context,
//                     new MaterialPageRoute(
//                       builder: (context) => new ProfileScreen(),
//                     ),
//                   );
//                 } else if (value == 'signOut') {
//                   _signOut();
//                 }
//               },
//               child: Icon(
//                 Icons.account_circle,
//                 size: 40,
//                 color: Colors.white,
//               ),
//             ),
//           ],
//         ),
//       backgroundColor: Colors.white,
//       body: Column(
//         children: [
//           // HeaderBox(),
//           DefaultTabController(
//             length: 2,
//             child: Column(
//               children: [
//                 TabBar(
//                   tabs: [
//                     Tab(text: 'News'),
//                     Tab(text: 'Learn'),
//                   ],
//                 ),
//                 SizedBox(
//                   height: MediaQuery.of(context).size.height - 208, // Adjust the height according to your needs
//                   child: TabBarView(
//                     children: [
//                       Center(child: Text('News')),
//                       Center(child: Text('Learn')),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//       bottomNavigationBar: CustomNavBar(
//         plus: true,
//       ),
//       ),
//     );
//   }

// Future<void> _signOut() async {
//     try {
//       await Amplify.Auth.signOut();
//       print('Sign out succeeded');
//     } catch (e) {
//       print('Error signing out: $e');
//     }
//   }

// }

// import 'package:amplify_flutter/amplify_flutter.dart';
// import 'package:flutter/material.dart';
// import 'package:thecrohns/screens/profileScreen.dart';
// import 'package:url_launcher/url_launcher.dart';

// import '../widgets/customNavBar.dart';

// class HomeScreen extends StatelessWidget {
//   static const routeName = '/homeScreen';

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Crohn\'s FeedS'),
//           actions: [
//             PopupMenuButton<String>(
//               itemBuilder: (context) => [
//                 PopupMenuItem<String>(
//                   value: 'profile',
//                   child: Text('Profile'),
//                 ),
//                 PopupMenuItem<String>(
//                   value: 'signOut',
//                   child: Text('Sign Out'),
//                 ),
//               ],
//               onSelected: (value) {
//                 if (value == 'profile') {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => ProfileScreen(),
//                     ),
//                   );
//                 } else if (value == 'signOut') {
//                   _signOut();
//                 }
//               },
//               child: Icon(
//                 Icons.account_circle,
//                 size: 40,
//                 color: Colors.white,
//               ),
//             ),
//           ],
//         ),
//         backgroundColor: Colors.white,
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               DefaultTabController(
//                 length: 2,
//                 child: Column(
//                   children: [
//                     TabBar(
//                       labelColor: Colors.amber,
//                       tabs: [
//                         Tab(text: 'News'),
//                         Tab(text: 'Learn'),
//                       ],
//                     ),
//                     SizedBox(
//                       height: MediaQuery.of(context).size.height - 208,
//                       child: TabBarView(
//                         children: [
//                           _buildNewsPage(context),
//                           _buildLearnPage(context),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//         bottomNavigationBar: CustomNavBar(
//           feedback: true,
//         ),
//       ),
//     );
//   }

//   Widget _buildNewsPage(BuildContext context) {
//     return ListView(
//       children: [
//         Card(
//           color: Colors.amber,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(15.0),
//           ),
//           child: ListTile(
//             title: Text('News 1'),
//             subtitle: Text('News content goes here'),
//             onTap: () {
//               _showNewsDialog(context, 'News 1', 'News content goes here');
//             },
//           ),
//         ),
//         Card(
//           color: Colors.amber,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(15.0),
//           ),
//           child: ListTile(
//             title: Text('News 2'),
//             subtitle: Text('News content goes here'),
//             onTap: () {
//               _showNewsDialog(context, 'News 2', 'News content goes here');
//             },
//           ),
//         ),
//         Card(
//           color: Colors.amber,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(15.0),
//           ),
//           child: ListTile(
//             title: Text('News 3'),
//             subtitle: Text('News content goes here'),
//             onTap: () {
//               _showNewsDialog(context, 'News 3', 'News content goes here');
//             },
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildLearnPage(BuildContext context) {
//     return ListView(
//       children: [
//         Card(
//           color: Colors.amber,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(15.0),
//           ),
//           child: ListTile(
//             title: Text('What is Crohns Disease'),
//             subtitle: Text('Crohn’s disease is an inflammatory bowel disease'),
//             onTap: () {
//               _launchURL('https://www.crohnscolitisfoundation.org/what-is-crohns-disease');
//             },
//           ),
//         ),
//         Card(
//           color: Colors.amber,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(15.0),
//           ),
//           child: ListTile(
//             title: Text('Crohn Disease'),
//             subtitle: Text('overview and comprehensive information about Crohns disease'),
//             onTap: () {
//               _launchURL('https://emedicine.medscape.com/article/172940-overview');
//             },
//           ),
//         ),
//       ],
//     );
//   }



// void _showNewsDialog(BuildContext context, String title, String content) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text(title),
//           content: Text(content),
//           actions: [
//             TextButton(
//               child: Text('Close'),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }

//   void _showLearnDialog(BuildContext context, String title, String content) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text(title),
//           content: Text(content),
//           actions: [
//             TextButton(
//               child: Text('Close'),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }
// void _launchURL(String url) async {
//     if (await canLaunch(url)) {
//       await launch(url);
//     } else {
//       throw 'Could not launch $url';
//     }
//   }

//   Future<void> _signOut() async {
//     try {
//       await Amplify.Auth.signOut();
//       print('Sign out succeeded');
//     } catch (e) {
//       print('Error signing out: $e');
//     }
//   }
// }


import 'dart:convert';

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:thecrohns/models/ModelProvider.dart';
import 'package:thecrohns/screens/profileScreen.dart';
import 'package:thecrohns/screens/welcomeScreen.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/customNavBar.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/homeScreen';

  @override
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
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    TabBar(
                      labelColor: Color.fromRGBO(246, 148, 2, 1),
                      unselectedLabelColor: Colors.black,
                      labelStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      tabs: [
                        Tab(text: 'News'),
                        Tab(text: 'Learn'),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height - 208,
                      child: TabBarView(
                        children: [
                          _buildNewsPage(context),
                          _buildLearnPage(context),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyHomePage()),
            );
          },
          child: Icon(
            Icons.compare_arrows_rounded,
            size: 24,
          ),
          backgroundColor: Color.fromRGBO(246, 148, 2, 1),
        ),
        bottomNavigationBar: CustomNavBar(
          feedback: true,
        ),
      ),
    );
  }

  // Widget _buildNewsPage(BuildContext context) {
  //   return ListView(
  //     children: [
  //       Card(
  //         elevation: 10,
  //         shadowColor: Colors.black,
  //         color: Colors.grey.shade200,
  //         shape: RoundedRectangleBorder(
  //           borderRadius: BorderRadius.circular(15.0),
  //         ),
  //         child: ListTile(
  //           title: Text(
  //             'Pathogenic bacteria use a sugar in the intestinal mucus layer to infect the gut, study shows',
  //             style: TextStyle(
  //               fontSize: 18,
  //               fontWeight: FontWeight.bold,
  //               color: Colors.black,
  //             ),
  //           ),
  //           subtitle: Text(
  //             'A new study shows the sugar sialic acid,',
  //             style: TextStyle(
  //               fontSize: 16,
  //               color: Colors.black,
  //             ),
  //           ),
  //           onTap: () {
  //             _showNewsDialog(context, 'Pathogenic bacteria use a sugar in the intestinal mucus layer to infect the gut, study shows', 'A new study shows the sugar sialic acid, which makes up part of the protective intestinal mucus layer, fuels disease-causing bacteria in the gut. The findings suggest a potential treatment target for intestinal bacterial infections and a range of chronic diseases linked to gut bacteria, including inflammatory bowel disease (IBD), celiac disease, irritable bowel syndrome and short bowel syndrome.', 'https://www.sciencedaily.com/releases/2023/07/230703160008.htm');
  //           },
  //         ),
  //       ),
  //       Card(
  //         elevation: 10,
  //         shadowColor: Colors.black,
  //         color: Colors.grey.shade200,
  //         shape: RoundedRectangleBorder(
  //           borderRadius: BorderRadius.circular(15.0),
  //         ),
  //         child: ListTile(
  //           title: Text(
  //             'New research identifies cells linking chronic psychological stress to inflammatory bowel disease',
  //             style: TextStyle(
  //               fontSize: 18,
  //               fontWeight: FontWeight.bold,
  //               color: Colors.black,
  //             ),
  //           ),
  //           subtitle: Text(
  //             'For the first time, cells involved with the communication between stress responses in the brain and inflammation in the gastrointestinal (GI) tract have been identified in animal models. Glial cells, which support neurons, communicate stress signals from the central nervous system (CNS) to the semi-autonomous nervous system within the gastrointestinal (GI) tract, called the enteric nervous system (ENS). ',
  //             style: TextStyle(
  //               fontSize: 16,
  //               color: Colors.black,
  //             ),
  //           ),
  //           onTap: () {
  //             _showNewsDialog(context, 'NNew research identifies cells linking chronic psychological stress to inflammatory bowel disease', 'For the first time, cells involved with the communication between stress responses in the brain and inflammation in the gastrointestinal (GI) tract have been identified in animal models. Glial cells, which support neurons, communicate stress signals from the central nervous system (CNS) to the semi-autonomous nervous system within the gastrointestinal (GI) tract, called the enteric nervous system (ENS). These psychological stress signals can cause inflammation and exacerbate symptoms of inflammatory bowel disease (IBD).', 'https://www.sciencedaily.com/releases/2023/06/230608195659.htm');
  //           },
  //         ),
  //       ),
  //       Card(
  //         elevation: 10,
  //         shadowColor: Colors.black,
  //         color: Colors.grey.shade200,
  //         shape: RoundedRectangleBorder(
  //           borderRadius: BorderRadius.circular(15.0),
  //         ),
  //         child: ListTile(
  //           title: Text(
  //             'Helping good gut bacteria and clearing out the bad -- all in one treatment',
  //             style: TextStyle(
  //               fontSize: 18,
  //               fontWeight: FontWeight.bold,
  //               color: Colors.black,
  //             ),
  //           ),
  //           subtitle: Text(
  //             'Probiotics can help maintain a healthy gut microbiome or restore populations of good bacteria after a heavy course of antibiotics. But now, they could also be used as an effective treatment strategy for certain intestinal diseases, such as Crohns disease.',
  //             style: TextStyle(
  //               fontSize: 16,
  //               color: Colors.black,
  //             ),
  //           ),
  //           onTap: () {
  //             _showNewsDialog(context, 'Helping good gut bacteria and clearing out the bad -- all in one treatment', 'Probiotics can help maintain a healthy gut microbiome or restore populations of good bacteria after a heavy course of antibiotics. But now, they could also be used as an effective treatment strategy for certain intestinal diseases, such as Crohns disease. Researchers have developed a microgel delivery system for probiotics that keeps good bacteria safe while actively clearing out bad ones. In mice, the system treated intestinal inflammation without side effects.','https://www.sciencedaily.com/releases/2023/06/230621105419.htm');
  //           },
  //         ),
  //       ),
  //     ],
  //   );
  // }


 Widget _buildNewsPage(BuildContext context) {
    return FutureBuilder<List<New>>(
      future: _fetchNewsData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator(); // Show a loading indicator while data is being fetched
        } else if (snapshot.hasError) {
          return Text(
              'Error: ${snapshot.error}'); // Show an error message if there is an error
        } else {
          final newsList = snapshot.data ?? [];
          return ListView.builder(
            itemCount: newsList.length,
            itemBuilder: (context, index) {
              final news = newsList[index];
              return Card(
                elevation: 10,
                shadowColor: Colors.black,
                color: Colors.grey.shade200,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: ListTile(
                  title: Text(
                    news.title ?? '',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  subtitle: Text(
                    news.subtiltle ?? '',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  onTap: () {
                    _showNewsDialog(context, news.title ?? '',
                        news.description ?? '', news.newsLink ?? '');
                  },
                ),
              );
            },
          );
        }
      },
    );
  }

  Future<List<New>> _fetchNewsData() async {
    try {
      final response = await Amplify.DataStore.query(New.classType);
      return response;
    } catch (e) {
      print('Failed to fetch news data: $e');
      return [];
    }
  }



  // Widget _buildLearnPage(BuildContext context) {
  //   return ListView(
  //     children: [
  //       Card(
  //         elevation: 10,
  //         shadowColor: Colors.black,
  //         color: Colors.grey.shade200,
  //         shape: RoundedRectangleBorder(
  //           borderRadius: BorderRadius.circular(15.0),
  //         ),
  //         child: ListTile(
  //           title: Text(
  //             'What is Crohn\'s Disease',
  //             style: TextStyle(
  //               fontSize: 18,
  //               fontWeight: FontWeight.bold,
  //               color: Colors.black,
  //             ),
  //           ),
  //           subtitle: Text(
  //             'Crohn’s disease is an inflammatory bowel disease',
  //             style: TextStyle(
  //               fontSize: 16,
  //               color: Colors.black,
  //             ),
  //           ),
  //           onTap: () {
  //             _launchURL(
  //                 'https://www.crohnscolitisfoundation.org/what-is-crohns-disease');
  //           },
  //         ),
  //       ),
  //       Card(
  //         elevation: 10,
  //         shadowColor: Colors.black,
  //         color: Colors.grey.shade200,
  //         shape: RoundedRectangleBorder(
  //           borderRadius: BorderRadius.circular(15.0),
  //         ),
  //         child: ListTile(
  //           title: Text(
  //             'Crohn Disease',
  //             style: TextStyle(
  //               fontSize: 18,
  //               fontWeight: FontWeight.bold,
  //               color: Colors.black,
  //             ),
  //           ),
  //           subtitle: Text(
  //             'Overview and comprehensive information about Crohn\'s disease',
  //             style: TextStyle(
  //               fontSize: 16,
  //               color: Colors.black,
  //             ),
  //           ),
  //           onTap: () {
  //             _launchURL(
  //                 'https://emedicine.medscape.com/article/172940-overview');
  //           },
  //         ),
  //       ),
  //       Card(
  //         elevation: 10,
  //         shadowColor: Colors.black,
  //         color: Colors.grey.shade200,
  //         shape: RoundedRectangleBorder(
  //           borderRadius: BorderRadius.circular(15.0),
  //         ),
  //         child: ListTile(
  //           title: Text(
  //             'Eat This, Not That',
  //             style: TextStyle(
  //               fontSize: 18,
  //               fontWeight: FontWeight.bold,
  //               color: Colors.black,
  //             ),
  //           ),
  //           subtitle: Text(
  //             'Do you want to reduce chronic inflammation causing your weight gain? Dietitians explain how an anti-inflammatory diet can help.',
  //             style: TextStyle(
  //               fontSize: 16,
  //               color: Colors.black,
  //             ),
  //           ),
  //           onTap: () {
  //             _launchURL(
  //                 'https://www.eatthis.com/anti-inflammatory-diet/');
  //           },
  //         ),
  //       ),
  //       Card(
  //         elevation: 10,
  //         shadowColor: Colors.black,
  //         color: Colors.grey.shade200,
  //         shape: RoundedRectangleBorder(
  //           borderRadius: BorderRadius.circular(15.0),
  //         ),
  //         child: ListTile(
  //           title: Text(
  //             'Are Cashews Good for You? Here’s What You Need to Know.',
  //             style: TextStyle(
  //               fontSize: 18,
  //               fontWeight: FontWeight.bold,
  //               color: Colors.black,
  //             ),
  //           ),
  //           subtitle: Text(
  //             'Are Cashews Good for You? Heres What You Need to Know. Find out the benefits and even a few risks of cashews.',
  //             style: TextStyle(
  //               fontSize: 16,
  //               color: Colors.black,
  //             ),
  //           ),
  //           onTap: () {
  //             _launchURL('https://www.tasteofhome.com/article/are-cashews-good-for-you/');
  //           },
  //         ),
  //       ),
        
  //     ],
  //   );
  // }

  Widget _buildLearnPage(BuildContext context) {
    return FutureBuilder<List<Learn>>(
      future:
          _fetchLearn(), // Call the method to fetch articles asynchronously
      builder: (BuildContext context, AsyncSnapshot<List<Learn>> snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (BuildContext context, int index) {
              final learn = snapshot.data![index];
              return Card(
                elevation: 10,
                shadowColor: Colors.black,
                color: Colors.grey.shade200,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: ListTile(
                  title: Text(
                    learn.title.toString(),
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  subtitle: Text(
                    learn.subtitle.toString(),
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  onTap: () {
                    _launchInBrowser(learn.learnLink.toString());
                  },
                ),
              );
            },
          );
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          return CircularProgressIndicator(); // Show a loading indicator while fetching data
        }
      },
    );
  }

  Future<List<Learn>> _fetchLearn() async {
    try {
      final learn = await Amplify.DataStore.query(Learn.classType);
      return learn;
    } catch (e) {
      print('Error fetching learn: $e');
      return [];
    }
  }


  void _showNewsDialog(
      BuildContext context, String title, String desc, String readMoreLink) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          content: Text(
            desc,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          actions: [
            TextButton(
              child: Text(
                'Read More',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              onPressed: () {
                // Handle the "Read More" button action here.
                // For example, you can launch a web page using the provided link.
                _launchInBrowser(readMoreLink);
              },
            ),
            TextButton(
              child: Text(
                'Close',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

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
