import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:built_value/built_value.dart';
{{#isSerializable}}import 'package:built_value/serializer.dart';
import 'package:tiktwin/models/serializers.dart';{{/isSerializable}}

part '{{fileName.snakeCase()}}.g.dart';

@immutable
abstract
class {{name.pascalCase()}} implements Built<{{name.pascalCase()}}, {{name.pascalCase()}}Builder> {

  const {{name.pascalCase()}}._();

  static void _initializeBuilder({{name.pascalCase()}}Builder builder) =>
  builder;

  factory {{name.pascalCase()}}([void Function({{name.pascalCase()}}Builder) updates]) =
  _${{name.pascalCase()}};

  {{#isSerializable}}
  static Serializer<{{name.pascalCase()}}> get serializer =>
  _${{name.camelCase()}}Serializer;

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method
  factory {{name.pascalCase()}}.fromJson(Map<String, dynamic> json) {
    {{name.pascalCase()}}? object = serializers.deserializeWith(serializer, json);
    if (object == null) {
      throw Exception("object is null");
    }
    return object;
  }

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method
  Map<String, dynamic> toJson() => serializers.serialize(this,
      specifiedType: const FullType({{name.pascalCase()}})) as Map<String, dynamic>;

  String toJsonRaw() => jsonEncode(toJson());

  factory {{name.pascalCase()}}.fromJsonRaw(String source) =>
  {{name.pascalCase()}}.fromJson(jsonDecode(source));{{/isSerializable}}
}