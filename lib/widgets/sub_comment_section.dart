import 'package:flutter/material.dart';
import 'sub_comment.dart';

class SubCommentSection extends StatelessWidget {
  const SubCommentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 100,
          child: VerticalDivider(
            color: Colors.grey,
            thickness: 1,
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: SubComment(),
        )
      ],
    );
  }
}