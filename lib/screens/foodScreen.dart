import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:thecrohns/screens/profileScreen.dart';

import '../Controller/Area_Data.dart';
import '../Controller/Categorie_Data.dart';
import '../Controller/Ingredient_Data.dart';
import '../View/Categorie_Screen.dart';
import '../View/HomeView/HomeBox/Ads_Box.dart';
import '../View/HomeView/HomeBox/Categorie_Box.dart';
import '../View/HomeView/HomeBox/Food_Box.dart';
import '../View/HomeView/HomeBox/GroupPhoto_Box.dart';
import '../View/HomeView/HomeBox/Header_Box.dart';
import '../View/HomeView/HomeBox/Item_Box.dart';
import '../View/SeeAllMeal_Screen.dart';
import '../widgets/customNavBar.dart';


class FoodScreen extends StatelessWidget {
static const routeName = "/foodScreen";
const FoodScreen({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(35, 47, 52, 1),
        title: Text(
          'Crohn\'s Food',
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
    body: ListView(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      children: [
        FoodBox(
              FirstChar: 'b',
              BoxTitle: 'Top Search',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SeeAllMeals(
                              ScreenTitle: 'Top Search',
                              firstChar: 'b',
                            )));
              }),
        ItemsBox(
          bkg: Colors.black,
          futureList: IngredientData.GetIngredientTitle(),
          filterType: 'Ingredient',
        ),
        CategorieBox(
          BoxTitle: 'Categories',
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => const CategorieScreen()));
          },
        ),
        GroupPhotoBox(
          BoxTitle: 'Food To Avoid',
          onPressed: () {
            print('Go To Photo Screen');
          },
        ),
        ItemsBox(
          bkg: Color.fromRGBO(35, 47, 52, 1),
          futureList: AreaData.GetArea(),
          filterType: 'Area',
        ),
        AdsBox(revere: false),
      ],
    ),
    bottomNavigationBar: CustomNavBar(
      feedback: true,
    ),
    ),
  );
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
