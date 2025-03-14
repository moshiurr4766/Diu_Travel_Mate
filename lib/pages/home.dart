import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tarvel_mate/pages/design_tm.dart';
import 'package:tarvel_mate/utils/constants/colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late PageController _pageController;
  int _currentPage = 0;
  final List<String> images = [
    'assets/image/banner/b1.jpg',
    'assets/image/banner/b2.jpg',
    'assets/image/banner/b3.jpg',
    'assets/image/banner/b1.jpg',
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(); // No viewportFraction, full width

    Timer.periodic(Duration(seconds: 10), (timer) {
      if (_currentPage < images.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      if (_pageController.hasClients) {
        //_pageController.jumpToPage(_currentPage); //Direct Change One By One
        _pageController.animateToPage(
          _currentPage,
          duration: Duration(milliseconds: 2000),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarTop(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: SizedBox(
                  height: 220, // Full height
                  width: double.infinity, // Full width
                  child: PageView.builder(
                    controller: _pageController,
                    physics: NeverScrollableScrollPhysics(), // Disable manual scroll
                    itemCount: images.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.0,
                        ), // Adjust spacing here
                        child: CustomImage(images[index]),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                " What services do you need?",
                style: TextStyle(
                  fontSize: 16, 
                  fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                //physics: NeverScrollableScrollPhysics(),
                childAspectRatio: 1.2,
                children: [
                  _serviceCard("Bus Information", Icons.bus_alert_rounded),
                  _serviceCard("Ticket Book", Icons.directions_bus_outlined),
                ],
              ),

              SizedBox(height: 20),

              Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "You don't have any ongoing order",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text("Need a service today?"),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: FColors.primarypurple,
                      ),
                      child: Text("Ticket Cancel",
                        style: TextStyle(
                          color: Colors.white,

                        ),
                      ),
                    ),
                  ]
                ),
              ),


              SizedBox(height: 20),

              Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "You don't have any ongoing order",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text("Need a service today?"),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: FColors.primarypurple,
                      ),
                      child: Text("Ticket Book",
                        style: TextStyle(
                          color: Colors.white,

                        ),
                      ),
                    ),
                  ]
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Custom Image Widget
// ignore: non_constant_identifier_names
Widget CustomImage(String imagePath) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(15),
    child: Container(
      width: double.infinity, // Full width
      height: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(color: Colors.black26, blurRadius: 5, spreadRadius: 2),
        ],
      ),
      child: Image.asset(
        imagePath,
        width: double.infinity, // Ensure full width
        height: 220,
        fit: BoxFit.cover,
      ),
    ),
  );
}

Widget _serviceCard(String title, IconData icon) {
  return Card(
    color: FColors.primaryOrange,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    child: Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: Colors.white, size: 30),
          SizedBox(height: 5),
          Text(title, style: TextStyle(color: Colors.white, fontSize: 14)),
        ],
      ),
    ),
  );
}
