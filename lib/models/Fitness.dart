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


/** This is an auto generated class representing the Fitness type in your schema. */
@immutable
class Fitness extends Model {
  static const classType = const _FitnessModelType();
  final String id;
  final String? _title;
  final String? _tutorialLink;
  final String? _imgAssetUrl;
  final String? _imgAssetKey;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  FitnessModelIdentifier get modelIdentifier {
      return FitnessModelIdentifier(
        id: id
      );
  }
  
  String? get title {
    return _title;
  }
  
  String? get tutorialLink {
    return _tutorialLink;
  }
  
  String? get imgAssetUrl {
    return _imgAssetUrl;
  }
  
  String? get imgAssetKey {
    return _imgAssetKey;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Fitness._internal({required this.id, title, tutorialLink, imgAssetUrl, imgAssetKey, createdAt, updatedAt}): _title = title, _tutorialLink = tutorialLink, _imgAssetUrl = imgAssetUrl, _imgAssetKey = imgAssetKey, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Fitness({String? id, String? title, String? tutorialLink, String? imgAssetUrl, String? imgAssetKey}) {
    return Fitness._internal(
      id: id == null ? UUID.getUUID() : id,
      title: title,
      tutorialLink: tutorialLink,
      imgAssetUrl: imgAssetUrl,
      imgAssetKey: imgAssetKey);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Fitness &&
      id == other.id &&
      _title == other._title &&
      _tutorialLink == other._tutorialLink &&
      _imgAssetUrl == other._imgAssetUrl &&
      _imgAssetKey == other._imgAssetKey;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Fitness {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("title=" + "$_title" + ", ");
    buffer.write("tutorialLink=" + "$_tutorialLink" + ", ");
    buffer.write("imgAssetUrl=" + "$_imgAssetUrl" + ", ");
    buffer.write("imgAssetKey=" + "$_imgAssetKey" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Fitness copyWith({String? title, String? tutorialLink, String? imgAssetUrl, String? imgAssetKey}) {
    return Fitness._internal(
      id: id,
      title: title ?? this.title,
      tutorialLink: tutorialLink ?? this.tutorialLink,
      imgAssetUrl: imgAssetUrl ?? this.imgAssetUrl,
      imgAssetKey: imgAssetKey ?? this.imgAssetKey);
  }
  
  Fitness.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _title = json['title'],
      _tutorialLink = json['tutorialLink'],
      _imgAssetUrl = json['imgAssetUrl'],
      _imgAssetKey = json['imgAssetKey'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'title': _title, 'tutorialLink': _tutorialLink, 'imgAssetUrl': _imgAssetUrl, 'imgAssetKey': _imgAssetKey, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'title': _title, 'tutorialLink': _tutorialLink, 'imgAssetUrl': _imgAssetUrl, 'imgAssetKey': _imgAssetKey, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryModelIdentifier<FitnessModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<FitnessModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField TITLE = QueryField(fieldName: "title");
  static final QueryField TUTORIALLINK = QueryField(fieldName: "tutorialLink");
  static final QueryField IMGASSETURL = QueryField(fieldName: "imgAssetUrl");
  static final QueryField IMGASSETKEY = QueryField(fieldName: "imgAssetKey");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Fitness";
    modelSchemaDefinition.pluralName = "Fitnesses";
    
    modelSchemaDefinition.authRules = [
      AuthRule(
        authStrategy: AuthStrategy.PUBLIC,
        operations: [
          ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Fitness.TITLE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Fitness.TUTORIALLINK,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Fitness.IMGASSETURL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Fitness.IMGASSETKEY,
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

class _FitnessModelType extends ModelType<Fitness> {
  const _FitnessModelType();
  
  @override
  Fitness fromJson(Map<String, dynamic> jsonData) {
    return Fitness.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Fitness';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Fitness] in your schema.
 */
@immutable
class FitnessModelIdentifier implements ModelIdentifier<Fitness> {
  final String id;

  /** Create an instance of FitnessModelIdentifier using [id] the primary key. */
  const FitnessModelIdentifier({
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
  String toString() => 'FitnessModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is FitnessModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}