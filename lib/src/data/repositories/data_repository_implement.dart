import 'package:cards_app/src/domain/models/cards/cards.dart';
import 'package:cards_app/src/domain/repositories/api_repository.dart';
import 'package:cards_app/src/utils/resources/data_state.dart';

class ApiRepositoryImpl implements ApiRepository {
  @override
  DataState<Cards> getCards({required Cards request}) {
    return DataSuccess(request);
  }
}
