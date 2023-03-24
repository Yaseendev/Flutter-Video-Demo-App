import 'package:flutter/material.dart';

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF0A0A0A),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            dense: true,
            leading: CircleAvatar(
              backgroundColor: Colors.purple,
              radius: 13.5,
            ),
            title: Text(
              'purple-circle',
              style: TextStyle(color: Colors.grey),
            ),
            horizontalTitleGap: 3,
          ),
          Text(
            'The consistency of these welds',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 18),
          Row(
            children: [
              Icon(Icons.rocket_rounded),
              Text(
                'BEST COMMENTS',
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(Icons.keyboard_arrow_down),
            ],
          ),
        ],
      ),
    );
  }
}
