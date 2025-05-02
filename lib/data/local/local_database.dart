/// Defines the local database interface for the app.
///
/// [TKey] is the type of the key used to identify the model,
/// and [T] is the type of the model itself.
abstract class LocalDatabase<TKey, T> {
  /// Write a model to the database.
  Future<void> write(T model);

  /// Read a model from the database.
  Future<T> read(TKey id);

  /// Delete a model from the database.
  Future<void> delete(String id);

  /// List all models in the database.
  Future<List<T>> list();
}
