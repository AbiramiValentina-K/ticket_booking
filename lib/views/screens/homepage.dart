import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../widgets/buy_ticket_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Column(
                children: [
                  Text("Hi, Abirami"),
                  Text(
                    "Bus",
                    style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const BuyTicket(
                travelTime: "30min", departureTime: "15min", price: "\$1,50"),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            const BuyTicket(
                travelTime: "20min", departureTime: "25min", price: "\$2,75"),
          ],
        ),
      ),
    );
  }
}
