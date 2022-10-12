import 'package:boilerplate/models/trip/detail_trip.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:share_plus/share_plus.dart';
import 'package:html/parser.dart';

class ShareTripDialog extends StatelessWidget {
  ShareTripDialog({Key? key, @required this.detailTrip}) : super(key: key);
  final DetailTrip? detailTrip;
  final List<Map> menu = [
    {'title': 'Deskripsi', 'icon': MdiIcons.informationOutline},
    {'title': 'Varian', 'icon': MdiIcons.cashMultiple},
    {'title': 'Itinerary', 'icon': MdiIcons.calendar},
    {'title': 'Hotel', 'icon': MdiIcons.bed},
    {'title': 'Pesawat', 'icon': MdiIcons.airplane},
    {'title': 'Trasportasi', 'icon': MdiIcons.bus},
    {'title': 'Print', 'icon': MdiIcons.printer},
  ];
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      contentPadding: EdgeInsets.all(0),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 5),
            width: double.infinity,
            alignment: Alignment.centerRight,
            child: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(Icons.close),
            ),
          ),
          Text(
            'Bagikan',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: menu
                .map(
                  (e) => Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () => _share(),
                          child: Row(
                            children: [
                              Icon(
                                e['icon'],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                e['title'],
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  Future<void> _share() async {
    String shareContent = '''${detailTrip!.name}\n
    ${_parseHtmlString(detailTrip!.description!)}\n
    Info Selengkapnya:\n
    https://demo.muslimpergi.com/listings/${detailTrip!.slug}
    ''';
    Share.share(shareContent);
  }

  String _parseHtmlString(String htmlString) {
    final document = parse(htmlString);
    final String parsedString =
        parse(document.body!.text).documentElement!.text;

    return parsedString;
  }
}
