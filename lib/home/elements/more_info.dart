import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

buildMoreInfo(BuildContext context) {
  return Expanded(
    child: Column(
      children: [
        Expanded(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(32),
              ),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children: [
                  buildInfo(context, FontAwesomeIcons.thermometerHalf, "Temperature", "22\u00B0"),
                  SizedBox(height: 50),
                  buildInfo(context, FontAwesomeIcons.cloudSun, "Weather", "Partly Coludly"),
                  SizedBox(height: 50),
                  buildInfo(context, FontAwesomeIcons.wind, "Wind Speed", "14 km/s"),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

buildInfo(BuildContext context, IconData icon, String infoName, String info) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(
              icon,
              size: 32,
              color: Colors.grey,
            ),
            SizedBox(width: 10),
            Text(
              infoName,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: Theme.of(context).textTheme.headline6!.fontSize,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            info,
            style: TextStyle(
              fontSize: Theme.of(context).textTheme.headline6!.fontSize,
            ),
          ),
        ),
      ],
    ),
  );
}
