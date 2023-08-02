import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:thecrohns/models/Journal.dart';
import 'package:intl/intl.dart';

import '../data/journal_respository.dart';

String formattedDate = DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

final journalListControllerProvider = Provider<JournalListController>((ref) {
  return JournalListController(ref);
});

class JournalListController {
  JournalListController(this.ref);
  final Ref ref;

  Future<void> add({
    required String name,
    required String typeOfFood,
    required String typeOfDiet,
    required String mainIngredient,
    required String sideEffect,
    required String description,
    required String dateOfEntry,
  }) async {
    Journal journal = Journal(
        foodName: name,
        typeOfFood: typeOfFood,
        typeOfDiet: typeOfDiet,
        mainIngredient: mainIngredient,
        sideEffect: sideEffect,
        description: description,
        dateOfEntry: TemporalDateTime(DateTime.parse(formattedDate)),
        );

    final journalRepository = ref.read(journalRepositoryProvider);

    await journalRepository.add(journal);
  }
}
