import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DestinationCard extends StatelessWidget {
  final String imageurl;
  final String name;
  final String country;
  final String code;

  const DestinationCard(
      {super.key,
      required this.imageurl,
      required this.name,
      required this.country,
      required this.code});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 200,
          height: 180,
          child: Column(
            children: [
              Image.asset(
                imageurl,
                width: 200,
                height: 100,
                fit: BoxFit.cover,
              ),
              ListTile(
                title: Text(name),
                subtitle: Text(country),
                trailing: Text(code),
              )
            ],
          ),
        ),
      ),
    );
  }
}
