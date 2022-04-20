class Manual {
  final String engine;
  final int seats;
  final bool gps;
  final bool tripComputer;

  const Manual({
    this.engine = 'avarage',
    this.gps = false,
    this.seats = 5,
    this.tripComputer = false,
  });

  Manual copyWith({
    String? engine,
    int? seats,
    bool? gps,
    bool? tripComputer,
  }) {
    return Manual(
      engine: engine ?? this.engine,
      gps: gps ?? this.gps,
      seats: seats ?? this.seats,
      tripComputer: tripComputer ?? this.tripComputer,
    );
  }

  @override
  String toString() {
    return 'Manual: engine: $engine, seats: $seats, gps: $gps, tripComputer: $tripComputer';
  }
}
