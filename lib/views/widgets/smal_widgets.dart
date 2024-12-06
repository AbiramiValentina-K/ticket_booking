import 'package:flutter/material.dart';
import 'package:ticket_booking/constants/colors.dart';

class LocationSection extends StatelessWidget {
  const LocationSection({
    super.key,
    required this.circleAvatarColor,
    required this.circleAvatarIcon,
    required this.location,
    required this.date,
  });

  final Color circleAvatarColor;
  final IconData circleAvatarIcon;
  final String location;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: circleAvatarColor,
          radius: 15,
          child: Icon(
            circleAvatarIcon,
            size: 15,
            color: white,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              location,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
            ),
            Text(
              date,
              style: TextStyle(color: grey),
            ),
          ],
        )
      ],
    );
  }
}

class LabelValue extends StatelessWidget {
  const LabelValue({
    super.key,
    required this.label,
    required this.value,
    required this.valueFontSize,
  });

  final String label;
  final String value;
  final double valueFontSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          label,
          style: TextStyle(color: grey, fontSize: 15),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          value,
          style: TextStyle(
              color: green,
              fontWeight: FontWeight.bold,
              fontSize: valueFontSize),
        ),
      ],
    );
  }
}
