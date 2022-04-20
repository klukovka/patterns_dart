import 'package:equatable/equatable.dart';

class Video extends Equatable {
  final int? id;
  final String name;
  final String? description;
  final Duration duration;

  const Video({
    required this.duration,
    required this.name,
    this.id,
    this.description,
  });

  Video copyWith({
    int? id,
    String? name,
    String? description,
    Duration? duration,
  }) {
    return Video(
      duration: duration ?? this.duration,
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
    );
  }

  @override
  List<Object?> get props => [
        id,
        name,
        description,
        duration,
      ];
}
