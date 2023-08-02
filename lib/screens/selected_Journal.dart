import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:thecrohns/Controller/journal_controller.dart';
import 'package:thecrohns/models/Journal.dart';

import '../common/navigation/router/routes.dart';
import '../ui/upload_progress_dialog.dart';
import 'deleteJournal.dart';

class SelectedJournalCard extends ConsumerWidget {
  const SelectedJournalCard({
    required this.journal,
    super.key,
  });

  final Journal journal;

  Future<void> uploadImage({
    required BuildContext context,
    required WidgetRef ref,
    required Journal journal,
  }) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile == null) {
      return;
    }

    final file = File(pickedFile.path);
    showDialog<String>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return const UploadProgressDialog();
        });
    await ref.read(journalControllerProvider).uploadFile(file, journal);
  }

  Future<bool> deleteTrip(
      BuildContext context, WidgetRef ref, Journal trip) async {
    var value = await showDialog<bool>(
        context: context,
        builder: (BuildContext context) {
          return const DeleteJournalDialog();
        });
    value ??= false;

    if (value) {
      await ref.read(journalControllerProvider).delete(trip);
    }
    return value;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 5,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            journal.foodName,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            alignment: Alignment.center,
            //color: const Color(constants.primaryColorDark), //Color(0xffE1E5E4),
            height: 150,

            child: journal.jImageUrl != null
                ? Stack(children: [
                    const Center(child: CircularProgressIndicator()),
                    CachedNetworkImage(
                      cacheKey: journal.jImageKey,
                      imageUrl: journal.jImageUrl!,
                      width: double.maxFinite,
                      height: 500,
                      alignment: Alignment.topCenter,
                      fit: BoxFit.fill,
                    ),
                  ])
                : Image.asset(
                    'assets/images/amplify.png',
                    fit: BoxFit.contain,
                  ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {
                  context.goNamed(
                    AppRoute.editjournal.name,
                    pathParameters: {'id': journal.id},
                    extra: journal,
                  );
                },
                icon: const Icon(Icons.edit),
              ),
              IconButton(
                onPressed: () {
                  uploadImage(
                    context: context,
                    journal: journal,
                    ref: ref,
                  ).then((value) =>
                      Navigator.of(context, rootNavigator: true).pop());
                },
                icon: const Icon(Icons.camera_enhance_sharp),
              ),
              IconButton(
                onPressed: () {
                  deleteTrip(context, ref, journal).then((value) {
                    if (value) {
                      context.goNamed(
                        AppRoute.home.name,
                      );
                    }
                  });
                },
                icon: const Icon(Icons.delete),
              ),
            ],
          )
        ],
      ),
    );
  }
}
