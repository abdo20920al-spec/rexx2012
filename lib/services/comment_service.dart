import 'package:rexx2012/models/comment_model.dart';

class CommentService {
  static final Map<String, List<Comment>> _comments = {};

  static List<Comment> getComments(String videoId) {
    return _comments[videoId] ?? [];
  }

  static void addComment(
    String videoId,
    String username,
    String text,
  ) {
    if (!_comments.containsKey(videoId)) {
      _comments[videoId] = [];
    }

    _comments[videoId]!.add(
      Comment(
        username: username,
        text: text,
      ),
    );
  }

  static int getCommentCount(String videoId) {
    return _comments[videoId]?.length ?? 0;
  }
}
