import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/Journal.dart';
import '../services/journal_datastore.dart';

final journalRepositoryProvider = Provider<JournalRepository>((ref) {
  JournalDataStoreService journalDataStoreService =
      ref.read(journalDataStoreServiceProvider);
  return JournalRepository(journalDataStoreService);
});

final journalListStreamProvider = StreamProvider.autoDispose<List<Journal?>>((ref) {
  final journalRepository = ref.watch(journalRepositoryProvider);
  return journalRepository.getJournal();
});


final journalProvider =
    StreamProvider.autoDispose.family<Journal?, String>((ref, id) {
  final journalRepository = ref.watch(journalRepositoryProvider);
  return journalRepository.get(id);
});

class JournalRepository {
  JournalRepository(this.journalDataStoreService);

  final JournalDataStoreService journalDataStoreService;

  Stream<List<Journal>> getJournal() {
    return journalDataStoreService.listenToJournal();
  }


  Future<void> add(Journal journal) async {
    await journalDataStoreService.addJournal(journal);
  }

  Future<void> update(Journal updatedJournal) async {
    await journalDataStoreService.updatedJournal(updatedJournal);
  }

  Future<void> delete(Journal deletedJournal) async {
    await journalDataStoreService.deleteJournal(deletedJournal);
  }

  Stream<Journal> get(String id) {
    return journalDataStoreService.getJournalStream(id);
  }
}
