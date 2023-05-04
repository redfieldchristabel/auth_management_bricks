import 'dart:convert';

import 'package:auth_management/auth_management.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:isar/isar.dart';
{{#isSerializable}}import 'package:json_annotation/json_annotation.dart';

part '{{name.snakeCase()}}.g.dart';

@JsonSerializable(){{/isSerializable}}
@collection
class {{name.pascalCase()}} extends BaseUser{

  {{name.pascalCase()}}(
      {required super.id, required super.username, required super.email});
    
  {{#isSerializable}}
  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_${{name.pascalCase()}}FromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory {{name.pascalCase()}}.fromJson(Map<String, dynamic> json) => _${{name.pascalCase()}}FromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_${{name.pascalCase()}}ToJson`.
  Map<String, dynamic> toJson() => _${{name.pascalCase()}}ToJson(this);

  String toJsonRaw() => json.encode(toJson());

  factory {{name.pascalCase()}}.fromJsonRaw(String source) => {{name.pascalCase()}}.fromJson(json.decode(source));

  {{/isSerializable}}

}

@riverpod
{{name.pascalCase()}}? {{name.camelCase()}}({{name.pascalCase()}}Ref ref){
  return ref.watch(userNotifierProvider) as {{name.pascalCase()}}?;
}