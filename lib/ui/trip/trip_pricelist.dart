import 'package:boilerplate/stores/trip/trip_store.dart';
import 'package:boilerplate/widgets/app_bar_widget.dart';
import 'package:boilerplate/widgets/html_widget.dart';
import 'package:boilerplate/widgets/trip/trip_flight_ticket.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';
import 'package:timelines/timelines.dart';

import '../../utils/string/string_converter.dart';
import '../../widgets/empty_app_bar_widget.dart';

class TripPricelistScreen extends StatefulWidget {
  const TripPricelistScreen({Key? key}) : super(key: key);

  @override
  State<TripPricelistScreen> createState() => _TripPricelistScreenState();
}

class _TripPricelistScreenState extends State<TripPricelistScreen> {
  late TripStore _tripStore;
  @override
  void didChangeDependencies() {
    _tripStore = Provider.of<TripStore>(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EmptyAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBarWidget(
            title: 'Daftar Harga',
          ),
          Expanded(
              child: ListView.builder(
                  padding: EdgeInsets.all(20),
                  itemCount: _tripStore.detailTrip!.variants.length,
                  itemBuilder: (context, index) {
                    var data = _tripStore.detailTrip!.variants[index];
                    return Container(
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                        color: Theme.of(context).cardColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${data.name}',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Icon(MdiIcons.wallet),
                              SizedBox(width: 20),
                              Text(
                                  '${StringConverter.formatRupiah(data.price)}'),
                            ],
                          ),
                        ],
                      ),
                    );
                  })),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        width: double.infinity,
        padding: EdgeInsets.all(20),
        child: MaterialButton(
          height: 50,
          color: Colors.blue,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          onPressed: () {},
          child: Text(
            'Booking Sekarang',
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
