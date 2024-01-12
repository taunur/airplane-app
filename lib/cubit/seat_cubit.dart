import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class SeatCubit extends Cubit<List<String>> {
  SeatCubit() : super([]);

  void selectSeat(String id) {
    debugPrint("prev state: $state");
    if (!isSelected(id)) {
      state.add(id);
    } else {
      state.remove(id);
    }
    debugPrint("new state: $state");
    emit(List.from(state));
  }

  bool isSelected(String id) {
    int index = state.indexOf(id);
    debugPrint("index $index");
    if (index == -1) {
      return false;
    } else {
      return true;
    }
  }
}
