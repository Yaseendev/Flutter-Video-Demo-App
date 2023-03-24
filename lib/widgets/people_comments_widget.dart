import 'package:flutter/material.dart';

class PeopleCommentsWidget extends StatelessWidget {
  const PeopleCommentsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 55,
          height: 40,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: CircleAvatar(
                  backgroundColor: Colors.amber,
                  radius: 13,
                ),
              ),
              Positioned(
                left: 0,
                bottom: 0,
                child: CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 13,
                ),
              ),
            ],
          ),
        ),
        Text(
          '197 people here',
          style: TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}
