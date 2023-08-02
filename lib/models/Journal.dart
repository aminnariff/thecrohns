/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the Journal type in your schema. */
@immutable
class Journal extends Model {
  static const classType = const _JournalModelType();
  final String id;
  final String? _foodName;
  final String? _typeOfFood;
  final String? _typeOfDiet;
  final String? _mainIngredient;
  final String? _sideEffect;
  final String? _description;
  final TemporalDateTime? _dateOfEntry;
  final String? _jImageUrl;
  final String? _jImageKey;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  JournalModelIdentifier get modelIdentifier {
      return JournalModelIdentifier(
        id: id
      );
  }
  
  String get foodName {
    try {
      return _foodName!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get typeOfFood {
    try {
      return _typeOfFood!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get typeOfDiet {
    try {
      return _typeOfDiet!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get mainIngredient {
    try {
      return _mainIngredient!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get sideEffect {
    try {
      return _sideEffect!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get description {
    try {
      return _description!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  TemporalDateTime get dateOfEntry {
    try {
      return _dateOfEntry!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get jImageUrl {
    return _jImageUrl;
  }
  
  String? get jImageKey {
    return _jImageKey;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Journal._internal({required this.id, required foodName, required typeOfFood, required typeOfDiet, required mainIngredient, required sideEffect, required description, required dateOfEntry, jImageUrl, jImageKey, createdAt, updatedAt}): _foodName = foodName, _typeOfFood = typeOfFood, _typeOfDiet = typeOfDiet, _mainIngredient = mainIngredient, _sideEffect = sideEffect, _description = description, _dateOfEntry = dateOfEntry, _jImageUrl = jImageUrl, _jImageKey = jImageKey, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Journal({String? id, required String foodName, required String typeOfFood, required String typeOfDiet, required String mainIngredient, required String sideEffect, required String description, required TemporalDateTime dateOfEntry, String? jImageUrl, String? jImageKey}) {
    return Journal._internal(
      id: id == null ? UUID.getUUID() : id,
      foodName: foodName,
      typeOfFood: typeOfFood,
      typeOfDiet: typeOfDiet,
      mainIngredient: mainIngredient,
      sideEffect: sideEffect,
      description: description,
      dateOfEntry: dateOfEntry,
      jImageUrl: jImageUrl,
      jImageKey: jImageKey);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Journal &&
      id == other.id &&
      _foodName == other._foodName &&
      _typeOfFood == other._typeOfFood &&
      _typeOfDiet == other._typeOfDiet &&
      _mainIngredient == other._mainIngredient &&
      _sideEffect == other._sideEffect &&
      _description == other._description &&
      _dateOfEntry == other._dateOfEntry &&
      _jImageUrl == other._jImageUrl &&
      _jImageKey == other._jImageKey;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Journal {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("foodName=" + "$_foodName" + ", ");
    buffer.write("typeOfFood=" + "$_typeOfFood" + ", ");
    buffer.write("typeOfDiet=" + "$_typeOfDiet" + ", ");
    buffer.write("mainIngredient=" + "$_mainIngredient" + ", ");
    buffer.write("sideEffect=" + "$_sideEffect" + ", ");
    buffer.write("description=" + "$_description" + ", ");
    buffer.write("dateOfEntry=" + (_dateOfEntry != null ? _dateOfEntry!.format() : "null") + ", ");
    buffer.write("jImageUrl=" + "$_jImageUrl" + ", ");
    buffer.write("jImageKey=" + "$_jImageKey" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Journal copyWith({String? foodName, String? typeOfFood, String? typeOfDiet, String? mainIngredient, String? sideEffect, String? description, TemporalDateTime? dateOfEntry, String? jImageUrl, String? jImageKey}) {
    return Journal._internal(
      id: id,
      foodName: foodName ?? this.foodName,
      typeOfFood: typeOfFood ?? this.typeOfFood,
      typeOfDiet: typeOfDiet ?? this.typeOfDiet,
      mainIngredient: mainIngredient ?? this.mainIngredient,
      sideEffect: sideEffect ?? this.sideEffect,
      description: description ?? this.description,
      dateOfEntry: dateOfEntry ?? this.dateOfEntry,
      jImageUrl: jImageUrl ?? this.jImageUrl,
      jImageKey: jImageKey ?? this.jImageKey);
  }
  
  Journal.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _foodName = json['foodName'],
      _typeOfFood = json['typeOfFood'],
      _typeOfDiet = json['typeOfDiet'],
      _mainIngredient = json['mainIngredient'],
      _sideEffect = json['sideEffect'],
      _description = json['description'],
      _dateOfEntry = json['dateOfEntry'] != null ? TemporalDateTime.fromString(json['dateOfEntry']) : null,
      _jImageUrl = json['jImageUrl'],
      _jImageKey = json['jImageKey'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'foodName': _foodName, 'typeOfFood': _typeOfFood, 'typeOfDiet': _typeOfDiet, 'mainIngredient': _mainIngredient, 'sideEffect': _sideEffect, 'description': _description, 'dateOfEntry': _dateOfEntry?.format(), 'jImageUrl': _jImageUrl, 'jImageKey': _jImageKey, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'foodName': _foodName, 'typeOfFood': _typeOfFood, 'typeOfDiet': _typeOfDiet, 'mainIngredient': _mainIngredient, 'sideEffect': _sideEffect, 'description': _description, 'dateOfEntry': _dateOfEntry, 'jImageUrl': _jImageUrl, 'jImageKey': _jImageKey, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryModelIdentifier<JournalModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<JournalModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField FOODNAME = QueryField(fieldName: "foodName");
  static final QueryField TYPEOFFOOD = QueryField(fieldName: "typeOfFood");
  static final QueryField TYPEOFDIET = QueryField(fieldName: "typeOfDiet");
  static final QueryField MAININGREDIENT = QueryField(fieldName: "mainIngredient");
  static final QueryField SIDEEFFECT = QueryField(fieldName: "sideEffect");
  static final QueryField DESCRIPTION = QueryField(fieldName: "description");
  static final QueryField DATEOFENTRY = QueryField(fieldName: "dateOfEntry");
  static final QueryField JIMAGEURL = QueryField(fieldName: "jImageUrl");
  static final QueryField JIMAGEKEY = QueryField(fieldName: "jImageKey");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Journal";
    modelSchemaDefinition.pluralName = "Journals";
    
    modelSchemaDefinition.authRules = [
      AuthRule(
        authStrategy: AuthStrategy.PUBLIC,
        operations: [
          ModelOperation.CREATE,
          ModelOperation.UPDATE,
          ModelOperation.DELETE,
          ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Journal.FOODNAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Journal.TYPEOFFOOD,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Journal.TYPEOFDIET,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Journal.MAININGREDIENT,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Journal.SIDEEFFECT,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Journal.DESCRIPTION,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Journal.DATEOFENTRY,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Journal.JIMAGEURL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Journal.JIMAGEKEY,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _JournalModelType extends ModelType<Journal> {
  const _JournalModelType();
  
  @override
  Journal fromJson(Map<String, dynamic> jsonData) {
    return Journal.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Journal';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Journal] in your schema.
 */
@immutable
class JournalModelIdentifier implements ModelIdentifier<Journal> {
  final String id;

  /** Create an instance of JournalModelIdentifier using [id] the primary key. */
  const JournalModelIdentifier({
    required this.id});
  
  @override
  Map<String, dynamic> serializeAsMap() => (<String, dynamic>{
    'id': id
  });
  
  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
    .entries
    .map((entry) => (<String, dynamic>{ entry.key: entry.value }))
    .toList();
  
  @override
  String serializeAsString() => serializeAsMap().values.join('#');
  
  @override
  String toString() => 'JournalModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is JournalModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}