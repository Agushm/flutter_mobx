import 'package:animations/animations.dart';
import 'package:boilerplate/constants/dimens.dart';
import 'package:boilerplate/stores/trip/trip_store.dart';
import 'package:boilerplate/widgets/dialog/share_trip_dialog.dart';
import 'package:boilerplate/widgets/html_widget.dart';
import 'package:boilerplate/widgets/progress_indicator_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';

import '../../models/trip/detail_trip.dart';
import '../../utils/routes/routes.dart';
import '../../utils/string/string_converter.dart';

class DetailTripScreen extends StatefulWidget {
  const DetailTripScreen({Key? key}) : super(key: key);

  @override
  State<DetailTripScreen> createState() => _DetailTripScreenState();
}

class _DetailTripScreenState extends State<DetailTripScreen> {
  late TripStore _tripStore;

  late String slug;

  List<Map> facility = [
    {
      'title': 'Itinerary',
      'icon': MdiIcons.clipboardList,
      'color': Colors.blue[900],
      'key': 'itineraries'
    },
    {
      'title': 'Hotel',
      'icon': MdiIcons.bed,
      'color': Colors.orange[900],
      'key': 'hotels'
    },
    {
      'title': 'Penerbangan',
      'icon': MdiIcons.airplane,
      'color': Colors.red[800],
      'key': 'flights'
    },
    {
      'title': 'Transportasi',
      'icon': MdiIcons.bus,
      'color': Colors.blue,
      'key': 'buses'
    },
  ];

  late double width;
  late double height;
  @override
  void didChangeDependencies() {
    _tripStore = Provider.of<TripStore>(context);
    slug = ModalRoute.of(context)!.settings.arguments as String;

    if (_tripStore.detailTrip == null || _tripStore.detailTrip!.slug != slug) {
      _tripStore.getDetailTrip(slug);
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: _buildBody(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _buildFooter(),
    );
  }

  Widget _buildBody() {
    return Stack(
      children: [
        Observer(
          builder: (context) {
            var data = _tripStore.detailTrip;
            return _tripStore.loadingDetailTrip
                ? Container(
                    width: width,
                    height: height,
                    child: CustomProgressIndicatorWidget())
                : _buildMainContent(data!);
          },
        ),
        Positioned(
          top: 50,
          left: 15,
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: 30,
              height: 30,
              decoration:
                  BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
              child: Icon(
                Icons.arrow_back,
                size: 15,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }

  _buildMainContent(DetailTrip data) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: width,
            height: height / 2,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(data.pict!.url),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(Dimens.horizontal_padding),
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      MdiIcons.mosque,
                      size: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      data.category!,
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    Spacer(),
                    MaterialButton(
                      elevation: 0,
                      color: Colors.blue,
                      height: 40,
                      onPressed: () {
                        showShareDialog();
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      child: Row(
                        children: [
                          Icon(
                            MdiIcons.shareVariant,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Bagikan',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  data.name!,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                buildTitleDivider(),
                HTMLWidget(htmlData: data.description),
                SizedBox(height: 10),
                Text(
                  'Fasilitas',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                buildTitleDivider(),
                SizedBox(
                  height: 15,
                ),
                GridView.count(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 20,
                  childAspectRatio: 200 / 130,
                  children: facility
                      .map((e) => Material(
                            elevation: 3,
                            color: e['color'],
                            borderRadius: BorderRadius.circular(10),
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).pushNamed(
                                    Routes.tripFacility,
                                    arguments: e);
                              },
                              child: Container(
                                padding: EdgeInsets.all(10),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.black12,
                                        ),
                                        child: Icon(
                                          e['icon'],
                                          size: 40,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        e['title'],
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ]),
                              ),
                            ),
                          ))
                      .toList(),
                ),
                SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFooter() {
    return Observer(builder: (context) {
      var data = _tripStore.detailTrip;
      if (_tripStore.loading || data!.slug != slug) {
        return SizedBox();
      }

      return Container(
        padding: EdgeInsets.symmetric(
            horizontal: Dimens.horizontal_padding, vertical: 10),
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Harga mulai',
                  style: TextStyle(
                    color: Colors.deepOrangeAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '${StringConverter.formatRupiah(data.priceStart!)}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  'Tersedia ${data.availableSeats! - data.totalBooking!} kursi',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            Spacer(),
            MaterialButton(
                color: Colors.blue,
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    Routes.tripPricelist,
                  );
                },
                elevation: 0,
                height: 40,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  'Daftar Harga',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                )),
          ],
        ),
      );
    });
  }

  Widget buildTitleDivider() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      width: 150,
      height: 5,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.blue),
    );
  }

  void showShareDialog() {
    showModal(
      context: context,
      configuration:
          FadeScaleTransitionConfiguration(barrierDismissible: false),
      builder: (context) {
        return ShareTripDialog(detailTrip: _tripStore.detailTrip);
      },
    );
  }
}
