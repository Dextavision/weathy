import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeHeader extends StatelessWidget {
  final String _currentDay = DateTime.now().day.toString();
  final String _currentMonth = DateFormat('MMMM').format(DateTime.now());
  final String _currentWeekDay = DateFormat('EEEE').format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Good Morning',
          style: TextStyle(fontSize: 40.0),
        ),
        Text(this._currentDay +
            ' ' +
            this._currentMonth +
            ', ' +
            this._currentWeekDay),
        SizedBox(
          height: 20.0,
        ),
        TextField(
          decoration: InputDecoration(
            icon: Icon(Icons.send),
            hintText: 'Location',
            helperText: 'Search for a city',
            border: const OutlineInputBorder(),
          ),
        ),
      ],
    );
  }
}
