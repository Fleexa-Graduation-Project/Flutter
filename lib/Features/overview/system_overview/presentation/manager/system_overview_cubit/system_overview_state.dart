import 'package:fleexa/Features/overview/system_overview/data/models/system_overview_model.dart';


abstract class SystemOverviewState {}

class SystemOverviewInitial extends SystemOverviewState {}

class SystemOverviewLoading extends SystemOverviewState {}

class SystemOverviewSuccess extends SystemOverviewState {
  final SystemOverviewModel data;

  SystemOverviewSuccess(this.data);
}

class SystemOverviewFailure extends SystemOverviewState {
  final String error;

  SystemOverviewFailure(this.error);
}