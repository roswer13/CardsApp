import 'package:cards_app/src/domain/models/cards/cards.dart';
import 'package:cards_app/src/utils/resources/data_state.dart';

abstract class ApiRepository {
  DataState<Cards> getCards({
    required Cards request,
  });
}
