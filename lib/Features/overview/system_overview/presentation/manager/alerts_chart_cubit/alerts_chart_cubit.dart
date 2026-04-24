import 'package:bloc/bloc.dart';
import 'package:fleexa/Features/overview/system_overview/data/models/system_overview_model.dart';
import 'package:meta/meta.dart';
import 'package:fleexa/Features/overview/system_overview/data/models/alerts_chart.dart';
import 'package:fleexa/Features/overview/system_overview/data/repos/system_overview_repository.dart';

part 'alerts_chart_state.dart';

class AlertsChartCubit extends Cubit<AlertsChartState> {
  final SystemOverviewRepository repository;

  AlertsChartCubit(this.repository) : super(AlertsChartInitial());

  Future<void> getAlertsChart({required String period}) async {
    emit(AlertsChartLoading());

    try {
      final SystemOverviewModel data =
          await repository.getAlertsChart(period: period);

      emit(AlertsChartSuccess(data.alertsChart));
    } catch (e) {
      emit(AlertsChartFailure(e.toString()));
    }
  }
}