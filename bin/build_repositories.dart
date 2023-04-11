import 'package:build_repositories/build_repositories.dart' as build_repositories;
import 'package:dcli/dcli.dart';
void main(List<String> arguments) {

  ///Init all folder data
  String appFolder = 'lib/app';
  String repositoryFolder = '$appFolder/repositories';
  String interfaceFolder = '$appFolder/interfaces';

  var modelName = ask('name :');

  if(!exists(appFolder)){
    var appPath = createDir(appFolder);
      if(!exists(interfaceFolder)){
          var pathInterface = createDir(interfaceFolder);
          copy('bin/modelRepo.dart', '$pathInterface/repository.dart',overwrite: true);
          if(!exists(repositoryFolder)){
            var pathRepositoryFolder = createDir(repositoryFolder);
            var file ='$pathRepositoryFolder/${modelName}_repository.dart';
            file.write(getClassModel(modelName));
          }
          else{
            var file = '$repositoryFolder/${modelName}_repository.dart';
            if(!exists(file)){
              file.write(getClassModel(modelName));
            }
            else{
              print('*** this file is all ready exist name:$file ***');
            }
          }
      }
      else{
        var folderInterface = '$interfaceFolder/repository.dart';
        if(!exists(folderInterface)){
          copy('bin/modelRepo.dart', '$interfaceFolder/repository.dart',overwrite: true);
          if(!exists(repositoryFolder)){
            var pathRepositoryFolder = createDir(repositoryFolder);
            var file ='$pathRepositoryFolder/${modelName}_repository.dart';
            file.write(getClassModel(modelName));
          }
          else{
            var file = '$repositoryFolder/${modelName}_repository.dart';
            if(!exists(file)){
              file.write(getClassModel(modelName));
            }
            else{
              print(red('*** this file is all ready exist name:$file ***'));
            }
          }
        }
      }
  }else{
    if(!exists(interfaceFolder)){
          var pathInterface = createDir(interfaceFolder);
          copy('bin/modelRepo.dart', '$pathInterface/repository.dart',overwrite: true);
          if(!exists(repositoryFolder)){
            var pathRepositoryFolder = createDir(repositoryFolder);
            var file ='$pathRepositoryFolder/${modelName}_repository.dart';
            file.write(getClassModel(modelName));
          }
          else{
            var file = '$repositoryFolder/${modelName}_repository.dart';
            if(!exists(file)){
              file.write(getClassModel(modelName));
            }
            else{
              print(red('*** this file is all ready exist name:$file ***'));
            }
          }
      }
      else{
        var folderInterface = '$interfaceFolder/repository.dart';
        if(!exists(folderInterface)){
          copy('bin/modelRepo.dart', '$interfaceFolder/repository.dart',overwrite: true);
          if(!exists(repositoryFolder)){
            var pathRepositoryFolder = createDir(repositoryFolder);
            var file ='$pathRepositoryFolder/${modelName}_repository.dart';
            file.write(getClassModel(modelName));
          }
          else{
            var file = '$repositoryFolder/${modelName}_repository.dart';
            if(exists(file)){
              print(red('---> data this model $file are exist'));
            }
            else{
              file.write(getClassModel(modelName));
              print(green("*** Your file repository is create ***"));
        //       print('*** this file is all ready exist name:$file ***');
            }
          }
        }
      }
  }
}

String getClassModel(String model){
  return  '''
    import '../interfaces/repository.dart';

    class $model implements Repository<$model>{
        @override
        Future<void> delete(int id) {
          // TODO: implement delete
          throw UnimplementedError();
        }

        @override
        Future<List<$model>> getAll() {
          // TODO: implement getAll
          throw UnimplementedError();
        }

        @override
        Future<$model?> getById(int id) {
          // TODO: implement getById
          throw UnimplementedError();
        }

        @override
        Future<void> store($model model) {
          // TODO: implement store
          throw UnimplementedError();
        }

        @override
        Future<void> update($model model) {
          // TODO: implement update
          throw UnimplementedError();
        }

    }
  ''';
}




