import 'package:counter/Cubit/counter_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit(super.initialState);

  int totalATeam = 0;
  int totalBTeam = 0;

  void Increment({required String team, required int number}) {
    if (team == 'A') {
      totalATeam += number;
      emit(TeamAIncrement());
    } else {
      totalBTeam += number;
      emit(TeamBIncrement());
    }
  }

  void ResetFun() {
    totalATeam = 0;
    totalBTeam = 0;
    emit(Reset());
  }
}
