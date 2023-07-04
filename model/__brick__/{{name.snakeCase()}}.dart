import 'dart:convert';

import 'package:riverpod_annotation/riverpod_annotation.dart';
{{#isSerializable}}import 'package:json_annotation/json_annotation.dart';

part '{{name.snakeCase()}}.g.dart';

@JsonSerializable(){{/isSerializable}}
@collection
class {{name.pascalCase()}} {

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
