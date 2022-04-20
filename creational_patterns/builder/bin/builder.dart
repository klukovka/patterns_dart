import 'car.dart';
import 'manual.dart';

abstract class Builder {
  void reset();
  void setSeats(int seats);
  void setEngine(String engine);
  void setTripComputer();
  void setGPS();
}

class CarBuilder implements Builder {
  late Car _car;
  @override
  void reset() {
    _car = Car();
  }

  @override
  void setEngine(String engine) {
    _car = _car.copyWith(engine: engine);
  }

  @override
  void setGPS() {
    _car = _car.copyWith(gps: true);
  }

  @override
  void setSeats(int seats) {
    _car = _car.copyWith(seats: seats);
  }

  @override
  void setTripComputer() {
    _car = _car.copyWith(tripComputer: true);
  }

  Car getResult() => _car;
}

class CarManualBuilder implements Builder {
  late Manual _manual;
  @override
  void reset() {
    _manual = Manual();
  }

  @override
  void setEngine(String engine) {
    _manual = _manual.copyWith(engine: engine);
  }

  @override
  void setGPS() {
    _manual = _manual.copyWith(gps: true);
  }

  @override
  void setSeats(int seats) {
    _manual = _manual.copyWith(seats: seats);
  }

  @override
  void setTripComputer() {
    _manual = _manual.copyWith(tripComputer: true);
  }

  Manual getResult() => _manual;
}
