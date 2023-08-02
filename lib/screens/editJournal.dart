import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import '../Controller/journal_controller.dart';
import '../common/navigation/router/routes.dart';
import '../models/Journal.dart';
import 'DisplayJournal.dart';

class EditJournal extends HookConsumerWidget {
  EditJournal({
    required this.journal,
    super.key,
  });
  final Journal journal;

  final formGlobalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final foodNameController = useTextEditingController(text: journal.foodName);
    final typeOfFoodController =
        useTextEditingController(text: journal.typeOfFood);
    final typeOfDietController =
        useTextEditingController(text: journal.typeOfDiet);
    final mainIngredientController =
        useTextEditingController(text: journal.mainIngredient);
    final sideEffectController =
        useTextEditingController(text: journal.sideEffect);   
    final descriptionController =
        useTextEditingController(text: journal.description);

    final dateOfEntryController = useTextEditingController(
        text: DateFormat('yyyy-MM-dd HH:mm:ss').format(journal.dateOfEntry.getDateTimeInUtc()));

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Edit Journal',
        ),
        leading: IconButton(
          onPressed: () {
            context.goNamed(
              AppRoute.journal.name,
              pathParameters: {'id': journal.id},
            );
          },
          icon: const Icon(Icons.arrow_back),
        ),
        backgroundColor: const Color.fromARGB(32, 155, 62, 62),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formGlobalKey,
          child: Container(
            padding: EdgeInsets.only(
                top: 15,
                left: 15,
                right: 15,
                bottom: MediaQuery.of(context).viewInsets.bottom + 15),
            width: double.infinity,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  //initialValue: journal.foodName,
                  controller: foodNameController,
                  keyboardType: TextInputType.name,
                  validator: (value) {
                    const validationError = 'Enter a valid food name';
                    if (value == null || value.isEmpty) {
                      return validationError;
                    }

                    return null;
                  },
                  autofocus: true,
                  autocorrect: false,
                  decoration: const InputDecoration(hintText: "Food Name"),
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  // initialValue: journal.typeOfFood,
                  keyboardType: TextInputType.name,
                  controller: typeOfFoodController,
                  autofocus: true,
                  autocorrect: false,
                  decoration:
                      const InputDecoration(hintText: "Type of Food"),
                  textInputAction: TextInputAction.next,
                  validator: (value) {
                    if (value != null && value.isNotEmpty) {
                      return null;
                    } else {
                      return 'Enter a valid destination';
                    }
                  },
                ),
                TextFormField(
                  // initialValue: journal.typeOfDiet,
                  keyboardType: TextInputType.name,
                  controller: typeOfDietController,
                  autofocus: true,
                  autocorrect: false,
                  decoration:
                      const InputDecoration(hintText: "Type of Diet"),
                  textInputAction: TextInputAction.next,
                  validator: (value) {
                    if (value != null && value.isNotEmpty) {
                      return null;
                    } else {
                      return 'Enter a valid destination';
                    }
                  },
                ),
                TextFormField(
                  // initialValue: journal.mainIngredient,
                  keyboardType: TextInputType.name,
                  controller: mainIngredientController,
                  autofocus: true,
                  autocorrect: false,
                  decoration:
                      const InputDecoration(hintText: "Main Ingredient"),
                  textInputAction: TextInputAction.next,
                  validator: (value) {
                    if (value != null && value.isNotEmpty) {
                      return null;
                    } else {
                      return 'Enter a valid destination';
                    }
                  },
                ),
                TextFormField(
                  // initialValue: journal.sideEffect,
                  keyboardType: TextInputType.name,
                  controller: sideEffectController,
                  autofocus: true,
                  autocorrect: false,
                  decoration:
                      const InputDecoration(hintText: "Side Effect"),
                  textInputAction: TextInputAction.next,
                  validator: (value) {
                    if (value != null && value.isNotEmpty) {
                      return null;
                    } else {
                      return 'Enter a valid destination';
                    }
                  },
                ),
                TextFormField(
                  // initialValue: journal.description,
                  keyboardType: TextInputType.name,
                  controller: descriptionController,
                  autofocus: true,
                  autocorrect: false,
                  decoration:
                      const InputDecoration(hintText: "Description"),
                  textInputAction: TextInputAction.next,
                  validator: (value) {
                    if (value != null && value.isNotEmpty) {
                      return null;
                    } else {
                      return 'Enter a valid destination';
                    }
                  },
                ),
                TextFormField(
                  // initialValue: journal.dateOfEntry.toString(),
                  keyboardType: TextInputType.datetime,
                  controller: dateOfEntryController,
                  autofocus: true,
                  autocorrect: false,
                  decoration: const InputDecoration(hintText: "Date of Entry"),
                  textInputAction: TextInputAction.next,
                  validator: (value) {
                    if (value != null && value.isNotEmpty) {
                      return null;
                    } else {
                      return 'Enter a valid date';
                    }
                  },
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2101));

                    if (pickedDate != null) {
                      String? formattedDate = DateFormat('yyyy-MM-dd HH:mm:ss')
                          .format(DateTime.now());
                      dateOfEntryController.text = formattedDate;
                    } else {}
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextButton(
                    child: const Text('OK'),
                    onPressed: () async {
                      final currentState = formGlobalKey.currentState;
                      if (currentState == null) {
                        return;
                      }
                      if (currentState.validate()) {
                        final updatedJournal = journal.copyWith(
                          foodName: foodNameController.text,
                          typeOfFood: typeOfFoodController.text,
                          typeOfDiet: typeOfDietController.text,
                          mainIngredient: mainIngredientController.text,
                          sideEffect: sideEffectController.text,
                          description: descriptionController.text,
                          dateOfEntry: TemporalDateTime(
                              DateTime.parse(dateOfEntryController.text)),
                        );
                        ref.read(journalControllerProvider).edit(updatedJournal);
                        context.goNamed(
                          AppRoute.journal.name,
                          pathParameters: {'id': journal.id},
                        );
                      }
                    } //,
                    ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
