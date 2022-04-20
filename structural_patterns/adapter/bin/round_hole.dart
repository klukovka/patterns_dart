import 'round_peg.dart';

class RoundHole {
  final double _radius;

  const RoundHole(this._radius);

  double get radius => _radius;

  bool fits(RoundPeg peg) {
    return radius >= peg.radius;
  }
}
