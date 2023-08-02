import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:thecrohns/screens/addJournal.dart';
import 'package:thecrohns/screens/journalCard.dart';
import 'package:thecrohns/screens/profileScreen.dart';

import '../data/journal_respository.dart';
import '../widgets/customNavBar.dart';


class TripsListPage extends HookConsumerWidget {
  const TripsListPage({
    super.key,
  });

  void showAddTripDialog(BuildContext context) async {
    await showModalBottomSheet<void>(
      isScrollControlled: true,
      elevation: 5,
      context: context,
      builder: (BuildContext context) {
        return AddJournal();
      },
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Orientation orientation = MediaQuery.of(context).orientation;
    final tripsListValue = ref.watch(journalListStreamProvider);
    return Scaffold(
   // home: Scaffold(
        appBar: AppBar(
              backgroundColor: Color.fromRGBO(35, 47, 52, 1),
              title: Text(
                'Journal',
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
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showAddTripDialog(context);
          },
          //backgroundColor: const Color(constants.primaryColorDark),
          child: const Icon(Icons.add),
          backgroundColor: Color.fromRGBO(246, 148, 2, 1),
        ),
        body: tripsListValue.when(
            data: (trips) => trips.isEmpty
                ? const Center(
                    child: Text('No Trips'),
                  )
                : Column(
                    children: [
                      Flexible(
                        child: GridView.count(
                          crossAxisCount:
                              (orientation == Orientation.portrait) ? 2 : 3,
                          mainAxisSpacing: 4,
                          crossAxisSpacing: 4,
                          padding: const EdgeInsets.all(4),
                          childAspectRatio:
                              (orientation == Orientation.portrait) ? 0.9 : 1.4,
                          children: trips.map((tripData) {
                            return JournalCard(journal: tripData!);
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
            error: (e, st) => const Center(
                  child: Text('Error'),
                ),
            loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                ),
    //             bottomNavigationBar: CustomNavBar(
    //   feedback: true,
    // ),
  //  )
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
