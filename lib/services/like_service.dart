class LikeService {
  static final Map<String, int> _likes = {};
  static final Map<String, bool> _liked = {};

  static int getLikes(String videoId) {
    return _likes[videoId] ?? 0;
  }

  static bool isLiked(String videoId) {
    return _liked[videoId] ?? false;
  }

  static void toggleLike(String videoId) {
    if (_liked[videoId] == true) {
      _liked[videoId] = false;
      _likes[videoId] = (_likes[videoId] ?? 1) - 1;
    } else {
      _liked[videoId] = true;
      _likes[videoId] = (_likes[videoId] ?? 0) + 1;
    }
  }
}
