part of 'goals_cubit.dart';

@immutable
abstract class TasksState {}

class GoalsInitial extends TasksState {}


class GoalsOfDaySelected extends TasksState {
  final DateTime selectedDate;

  GoalsOfDaySelected(this.selectedDate);
}



