import 'package:flutter/material.dart';
import 'package:motorent/data/models/car.dart';

class MoreCard extends StatelessWidget {
  const MoreCard({super.key, required this.car});
  final Car car;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xff212020),
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 5,
            blurRadius: 15,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                car.model,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // ToDo: Check if this UI change affects the layout
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(
                    Icons.directions_car_rounded,
                    color: Colors.white,
                    size: 16,
                  ),
                  SizedBox(height: 5),
                  Text(
                    '> ${car.distance} Km',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(width: 10),
                  Icon(
                    Icons.battery_full,
                    color: Colors.white,
                    size: 16.0,
                  ),
                  SizedBox(height: 5),
                  Text(
                    car.fuelCapacity.toString(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              )
            ],
          ),
          Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.white,
            size: 24.0,
          )
        ],
      ),
    );
  }
}
