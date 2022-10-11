import 'package:boilerplate/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';

import '../../widgets/empty_app_bar_widget.dart';

class TripFacilityScreen extends StatelessWidget {
  const TripFacilityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EmptyAppBar(),
      body: Column(
        children: [
          CustomAppBarWidget(title: 'Fasilitas'),
        ],
      ),
    );
  }
}
