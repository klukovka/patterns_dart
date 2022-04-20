import 'video.dart';

abstract class YoutubeLib {
  List<Video> listVideos();
  void getVideoInfo(int id);
  Video downloadVideo(int id);
}
