import 'package:isar/isar.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class IsarService {
  final Isar isar;

  IsarService({required this.isar});

  Future<void> add<T>(T object) async {
    final collection = isar.collection<T>();
    await isar.writeTxn(() async {
      await collection.put(object);
    });
  }

  Future<T?> get<T>(int id) {
    final collection = isar.collection<T>();
    return collection.get(id);
  }

  Future<List<T>> getAll<T>() async {
    final collection = isar.collection<T>();
    return collection.where().findAll();
  }

  Future<void> delete<T>(int id) async {
    final collection = isar.collection<T>();
    await isar.writeTxn(() async {
      await collection.delete(id);
    });
  }
}
