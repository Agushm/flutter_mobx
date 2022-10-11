import '../../../../models/trip/detail_trip.dart';
import '../../../../models/trip/trip.dart';
import '../../constants/endpoints.dart';
import '../../dio_client.dart';
import '../../rest_client.dart';

class TripApi {
  // dio instance
  final DioClient _dioClient;

  // rest-client instance
  final RestClient _restClient;

  // injecting dio instance
  TripApi(this._dioClient, this._restClient);

  /// Returns list of trip in response
  Future<List<Trip>> getTrips() async {
    try {
      final res = await _dioClient.get(Endpoints.getTrips);
      print(res['data'][0]);
      List<Trip> load = [];
      if (res['data'] != null) {
        var d = res['data'] as List;
        d.forEach((e) {
          load.add(Trip.fromJson(e));
        });
      }
      return load;
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }

  // Returns detail trip in response
  Future<DetailTrip> getDetailTrip(String slug) async {
    try {
      final res = await _dioClient.get(Endpoints.getTrips + '/$slug');
      return DetailTrip.fromJson(res);
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }
}
