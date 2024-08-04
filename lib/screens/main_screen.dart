import 'package:fickleflight/custom_widget/custom_container.dart';
import 'package:fickleflight/custom_widget/destination_card.dart';
import 'package:fickleflight/screens/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomButtomNavigationBar(),
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "FickleFlight",
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
        ),
        actions: [CircleAvatar()],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Image.asset(
                      'images/paristower4.jpg', // Replace with the actual image URL
                      width: double.infinity,
                      height: 250,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Positioned(
                    top: 20,
                    right: 20,
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    ),
                  ),
                  const Positioned(
                    bottom: 50,
                    left: 20,
                    child: Text(
                      "Paris",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Positioned(
                    bottom: 65,
                    right: 20,
                    child: const Text(
                      'FROM ',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const Positioned(
                    bottom: 20,
                    right: 20,
                    child: const Text(
                      '\$ 1299',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Upcoming Flight",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 10,
              ),
              const Card(
                  child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'SIN',
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Singapore',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(Icons.flight_takeoff, color: Colors.blue),
                        Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'LAX',
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Los Angeles',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Text(
                          'Departs on: 1 May, 08:00 AM',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Spacer(),
                        Text(
                          '4 days to go',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ],
                ),
              )),
              const SizedBox(
                height: 30,
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CustomContainer(
                        color: Colors.blueAccent,
                        icon: Icon(Icons.flight),
                        text: "Flight"),
                    CustomContainer(
                        color: Colors.pinkAccent,
                        icon: Icon(
                          Icons.hotel,
                          color: Colors.white,
                        ),
                        text: "Hotels"),
                    CustomContainer(
                        color: Colors.orange,
                        icon: Icon(
                          Icons.attractions,
                          color: Colors.white,
                        ),
                        text: "Attractions"),
                    CustomContainer(
                        color: Colors.greenAccent,
                        icon: Icon(
                          Icons.food_bank,
                          color: Colors.white,
                        ),
                        text: "Eats"),
                    CustomContainer(
                        color: Colors.orangeAccent,
                        icon: Icon(
                          Icons.commute,
                          color: Colors.white,
                        ),
                        text: "Commutes"),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("Trending Destination",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    DestinationCard(
                        imageurl: "images/d1.jpg",
                        name: "Boracay",
                        country: "Philippines",
                        code: "5D4N"),
                    DestinationCard(
                        imageurl: "images/d2.jpg",
                        name: "Baros",
                        country: "Maldives",
                        code: "7D6N"),
                    DestinationCard(
                        imageurl: "images/d3.jpg",
                        name: "Palawan",
                        country: "Philiipines",
                        code: "3D2N"),
                    DestinationCard(
                        imageurl: "images/d4.jpg",
                        name: "Bali",
                        country: "Indonesia",
                        code: "3D2N")
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
