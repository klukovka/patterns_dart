import 'builder.dart';

class Director {
  void makeSportsCar(Builder builder) {
    builder.reset();
    builder.setSeats(2);
    builder.setEngine('Sport');
    builder.setTripComputer();
    builder.setGPS();
  }
}
