import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:thecrohns/models/Journal.dart';

import '../data/journal_respository.dart';
import '../services/storage_service.dart';


final journalControllerProvider = Provider<JournalController>((ref) {
  return JournalController(ref);
});

class JournalController {
  JournalController(this.ref);
  final Ref ref;

  Future<void> uploadFile(File file, Journal trip) async {
    final fileKey = await ref.read(storageServiceProvider).uploadFile(file);
    if (fileKey != null) {
      final imageUrl =
          await ref.read(storageServiceProvider).getImageUrl(fileKey);
      final updatedTrip =
          trip.copyWith(jImageKey: fileKey, jImageUrl: imageUrl);
      await ref.read(journalRepositoryProvider).update(updatedTrip);
      ref.read(storageServiceProvider).resetUploadProgress();
    }
  }

  ValueNotifier<double> uploadProgress() {
    return ref.read(storageServiceProvider).getUploadProgress();
  }

  Future<void> edit(Journal updatedTrip) async {
    final tripsRepository = ref.read(journalRepositoryProvider);
    await tripsRepository.update(updatedTrip);
  }

  Future<void> delete(Journal deletedTrip) async {
    final tripsRepository = ref.read(journalRepositoryProvider);
    await tripsRepository.delete(deletedTrip);
  }
}
