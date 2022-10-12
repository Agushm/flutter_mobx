import 'package:flutter/material.dart';

import '../constants/dimens.dart';

class CustomAppBarWidget extends StatelessWidget {
  CustomAppBarWidget({Key? key, this.title}) : super(key: key);
  final String? title;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      clipBehavior: Clip.antiAlias,
      color: Theme.of(context).cardColor,
      shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(15.0))),
      child: Container(
        constraints: BoxConstraints(minWidth: 100),
        padding: EdgeInsets.symmetric(
            horizontal: Dimens.horizontal_padding, vertical: 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
                onTap: () => Navigator.pop(context),
                child: Icon(
                  Icons.arrow_back,
                  size: 15,
                )),
            SizedBox(
              width: 10,
            ),
            Text(title!,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
