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


/** This is an auto generated class representing the New type in your schema. */
@immutable
class New extends Model {
  static const classType = const _NewModelType();
  final String id;
  final String? _title;
  final String? _subtiltle;
  final String? _description;
  final String? _newsLink;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  NewModelIdentifier get modelIdentifier {
      return NewModelIdentifier(
        id: id
      );
  }
  
  String? get title {
    return _title;
  }
  
  String? get subtiltle {
    return _subtiltle;
  }
  
  String? get description {
    return _description;
  }
  
  String? get newsLink {
    return _newsLink;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const New._internal({required this.id, title, subtiltle, description, newsLink, createdAt, updatedAt}): _title = title, _subtiltle = subtiltle, _description = description, _newsLink = newsLink, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory New({String? id, String? title, String? subtiltle, String? description, String? newsLink}) {
    return New._internal(
      id: id == null ? UUID.getUUID() : id,
      title: title,
      subtiltle: subtiltle,
      description: description,
      newsLink: newsLink);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is New &&
      id == other.id &&
      _title == other._title &&
      _subtiltle == other._subtiltle &&
      _description == other._description &&
      _newsLink == other._newsLink;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("New {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("title=" + "$_title" + ", ");
    buffer.write("subtiltle=" + "$_subtiltle" + ", ");
    buffer.write("description=" + "$_description" + ", ");
    buffer.write("newsLink=" + "$_newsLink" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  New copyWith({String? title, String? subtiltle, String? description, String? newsLink}) {
    return New._internal(
      id: id,
      title: title ?? this.title,
      subtiltle: subtiltle ?? this.subtiltle,
      description: description ?? this.description,
      newsLink: newsLink ?? this.newsLink);
  }
  
  New.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _title = json['title'],
      _subtiltle = json['subtiltle'],
      _description = json['description'],
      _newsLink = json['newsLink'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'title': _title, 'subtiltle': _subtiltle, 'description': _description, 'newsLink': _newsLink, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'title': _title, 'subtiltle': _subtiltle, 'description': _description, 'newsLink': _newsLink, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryModelIdentifier<NewModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<NewModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField TITLE = QueryField(fieldName: "title");
  static final QueryField SUBTILTLE = QueryField(fieldName: "subtiltle");
  static final QueryField DESCRIPTION = QueryField(fieldName: "description");
  static final QueryField NEWSLINK = QueryField(fieldName: "newsLink");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "New";
    modelSchemaDefinition.pluralName = "News";
    
    modelSchemaDefinition.authRules = [
      AuthRule(
        authStrategy: AuthStrategy.PUBLIC,
        operations: [
          ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: New.TITLE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: New.SUBTILTLE,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: New.DESCRIPTION,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: New.NEWSLINK,
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

class _NewModelType extends ModelType<New> {
  const _NewModelType();
  
  @override
  New fromJson(Map<String, dynamic> jsonData) {
    return New.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'New';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [New] in your schema.
 */
@immutable
class NewModelIdentifier implements ModelIdentifier<New> {
  final String id;

  /** Create an instance of NewModelIdentifier using [id] the primary key. */
  const NewModelIdentifier({
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
  String toString() => 'NewModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is NewModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}