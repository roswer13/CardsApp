import 'dart:convert';

import 'package:cards_app/src/domain/models/cards/result.dart';
import 'package:cards_app/src/domain/repositories/api_repository.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

import 'package:cards_app/src/domain/models/cards/cards.dart';
import 'package:cards_app/src/presentation/base/base_cubit.dart';
import 'package:flutter/services.dart';

part 'cards_state.dart';

class CardsCubit extends BaseCubit<CardsStates, List<Cards>> {
  final ApiRepository _apiRepository;

  CardsCubit(this._apiRepository) : super(const CardsLoading(), []);

  Future<List<Result>?> getCards() async {
    if (isBusy) return null;

    final String response = await rootBundle.loadString('assets/cards.json');
    final data = await json.decode(response);
    final respose = _apiRepository.getCards(request: Cards.fromMap(data));

    return respose.data?.results;
  }
}
