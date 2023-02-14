// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

import '../../../../../core/resources/constants.dart';

part 'goals_state.dart';

class GoalsCubit extends Cubit<TasksState> {
  GoalsCubit() : super(GoalsInitial());

  void selectDayToShowGoals(int index) {
    selectedDateFor = DateFormat("yyyy/MM/dd").format(dates[index]);
    emit(GoalsOfDaySelected(dates[index]));
  }

}
