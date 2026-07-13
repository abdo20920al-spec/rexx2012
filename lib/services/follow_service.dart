class FollowService {
  static final Map<String, List<String>> _followers = {};

  // متابعة مستخدم
  static void follow(String user, String follower) {
    if (!_followers.containsKey(user)) {
      _followers[user] = [];
    }

    if (!_followers[user]!.contains(follower)) {
      _followers[user]!.add(follower);
    }
  }

  // إلغاء المتابعة
  static void unfollow(String user, String follower) {
    if (_followers.containsKey(user)) {
      _followers[user]!.remove(follower);
    }
  }

  // معرفة عدد المتابعين
  static int getFollowersCount(String user) {
    return _followers[user]?.length ?? 0;
  }

  // هل يتابع المستخدم شخصًا؟
  static bool isFollowing(String user, String follower) {
    return _followers[user]?.contains(follower) ?? false;
  }
}
