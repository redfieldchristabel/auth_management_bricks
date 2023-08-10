import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:tiktwin/models/product/create_product_variation_body.dart';
import 'package:built_value/serializer.dart';
import 'package:tiktwin/models/serializers.dart';

part '{{name.snakeCase()}}.g.dart';

@immutable
abstract
class {{name.pascalCase()}} implements Built<{{name.pascalCase()}}, {{name.pascalCase()}}Builder> {

  {{name.pascalCase()}}._();

  static void _initializeBuilder({{name.pascalCase()}}Builder builder) =>
  builder;

  factory {{name.pascalCase()}}([void Function({{name.pascalCase()}}Builder) updates]) =
  _${{name.pascalCase()}};

  static Serializer<{{name.pascalCase()}}> get serializer =>
  _$createProductBodySerializer;

  factory {{name.pascalCase()}}.fromJson(Map<String, dynamic> json) =>
  _${{name.pascalCase()}}FromJson(json);

  Map<String, dynamic> toJson() => serializers.serialize(this) as Map<String, dynamic>;

  String toJsonRaw() {
  final Map<String, dynamic> json = toJson();
  return jsonEncode(json);
  }

  factory {{name.pascalCase()}}.fromJsonRaw(String source) =>
  {{name.pascalCase()}}.fromJson(jsonDecode(source));
}