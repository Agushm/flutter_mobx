// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TripStore on _TripStore, Store {
  Computed<bool>? _$loadingComputed;

  @override
  bool get loading => (_$loadingComputed ??=
          Computed<bool>(() => super.loading, name: '_TripStore.loading'))
      .value;
  Computed<bool>? _$loadingDetailTripComputed;

  @override
  bool get loadingDetailTrip => (_$loadingDetailTripComputed ??= Computed<bool>(
          () => super.loadingDetailTrip,
          name: '_TripStore.loadingDetailTrip'))
      .value;

  final _$detailTripAtom = Atom(name: '_TripStore.detailTrip');

  @override
  DetailTrip? get detailTrip {
    _$detailTripAtom.reportRead();
    return super.detailTrip;
  }

  @override
  set detailTrip(DetailTrip? value) {
    _$detailTripAtom.reportWrite(value, super.detailTrip, () {
      super.detailTrip = value;
    });
  }

  final _$_detailTripFutureAtom = Atom(name: '_TripStore._detailTripFuture');

  @override
  ObservableFuture<DetailTrip?> get _detailTripFuture {
    _$_detailTripFutureAtom.reportRead();
    return super._detailTripFuture;
  }

  @override
  set _detailTripFuture(ObservableFuture<DetailTrip?> value) {
    _$_detailTripFutureAtom.reportWrite(value, super._detailTripFuture, () {
      super._detailTripFuture = value;
    });
  }

  final _$_tripFutureAtom = Atom(name: '_TripStore._tripFuture');

  @override
  ObservableFuture<List<Trip>?> get _tripFuture {
    _$_tripFutureAtom.reportRead();
    return super._tripFuture;
  }

  @override
  set _tripFuture(ObservableFuture<List<Trip>?> value) {
    _$_tripFutureAtom.reportWrite(value, super._tripFuture, () {
      super._tripFuture = value;
    });
  }

  final _$tripListAtom = Atom(name: '_TripStore.tripList');

  @override
  List<Trip>? get tripList {
    _$tripListAtom.reportRead();
    return super.tripList;
  }

  @override
  set tripList(List<Trip>? value) {
    _$tripListAtom.reportWrite(value, super.tripList, () {
      super.tripList = value;
    });
  }

  final _$successAtom = Atom(name: '_TripStore.success');

  @override
  bool get success {
    _$successAtom.reportRead();
    return super.success;
  }

  @override
  set success(bool value) {
    _$successAtom.reportWrite(value, super.success, () {
      super.success = value;
    });
  }

  final _$getTripsAsyncAction = AsyncAction('_TripStore.getTrips');

  @override
  Future<dynamic> getTrips() {
    return _$getTripsAsyncAction.run(() => super.getTrips());
  }

  final _$getDetailTripAsyncAction = AsyncAction('_TripStore.getDetailTrip');

  @override
  Future<dynamic> getDetailTrip(String slug) {
    return _$getDetailTripAsyncAction.run(() => super.getDetailTrip(slug));
  }

  @override
  String toString() {
    return '''
detailTrip: ${detailTrip},
tripList: ${tripList},
success: ${success},
loading: ${loading},
loadingDetailTrip: ${loadingDetailTrip}
    ''';
  }
}
