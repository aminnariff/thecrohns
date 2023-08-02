import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

import '../Controller/journal_list_controller.dart';

class AddJournal extends HookConsumerWidget {
  AddJournal({
    super.key,
  });

  final formGlobalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final foodNameController = useTextEditingController();
    final typeOfFoodController = useTextEditingController();
    final typeOfDietController = useTextEditingController();
    final mainIngredientController = useTextEditingController();
    final sideEffectController = useTextEditingController();
    final descriptionController = useTextEditingController();
    final dateOfEntryController = useTextEditingController();

    return Form(
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
              keyboardType: TextInputType.name,
              controller: typeOfFoodController,
              autofocus: true,
              autocorrect: false,
              decoration: const InputDecoration(hintText: "Type of Food"),
              textInputAction: TextInputAction.next,
              validator: (value) {
                if (value != null && value.isNotEmpty) {
                  return null;
                } else {
                  return 'Enter a valid Type of Food';
                }
              },
            ),
            TextFormField(
              keyboardType: TextInputType.name,
              controller: typeOfDietController,
              autofocus: true,
              autocorrect: false,
              decoration: const InputDecoration(hintText: "Type of Diet"),
              textInputAction: TextInputAction.next,
              validator: (value) {
                if (value != null && value.isNotEmpty) {
                  return null;
                } else {
                  return 'Enter a valid Type of Diet';
                }
              },
            ),
            TextFormField(
              keyboardType: TextInputType.name,
              controller: mainIngredientController,
              autofocus: true,
              autocorrect: false,
              decoration: const InputDecoration(hintText: "Main Ingredient"),
              textInputAction: TextInputAction.next,
              validator: (value) {
                if (value != null && value.isNotEmpty) {
                  return null;
                } else {
                  return 'Enter a valid Main Ingredient';
                }
              },
            ),
            TextFormField(
              keyboardType: TextInputType.name,
              controller: sideEffectController,
              autofocus: true,
              autocorrect: false,
              decoration: const InputDecoration(hintText: "Side Effect"),
              textInputAction: TextInputAction.next,
              validator: (value) {
                if (value != null && value.isNotEmpty) {
                  return null;
                } else {
                  return 'Enter a valid Side Effect';
                }
              },
            ),
            TextFormField(
              keyboardType: TextInputType.name,
              controller: descriptionController,
              autofocus: true,
              autocorrect: false,
              decoration: const InputDecoration(hintText: "Description of side effect you experience "),
              textInputAction: TextInputAction.next,
              validator: (value) {
                if (value != null && value.isNotEmpty) {
                  return null;
                } else {
                  return 'Enter a valid Description';
                }
              },
            ),
            TextFormField(
              keyboardType: TextInputType.datetime,
              controller: dateOfEntryController,
              autofocus: true,
              autocorrect: false,
              decoration: const InputDecoration(hintText: "date on entry"),
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
                  String? formattedDate =
                      DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
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
                    ref.read(journalListControllerProvider).add(
                          name: foodNameController.text,
                          typeOfFood: typeOfFoodController.text,
                          typeOfDiet: typeOfDietController.text,
                          mainIngredient: mainIngredientController.text,
                          sideEffect: sideEffectController.text,
                          description: descriptionController.text,
                          dateOfEntry: dateOfEntryController.text,
                        );
                    Navigator.of(context).pop();
                  }
                } //,
                ),
          ],
        ),
      ),
    );
  }
}
