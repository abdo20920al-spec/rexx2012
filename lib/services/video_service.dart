import 'package:rexx2012/models/video_model.dart';

class VideoService {
  static List<VideoModel> videos = [
    VideoModel(
      username: "rex_official",
      caption: "أول فيديو في REX 🔥",
      videoUrl: "",
      likes: 1520,
      comments: 210,
    ),
    VideoModel(
      username: "abdo",
      caption: "أهلاً بكم 👋",
      videoUrl: "",
      likes: 980,
      comments: 95,
    ),
    VideoModel(
      username: "gaming",
      caption: "أفضل لقطة اليوم 🎮",
      videoUrl: "",
      likes: 3200,
      comments: 540,
    ),
  ];

  static List<VideoModel> getVideos() {
    return videos;
  }

  static void addVideo(VideoModel video) {
    videos.add(video);
  }
}
