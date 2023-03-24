import 'package:flutter/material.dart';

class SubComment extends StatelessWidget {
  const SubComment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          dense: true,
          leading: CircleAvatar(
            backgroundColor: Colors.purple,
            radius: 15,
          ),
          title: Text(
            'EllzGoesPro . 11h',
            style: TextStyle(color: Colors.grey),
          ),
          horizontalTitleGap: 3,
        ),
        Text(
          'Laser welder and yes',
          style: TextStyle(
            fontSize: 15,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_horiz_rounded),
              color: Colors.grey,
              padding: EdgeInsets.zero,
            ),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.reply_rounded),
              label: Text('Reply'),
              style: TextButton.styleFrom(
                // padding: EdgeInsets.zero,
                foregroundColor: Colors.grey,
              ),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.arrow_upward_outlined),
              label: Text('2.3k'),
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                foregroundColor: Colors.grey,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_downward_outlined),
              color: Colors.grey,
              padding: EdgeInsets.zero,
            ),
          ],
        ),
      ],
    );
  }
}
