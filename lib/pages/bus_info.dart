import 'package:flutter/material.dart';
import 'package:tarvel_mate/pages/design_tm.dart';

class BusInfo extends StatefulWidget {
  const BusInfo({super.key});

  @override
  State<BusInfo> createState() => _BusInfoState();
}

class _BusInfoState extends State<BusInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarTop(),
      body: Center(
        child: Text("Bus Infornamtion Coming Soon..",
        style: TextStyle(
          fontFamily: 'DNSans',
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),),
      ),
    );
  }
}