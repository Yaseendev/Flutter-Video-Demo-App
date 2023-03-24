import 'package:flutter/material.dart';
import 'main_comment.dart';
import 'people_comments_widget.dart';
import 'sub_comment_section.dart';

class CommentsSection extends StatelessWidget {
  const CommentsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MainComment(),
            SubCommentSection(),
            PeopleCommentsWidget(),
          ],
        ),
      ),
    );
  }
}
