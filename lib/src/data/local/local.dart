import 'package:flutter_mvi_test/src/data/local/I_local.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';

@LazySingleton(as: ILocalDataSource)
class LocalDataSource implements ILocalDataSource {
  final Isar _isar;

  LocalDataSource(this._isar);

  @override
  Future<void> addData<T>(T value) async {
    final collection = _isar.collection<T>();
    await _isar.writeTxn(() async => await collection.put(value));
  }

  @override
  Future<void> updateData<T>(dynamic id, T value) async {
    await addData<T>(value);
  }

  @override
  Future<void> deleteData<T>(dynamic id) async {
    final collection = _isar.collection<T>();
    await _isar.writeTxn(() async => await collection.delete(id));
  }

  @override
  Future<void> clearData<T>() async {
    final collection = _isar.collection<T>();
    await _isar.writeTxn(() async => await collection.clear());
  }

  @override
  Future<T?> getData<T>(id) async {
    final collection = _isar.collection<T>();
    return await collection.get(id);
  }

  @override
  Future<List<T>> getAllData<T>() async {
    final collection = _isar.collection<T>();
    return await collection.where().findAll();
  }
}
