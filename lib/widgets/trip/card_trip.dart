import 'package:boilerplate/models/trip/trip.dart';
import 'package:boilerplate/widgets/star_rating.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:vector_math/vector_math.dart' as math;
import '../../utils/routes/routes.dart';
import '../../utils/string/string_converter.dart';

class CardTrip extends StatelessWidget {
  CardTrip({Key? key, @required this.trip}) : super(key: key);
  final Trip? trip;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        navigate(context);
      },
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              children: [
                Container(
                  width: 100,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(trip!.pict.url),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  constraints: BoxConstraints(maxWidth: width / 2),
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        trip!.name,
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            buildIconWithContent(
                              MdiIcons.airplane,
                              'Berangkat ${StringConverter.formatDateDepature(trip!.departureAt)}',
                            ),
                            buildIconWithContent(
                              MdiIcons.clockOutline,
                              'Paket ${trip!.days} Hari',
                            ),
                            buildHotelRating(),
                            buildIconWithContent(MdiIcons.seatReclineNormal,
                                'Terisa ${trip!.availableSeats - trip!.totalBooking} dari ${trip!.availableSeats} kursi'),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'Mulai ',
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w300),
                          ),
                          Text(
                            "${StringConverter.formatRupiah(trip!.priceStart, isMillion: true)}",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 15,
            right: 15,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                ),
              ),
              child: Text(
                '${trip!.category}',
                style: TextStyle(
                    fontSize: 9,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildHotelRating() {
    return Container(
      margin: EdgeInsets.only(bottom: 3),
      child: Row(
        children: [
          Icon(MdiIcons.bed, size: 15, color: Colors.grey[700]),
          SizedBox(
            width: 10,
          ),
          StarRating(
            starCount: trip!.hotelStar,
            rating: trip!.hotelStar.toDouble(),
            size: 10,
            color: Colors.yellow,
            marginStar: EdgeInsets.only(right: 5),
          ),
        ],
      ),
    );
  }

  Widget buildIconWithContent(IconData icon, String content) {
    return Container(
      margin: EdgeInsets.only(bottom: 3),
      child: Row(
        children: [
          Icon(icon, size: 15, color: Colors.grey[700]),
          SizedBox(
            width: 10,
          ),
          Text(
            content,
            style: TextStyle(
                color: Colors.grey[700],
                fontSize: 10,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget navigate(BuildContext context) {
    Navigator.of(context).pushNamed(Routes.detailTrip, arguments: trip!.slug);

    return Container();
  }
}
