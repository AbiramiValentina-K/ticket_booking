
import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/icons.dart';
import '../../constants/text_data.dart';
import 'smal_widgets.dart';

class BuyTicket extends StatelessWidget {
  const BuyTicket({
    super.key,
    required this.travelTime,
    required this.departureTime,
    required this.price,
  });

  final String travelTime;
  final String departureTime;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: white),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Section 1 - Location
          Column(
            children: [
              // Location 1
              LocationSection(
                  circleAvatarColor: green,
                  circleAvatarIcon: send,
                  location: "$location 1",
                  date: date),
              const SizedBox(
                height: 10,
              ),
              // Location 2
              LocationSection(
                  circleAvatarColor: purple,
                  circleAvatarIcon: locationIcon,
                  location: "$location 2",
                  date: date),
            ],
          ),
          // Section 2 - Price
    
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               LabelValue(
                  label: "Travel Time", value: travelTime, valueFontSize: 15),
               LabelValue(
                  label: "Departure Time",
                  value: departureTime,
                  valueFontSize: 15),
               LabelValue(label: "Price", value: price, valueFontSize: 35),
    
              FilledButton(onPressed: () {}, child: const Text("Bus Ticket"))
              // Container(
              //   child: const Text("Bus Ticket"),
              // )
            ],
          )
        ],
      ),
    );
  }
}
