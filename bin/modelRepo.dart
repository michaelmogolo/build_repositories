abstract class Repository<T>{
  //Get all data[T]
  Future<List<T>> getAll();

  Future<T?> getById(int id);

  Future<void>store(T model);

  Future<void>update(T model);

  Future<void> delete(int id);
}