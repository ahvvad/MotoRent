import 'package:flutter/material.dart';
import 'package:motorent/data/models/car.dart';
import 'package:motorent/presentation/pages/maps_details_page.dart';
import 'package:motorent/presentation/widgets/car_card.dart';
import 'package:motorent/presentation/widgets/more_card.dart';

class CarDetailsPage extends StatelessWidget {
  const CarDetailsPage({super.key, required this.car});
  final Car car;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.info_outline_rounded),
            SizedBox(width: 2),
            Text(
              'Information',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ],
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new_rounded),
        ),
      ),
      body: Column(
        children: [
          CarCard(
            car: Car(
              model: car.model,
              distance: car.distance,
              fuelCapacity: car.fuelCapacity,
              pricePerHour: car.pricePerHour,
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Color(0xffF3F3F3),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 5,
                          blurRadius: 15,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('assets/images/user.png'),
                          backgroundColor: Colors.grey,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'John Doe',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '\$4,253',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MapsDetailsPage(car: car),
                        ),
                      );
                    },
                    child: Container(
                      height: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage('assets/images/maps.png'),
                          fit: BoxFit.cover,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 5,
                            blurRadius: 15,
                            offset: Offset(0, 5),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Column(
              children: [
                MoreCard(
                  car: Car(
                    model: '${car.model}+1',
                    distance: car.distance + 100,
                    fuelCapacity: car.fuelCapacity + 100,
                    pricePerHour: car.pricePerHour + 10,
                  ),
                ),
                SizedBox(height: 20),
                MoreCard(
                  car: Car(
                    model: '${car.model}-2',
                    distance: car.distance + 200,
                    fuelCapacity: car.fuelCapacity + 200,
                    pricePerHour: car.pricePerHour + 20,
                  ),
                ),
                SizedBox(height: 20),
                MoreCard(
                  car: Car(
                    model: '${car.model}-3',
                    distance: car.distance + 300,
                    fuelCapacity: car.fuelCapacity + 300,
                    pricePerHour: car.pricePerHour + 30,
                  ),
                ),
                SizedBox(height: 20),
                MoreCard(
                  car: Car(
                    model: '${car.model}-4',
                    distance: car.distance + 400,
                    fuelCapacity: car.fuelCapacity + 400,
                    pricePerHour: car.pricePerHour + 40,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
