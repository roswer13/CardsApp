import 'package:cards_app/src/data/repositories/data_repository_implement.dart';
import 'package:cards_app/src/domain/repositories/api_repository.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

Future<void> initializeDependencies() async {
  locator.registerSingleton<ApiRepository>(
    ApiRepositoryImpl(),
  );
}
