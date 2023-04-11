    import '../interfaces/repository.dart';

    class User implements Repository<User>{
        @override
        Future<void> delete(int id) {
          // TODO: implement delete
          throw UnimplementedError();
        }

        @override
        Future<List<User>> getAll() {
          // TODO: implement getAll
          throw UnimplementedError();
        }

        @override
        Future<User?> getById(int id) {
          // TODO: implement getById
          throw UnimplementedError();
        }

        @override
        Future<void> store(User model) {
          // TODO: implement store
          throw UnimplementedError();
        }

        @override
        Future<void> update(User model) {
          // TODO: implement update
          throw UnimplementedError();
        }

    }
  
