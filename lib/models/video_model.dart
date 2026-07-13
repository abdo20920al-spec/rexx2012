class VideoModel {
  final String username;
  final String caption;
  final String videoUrl;
  final int likes;
  final int comments;

  VideoModel({
    required this.username,
    required this.caption,
    required this.videoUrl,
    required this.likes,
    required this.comments,
  });
}
