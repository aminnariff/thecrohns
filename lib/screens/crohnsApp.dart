import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:thecrohns/const/colors.dart' as constants;
import 'package:thecrohns/models/Journal.dart';
import 'package:thecrohns/screens/DisplayJournal.dart';
import 'package:thecrohns/screens/JournalPage.dart';
import 'package:thecrohns/screens/editJournal.dart';
import 'package:thecrohns/screens/homeScreen.dart';
import '../common/navigation/router/routes.dart';

class CrohnsApp extends StatelessWidget {
  const CrohnsApp({
    required this.isAmplifySuccessfullyConfigured,
    Key? key,
  }) : super(key: key);

  final bool isAmplifySuccessfullyConfigured;

  @override
  Widget build(BuildContext context) {
    final router = GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => isAmplifySuccessfullyConfigured
              ? TripsListPage()
              : const Scaffold(
                  body: Center(
                    child: Text(
                      'Tried to reconfigure Amplify; '
                      'this can occur when your app restarts on Android.',
                    ),
                  ),
                ),
        ),
        GoRoute(
          path: '/journal/:id',
          name: AppRoute.journal.name,
          builder: (context, state) {
            final journalId = state.pathParameters['id']!;
            return JournalPage(journalId: journalId);
          },
        ),
        GoRoute(
          path: '/editjournal/:id',
          name: AppRoute.editjournal.name,
          builder: (context, state) {
            return EditJournal(
              journal: state.extra! as Journal,
            );
          },
        ),
      ],
      errorBuilder: (context, state) => Scaffold(
        body: Center(
          child: Text(state.error.toString()),
        ),
      ),
    );

    return Authenticator(
      child: MaterialApp.router(
        routeInformationParser: router.routeInformationParser,
        routeInformationProvider: router.routeInformationProvider,
        routerDelegate: router.routerDelegate,
        builder: Authenticator.builder(),
        theme: ThemeData(
          primarySwatch: constants.primaryColor,
          backgroundColor: const Color(0xff82CFEA),
        ),
      ),
    );
  }
}
