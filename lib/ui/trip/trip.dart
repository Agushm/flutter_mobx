import 'package:another_flushbar/flushbar_helper.dart';
import 'package:boilerplate/constants/dimens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';

import '../../models/trip/trip.dart';
import '../../stores/theme/theme_store.dart';
import '../../stores/trip/trip_store.dart';
import '../../widgets/empty_app_bar_widget.dart';
import '../../widgets/progress_indicator_widget.dart';
import '../../widgets/trip/card_trip.dart';

class TripScreen extends StatefulWidget {
  const TripScreen({Key? key}) : super(key: key);

  @override
  State<TripScreen> createState() => _TripScreenState();
}

class _TripScreenState extends State<TripScreen> {
  late ThemeStore _themeStore;
  late TripStore _tripStore;
  late List<Trip> listTrip;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // initializing stores

    _themeStore = Provider.of<ThemeStore>(context);
    _tripStore = Provider.of<TripStore>(context);
    listTrip = List.generate(10, (index) => Trip.fromJson(mockTrip));
    if (!_tripStore.loading) {
      _tripStore.getTrips();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: EmptyAppBar(),
        body: _buildBody(),
        floatingActionButton: _buildThemeButton());
  }

  Widget _buildBody() {
    return Stack(
      children: [
        _handleErrorMessage(),
        _buildMainContent(),
      ],
    );
  }

  Widget _buildMainContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Material(
          elevation: 1,
          clipBehavior: Clip.antiAlias,
          color: Theme.of(context).cardColor,
          shape: BeveledRectangleBorder(
              borderRadius:
                  BorderRadius.only(bottomRight: Radius.circular(15.0))),
          child: Container(
            constraints: BoxConstraints(minWidth: 100),
            padding: EdgeInsets.symmetric(
                horizontal: Dimens.horizontal_padding, vertical: 10),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.arrow_back),
                SizedBox(
                  width: 10,
                ),
                Text('Paket UMROH',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(
              vertical: 10, horizontal: Dimens.horizontal_padding),
          child: TextFormField(
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              fillColor: Theme.of(context).cardColor,
              filled: true,
              border: OutlineInputBorder(),
              hintText: 'Cari Paket UMROH...',
              hintStyle: TextStyle(fontSize: 14),
              suffixIcon: IconButton(
                onPressed: () {},
                icon: Icon(Icons.close),
              ),
            ),
          ),
        ),
        Expanded(
          child: Observer(builder: (context) {
            return _tripStore.loading
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : _buildListView();
          }),
        ),
      ],
    );
  }

  Widget _buildListView() {
    return _tripStore.tripList != null
        ? ListView.builder(
            itemCount: _tripStore.tripList!.length,
            itemBuilder: (context, index) {
              var data = _tripStore.tripList![index];
              return CardTrip(trip: data);
            },
          )
        : Center(
            child: Text(
              'Trip Not Found',
            ),
          );
  }

  Widget _buildThemeButton() {
    return Observer(
      builder: (context) {
        return MaterialButton(
          color: Colors.blue,
          height: 50,
          shape: CircleBorder(),
          onPressed: () {
            _themeStore.changeBrightnessToDark(!_themeStore.darkMode);
          },
          child: Icon(
            _themeStore.darkMode ? Icons.brightness_5 : MdiIcons.weatherNight,
            color: _themeStore.darkMode ? Colors.white : Colors.yellow,
          ),
        );
      },
    );
  }

  Widget _handleErrorMessage() {
    return Observer(
      builder: (context) {
        if (_tripStore.errorStore.errorMessage.isNotEmpty) {
          return _showErrorMessage(_tripStore.errorStore.errorMessage);
        }

        return SizedBox.shrink();
      },
    );
  }

  // General Methods:-----------------------------------------------------------
  _showErrorMessage(String message) {
    Future.delayed(Duration(milliseconds: 0), () {
      if (message.isNotEmpty) {
        FlushbarHelper.createError(
          message: message,
          title: 'Trip Screen Error',
          duration: Duration(seconds: 3),
        )..show(context);
      }
    });

    return SizedBox.shrink();
  }
}
