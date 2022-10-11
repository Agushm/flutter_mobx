import 'package:boilerplate/data/repository.dart';
import 'package:mobx/mobx.dart';

import '../../models/trip/trip.dart';
import '../../utils/dio/dio_error_util.dart';
import '../error/error_store.dart';

part 'trip_store.g.dart';

enum TripState { initial, loading, loaded }

class TripStore = _TripStore with _$TripStore;

abstract class _TripStore with Store {
  // repository instance
  late Repository _repository;
  // store for handling errors
  final ErrorStore errorStore = ErrorStore();

  // constructor:---------------------------------------------------------------
  _TripStore(Repository repository) : this._repository = repository;

  // store variables:-----------------------------------------------------------
  @observable
  Trip? detailTrip;

  static ObservableFuture<Trip?> emptyDetailTripResponse =
      ObservableFuture.value(null);

  @observable
  ObservableFuture<Trip?> _detailTripFuture = ObservableFuture.value(null);

  static ObservableFuture<List<Trip>?> emptyTripResponse =
      ObservableFuture.value(null);

  @observable
  ObservableFuture<List<Trip>?> _tripFuture =
      ObservableFuture<List<Trip>?>(emptyTripResponse);

  @observable
  List<Trip>? tripList;

  @observable
  bool success = false;

  @computed
  bool get loading => _tripFuture.status == FutureStatus.pending;

  // actions:-------------------------------------------------------------------
  @action
  Future getTrips() async {
    final future = _repository.getTrips();
    _tripFuture = ObservableFuture(future);
    future.then((tripList) {
      this.tripList = tripList;
    }).catchError((error) {
      errorStore.errorMessage = DioErrorUtil.handleError(error);
    });
  }

  @action
  Future getDetailTrip(String slug) async {
    final future = _repository.getDetailTrip(slug);
    _detailTripFuture = ObservableFuture(future);
    future.then((trip) {
      this.detailTrip = trip;
    }).catchError((error) {
      errorStore.errorMessage = DioErrorUtil.handleError(error);
    });
  }
}
