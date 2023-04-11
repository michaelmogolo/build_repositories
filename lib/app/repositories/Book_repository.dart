    import '../interfaces/repository.dart';

    class Book implements Repository<Book>{
        @override
        Future<void> delete(int id) {
          // TODO: implement delete
          throw UnimplementedError();
        }

        @override
        Future<List<Book>> getAll() {
          // TODO: implement getAll
          throw UnimplementedError();
        }

        @override
        Future<Book?> getById(int id) {
          // TODO: implement getById
          throw UnimplementedError();
        }

        @override
        Future<void> store(Book model) {
          // TODO: implement store
          throw UnimplementedError();
        }

        @override
        Future<void> update(Book model) {
          // TODO: implement update
          throw UnimplementedError();
        }

    }
  
