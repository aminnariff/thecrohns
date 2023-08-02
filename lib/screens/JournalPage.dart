import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:thecrohns/const/colors.dart' as constants;
import 'package:thecrohns/data/journal_respository.dart';
import 'package:thecrohns/screens/selected_Journal.dart';

import '../common/navigation/router/routes.dart';

class JournalPage extends StatelessWidget {
  const JournalPage({
    required this.journalId,
    super.key,
  });
  final String journalId;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(35, 47, 52, 1),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            context.goNamed(
              AppRoute.home.name,
            );
          },
        ),
        centerTitle: true,
        title: const Text(
          'Journal',
        ),
        // actions: [
        //   IconButton(
        //     onPressed: () {
        //       context.goNamed(
        //         AppRoute.home.name,
        //       );
        //     },
        //     icon: const Icon(Icons.home),
        //   ),
        // ],
        //backgroundColor: const Color(constants.primaryColorDark),
      ),
      body: Consumer(
        builder: (BuildContext context, WidgetRef ref, Widget? child) {
          final journalValue = ref.watch(journalProvider(journalId));
          return journalValue.when(
            data: (journal) => journal == null
                ? const Center(
                    child: Text('Journal Not Found'),
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(
                        height: 8,
                      ),
                      SelectedJournalCard(journal: journal),
                      const SizedBox(
                        height: 20,
                      ),
                      const Divider(
                        height: 20,
                        thickness: 5,
                        indent: 20,
                        endIndent: 20,
                      ),
                      const Text(
                        "Your Activites",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                    ],
                  ),
            error: (e, st) => const Center(
              child: Text('Error'),
            ),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
          );
        },
      ),
      )
    );
  }
}
