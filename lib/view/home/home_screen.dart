import 'package:flutter/material.dart';
import 'package:weathy/app/backend.dart';
import 'package:weathy/view/forecast/forecast.dart';
import 'package:weathy/view/home/home_header.dart';
import 'package:weathy/view/weathy_card/weathy_card.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weathy'),
      ),
      body: FutureBuilder(
        future: context.read<Backend>().getCurrentWeather(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(
              child: Text('An error occurred.'),
            );
          } else if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            final currentWeather = snapshot.data;
            return Column(
              children: [
                Expanded(
                  child: HomeHeader(),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 20.0),
                    child: WeathyCard(
                      currentWeather: currentWeather,
                    ),
                  ),
                ),
                Expanded(
                  child: Forecast(),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
