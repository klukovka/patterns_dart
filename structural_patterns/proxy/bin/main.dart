import 'cached_youtube_class.dart';
import 'youtube_class.dart';

void main() {
  final cacheYoutube = CachedYoutubeClass(YoutubeClass());

  cacheYoutube.getVideoInfo(1);
  cacheYoutube.downloadVideo(2);

  cacheYoutube.getVideoInfo(1);
  cacheYoutube.downloadVideo(2);

  for (final video in cacheYoutube.listVideos()) {
    print(video.id);
  }
}
