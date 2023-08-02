// import 'package:amplify_flutter/amplify_flutter.dart';
// import 'package:flutter/material.dart';
// import 'package:amplify_core/amplify_core.dart';
// import 'package:amplify_datastore/amplify_datastore.dart';

// import '../models/Journal.dart';

// class JournalScreens extends StatefulWidget {
//   @override
//   _JournalScreenState createState() => _JournalScreenState();
// }

// class _JournalScreenState extends State<JournalScreens> {
//   List<Journal> journals = [];

//   @override
//   void initState() {
//     super.initState();
//     fetchJournals();
//   }

//   Future<void> fetchJournals() async {
//     try {
//       // Query journals from Amplify DataStore
//       List<Journal> fetchedJournals =
//           await Amplify.DataStore.query(Journal.classType);

//       setState(() {
//         journals = fetchedJournals;
//       });
//     } catch (e) {
//       // Handle error
//       print('Error fetching journals: $e');
//     }
//   }

//   Future<void> deleteJournal(Journal journal) async {
//     try {
//       // Delete journal from Amplify DataStore
//       await Amplify.DataStore.delete(journal);

//       setState(() {
//         journals.remove(journal);
//       });
//     } catch (e) {
//       // Handle error
//       print('Error deleting journal: $e');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Journals'),
//       ),
//       body: ListView.builder(
//         itemCount: journals.length,
//         itemBuilder: (context, index) {
//           final journal = journals[index];
//           return Card(
//             child: ListTile(
//               title: Text(journal.foodName),
//               subtitle: Text(journal.typeOfFood),
//               onTap: () {
//                 // Handle tap on journal card
//                 // You can navigate to an edit screen or show more details
//                 print('Tapped journal: ${journal.id}');
//               },
//               trailing: IconButton(
//                 icon: Icon(Icons.delete),
//                 onPressed: () {
//                   // Handle delete journal
//                   deleteJournal(journal);
//                 },
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }


import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_datastore/amplify_datastore.dart';

import '../models/Journal.dart';
import 'addJournal.dart';

class JournalScreen extends StatefulWidget {
  @override
  _JournalScreenState createState() => _JournalScreenState();
}

class _JournalScreenState extends State<JournalScreen> {
  List<Journal> journals = [];

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
  void initState() {
    super.initState();
    fetchJournals();
  }

  Future<void> fetchJournals() async {
    try {
      // Query journals from Amplify DataStore
      List<Journal> fetchedJournals =
          await Amplify.DataStore.query(Journal.classType);

      setState(() {
        journals = fetchedJournals;
      });
    } catch (e) {
      // Handle error
      print('Error fetching journals: $e');
    }
  }

  Future<void> deleteJournal(Journal journal) async {
    try {
      // Delete journal from Amplify DataStore
      await Amplify.DataStore.delete(journal);

      setState(() {
        journals.remove(journal);
      });
    } catch (e) {
      // Handle error
      print('Error deleting journal: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Journals'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showAddTripDialog(context);
        },
        //backgroundColor: const Color(constants.primaryColorDark),
        child: const Icon(Icons.add),
      ),
      body: GridView.builder(
        itemCount: journals.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          final journal = journals[index];
          return InkWell(
            onTap: () {
              // Handle tap on journal
              // You can navigate to an edit screen or show more details
              print('Tapped journal: ${journal.id}');
            },
            onLongPress: () {
              // Handle long press on journal
              // You can perform additional actions or show a context menu
              print('Long pressed journal: ${journal.id}');
            },
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.grey[300],
                      // Display journal image or placeholder
                      child: Center(
                        child: Text('Journal Image'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          journal.foodName,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(journal.typeOfFood),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
