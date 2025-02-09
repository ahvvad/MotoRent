import 'package:flutter/material.dart';
import 'package:motorent/data/models/car.dart';
import 'package:motorent/presentation/widgets/car_card.dart';

class CarListScreen extends StatelessWidget {
  CarListScreen({super.key});
  final List<Car> cars = [
    Car(
      model: 'Fortuner GR',
      distance: 870,
      fuelCapacity: 50,
      pricePerHour: 45,
    ),
    Car(
      model: 'Fortuner GR',
      distance: 870,
      fuelCapacity: 50,
      pricePerHour: 45,
    ),
    Car(
      model: 'Fortuner GR',
      distance: 870,
      fuelCapacity: 50,
      pricePerHour: 45,
    ),
    Car(
      model: 'Fortuner GR',
      distance: 870,
      fuelCapacity: 50,
      pricePerHour: 45,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Choose Your Car',
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new_rounded),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (context, index) {
          return CarCard(
            car: cars[index],
          );
        },
      ),
    );
  }
}
