import 'package:isar/isar.dart';

part 'user_schema.g.dart';

@collection
class User {
  Id id = Isar.autoIncrement;

  String? name;

  int? age;
}