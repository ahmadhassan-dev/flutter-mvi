abstract class ILocalDataSource {
  Future<void> addData<T>(T value);

  Future<void> updateData<T>(dynamic id, T value);

  Future<T?> getData<T>(dynamic id);

  Future<void> deleteData<T>(dynamic id);

  Future<List<T>> getAllData<T>();

  Future<void> clearData<T>();
}
