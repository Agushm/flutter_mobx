import 'package:boilerplate/stores/trip/trip_store.dart';
import 'package:boilerplate/widgets/app_bar_widget.dart';
import 'package:boilerplate/widgets/html_widget.dart';
import 'package:boilerplate/widgets/star_rating.dart';
import 'package:boilerplate/widgets/trip/trip_flight_ticket.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';
import 'package:timelines/timelines.dart';

import '../../utils/string/string_converter.dart';
import '../../widgets/empty_app_bar_widget.dart';

class TripFacilityScreen extends StatefulWidget {
  const TripFacilityScreen({Key? key}) : super(key: key);

  @override
  State<TripFacilityScreen> createState() => _TripFacilityScreenState();
}

class _TripFacilityScreenState extends State<TripFacilityScreen> {
  late Map facility;
  late TripStore _tripStore;
  @override
  void didChangeDependencies() {
    _tripStore = Provider.of<TripStore>(context);
    facility = {
      'title': 'Itinerary',
      'icon': MdiIcons.clipboardList,
      'color': Colors.blue[900],
      'key': 'hotels'
    }; //ModalRoute.of(context)!.settings.arguments as Map;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EmptyAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBarWidget(title: '${facility['title']}'),
          Expanded(child: Builder(builder: (context) {
            switch (facility['key']) {
              case 'itineraries':
                return _buildListItineraries();
              case 'buses':
                return _buildListViewBuses();
              case 'hotels':
                return _buildListViewHotels();
              case 'flights':
                return _buildListViewFlights();
              default:
                return SizedBox();
            }
          })),
        ],
      ),
    );
  }

  Widget _buildListItineraries() {
    final length = _tripStore.detailTrip!.itineraries.length;
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(left: 10, right: 20, top: 20),
        child: FixedTimeline.tileBuilder(
          theme: TimelineThemeData(
            nodePosition: 0,
          ),
          builder: TimelineTileBuilder.connected(
            connectionDirection: ConnectionDirection.before,
            itemCount: length,
            contentsBuilder: (_, index) {
              final data = _tripStore.detailTrip!.itineraries[index];
              if (length == 2 && index == 1) {
                return SizedBox();
              }
              return Container(
                margin: EdgeInsets.only(left: 10.0, bottom: 20),
                child: Container(
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).cardColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            '${DateFormat('dd MMM yyyy').format(DateTime.parse(data.at))}',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        data.title,
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w200),
                      ),
                      HTMLWidget(
                        htmlData: data.description,
                      )
                    ],
                  ),
                ),
              );
            },
            indicatorBuilder: (_, index) {
              if (length == 2 && index == 1) {
                return null;
              }
              return Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(10),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.blue,
                  ),
                ),
              );
            },
            connectorBuilder: (_, index, ___) => SolidLineConnector(
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildListViewHotels() {
    return ListView.separated(
        padding: EdgeInsets.all(20),
        itemBuilder: (context, index) {
          var data = _tripStore.detailTrip!.hotels[index];
          return Material(
            color: Theme.of(context).cardColor,
            elevation: 2,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(data.hotel!.photo!.url!),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${data.hotel!.name}',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '${data.hotel!.city!.name!}',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.grey),
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Colors.blue, shape: BoxShape.circle),
                              child: Icon(
                                Icons.map_outlined,
                                size: 25,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: StarRating(
                            starCount: data.hotel!.star,
                            rating: data.hotel!.star!.toDouble(),
                            color: Colors.yellow,
                            size: 15,
                            marginStar: EdgeInsets.only(right: 5),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Check - in',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text(
                                  '${DateFormat('dd MMM yyyy').format(DateTime.parse(data.checkinAt!))}',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Check - out',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text(
                                  '${DateFormat('dd MMM yyyy').format(DateTime.parse(data.checkoutAt!))}',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => SizedBox(
              height: 20,
            ),
        itemCount: _tripStore.detailTrip!.hotels.length);
  }

  Widget _buildListViewBuses() {
    return ListView.separated(
        padding: EdgeInsets.all(20),
        itemBuilder: (context, index) {
          var data = _tripStore.detailTrip!.buses[index];
          return Material(
            color: Theme.of(context).cardColor,
            elevation: 2,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(data.logo!.url),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${data.bus}',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '${data.transport}',
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => SizedBox(
              height: 20,
            ),
        itemCount: _tripStore.detailTrip!.buses.length);
  }

  Widget _buildListViewFlights() {
    return ListView.separated(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      itemCount: _tripStore.detailTrip!.flights.length,
      separatorBuilder: (context, index) => SizedBox(
        height: 20,
      ),
      itemBuilder: (context, index) {
        var data = _tripStore.detailTrip!.flights[index];
        return TripFlightTicket(
            width: double.infinity,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                            data.airline!.icon.medium.url,
                          )),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data.airline!.name!,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            data.airline!.code!,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Keberangkatan',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '${StringConverter.flightDate(DateTime.parse(data.etdAt!))}',
                            style: TextStyle(
                                color: Colors.grey[700],
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 5),
                            child: Text(
                              '${StringConverter.flightTime(DateTime.parse(data.etdAt!))}',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text('${data.from!.code}',
                              style: TextStyle(
                                fontSize: 12,
                              )),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            MdiIcons.airplane,
                            size: 25,
                            color: Colors.red,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            data.airline!.code!,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Kedatangan',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '${StringConverter.flightDate(DateTime.parse(data.etdAt!))}',
                            style: TextStyle(
                                color: Colors.grey[700],
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 5),
                            child: Text(
                              '${StringConverter.flightTime(DateTime.parse(data.etdAt!))}',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text('${data.from!.code}',
                              style: TextStyle(
                                fontSize: 12,
                              )),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ));
      },
    );
  }
}
