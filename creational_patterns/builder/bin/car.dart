class Car {
  final String engine;
  final int seats;
  final bool gps;
  final bool tripComputer;

  const Car({
    this.engine = 'avarage',
    this.gps = false,
    this.seats = 5,
    this.tripComputer = false,
  });

  Car copyWith({
    String? engine,
    int? seats,
    bool? gps,
    bool? tripComputer,
  }) {
    return Car(
      engine: engine ?? this.engine,
      gps: gps ?? this.gps,
      seats: seats ?? this.seats,
      tripComputer: tripComputer ?? this.tripComputer,
    );
  }

  @override
  String toString() {
    return 'Car: engine: $engine, seats: $seats, gps: $gps, tripComputer: $tripComputer';
  }
}
