import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:thecrohns/models/Journal.dart';

String? formattedDate = DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

final journalDataStoreServiceProvider = Provider<JournalDataStoreService>((ref) {
  final service = JournalDataStoreService();
  return service;
});

class JournalDataStoreService {
  JournalDataStoreService();

  Stream<List<Journal>> listenToJournal() {
    return Amplify.DataStore.observeQuery(
      Journal.classType,
      sortBy: [Journal.DATEOFENTRY.ascending()],
    )
        .map((event) => event.items
            .toList())
        .handleError(
      (error) {
        debugPrint('listenToTrips: A Stream error happened');
      },
    );
  }

  Stream<Journal> getJournalStream(String id) {
    final tripStream =
        Amplify.DataStore.observeQuery(Journal.classType, where: Journal.ID.eq(id))
            .map((event) => event.items.toList().single);

    return tripStream;
  }

  Future<void> addJournal(Journal trip) async {
    try {
      await Amplify.DataStore.save(trip);
    } on Exception catch (error) {
      debugPrint(error.toString());
    }
  }

  Future<void> deleteJournal(Journal trip) async {
    try {
      await Amplify.DataStore.delete(trip);
    } on Exception catch (error) {
      debugPrint(error.toString());
    }
  }

  Future<void> updatedJournal(Journal updatedJournal) async {
    try {
      final journalWithId = await Amplify.DataStore.query(
        Journal.classType,
        where: Journal.ID.eq(updatedJournal.id),
      );

      final oldJournal = journalWithId.first;
      final newJournal = oldJournal.copyWith(
        foodName: updatedJournal.foodName,
        typeOfFood: updatedJournal.typeOfFood,
        typeOfDiet: updatedJournal.typeOfDiet,
        mainIngredient: updatedJournal.mainIngredient,
        sideEffect: updatedJournal.sideEffect,
        description: updatedJournal.description,
        dateOfEntry: updatedJournal.dateOfEntry,
        jImageKey: updatedJournal.jImageKey,
        jImageUrl: updatedJournal.jImageUrl,
      );

      await Amplify.DataStore.save(newJournal);
    } on Exception catch (error) {
      debugPrint(error.toString());
    }
  }
}
