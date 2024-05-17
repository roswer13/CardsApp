part of 'cards_cubit.dart';

abstract class CardsStates extends Equatable {
  final List<Cards> cards;
  final bool noMoreData;
  final DioException? error;

  const CardsStates({
    this.cards = const [],
    this.noMoreData = true,
    this.error,
  });

  @override
  List<Object?> get props => [cards, noMoreData, error];
}

class CardsLoading extends CardsStates {
  const CardsLoading();
}

class CardsSuccess extends CardsStates {
  const CardsSuccess({super.cards, super.noMoreData});
}

class CardsFailed extends CardsStates {
  const CardsFailed({super.error});
}
