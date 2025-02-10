import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:motorent/data/models/car.dart';
import 'package:motorent/presentation/bloc/car_bloc.dart';
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
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Text(
          'Choose Your Car',
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: BlocBuilder<CarBloc, CarState>(
        builder: (context, state) {
          if (state is CarsLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is CarsLoaded) {
            return ListView.builder(
              itemCount: state.cars.length,
              itemBuilder: (context, index) {
                return CarCard(
                  car: cars[index],
                );
              },
            );
          } else if (state is CarsError) {
            return Center(child: Text('error: $state.message'));
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
