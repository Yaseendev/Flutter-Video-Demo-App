import 'package:flutter/material.dart';

import 'comments_section.dart';
import 'description_section.dart';

class CommentesPanel extends StatefulWidget {
  final ScrollController scrollController;
  const CommentesPanel({
    super.key,
    required this.scrollController,
  });

  @override
  State<CommentesPanel> createState() => _CommentesPanelState();
}

class _CommentesPanelState extends State<CommentesPanel> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 42,
          // padding: const EdgeInsets.only(top: 8.0, bottom: 18),
          decoration: BoxDecoration(
            color: Color(0XFF121212),
            borderRadius: BorderRadius.vertical(top: Radius.circular(18.0)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 50,
                height: 5,
                decoration: BoxDecoration(
                    color: Color(0xFF242424),
                    borderRadius: BorderRadius.all(Radius.circular(12.0))),
              ),
            ],
          ),
        ),
        DescriptionSection(),
        CommentsSection(),
        Spacer(),
        Padding(
          padding: const EdgeInsets.only(left: 12, right: 12, bottom: 20),
          child: SizedBox(
            height: 40,
            child: TextField(
              textAlignVertical: TextAlignVertical.bottom,
              decoration: InputDecoration(
                hintText: 'Add a comment',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Color(0xFF181818),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
